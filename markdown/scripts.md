# Collection of scripts

[main guide](../README.md)

### Nuke

Will let you try to scrub and sanatize nvme, ssd, hdd; **BE WARNED** it may brick your device.

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

# mouse-r

* record and playback mouse movement; useful for veracrypt.

---

		Python3 -m venv venv
		
		Source venv/bin/activate
		
		pip install pyautogui numpy matplotlib scipy pynput

---

```
import time
import json
import numpy as np
import pyautogui
from scipy.interpolate import make_interp_spline
from pynput import mouse

class UltraFastMouseRecorder:
    def __init__(self):
        self.recorded_data = []
        self.is_recording = False
        self.listener = None
        self.screen_width, self.screen_height = pyautogui.size()
        
    def start_recording(self):
        """Start recording mouse movements with high precision"""
        self.recorded_data = []
        self.is_recording = True
        print("Recording started... Press middle mouse button to stop.")
        
        def on_move(x, y):
            if self.is_recording:
                self.recorded_data.append({
                    'x': x,
                    'y': y,
                    'time': time.perf_counter()  # Highest precision timer
                })
                
        def on_click(x, y, button, pressed):
            if button == mouse.Button.middle and pressed:
                self.stop_recording()
                return False
                
        self.listener = mouse.Listener(
            on_move=on_move,
            on_click=on_click
        )
        self.listener.start()
        
    def stop_recording(self):
        """Stop recording mouse movements"""
        self.is_recording = False
        if self.listener:
            self.listener.stop()
        print(f"Recording stopped. Captured {len(self.recorded_data)} points.")
        
    def save_to_file(self, filename):
        """Save recorded data to a JSON file"""
        with open(filename, 'w') as f:
            json.dump(self.recorded_data, f)
        print(f"Data saved to {filename}")
        
    def load_from_file(self, filename):
        """Load recorded data from a JSON file"""
        with open(filename, 'r') as f:
            self.recorded_data = json.load(f)
        print(f"Loaded {len(self.recorded_data)} points from {filename}")
        return self.recorded_data
        
    def optimize_playback_data(self, speed_factor=10.0):
        """Pre-process data for ultra-fast playback"""
        if len(self.recorded_data) < 2:
            return self.recorded_data
            
        # Convert to numpy arrays for faster processing
        x = np.array([p['x'] for p in self.recorded_data])
        y = np.array([p['y'] for p in self.recorded_data])
        t = np.array([p['time'] for p in self.recorded_data])
        
        # Calculate time differences and apply speed factor
        t_diff = np.diff(t)
        t_diff = t_diff / speed_factor
        
        # Create optimized data structure
        optimized_data = []
        for i in range(len(x)):
            optimized_data.append({
                'x': x[i],
                'y': y[i],
                'time_diff': t_diff[i-1] if i > 0 else 0
            })
            
        return optimized_data
        
    def ultra_fast_playback(self, speed_factor=10.0, relative=False, loop_count=1, loop_delay=0.0):
        """Extremely fast playback implementation with looping support"""
        if not self.recorded_data:
            print("No data to play back")
            return
            
        if loop_count <= 0:
            print("Invalid loop count. Must be 1 or greater.")
            return
            
        print(f"Ultra-fast playback at {speed_factor}x speed for {loop_count} loop(s)...")
        if loop_count > 1:
            print(f"Loop delay: {loop_delay}s between iterations")
        
        # Pre-process data for optimal playback
        playback_data = self.optimize_playback_data(speed_factor)
        
        for loop_iteration in range(loop_count):
            if loop_count > 1:
                print(f"Starting loop {loop_iteration + 1}/{loop_count}")
            
            # Move to starting position immediately with no delay
            first_point = playback_data[0]
            pyautogui.moveTo(first_point['x'], first_point['y'], _pause=False)
            
            # Use the most performant loop structure
            start_time = time.perf_counter()
            
            for i in range(1, len(playback_data)):
                point = playback_data[i]
                
                # Calculate target time using pre-computed time differences
                target_time = start_time + point['time_diff']
                
                # Busy-wait for maximum precision (remove sleep completely)
                while time.perf_counter() < target_time:
                    pass
                    
                # Move mouse with absolute minimum overhead
                if relative:
                    current_x, current_y = pyautogui.position()
                    dx = point['x'] - current_x
                    dy = point['y'] - current_y
                    pyautogui.move(dx, dy, _pause=False)
                else:
                    pyautogui.moveTo(point['x'], point['y'], _pause=False)
            
            # Add delay between loops if specified and not the last iteration
            if loop_delay > 0 and loop_iteration < loop_count - 1:
                time.sleep(loop_delay)
                
        print(f"Playback complete. Average speed: {self.calculate_average_speed(playback_data):.6f}s per point")
        
    def calculate_average_speed(self, playback_data):
        """Calculate average time between points"""
        if len(playback_data) < 2:
            return 0
        total_time = sum(p['time_diff'] for p in playback_data[1:])
        return total_time / (len(playback_data) - 1)

# Example usage
if __name__ == "__main__":
    recorder = UltraFastMouseRecorder()
    
    print("1. Record new movements")
    print("2. Load from file")
    print("3. Ultra-fast playback")
    print("4. Ultra-fast playback with looping")
    print("5. Save to file")
    print("6. Exit")
    
    while True:
        choice = input("Select an option (1-6): ")
        
        if choice == '1':
            recorder.start_recording()
            while recorder.is_recording:
                time.sleep(0.1)
        elif choice == '2':
            filename = input("Enter filename to load: ")
            recorder.load_from_file(filename)
        elif choice == '3':
            speed_input = input("Enter speed factor (e.g., 10 for 10x speed) [default: 1]: ").strip()
            speed_factor = float(speed_input) if speed_input else 1.0
            relative = input("Use relative movements? (y/n): ").lower() == 'y'
            recorder.ultra_fast_playback(speed_factor=speed_factor, relative=relative)
        elif choice == '4':
            speed_input = input("Enter speed factor (e.g., 10 for 10x speed) [default: 1]: ").strip()
            speed_factor = float(speed_input) if speed_input else 1.0
            relative = input("Use relative movements? (y/n): ").lower() == 'y'
            loop_input = input("Enter number of loops (1 for single playback) [default: 1]: ").strip()
            loop_count = int(loop_input) if loop_input else 1
            loop_delay = 0.0
            if loop_count > 1:
                delay_input = input("Enter delay between loops in seconds [default: 0]: ").strip()
                loop_delay = float(delay_input) if delay_input else 0.0
            recorder.ultra_fast_playback(speed_factor=speed_factor, relative=relative, 
                                       loop_count=loop_count, loop_delay=loop_delay)
        elif choice == '5':
            filename = input("Enter filename to save: ")
            recorder.save_to_file(filename)
        elif choice == '6':
            break
```


## Sort CSV for blackbird and edit with libre-office calc

    #!/bin/bash
    
    # Use this to sort generated CSV files from blackbird and edit as txt or use libreoffice calc.
    
    # Set your target directory
    TARGET_DIR="results"
    OUTPUT_FILE="output.csv"
    
    # Write header
    echo "name,url" > "$OUTPUT_FILE"
    
    # Process each CSV file
    find "$TARGET_DIR" -name "*.csv" -type f | while read csvfile; do
        echo "Processing: $csvfile"
        # Skip header and extract first two columns
        tail -n +2 "$csvfile" | cut -d, -f1,2 >> "$OUTPUT_FILE"
    done
    
    echo "Results saved to $OUTPUT_FILE"


# podman stuff for archivebox

    podman exec -it --user archivebox <container_id_or_name> \
      /bin/bash -c "archivebox manage createsuperuser"


# TOR manual inspect element:

if you ever get banned from facecheck.id 

* upload your image, 
* solve the captcha 
  
then and you'll need to do this: 

* go to inspect element on the results page.
* pick an element from the page shift+ctrl+c
* copy the rule usually fimg0 to the last number like fimg59
* and you'll be be set:

here is an example of a rule that is copied (may be expired as of writing this):

    #fimg0 {
        background-image: url("data:image/webp;base64, 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");
    }


# Why can't I use extensions on TOR?

You can, but it's best not as that can make you more distinguishable (fingerprinting).