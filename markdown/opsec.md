# OPSEC Toolkit

A comprehensive guide to operational security tools and techniques.

## Table of Contents
- [OPSEC Methods](#opsec-methods)
- [Content Obfuscation](#content-obfuscation)
- [Image Generation & Editing](#image-generation--editing)
- [Anonymity Tools](#anonymity-tools)
    - [Trying TailsOS](opsec.md#to-try-tailsos-unsecure)
    - [i2p with TailsOS](opsec.md#i2p-with-TailsOS-not-supported-but-is-amnesic)
    - [Secure File Transfer (TailsOS)](opsec.md#secure-file-transfer-methods-in-tailsos)
- [Virtualization](#virtualization)
- [Privacy Protection](#privacy-protection)
- [Cryptocurrency](#cryptocurrency)
- [Data Destruction](#data-destruction)
- [Miscellaneous](#miscellaneous)
- [References](#References)
- back to [main guide](../README.md)

---

## OPSEC Methods

<p align="center">
<img alt="OPSEC Methods" src="../img/svg/OPSEC-methods.svg" />
</p>

## Content Obfuscation

### Text Rewriting Tools
- [Free Article Spinner](https://free-article-spinner.com/) - Basic and advanced paraphrasing
- [RewriteTools](https://www.rewritertools.com/article-spinner) - Simple article spinner
- [SEO Tool Station](https://seotoolstation.com/article-rewriter) - SEO-focused rewriter (use Tor after few attempts)
- [ChatGPT](https://chatgpt.com/) - "Rewrite this as..." prompt (censorship aware)
- [DeepSeek](https://chat.deepseek.com/) - Requires account (censored on sensitive topics)
  - [Offline Version Guide](https://www.reddit.com/r/AIAssisted/comments/1ibv6g8/how_to_run_deepseek_r1_offline_on_your_computer/)
  - [LM Studio](https://lmstudio.ai/) - For running models locally

### Multilingual Tools
- [Google Translate](https://translate.google.com/) - For language conversion

---

## Image Generation & Editing

### Generation Tools
- [Stable Diffusion WebUI](https://github.com/AUTOMATIC1111/stable-diffusion-webui) - Local image generation
  - [Civitai Model Repository](https://civitai.com/models) - Use 1.5 models for older GPUs
- [This Person Does Not Exist](https://thispersondoesnotexist.com/) - Quick face generation (has watermark)

### Editing Tools
- [Free Inpaint](https://pincel.app/tools/inpaint) - Web-based inpainting
  - Pair with [Upscale Media](https://www.upscale.media/)
- [IOPaint](https://github.com/Sanster/IOPaint) - Local CPU-based inpainting
  - [Linux Launcher](https://github.com/airborne-commando/iopaint-launcher/)

### Meta Tools
- [ExifTool](https://exiftool.org/) - Metadata editing/stripping
  - Installation:
    ```
    # Debian/Ubuntu
    sudo apt update && sudo apt install exiftool
    
    # Fedora
    sudo dnf install exiftool
    
    # Arch
    sudo pacman -S exiftool
    ```

---

# Encryption
- [veracrypt](https://veracrypt.io/en/Beginner's%20Tutorial.html) - Container/drive encryption
- [LUKS](https://guardianproject.info/archive/luks/) - Hard drive encryption
- [keepassxc](https://keepassxc.org/) - Passwords and secure notes

## Anonymity Tools
- Ip Hiders and VPNS
    - [Tor Project](https://www.torproject.org/)
    - [Mullvad VPN](https://mullvad.net/en)

    - [I2P](https://geti2p.net/en/)
        - [More info about it here](https://geti2p.net/en/about/intro)

    - [Freenet](https://hyphanet.org/) (See below for Vulnerabilities)
        - Wikipedia article on [Vulnerabilities](https://en.wikipedia.org/wiki/Hyphanet#Vulnerabilities), not that I feel bad.
        - An [Article](https://www.sacbee.com/news/local/crime/article305942121.html)

Tor Also faced Vulnerabilities:

- [timing analyses](https://www.pcmag.com/news/tor-dark-web-browser-users-reportedly-unmasked-by-police)
- They even state it's most likely [user error](https://support.torproject.org/faq/staying-anonymous/)

---

- Operating Systems
    - [tails OS](https://tails.net/) - Live USB OS
    - [Whonix](https://www.whonix.org/) - VM-based anonymity OS


- Phones
    - Android
        - [GrapheneOS](https://grapheneos.org/) - GrapheneOS is a privacy and security-focused mobile operating system based on the Android Open Source Project (AOSP). 
        - [CalyxOS](https://calyxos.org/) - CalyxOS is a privacy-focused, open-source Android operating system designed to give everyday users greater control over their data and digital security.

---
## To try TailsOS (Unsecure)
---

- [ISO image](https://tails.net/install/download-iso/index.en.html)
  - In conjunction you'll need to try one of these [Virtualization](#virtualization)

Boot inside your favorite VM/Hypervisor and you should be good to go!

The reason why this isn't secure is that the host machine may be [compromised](https://tails.net/doc/advanced_topics/virtualization/index.en.html)
and it defeats the whole purpose of TailsOS if you do this instead of installing it inside a USB. Only use this if you want to try the OS.

---

## I2P with TailsOS (not supported but is Amnesic)

## 🔧 Installation

1. **Download the script** from the GitHub repository:
``` 
git clone https://github.com/itsOwen/i2pd-tails-os.git
cd i2pd-tails-os
```

2. **Enable admin privileges** in Tails:
   - At the Tails welcome screen, click "+" under "Additional Settings"
   - Choose "Administration Password"
   - Set a password and continue booting

3. **Run the script**:
   - Open a Terminal (Applications > System Tools)
   - Switch to root with:
   ``` 
   sudo -i
   ```
   - Navigate to the script directory and run:
   ```
   ./install_i2pd.sh
   ```

4. **Wait for installation to complete** (5-10 minutes)

## 🚀 Usage

After installation, you'll find these desktop shortcuts:

- **Enable I2P**: Activates I2P functionality
- **Disable I2P**: Deactivates I2P and restores normal Tor-only operation
- **I2P Console**: Opens the I2P router admin interface

To use I2P:

1. Click the **Enable I2P** desktop shortcut
2. Start Tor Browser
3. Browse .i2p sites:
   - For known sites: `http://site.i2p` (never use https://)
   - For more reliable access: Use .b32.i2p addresses

To monitor I2P status:
- Open the I2P console at `http://10.200.1.1:7070`

[Usage and Considerations](https://github.com/itsOwen/i2pd-tails-os?tab=readme-ov-file#-usage)

[With I2P support, Install Docs](https://github.com/itsOwen/i2pd-tails-os?tab=readme-ov-file#-installation)

---

## Virtualization

**Virtualization** Virtual machines running a full operating system.(Yale University, 2014)[^Yale]

### How It Works

* **Virtual Machines (VMs)**: Simulated systems that run independently on shared hardware.
* **Hypervisor**: Software that manages VMs, directly on the CPU[^Yale]. 

  * **Type 1** runs directly on hardware (e.g., VMware ESXi).[^Caltech]
  * **Type 2** runs on an OS, typically a server.[^Caltech]


How secure are Virtual machines?

As stated on The University of Tennessee's webpage "While virtual machines offer valuable flexibility, they can also create security vulnerabilities if they are not properly configured."[^utk]

It can also depend on the host system. In an example the system gets compromised either physically or by a virus and the Virtual Machine is not secured inside a LUKS drive.

### Types

* **Server**: It is designed to operate on machines made of bare metal (The Linux Foundation).[^XCP-ng][^vanderbilt]
* **Desktop**: Centralized desktops delivered to users, think amazon web service.[^GeeksforGeeks]
* **Network**: Virtual network channels.
* **Storage**: Unified storage from multiple devices.
* **Application**: Apps run independently of the OS.

### Benefits

* Better resource use
* Lower hardware costs
* Easy scaling
* Improved security
* Simplified backups and recovery

### Use Cases

Core to cloud computing and enterprise IT, enabling efficient, scalable infrastructure management.

---

- [Libvirt](https://virt-manager.org/) - Advanced Linux virtualization
- [VirtualBox](https://www.virtualbox.org/) - Cross-platform solution

---

## Privacy Protection

### Email Services
- [User/Email Generator](https://github.com/airborne-commando/user-email-gen) - For ProtonMail/cock.li
    - PROTIP: For Proton, you'll probably want to use a VPN as TOR will get flagged; use Mullvad.
- [Temp-Mail](https://temp-mail.org/en/) - Temporary email
- [Username Generator](https://jimpix.co.uk/words/username-generator.php)
- [cock.li](https://cock.li/register.php)
- [ProtonMail](https://proton.me/mail)

### email clients

- [thunderbird](https://www.thunderbird.net/en-US/)

### Android
- [k-9 mail](https://k9mail.app/)


### Data Broker Opt-Out
- [Big Ass Opt-Out List](https://github.com/yaelwrites/Big-Ass-Data-Broker-Opt-Out-List)

---

## Cryptocurrency
- [Monero (XMR)](https://www.getmonero.org/) - Privacy-focused cryptocurrency.

---

## Data Destruction
- [DBAN](https://dban.org/) - HDD wiping; VM. Not good for SSD's see below.
- [Arch Linux Wipe Guide](https://wiki.archlinux.org/title/Securely_wipe_disk)
- [NVMe/SSD/HDD Nuke Script](https://gist.github.com/airborne-commando/6a690bd0644a9f1d76bc8c585d9ee969)
- [physical destruction](physical-destruction.md)

---

## Miscellaneous
- [PrivacyTools.io](https://www.privacytools.io/) - Privacy software/resources
- [crypt.fyi](https://www.crypt.fyi/new) - "Secure" data sharing, I say "Secure" because it's not safe on screenshots.
- [One-Time Pad Implementation](https://github.com/airborne-commando/one-time-pad-truly-random)
- [Mouse-R](https://gist.github.com/airborne-commando/105e4c77598aab9662bca833ee944379) - use with veracrypt for mouse entropy

---

# Secure File Transfer Methods in TailsOS

## Recommended Methods
1. **Encrypted USB Drives**
   - Physical transfer with encryption
   - No internet required

2. **OnionShare (Built-In)**
   - Anonymous sharing via Tor
   - Generates onion links

3. **Tailscale Taildrop**
   - Encrypted P2P between devices
   - Requires Tailscale setup

4. **Persistent Storage**
   - Encrypted storage across sessions
   - Optional VeraCrypt containers

## Comparison Table
| Method                 | Encryption | Anonymity | Internet | Best Use Case          |
|------------------------|------------|-----------|----------|------------------------|
| Encrypted USB          | Yes        | No        | No       | Offline transfers      |
| OnionShare             | Yes (Tor)  | Yes       | Yes      | Anonymous sharing      |
| Taildrop               | Yes        | No        | Yes      | Personal device sync   |
| Persistent Storage     | Yes        | N/A       | No       | Secure local storage   |

## Security Notes
- Always wipe metadata
- Never transfer deanonymizing files
- Avoid cross-OS transfers on same device
- Protect encryption passphrases

## OPSEC Pipeline for secure files

| **Database** | **Human Password** | **Database** | **Generated** | **VeraCrypt** | **Generated** |
|--------------|--------------------|--------------|---------------|--------------|---------------|
| db1.kdbx   | `password123`      | db2.kdbx   | `ipri0-3ri-03ir-03ir0-3ir0-3wqirw3ir-0wi3ri0-w3ir-iw3-0` | VeraCrypt container | `fjeipfjopefjkpoewjf9pjepwujf9euf9wejfe9-fu90uefu` |

What I tend to do is save this in private notes inside simplex, I'd also recommend not saving your password as `password123`.


**Desktop**
- `db1.kdbx` (human-memorable password)
  - Grants access to:
    - `db2.kdbx`
    - VeraCrypt container

**VeraCrypt Container**
- `db1.kdbx` (machine-generated password inside the DB)
  - Grants access to:
    - Sensitive files
    - `db2.kdbx`

**SimpleX**
- Securely transfers `db2` password
  - After transfer: run `wipe` to remove residuals on desktop (HDD) for SSD use an encrypted drive or container
  - Can upload/download from encrypted container.


Then if i need, I share it with another simplex note on my phone by connecting my own phone instance and the desktop as a chat. Then forwarding it to private notes.
After that is done, I delete the convo for both but keep private notes for both adding in redundancy. just save inside simplex and desktop to reduce data remnants.

For SSD's I'd recommend using LUK's or a container as securely erasing in traditional means is basically useless if you want to format the entire drive.[^sciencedirect]

---


**Remember:** The best OPSEC sometimes means not interacting with your target at all to avoid alerting them.
And again [You Didn't Have to Post That](https://www.youtube.com/watch?v=AkQaL9SU2BY).

---

## References:

[^sciencedirect]: "Layered Security." *ScienceDirect*, Elsevier B.V., 2025, www.sciencedirect.com/topics/computer-science/layered-security. Accessed 22 Sept. 2025.

[^utk]: University of Tennessee, Knoxville. “Protecting Your Virtual Machines Office of Innovative Technologies.” The University of Tennessee Knoxville, oit.utk.edu/security/learning-library/article-archive/protecting-your-virtual-machines. Accessed 26 Sept. 2025.

[^Yale]: Yale University. “Virtualization.” yale, 17 June 2014, www.cs.yale.edu/homes/aspnes/pinewiki/Virtualization.html.

[^Caltech]: Kelley, Karin. “Cloud Computing Tutorial: Virtualization, Hypervisors, and VMware Workstation - Caltech.” pg-p.ctme.caltech.edu, 24 June 2024, pg-p.ctme.caltech.edu/blog/cloud-computing/virtualization-hypervisors-and-vmware-workstation.

[^vanderbilt]: Vanderbilt University. “Virtual Servers.” Vanderbilt University, tdx.vanderbilt.edu/TDClient/33/Portal/Requests/ServiceDet?ID=147. Accessed 26 Sept. 2025.

[^XCP-ng]: The Linux Foundation. “XCP-ng Documentation.” Xcp-ng, docs.xcp-ng.org. Accessed 26 Sept. 2025.

[^GeeksforGeeks]: GeeksforGeeks. “What Is Hosted Virtual Desktops (HVD)?” GeeksforGeeks, 23 July 2025, www.geeksforgeeks.org/cloud-computing/what-is-hosted-virtual-desktops-hvd/#.