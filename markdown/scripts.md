# Collection of scripts

# Nuke

WIll let you try to scrub and sanatize nvme, ssd, hdd; **BE WARNED** it may brick your device.

```
#!/bin/bash

# Check if the script is run as root
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root. Please use sudo or run as root."
    exit 1
fi

# Function to install packages based on the distribution
install_packages() {
    local packages=("$@")
    if command -v apt-get &> /dev/null; then
        echo "Detected Debian/Ubuntu-based system."
        apt-get update
        apt-get install -y "${packages[@]}"
    elif command -v yum &> /dev/null; then
        echo "Detected Red Hat/CentOS-based system."
        yum install -y "${packages[@]}"
    elif command -v dnf &> /dev/null; then
        echo "Detected Fedora-based system."
        dnf install -y "${packages[@]}"
    elif command -v pacman &> /dev/null; then
        echo "Detected Arch Linux-based system."
        pacman -S --noconfirm "${packages[@]}"
    else
        echo "Unsupported distribution. Please install the following packages manually: ${packages[*]}"
        exit 1
    fi
}

# Check if whiptail or libnewt is installed, install if missing
if ! command -v whiptail &> /dev/null && ! pacman -Qi libnewt &> /dev/null; then
    echo "whiptail or libnewt is not installed. Installing..."
    if command -v pacman &> /dev/null; then
        install_packages libnewt
    else
        install_packages whiptail
    fi
fi

# Check if hdparm is installed, install if missing
if ! command -v hdparm &> /dev/null; then
    echo "hdparm is not installed. Installing..."
    install_packages hdparm
fi

# Check if badblocks is installed, install if missing
if ! command -v badblocks &> /dev/null; then
    echo "badblocks is not installed. Installing..."
    install_packages e2fsprogs
fi

# Check if nvme-cli is installed, install if missing
if ! command -v nvme &> /dev/null; then
    echo "nvme-cli is not installed. Installing..."
    install_packages nvme-cli
fi

# Check if parted is installed, install if missing
if ! command -v parted &> /dev/null; then
    echo "parted is not installed. Installing..."
    install_packages parted
fi

# Display warning message
whiptail --title "WARNING" --msgbox "Tactical Nuke Incoming!!!\n\nThis script will securely wipe the devices you specify. All data on selected devices will be permanently erased. Proceed with caution!" 15 60

# List available block devices
devices=$(lsblk -d -o NAME,MODEL,SIZE,TYPE | awk 'NR>1 {print $1, $2, $3, $4}')
device_list=()
while IFS= read -r line; do
    device_name=$(echo "$line" | awk '{print $1}')
    device_info=$(echo "$line" | awk '{print $2, $3, $4}')
    device_list+=("$device_name" "$device_info" OFF)
done <<< "$devices"

# Prompt user to select devices
selected_devices=$(whiptail --title "Select Devices" --checklist "Choose devices to wipe:" 20 60 10 "${device_list[@]}" 3>&1 1>&2 2>&3)
if [[ -z "$selected_devices" ]]; then
    whiptail --title "Error" --msgbox "No devices selected. Exiting." 10 60
    exit 1
fi

# Convert selected devices into an array
IFS=' ' read -r -a device_queue <<< "$(echo "$selected_devices" | sed 's/"//g')"

# Select HDD wipe method
wipe_method=$(whiptail --title "Select Wipe Method" --default-item "3" --menu "Choose a wiping method for HDDs:" 15 60 4 \
    "1" "Zero Fill (write zeros to the entire disk)" \
    "2" "Random Fill (write random data to the entire disk)" \
    "3" "DoD 5220.22-M (3-pass overwrite: zeros, ones, random)" \
    "4" "ATA Secure Erase (if supported)" 3>&1 1>&2 2>&3)
if [[ -z "$wipe_method" ]]; then
    whiptail --title "Error" --msgbox "No wipe method selected. Exiting." 10 60
    exit 1
fi

# Warn about ATA Secure Erase risks and default to DoD method if not explicitly chosen
if [[ "$wipe_method" == "4" ]]; then
    whiptail --title "WARNING" --msgbox "ATA Secure Erase may brick your drive if it is not connected to a SATA port or if the drive does not support it. Proceed with caution!" 10 60
else
    # Default to DoD 5220.22-M if no method is explicitly chosen
    wipe_method="3"
fi

# Ask if the user wants to verify the wipe
verify_wipe=$(whiptail --title "Verify Wipe" --yesno "Do you want to verify the wipe after completion? This will check if all sectors have been properly overwritten." 10 60 3>&1 1>&2 2>&3)
verify_wipe=$?

# Confirm wipe
whiptail --title "Confirmation" --yesno "You have selected the following devices for wiping:\n\n${device_queue[*]}\n\nProceed with wiping? This action is irreversible." 15 60
if [[ $? -ne 0 ]]; then
    whiptail --title "Aborted" --msgbox "Operation aborted." 10 60
    exit 1
fi

# Function to wipe a device
wipe_device() {
    local device=$1
    local log_file="/tmp/wipe_${device##*/}.log"
    echo "Processing $device..." > "$log_file"

    # Clear partition table before wiping
    echo "Clearing partition table on $device..." >> "$log_file"
    parted --script "$device" mklabel gpt >> "$log_file" 2>&1
    if [[ $? -ne 0 ]]; then
        echo "Failed to clear partition table on $device. Aborting wipe for this device." >> "$log_file"
        return
    fi

    if lsblk -d "$device" | grep -q nvme; then
        echo "Detected NVMe device: $device" >> "$log_file"
        echo "Attempting NVMe cryptographic erase..." >> "$log_file"
        if nvme sanitize "$device" --sanact=4 --verbose >> "$log_file" 2>&1; then
            echo "NVMe cryptographic erase completed for $device." >> "$log_file"
        else
            echo "NVMe sanitize failed. Falling back to NVMe Format." >> "$log_file"
            if nvme format "$device" --ses=1 >> "$log_file" 2>&1; then
                echo "NVMe format completed for $device." >> "$log_file"
            else
                echo "NVMe format also failed. Skipping $device." >> "$log_file"
                return
            fi
        fi

    elif hdparm -I "$device" | grep -q "Solid State Device"; then
        echo "Detected SSD device: $device" >> "$log_file"
        echo "Attempting secure erase using hdparm..." >> "$log_file"

        # Attempt hdparm secure erase
        hdparm_output=$(hdparm --user-master u --security-set-pass p "$device" 2>&1)
        if echo "$hdparm_output" | grep -q "SG_IO: bad/missing sense data"; then
            echo "Error: $hdparm_output" >> "$log_file"
            echo "hdparm failed due to SG_IO error. Falling back to 3-pass zero fill." >> "$log_file"

            # Ask if the user wants to perform zero and random fill for SSDs that do not support ATA Secure Erase
            if whiptail --title "Additional Wipe" --yesno "Do you want to perform a zero fill and random fill for this SSD (since ATA Secure Erase is not supported)?" 10 60 3>&1 1>&2 2>&3; then
                echo "Performing Zero Fill..." >> "$log_file"
                dd if=/dev/zero of="$device" bs=1M status=none >> "$log_file" 2>&1
                sync
                if [[ $? -ne 0 ]]; then
                    echo "Zero-fill failed on $device. Aborting wipe for this device." >> "$log_file"
                    return
                fi
                echo "Zero Fill completed." >> "$log_file"

                echo "Performing Random Fill..." >> "$log_file"
                dd if=/dev/urandom of="$device" bs=1M status=none >> "$log_file" 2>&1
                sync
                if [[ $? -ne 0 ]]; then
                    echo "Random fill failed on $device. Aborting wipe for this device." >> "$log_file"
                    return
                fi
                echo "Random Fill completed." >> "$log_file"
            else
                echo "Skipping zero and random fill for this SSD." >> "$log_file"
            fi
        else
            hdparm --user-master u --security-erase p "$device" >> "$log_file" 2>&1
            if [[ $? -eq 0 ]]; then
                echo "Secure erase completed for SSD $device." >> "$log_file"
            else
                echo "hdparm secure erase failed for SSD $device. Falling back to 3-pass zero fill." >> "$log_file"
            fi
        fi

        # Fallback: Zero fill the SSD three times if hdparm fails
        for i in {1..3}; do
            echo "Zero-fill pass $i for $device..." >> "$log_file"
            dd if=/dev/zero of="$device" bs=1M status=none >> "$log_file" 2>&1
            sync
            if [[ $? -ne 0 ]]; then
                echo "Zero-fill failed on $device. Aborting wipe for this device." >> "$log_file"
                break
            fi
            echo "Pass $i completed." >> "$log_file"
        done
        return

    else
        echo "Detected HDD: $device" >> "$log_file"
        echo "Wiping HDD using method $wipe_method..." >> "$log_file"

        case $wipe_method in
        1) # Zero Fill
            echo "Writing zeros to $device..." >> "$log_file"
            dd if=/dev/zero of="$device" bs=1M status=none >> "$log_file" 2>&1
            sync
            if [[ $? -ne 0 ]]; then
                echo "Zero-fill failed on $device. Aborting wipe for this device." >> "$log_file"
                return
            fi
            ;;
        2) # Random Fill
            echo "Writing random data to $device..." >> "$log_file"
            dd if=/dev/urandom of="$device" bs=1M status=none >> "$log_file" 2>&1
            sync
            if [[ $? -ne 0 ]]; then
                echo "Random fill failed on $device. Aborting wipe for this device." >> "$log_file"
                return
            fi
            ;;
        3) # DoD 5220.22-M
            echo "Performing DoD 3-pass overwrite on $device..." >> "$log_file"
            echo "Pass 1: Writing zeros..." >> "$log_file"
            dd if=/dev/zero of="$device" bs=1M status=none >> "$log_file" 2>&1
            sync
            if [[ $? -ne 0 ]]; then
                echo "Zero pass failed on $device. Aborting wipe for this device." >> "$log_file"
                return
            fi
            echo "Pass 2: Writing ones..." >> "$log_file"
            yes | tr '\0' '\377' | dd of="$device" bs=1M status=none >> "$log_file" 2>&1
            sync
            if [[ $? -ne 0 ]]; then
                echo "One pass failed on $device. Aborting wipe for this device." >> "$log_file"
                return
            fi
            echo "Pass 3: Writing random data..." >> "$log_file"
            dd if=/dev/urandom of="$device" bs=1M status=none >> "$log_file" 2>&1
            sync
            if [[ $? -ne 0 ]]; then
                echo "Random pass failed on $device. Aborting wipe for this device." >> "$log_file"
                return
            fi
            ;;
        4) # ATA Secure Erase
            echo "Attempting ATA Secure Erase on $device..." >> "$log_file"
            hdparm --user-master u --security-set-pass p "$device" >> "$log_file" 2>&1
            hdparm --user-master u --security-erase p "$device" >> "$log_file" 2>&1
            if [[ $? -ne 0 ]]; then
                echo "ATA Secure Erase failed on $device. Falling back to DoD 5220.22-M." >> "$log_file"
                wipe_method=3
                return
            else
                echo "ATA Secure Erase completed successfully." >> "$log_file"
            fi
            ;;
        esac

        # Clear partition table and disk identifier
        echo "Clearing partition table and disk identifier on $device..." >> "$log_file"
        dd if=/dev/zero of="$device" bs=512 count=34 status=none >> "$log_file" 2>&1
        sync
        if [[ $? -ne 0 ]]; then
            echo "Failed to clear partition table and disk identifier on $device. Aborting wipe for this device." >> "$log_file"
            return
        fi
        echo "Partition table and disk identifier cleared." >> "$log_file"
    fi

    echo "Wipe complete for $device." >> "$log_file"
}

# Wipe devices concurrently
for device in "${device_queue[@]}"; do
    device="/dev/$device"
    wipe_device "$device" &
done

# Wait for all background processes to finish
wait

# Print partition tables for all selected devices
echo "Printing partition tables for all selected devices..."
for device in "${device_queue[@]}"; do
    device="/dev/$device"
    echo "Partition table for $device:"
    fdisk -l "$device"
    echo "----------------------------------------"
done

# Ask if the user wants to check the logs
if whiptail --title "Check Logs" --yesno "Do you want to check the logs for the wipe operations? The logs are located in /tmp." 10 60; then
    for device in "${device_queue[@]}"; do
        device="/dev/$device"
        log_file="/tmp/wipe_${device##*/}.log"
        if [[ -f "$log_file" ]]; then
            whiptail --title "Log for $device" --textbox "$log_file" 20 80
        else
            whiptail --title "Error" --msgbox "Log file for $device not found in /tmp." 10 60
        fi
    done
fi

whiptail --title "Complete" --msgbox "All requested devices have been wiped." 10 60
```

### Features

- Zero Fill will zero in data
- Random Fill will randomzie data
- [DoD 5220.22-M ](https://en.wikipedia.org/wiki/National_Industrial_Security_Program#Data_sanitization)is the standard for clearing drives.
- [guttman method](https://en.wikipedia.org/wiki/Gutmann_method#Method) wouldn't want to use this [believe me](https://www.killdisk.com/blog-gutmann-method.htm)

Edit(s):

For SSD's you may have to fill it up with randomized data or zeros.

Got rid of guttman as that's useless leaving you with 3 methods.

Left a less secure option for SSD erase if hdparam doesn't work.

Got the less secure option to work, will wipe 3 times; be aware of wear leveling for SSD's.

Added in whiptail support for easier selection.

Added in verification of the wipe for sectors on HDD's Also added in secure erase with ATA and a final erase and clearing of partitions so now you have 4 options.

Added in an option to check to see if badblocks, whiptail and hdparm is installed, if not it will install it for the user.
Also added in to see if nvme-cli is installed and to install it.

Made it to where it can wipe all devices at once; also to confirm a verify.

Added in logs for /tmp/wipe_$device.log

Fixed the menu screen from being broken with secure ata erase.

Will show you the logs after the wipe if you requested it.

Made DoD a default selection, also made the script warn the user about secure ata erase potentially bricking the selected hard drive. 