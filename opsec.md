# OPSEC


### Word spinners

  - [Article spinner](https://free-article-spinner.com/)
    - with basic and advanced paraphrase - can only use standard.

  - [rewritertools, another article spinner](https://www.rewritertools.com/article-spinner)

    - no advanced paraphrase; doesn't have different langs

  - [Article rewriter](https://seotoolstation.com/article-rewriter)

    - this rewriter keeps SEO in mind for search rankings; after a few tries it WILL ask for a login, use TOR to bypass.
  
  - [chatgpt](https://chatgpt.com/)

    -  start with "rewrite this as..." careful of censorship. Doesn't need an account.
  
  - [deepseek](https://chat.deepseek.com/)
    - You'll need an account for deepseek, heavily censored with stuff involving china or sensitive topics (much like gpt); you may download the model from hugging face (not like gpt).
   
    - [Run deepseek offline](https://www.reddit.com/r/AIAssisted/comments/1ibv6g8/how_to_run_deepseek_r1_offline_on_your_computer/), less censorship but IDK about performance.
    - [Archive of reddit post](https://archive.ph/vZXv0)
    - An [aur repo](https://aur.archlinux.org/packages/lmstudio) for arch users; follow the directions on the reddit post.
    - the offical website of [lmstudio](https://lmstudio.ai/)
 
- Wanna use different langs for free?
 
  - [Use google translate](https://translate.google.com/)

- SEO Tools

  - [seotoolstation](https://seotoolstation.com/) I'd recommend using TOR browser to bypass the login page after a few tries.

### Face generation

   - [stable-diffusion-webui, use models you can find on the internet; can be used on a local machine](https://github.com/AUTOMATIC1111/stable-diffusion-webui)

      - [Civitai](https://civitai.com/models), I'd personally use 1.5 models under filters for older cards. Don't use inpainting models for image generation.

   - [This person doesn't exist](https://thispersondoesnotexist.com/); a face generator, will have a logo at the bottom of the screen so use

### photo shop tools / photo editing tools

## Inpainting tools

   - [Free inpaint](https://pincel.app/tools/inpaint), a free inpainting tool that's on the web

       - Will downscale the image so you'll have to use [upscale](https://www.upscale.media/)
   
   - [IOPaint](https://github.com/Sanster/IOPaint), a free inpainting tool that uses your CPU inside your computer
       - [Linux script](https://github.com/airborne-commando/iopaint-launcher/), use with an alias inside .bashrc or place it inside /usr/bin; check the gist comments.

## Photo editing / stripping

   - [affinity, isn't free](https://affinity.serif.com/en-us/photo/)

   - Can also try [GNU gimp](https://www.gimp.org/)
     - this is barebones
 
   - [Exiftool](https://exiftool.org/)
      - edits metadata on images and can strip them.
    
- For Linux users 

   Debian:
      
      sudo apt update && sudo apt install exiftool

   Other distros:

   Fedora:

      sudo dnf install exiftool

   Arch:

      sudo pacman -S exiftool

## Spoofing, fake email generation

- Email address + username + name generation
  - [Email user/name generator for cock.li and ProtonMail; useful for non-temp mail service accounts](https://github.com/airborne-commando/user-email-gen)
 
  - [temp-mail](https://temp-mail.org/en/) an online email generation tool

  - [username gen](https://jimpix.co.uk/words/username-generator.php) an online tool, can enter nothing and get results.

***DISCLAIMER: Cock.li may be having issues:***

### After:

My fellow r*t*rds: cock.li has not "shut down". You may need to read more than the first line. Anyone suggesting you migrate your account to Gmail, Yahoo, Proton, etc. should not have been using cock.li in the first place. Normal$!gs get off my f*!#ing board. Feel free to migrate, I don't have any good suggestions though. Try that on Proton! PW changes and maybe registration will be back within a couple days.

### Before:

LIBERTY CANARY
Date updated: See the PGP Signed Version Cock.li is in 100% control of all of its hardware, and the service is still operating normally. The website (account registration+pw change) is currently offline. Cock.li will shut down before becoming complicit in crimes against its own user base under duress of any government or organization. Cock.li is not under duress of any government or organization.

I'd probably recommend using something other than cock.li; and use a different email service provider. However, if you decide to use cock.li, you can check out how to enable it in the given link. 

free to check the status of cock.li wth the provided site here https://cock.li/

## Virtual Machines

- Virtualization tools

  - [Libvirt](https://virt-manager.org/) For linux users, pretty advanced
  - [vmbox](https://www.virtualbox.org/) for various platforms

## anonymity tools

  - [Tor](https://www.torproject.org/)
  - [Mullvad](https://mullvad.net/en)
  - [tailsOS](https://tails.net/) Runs inside a USB stick.

## Currency

  - [XMR/Monero](https://www.getmonero.org/)

## Disk Destruction

  - [dban, hdd only](https://dban.org/)
  - [wipe and other types](https://wiki.archlinux.org/title/Securely_wipe_disk#Overwrite_the_target)
  - [nuke](https://gist.github.com/airborne-commando/6a690bd0644a9f1d76bc8c585d9ee969) can be used on both NVME/SSD (sec/unsec) and HDD

## People search engines:

**OPT OUT**

- A whole [big ass list](https://github.com/yaelwrites/Big-Ass-Data-Broker-Opt-Out-List) to opt out and to compare info.

## Misc Opsec

[privacytools](https://www.privacytools.io/), a site containing software and guides for enhanced privacy


[crypt.fyi](https://www.crypt.fyi/new) crypt.fyi is a secure, open-source, zero-knowledge data-sharing platform that enables you to share sensitive information safely with post-quantum end-to-end encryption. Whether it's passwords, API keys, or confidential messages, crypt.fyi ensures your data remains private, never accessible to our servers, and automatically disappears after being accessed.

[one-time-pad-truly-random](https://github.com/airborne-commando/one-time-pad-truly-random) Python demonstration of the historical one time pad encryption/decryption in modulo 26. Added true randomness inside the ciphertext with python for faster execution. Feel free to use with [crypt.fyi](https://www.crypt.fyi/new)

On a tangent; sometimes the best opsec is to not interact with the target you're osinting on, for example:

Suzie is thinking Stu is cheating on her with Lexi, so she confronted her with this and more evidence and as a consequence Stu stopped his activity.
Or you're researching about the target with the tools provided but you wanted to gloat about what you found, so now s/he deleted all the info about itself.
