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
- [External Links](#external-links)
- [References](#references)
- back to [main guide](../README.md)

---

## OPSEC Methods

<p align="center">
<img alt="OPSEC Methods" src="../img/png/graphs/OPSEC-methods.png" />
</p>
<p align="center">
OPSEC Methods Graph, a higher quality can be viewed <a href="../img/jpg/OPSEC-methods.jpg">here</a>.
</p>

## Content Obfuscation

### Text Rewriting Tools
- [Free Article Spinner](https://free-article-spinner.com/) - Basic and advanced paraphrasing.
- [RewriteTools](https://www.rewritertools.com/article-spinner) - Simple article spinner.
- [SEO Tool Station](https://seotoolstation.com/article-rewriter) - SEO-focused rewriter (use Tor after few attempts).
- [ChatGPT](https://chatgpt.com/) - "Rewrite this as..." prompt (censorship aware).
- [DeepSeek](https://chat.deepseek.com/) - Requires account (censored on sensitive topics).
  - [Offline Version Guide](https://ihsoyct.github.io/r/AIAssisted/comments/1ibv6g8/how_to_run_deepseek_r1_offline_on_your_computer/).
  - [LM Studio](https://lmstudio.ai/) - For running models locally.

Protip: Doesn't hurt to write genuinely, act human and be human if doing [HUMINT](./HUMINT.md).

### Multilingual Tools
- [Google Translate](https://translate.google.com/) - For language conversion.

---

## Image Generation & Editing

### Generation Tools
- [Stable Diffusion WebUI](https://github.com/AUTOMATIC1111/stable-diffusion-webui) - Local image generation.
  - [Civitai Model Repository](https://civitai.com/models) - Use 1.5 models for older GPUs.
- [This Person Does Not Exist](https://thispersondoesnotexist.com/) - Quick face generation (has watermark).

### Editing Tools
- [Free Inpaint](https://pincel.app/tools/inpaint) - Web-based inpainting
  - Pair with [Upscale Media](https://www.upscale.media/)
- [IOPaint](https://github.com/Sanster/IOPaint) - Local CPU-based inpainting
  - [Linux Launcher](https://github.com/airborne-commando/iopaint-launcher/)

## Cloaking tools

[Fawkes](https://github.com/Shawn-Shan/fawkes) - a facial cloaking tool that can run locally on Linux/Windows. Was tested on arch. See issue [#191](https://github.com/Shawn-Shan/fawkes/issues/191). The only downside with Fawkes is that sometimes it doesn't detect a face or the face can get detected by AI programs anyway.

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
- [veracrypt](https://veracrypt.io/en/Beginner's%20Tutorial.html) - Container/drive encryption.
- [LUKS](https://guardianproject.info/archive/luks/) - Hard drive encryption.
- [keepassxc](https://keepassxc.org/) - Passwords and secure notes.

## Anonymity Tools
- Ip Hiders and VPNS
    - [Tor Project](https://www.torproject.org/)
    
**What is tor?**:

>"TOR is developed and maintained by the The Tor Project, Inc. When you look at the Tor Project's About Page, you'll notice that its an entity labeled as a 501(c)3; this is a type of nonprofit organization. Information about nonprofits can be found in their own set of databases. Check out GuideStar Pro and search for the the Tor Project to learn more about the foundation developing this web browser."(Indiana University Bloomington, 2024)[^12]

- [Mullvad VPN](https://mullvad.net/en)

    - [I2P](https://geti2p.net/en/)
        - [More info about it here](https://geti2p.net/en/about/intro)

    - [Freenet](https://hyphanet.org/) (See below for Vulnerabilities)
        - A list of news articles listing vulnerabilities are within the [external links](#external-links) section below feel free to read.


According to *The Sacramento Bee* 

>“the U.S. Attorney’s Office in Sacramento said two of them included a Lodi man, who was arrested for allegedly using the Freenet network to share child pornography, and a Solano County man, who was arrested for allegedly trafficking a 16-year-old girl who had been reported missing from Sacramento County” (The Sacramento Bee, 2025).[^9]

Tor Also faced Vulnerabilities from either:

- timing analyses[^13].
- user error[^14].
  
>"Tor does not protect all of your computer's Internet traffic when you run it. Tor only protects applications that are properly configured to send their Internet traffic through Tor."

---

- Operating Systems
    - [tails OS](https://tails.net/) - Live USB OS.
    - [Whonix](https://www.whonix.org/) - VM-based anonymity OS.


- Phones
    - Android
        - **GrapheneOS** - GrapheneOS is a privacy and security-focused mobile operating system based on the Android Open Source Project (AOSP). Can only run on Pixel phones.
          
**Protip:** Not storing information on mobile devices is the best OPSEC.

---
## To try TailsOS (Insecure)
---

- [ISO image](https://tails.net/install/download-iso/index.en.html)
  - In conjunction you'll need to try one of these under [Virtualization](#virtualization)

Boot inside your favorite VM/Hypervisor and you should be good to go!

The reason why this isn't secure is that the host machine may be [compromised](https://tails.net/doc/advanced_topics/virtualization/index.en.html)
and it defeats the whole purpose of TailsOS if you do this instead of installing it inside a USB. Only use this if you want to try the OS.

>"Traces of your Tails session are likely to be left on the local hard disk. For example, host operating systems usually use swapping (or paging) which copies part of the RAM to the hard disk" (The Tails Project, n.d.). [^10]


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

- **Enable I2P**: Activates I2P functionality.
- **Disable I2P**: Deactivates I2P and restores normal Tor-only operation.
- **I2P Console**: Opens the I2P router admin interface.

To use I2P:

1. Click the **Enable I2P** desktop shortcut
2. Start the Tor Browser and Browse .i2p sites:
   - For known sites: `http://site.i2p` (never use https:// only http://)
   - For more reliable access: Use .b32.i2p addresses

To monitor I2P status:
- Open the I2P console at `http://10.200.1.1:7070`

[Usage and Considerations](https://github.com/itsOwen/i2pd-tails-os?tab=readme-ov-file#-usage).

[With I2P support, Install Docs](https://github.com/itsOwen/i2pd-tails-os?tab=readme-ov-file#-installation).

---

## Virtualization

**Virtualization** Virtual machines running a full operating system.(Yale University, 2014)[^3]

### How It Works

* **Virtual Machines (VMs)**: Simulated systems that run independently on shared hardware or on the cloud.
* **Hypervisor**: Software that manages VMs, directly on the CPU.[^3] 

  * **Type 1** runs directly on hardware (e.g., VMware ESXi).[^4]
  * **Type 2** runs on an OS, typically a server.[^4]


How secure are **Virtual machines?**

As stated on **The University of Tennessee's** webpage:

>"While virtual machines offer valuable flexibility, they can also create security vulnerabilities if they are not properly configured" (University of Tennessee Office of Information Technology, n.d., para. 1).[^2]

It can also depend on the host system. In an example the system gets compromised either physically or by a virus and the Virtual Machine is not secured inside a LUKS drive.

For LUKS, the user needs to enter the password typically in order to mount said drive so the Virtual Disk would be safe.

### Types

* **Server**: It is designed to operate on machines made of bare metal (The Linux Foundation).[^6] [^5]
* **Desktop**: Centralized desktops delivered to users, think amazon web service.[^7]
    - Can also be local use like virt-manager/KVM **Hypervisors**.
      
>"(Local desktop virtualization allows running a virtualization stack on a system physically accessible by the hypervisor, enabling the use of software on a specific OS without installing that OS by creating a virtualized instance)"[^8].(Veeam, n.d.)

* **Network**: Virtual network channels.
* **Storage**: Unified storage from multiple devices.
* **Application**: Apps run independently of the OS.

### Benefits of a remote virtual machine

* Better resource use.
* Lower hardware costs.
* Easy scaling.
* Improved security.
* Simplified backups and recovery.


### Downsides of a remote VM:

* Security risks.
* Internet access only.
  

### Use Cases

Core to cloud computing and enterprise IT, enabling efficient, scalable infrastructure management.


### Benefits of a local virtual machine

* Better Security.
* Ease of Access.

### Downsides of a local VM:

* Hardware costs.
* Single point of failure.

### Use Cases

Personal use cases, such as videogames to isolation of a user environment.

---

- [Libvirt](https://virt-manager.org/) - Advanced Linux virtualization.
- [VirtualBox](https://www.virtualbox.org/) - Cross-platform solution.

---

## Privacy Protection

### Email Services
- [User/Email Generator](https://github.com/airborne-commando/user-email-gen) - For ProtonMail/cock.li
    - PROTIP: For Proton, you'll probably want to use a VPN as TOR will get flagged; use Mullvad. Cock.li is back up but you'll need to use an email client, use the ones suggested below.
- [Temp-Mail](https://temp-mail.org/en/) - Temporary email.
- [Username Generator](https://jimpix.co.uk/words/username-generator.php).
- [cock.li](https://cock.li/register.php).
- [ProtonMail](https://proton.me/mail).

### email clients

- [thunderbird](https://www.thunderbird.net/en-US/).

### Android
- [k-9 mail](https://k9mail.app/).


### Data Broker Opt-Out
- [Big Ass Opt-Out List](https://github.com/yaelwrites/Big-Ass-Data-Broker-Opt-Out-List).

---

## Cryptocurrency
- [Monero (XMR)](https://www.getmonero.org/) - Privacy-focused cryptocurrency.

---

## Data Destruction
- [DBAN](https://dban.org/) - HDD wiping; VM. Not good for SSD's.
- [Arch Linux Wipe Guide](https://wiki.archlinux.org/title/Securely_wipe_disk) Shows how to effectively wipe an SSD.
- [NVMe/SSD/HDD Nuke Script](https://gist.github.com/airborne-commando/6a690bd0644a9f1d76bc8c585d9ee969) may brick your drives, trust me.
- [physical destruction](physical-destruction.md) last ditch effort, may be costly.

---

## Miscellaneous
- [PrivacyTools.io](https://www.privacytools.io/) - Privacy software/resources.
- [crypt.fyi](https://www.crypt.fyi/new) - "Secure" data sharing, I say "Secure" because it's not safe on screenshots.
- [One-Time Pad Implementation](https://github.com/airborne-commando/one-time-pad-truly-random).
- [Mouse-R](https://gist.github.com/airborne-commando/105e4c77598aab9662bca833ee944379) - use with veracrypt for mouse entropy.

**Zip**
- [Random Address](https://zip.postcodebase.com/randomaddress) - Zip code gen for the US.

**Credit Card**
- [Card Generator](https://www.creditcardvalidator.org/generator#) - Card Gen for fake numbers, you won't buy anything.
- [Privacy](https://www.privacy.com/) - Virtual Card, you can set limits. **Do not commit fraud and get sent to collections.**

Example from [paypal](https://developer.paypal.com/tools/sandbox/card-testing/), which also generates some fake numbers but gives you an idea. Still cannot buy anything.

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

| Database  |  Human Password  |  Database  |  Generated Password                                      |  VeraCrypt (db2.kdbx) |  Generated Password                               |
| ----------|------------------|------------|----------------------------------------------------------|-----------------------|-------------------------------------------------- |
| db1.kdbx  |  `password123`   |  db2.kdbx  | `ipri0-3ri-03ir-03ir0-3ir0-3wqirw3ir-0wi3ri0-w3ir-iw3-0` |  VeraCrypt container  | `fjeipfjopefjkpoewjf9pjepwujf9euf9wejfe9-fu90uefu`|

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
  - After transfer: run `wipe` to remove residuals on desktop (HDD) for SSD use an encrypted drive or container.
  - Can upload/download from encrypted container.


Then if i need, I share it with another simplex note on my phone by connecting my own phone instance and the desktop as a chat. Then forwarding it to private notes.
After that is done, I delete the convo for both but keep private notes for both adding in redundancy. just save inside simplex and desktop to reduce data remnants.

For SSD's I'd recommend using LUK's or a container as securely erasing in traditional means is basically useless if you want to format the entire drive.[^1]

You may also just send things to RAM with tmpfs and do a shutdown as it lets normal users write into it:

>"Tmpfs is a file system which keeps all files in virtual memory. Everything in tmpfs is temporary in the sense that no files will be created on your hard drive. If you unmount a tmpfs instance, everything stored therein is lost" ("Tmpfs is a file system," 2001).[^11]

However tmpfs maybe an insecure method without dm-crypt/LUKS due to SWAP.[^15]

And there is the multi-user issue, can be solved with this line in fstab.[^16] [^17]

    tmpfs   /www/cache    tmpfs  rw,size=1G,nr_inodes=5k,noexec,nodev,nosuid,uid=user,gid=group,mode=1700 0 0

---


**Remember:** The best OPSEC sometimes means not interacting with your target at all to avoid alerting them. 

**You also [Didn't Have to Post That](https://www.youtube.com/watch?v=AkQaL9SU2BY)**.

---

## External Links:

* [Virtualization via Virtual Machines - blog post, September 18, 2017](https://www.sei.cmu.edu/blog/virtualization-via-virtual-machines/)
* [The Linux Kernel Archives — tmpfs (August 23, 2024)](https://www.kernel.org/doc/html/latest/filesystems/tmpfs.html)
* [Ramfs, rootfs and initramfs — Linux Kernel documentation (October 17, 2005)](https://www.kernel.org/doc/html/latest/filesystems/ramfs-rootfs-initramfs.html#ramfs-rootfs-and-initramfs)
* [tmpfs(5) manual page — Arch Linux Man Pages (updated Sep 21, 2025, Linux man-pages 6.16)](https://man.archlinux.org/man/tmpfs.5)
* [DMCrypt - cryptsetup Wiki](https://gitlab.com/cryptsetup/cryptsetup/-/wikis/DMCrypt)
* [cryptsetup - GitLab repository](https://gitlab.com/cryptsetup/cryptsetup)
* [cryptsetup(8) manual page — Arch Linux Man Pages(updated Aug 13th, 2025, Linux man-pages 2.8.1-1)](https://man.archlinux.org/man/core/cryptsetup/cryptsetup.8.en)
* [Chapter 29 Section 2 - Encrypting block devices using dm-crypt/LUKS - redhat documentation (2025)](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/5/html/installation_guide/ch29s02)
* [dm-crypt - Archlinux Wikipedia (Updated on 21 June, 2025)](https://wiki.archlinux.org/title/Dm-crypt)
* [GrapheneOS: Frequently Asked Questions - supported devices](https://grapheneos.org/faq#supported-devices)
* [Using Tor Safely – Tor Browser Best Practices](https://support.torproject.org/tor-browser/security/using-tb-safely/)
* [Timeless Timing Attacks and Preload Defenses in Tor’s DNS Cache](https://www.usenix.org/system/files/sec23summer_458-dahlberg-prepub.pdf)
* [Police plants own computers in Freenet, log IPs, makes arrest – Hacker10](https://hacker10.com/internet-anonymity/police-plants-own-computers-in-freenet-makes-arrest/)
* [Police departments tracking efforts based on false statistics – Hyphanet](https://www.hyphanet.org/police-departments-tracking-efforts-based-on-false-statistics.html)
* [A De-anonymization Attack against Downloaders in Freenet IEEE – 2024 Publication (IEEE Xplore)](https://ieeexplore-custom.ieee.org/document/10621209?reload=true)


## References:

[^1]: "Layered Security." *ScienceDirect*, Elsevier B.V., 2025, www.sciencedirect.com/topics/computer-science/layered-security. Accessed 22 Sept. 2025.

[^2]: University of Tennessee Office of Information Technology. (n.d.). *Protecting your virtual machines*. University of Tennessee. https://oit.utk.edu/security/learning-library/article-archive/protecting-your-virtual-machines

[^3]: Yale University. “Virtualization.” yale, 17 June 2014, www.cs.yale.edu/homes/aspnes/pinewiki/Virtualization.html.

[^4]: Kelley, Karin. “Cloud Computing Tutorial: Virtualization, Hypervisors, and VMware Workstation - Caltech.” pg-p.ctme.caltech.edu, 24 June 2024, pg-p.ctme.caltech.edu/blog/cloud-computing/virtualization-hypervisors-and-vmware-workstation.

[^5]: Vanderbilt University. “Virtual Servers.” Vanderbilt University, tdx.vanderbilt.edu/TDClient/33/Portal/Requests/ServiceDet?ID=147. Accessed 26 Sept. 2025.

[^6]: The Linux Foundation. “XCP-ng Documentation.” Xcp-ng, docs.xcp-ng.org. Accessed 26 Sept. 2025.

[^7]: GeeksforGeeks. “What Is Hosted Virtual Desktops (HVD)?” GeeksforGeeks, 23 July 2025, www.geeksforgeeks.org/cloud-computing/what-is-hosted-virtual-desktops-hvd/#.

[^8]: Veeam. (n.d.). Local desktop virtualization. Veeam. https://www.veeam.com/glossary/desktop-virtualization.html

[^9]: The Sacramento Bee. (2025, May 7). *Lodi man arrested in federal child pornography case, Solano suspect accused of trafficking teen*. The Sacramento Bee. https://www.sacbee.com/news/local/crime/article305942121.html 

[^10]: The Tails Project. (n.d.). *Virtualization*. Tails. Retrieved October 4, 2025, from https://tails.net/doc/advanced_topics/virtualization/index.en.html

[^11]: Rohland, C. (Original work published 2001, December 01). Tmpfs - a file system which keeps all files in virtual memory. Updated by Dickins, H., & Kosaki, M. (2010). Retrieved November 10, 2025, from https://research.cs.wisc.edu/adsl/Software/tratr/.scripts/tratr/Documentation/filesystems/tmpfs.txt

[^12]: “Library Research Guides: Digital Privacy: Digital Privacy Practices.” Indiana University Bloomington, wayback machine, 7 July 2025, https://web.archive.org/web/20250208104257/https://guides.libraries.indiana.edu/c.php?g=1325689&p=9771453.

[^13]: Irwin, K. (2024, September 20). *Tor dark web browser users reportedly unmasked by police*. PCMag. https://www.pcmag.com/news/tor-dark-web-browser-users-reportedly-unmasked-by-police

[^14]: Tor Project. (n.d.). *Tor Browser best practices*. Retrieved December 1, 2025, from https://support.torproject.org/tor-browser/security/using-tb-safely/

[^15]: FreeBSD Documentation Project. (n.d.). Encrypting swap. FreeBSD Handbook. https://docs-archive.freebsd.org/doc/13.0-RELEASE/usr/local/share/doc/freebsd/en/books/handbook/swap-encrypting.html

[^16]: The Linux Kernel Archives. (2025, May 17). tmpfs(5) - a virtual memory filesystem. Linux man-pages. https://man7.org/linux/man-pages/man5/tmpfs.5.html

[^17]: ArchWiki. (2025, September 28). tmpfs. https://wiki.archlinux.org/title/Tmpfs