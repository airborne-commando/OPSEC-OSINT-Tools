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
- [physical security](#physical-security-in-opsec)
- back to [main guide](../README.md)

---

## OPSEC Methods

<p align="center">
<img width="auto" height="auto" alt="OPSEC Methods" src="./img/jpg/OPSEC-methods.jpg" />
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

**Virtualization** allows a single physical machine to run multiple virtual environments, improving resource use and flexibility.

### How It Works

* **Virtual Machines (VMs)**: Simulated systems that run independently on shared hardware.
* **Hypervisor**: Software that manages VMs.

  * **Type 1** runs directly on hardware (e.g., VMware ESXi).
  * **Type 2** runs on an OS (e.g., VMware Workstation).

### Types

* **Server**: Multiple servers on one machine. (XCP-NG)
* **Desktop**: Centralized desktops delivered to users. (what We're using)
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
- [Monero (XMR)](https://www.getmonero.org/) - Privacy-focused cryptocurrency

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

For SSD's I'd recommend using LUK's or a container as securely erasing in traditional means is basically useless if you want to format the entire drive.

# Physical Security in OPSEC

**Physical security** is a core component of Operations Security (OPSEC) and refers to the measures taken to protect personnel, equipment, facilities, and information from physical threats such as unauthorized access, theft, vandalism, espionage, sabotage, terrorism, and natural disasters. In the context of OPSEC, physical security is about preventing adversaries from gaining physical access to sensitive information or critical infrastructure that could be exploited.

Physical security typically involves a layered approach, often called "security-in-depth," which integrates multiple active and passive controls such as:

* Perimeter barriers (fences, gates)
* Surveillance systems (CCTV, sensors)
* Access control (locks, badges, biometrics)
* Security personnel (guards, patrols)
* Intrusion detection systems
* Lighting and environmental design

These layers are designed to deter, detect, delay, and respond to potential threats, thereby reducing the risk of compromise or harm to assets and information.

## Can Physical Security Include Firearms?

>Did you know that a ‘weapon’ is any device used with intent to inflict damage or harm to living beings or structures?

Yes, physical security measures can include the use of firearms, especially in high-risk environments or where there is a credible threat of armed intrusion, terrorism, or violent crime. Armed security personnel are often deployed as a visible deterrent and as part of the response capability within a physical security plan.

For example:

* Military and critical infrastructure facilities may issue firearms to security forces as prescribed by their operational requirements and after proper briefing on the use of force.
* The presence of well-trained, armed security guards is recognized as an effective deterrence measure in certain high-risk settings.

However, the inclusion of firearms in physical security is subject to strict policies, legal regulations, and operational guidelines to ensure appropriate use and to mitigate potential risks associated with armed response.

## Summary Table

| Aspect                    | Description                                                                                          | Can Include Firearms? |
| ------------------------- | ---------------------------------------------------------------------------------------------------- | --------------------- |
| Physical Security (OPSEC) | Measures to protect assets, personnel, and information from physical threats                         | Yes, if justified     |
| Typical Measures          | Barriers, surveillance, access control, guards, detection systems                                    |                       |
| Firearms Role             | Used by trained security personnel as a deterrent and for response in high-risk or military settings | Yes                   |

**In summary:** Physical security in OPSEC is about safeguarding assets from physical threats using layered controls, and in certain contexts—especially military or high-security environments—this can include the deployment of firearms as part of the overall security strategy.


---

## Physical Security and Chemical Protection

**Physical security** in the context of OPSEC (Operational Security) refers to measures that protect physical assets, spaces, and people from unauthorized access, theft, or harm. This includes barriers, locks, surveillance, guards, and other tangible protections.

**Chemical protection**—such as using chemicals to deter, incapacitate, or protect oneself (e.g., pepper spray, tear gas, or chemical barriers)—can be considered part of physical security if the intent is to prevent or mitigate physical threats. These are tools or methods that physically affect an intruder or attacker, thereby contributing to the overall physical security posture.

---

## Key Points

- Physical security focuses on tangible measures to prevent unauthorized physical access or harm.
- Using chemicals (like pepper spray or tear gas) as a defensive measure falls under physical security because it directly impacts the physical safety or integrity of people or property.
- The use of chemicals for protection is often regulated by law and may have ethical, legal, and safety implications.

---

## Summary Table

| Security Type       | Typical Measures                         | Can Include Chemicals?   |
|---------------------|------------------------------------------|--------------------------|
| Physical Security   | Locks, barriers, guards, surveillance    | Yes (e.g., pepper spray) |
| Chemical Security   | Safe handling/storage of chemicals       | Not typically for defense|

---

## Conclusion

Yes, using chemicals to protect yourself (such as defensive sprays) can be considered part of physical security in OPSEC, as these are tangible means to prevent or mitigate physical threats. Always ensure such measures comply with relevant laws and regulations.

---


**Remember:** The best OPSEC sometimes means not interacting with your target at all to avoid alerting them.
And again [You Didn't Have to Post That](https://www.youtube.com/watch?v=AkQaL9SU2BY).
