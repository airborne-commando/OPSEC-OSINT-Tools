# OPSEC Toolkit

A comprehensive guide to operational security tools and techniques.

## Table of Contents
- [Content Obfuscation](#content-obfuscation)
- [Image Generation & Editing](#image-generation--editing)
- [Anonymity Tools](#anonymity-tools)
    - [Trying TailsOS](https://github.com/airborne-commando/OPSEC-OSINT-Tools/blob/patch/opsec.md#to-try-tailsos-unsecure)
    - [Secure File Transfer (TailsOS)](#secure-file-transfer-tailsos)
- [Virtualization](#virtualization)
- [Privacy Protection](#privacy-protection)
- [Cryptocurrency](#cryptocurrency)
- [Data Destruction](#data-destruction)
- [Miscellaneous](#miscellaneous)

---

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
  - [Model Repository](https://civitai.com/models) - Use 1.5 models for older GPUs
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

## Anonymity Tools
- [Tor Project](https://www.torproject.org/)
- [Mullvad VPN](https://mullvad.net/en)
- [TailsOS](https://tails.net/) - Live USB OS
- [Whonix](https://www.whonix.org/) - VM-based anonymity OS

---
To try TailsOS (Unsecure)
---

- [ISO image](https://tails.net/install/download-iso/index.en.html)
  - In conjunction you'll need to try one of these [Virtualization](#virtualization)

Boot inside your favorite VM/Hypervisor and you should be good to go!

The reason why this isn't secure is that the host machine may be [compromised](https://tails.net/doc/advanced_topics/virtualization/index.en.html)
and it defeats the whole purpose of tailsOS if you do this instead of installing it inside a USB. Only use this if you want to try the OS.

---

## Secure File Transfer (TailsOS)
See dedicated [TailsOS File Transfer Guide](#secure-file-transfer-methods-in-tailsos)

---

## Virtualization
- [Libvirt](https://virt-manager.org/) - Advanced Linux virtualization
- [VirtualBox](https://www.virtualbox.org/) - Cross-platform solution

---

## Privacy Protection

### Email Services
- [User/Email Generator](https://github.com/airborne-commando/user-email-gen) - For ProtonMail/cock.li
- [Temp-Mail](https://temp-mail.org/en/) - Temporary email
- [Username Generator](https://jimpix.co.uk/words/username-generator.php)
- [cock.li](https://cock.li/register.php)

### Data Broker Opt-Out
- [Big Ass Opt-Out List](https://github.com/yaelwrites/Big-Ass-Data-Broker-Opt-Out-List)

---

## Cryptocurrency
- [Monero (XMR)](https://www.getmonero.org/) - Privacy-focused cryptocurrency

---

## Data Destruction
- [DBAN](https://dban.org/) - HDD wiping
- [Arch Linux Wipe Guide](https://wiki.archlinux.org/title/Securely_wipe_disk)
- [NVMe/SSD/HDD Nuke Script](https://gist.github.com/airborne-commando/6a690bd0644a9f1d76bc8c585d9ee969)
- [physical destruction](https://github.com/airborne-commando/OPSEC-OSINT-Tools/blob/main/physical-destruction.md)

---

## Miscellaneous
- [PrivacyTools.io](https://www.privacytools.io/) - Privacy software/resources
- [crypt.fyi](https://www.crypt.fyi/new) - Secure data sharing
- [One-Time Pad Implementation](https://github.com/airborne-commando/one-time-pad-truly-random)
- [keepassxc](https://keepassxc.org/) - Passwords and securenotes

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

---

**Remember:** The best OPSEC sometimes means not interacting with your target at all to avoid alerting them.
