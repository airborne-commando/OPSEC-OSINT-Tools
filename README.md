
# OSINT-Tools

A list of OSINT tools I made, forked, and/or use. First, let's talk about the definitions.

***DISCLAIMER***

I am in no way responsible for any abuse, misuse, or any questionable actions in which someone uses these tools or methods below. OSINT is an information-gathering technique that can be used by ANYBODY!

## OPSEC

**OPSEC** (Operations Security) is a systematic process for:
1. Identifying
2. Protecting and controlling critical information

It's a security discipline and operations function that involves a continuous cycle of:
* Identifying critical information and indicators (CII)
* Analyzing potential threats and vulnerabilities
* Assessing risks
* Developing countermeasures to protect CII

OPSEC is used to protect information and activities from adversaries. It helps identify and protect sensitive information that could give an adversary an advantage. OPSEC principles can be applied in daily life, such as not sharing personal information like Social Security numbers.

**Examples of OPSEC mistakes include:**
* Over-sharing personal information online
* Leaving unused social media profiles online
* Accidentally interacting with a target on social media

OPSEC supplements other security disciplines rather than replacing them.

### How to OPSEC:

* **Use services that can conceal your identity:**
  - Telegram is normie-tier as it isn't encrypted by default and requires a phone number.
  - Simplex isn't too bad.
  - Signal is encrypted by default but requires a phone number.

* **Tor/VPN/XMR:**
  - Tor isn't bad but will get rate limited by captchas.
  - Mullvad is a good VPN as it accepts XMR (Monero), which can't be traced back to you if you mine XMR with your own node. Note: VPNs are useless if you have bad OPSEC.

* **Usernames/credentials/Identification:**
  - Use different usernames and credentials on different websites.
  - Use a word spinner to change sentences for identity concealment.
  - Generate a face or use a non-identifiable profile picture.
  - Avoid making enemies online and don't be noticeable (i.e., don't be a turd).
  - Regularly OSINT yourself to check your online presence.

## Open Source Intelligence (OSINT)

**OSINT** is the process of gathering, analyzing, and using data from publicly available sources to create actionable intelligence.

### What it is:
OSINT is the practice of collecting and analyzing information from public sources to address specific intelligence needs.

### How it's used:
OSINT is used by government agencies and commercial organizations for various purposes, including:
- Reconnaissance
- Cyber crime investigations
- Market trend analysis
- Brand positioning analysis
- Measuring risk to an organization
- Understanding the actor, tactics, and targets

### Why it's important:
OSINT allows organizations and individuals to:
- Gather real-time information
- Make informed decisions
- Receive early warnings of potential threats

## Who uses Open-Source Intelligence (OSINT)?

### National Security and Intelligence Agencies
- The CIA, Defense Intelligence Agency (DIA), and Office of the Director of National Intelligence (ODNI) all use OSINT.

### Law Enforcement
- OSINT can protect citizens from identity theft, sexual violence, and abuse.

### Businesses
- OSINT can monitor competitors, investigate new markets, and plan marketing activities.

### Cybersecurity and Cyber-crime Groups
- OSINT can gather intelligence about specific targets online.

### Privacy-Conscious People
- OSINT can check how outsiders can break into their computing devices.
- OSINT can be used on oneself to secure privacy.

### Non-Governmental Organizations
- Bellingcat, the Center for Information Resilience, and Oryx use OSINT.

### YOU
- Yes, you can use OSINT.

## Sources of OSINT
OSINT can gather information from various sources, including:
- Public government data
- Professional and academic publications
- Commercial data
- [Grey literature](https://browse.welch.jhmi.edu/c.php?g=1195274)

## Tools
OSINT tools can access and analyze information from sources beyond traditional search engines. Here are some tools I use:

### Word spinners
- [Article spinner](https://free-article-spinner.com/)
- [Another article spinner](https://www.rewritertools.com/article-spinner)

### Google dorks
- [Google-FU, use Google to lookup info on someone or something; may get rate limited](https://github.com/Nthompson096/GoogleFU-improved)

### Bio-metric investigation
- [Facecheck.ID tampermonkey script; improved by me, bypasses payment requirements and gives you the links](https://github.com/vin3110/facecheck.id-results-extractor)
- [Pimeyes image extractor; gives an idea of where the image was located based on a URL, can use with facecheck.id](https://github.com/Nthompson096/Pimeyes-Free-POC-GUI)
- [RGB Attack website; gives details on the image, but not the link](https://rgbattack.com/)

### Email + username investigations
- [Blackbird, robust OSINT tool for rapid searches of user accounts by username or email across many platforms](https://github.com/p1ngul1n0/blackbird)
- [Sherlock, similar to Blackbird but more robust and developed; caution with imgur red herrings](https://github.com/sherlock-project)
  - [GUI for Sherlock](https://github.com/Nthompson096/sherlock-gui)
- [Hudson rock API extractor, for emails and usernames; not automated but uses Flask, checks email compromises](https://github.com/Nthompson096/hudsonrock-search-extractor)
- [holehe, caution with imgur for false positives; similar to Sherlock](https://github.com/megadose/holehe)

### Curated lists
- [Awesome OSINT, a curated list of OSINT tools, blogs, and videos](https://github.com/jivoi/awesome-osint)
- [OSINT Framework, a larger list of tools](https://osintframework.com/)

### Email address + username + name generation
- [Email user/name generator for cock.li and ProtonMail; useful for non-temp mail service accounts](https://github.com/Nthompson096/user-email-gen)

***DISCLAIMER: Cock.li may be having issues:***

After:

My fellow r*t*rds: cock.li has not "shut down". You may need to read more than the first line.
Anyone suggesting you migrate your account to Gmail, Yahoo, Proton, etc. should not have been using cock.li in the first place. Normal$!gs get off my f*!#ing board.
Feel free to migrate, I don't have any good suggestions though. Try that on Proton!
PW changes and maybe registration will be back within a couple days.

Before:

LIBERTY CANARY

Date updated: See the PGP Signed Version

Cock.li is in 100% control of all of its hardware, and the service is still operating normally. The website (account registration+pw change) is currently offline.

Cock.li will shut down before becoming complicit in crimes against its own user base under duress of any government or organization.

Cock.li is not under duress of any government or organization.

I'd probably recommend using something other than cock.li; use any domain from cock.li and use a different email service provider. However, if you decide to use cock.li, you can check out how to enable it in the given link.
