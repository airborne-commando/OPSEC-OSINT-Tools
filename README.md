## Table of Contents

1. [disclaimer](#disclaimer)
2. [Suggestions](#Suggestions)
3. [Why](#why)
4. [OSINT/OPSEC Tools](#osintopsec-Tools)
5. [key points](#key-points)
6. [OPSEC](#operations-security-is-a-systematic-process-for) 
   - [How to OPSEC](#how-to-opsec)
      - [Smoke Screen and misinfo](#Smoke-Screen-and-misinfo) 
7. [Open Source Intelligence (OSINT)](#open-source-intelligence-osint)
8. [Who uses Open-Source Intelligence (OSINT)?](#who-uses-open-source-intelligence-osint)
9. [Sources of OSINT](#sources-of-osint)
10. [Digital Profiling](#digital-profiling-osint-profiling)
12. [closed sourced](#closed-sourced-info)
      - [Breached Data](#breached-data)
13. [IMINT](#IMINT)
    - [Reverse search](https://github.com/airborne-commando/OPSEC-OSINT-Tools/blob/main/IMINT.md#reverse-search-google)
    - [SOCMINT](https://github.com/airborne-commando/OPSEC-OSINT-Tools/blob/main/IMINT.md#socmint-social-intelligence)
14. [Real world examples of OSINT](#real-world-examples-of-osint)
      - [2016 Airstrike Coordination](#in-the-year-2016-a-basket-weaving-image-board-used-osint-to-pay-some-supposed-terrorist-a-vist-from-a-govt-in-russia-resulting-in-airstrikes)
      - [2017 Shia LaBeouf Protest](#in-2017-shia-labeouf-had-a-protest-due-to-trumps-election-this-resulted-in-a-basket-weaving-image-board-using-osint-and-sky-patterns-to-figure-out-where-a-flag-is)
15. [Tools](#tools)
      - [Toolchain Recommendations](#toolchain-recommendations)
16. [People search tools (in the states)](#people-search-tools-in-the-states)
17. [Grey literature](#grey-literature)
18. [Breached Data](#breached-data)
19. [Social Media](#social-media)
20. [Self OSINT](#toolchain-self-osint)
21. [Curated lists](#curated-lists)

## ***DISCLAIMER***

I am **not responsible** for any misuse, abuse, or unethical actions taken with the tools or methods listed here. **OSINT is a neutral technique**—anyone can use it, and anyone can be targeted.

Note: Some domains (e.g., `exposed.lol`) may be expired. Refer to the curated list or alternate links provided.

## Suggestions

Open an [issue](https://github.com/airborne-commando/OPSEC-OSINT-Tools/issues) for any suggestions or feedback.

## Why?

People trust the internet too much. In today’s world, online and offline are practically the same—truth and fiction blur. This README exists to raise awareness. Clone it, fork it, remix it, or even turn it into a [Rentry](https://rentry.co/) page. Spread the knowledge however you like.

Can you predict someone’s behavior with this? not exactly; people are unpredictable at times.

# OSINT/OPSEC Tools

A list of OSINT/OPSEC tools I made, forked, and/or use. First, let's talk about the definitions.

## Key points

## Notable Examples of Bad Tor OPSEC

- **School Bomb Threats**
    - Florida student caught after bragging, repeating offenses, leaving evidence, and confessing.
    - Harvard’s Eldo Kim identified for using Tor on school network as the only user and admitting guilt.
- **Silk Road Case**
    - Ross Ulbricht linked to Silk Road by using his real name/email, posting about Tor, and failing to hide server IPs.
- **LulzSec Hacking Group**
    - Members exposed themselves by discussing ops in public IRC, revealing personal info, using stolen cards to home addresses, and trusting informants.
- **General Bad OPSEC Practices**
    - Poor compartmentalization, leaking sensitive info, predictable naming, traceable work hours, and unsecured servers.
- **Mullvad VPN: Security Contrast**
    - Features: anonymous accounts, strong encryption, no-logs, lockdown mode, DNS blockers, open-source, accepts Monero/cash.
    - **Caution:** No tool is foolproof; human error remains the weakest link.


## Digital Profiling and Behavioral Analysis Guide

- **Understand the Basics**
    - Digital profiling gathers and analyzes online data; behavioral analysis infers motives, habits, and future actions.
- **Collect Digital Biographical Information**
    - Gather identifiers, track online activity, search for recurring usernames, document findings.
- **Analyze Behavioral Patterns**
    - Look for posting times, topics, language, interaction style, preferred platforms, and social networks.
- **Examples**
    - Use AI tools to analyze old posts for recurring interests; tools like Blackbird/Maigret help track usernames across platforms.
- **Assess Competencies and Affinities**
    - Evaluate technical skill, privacy awareness, sociability, and domain expertise.
- **Use Analytical Tools**
    - Employ search engines, data aggregators, visualization/statistics tools and Natural Language Processing (NLPs) for deeper analysis.
- **Iterate and Refine**
    - Continuously update the profile as new data emerges; use structured documentation.
- **Ethical and Legal Considerations**
    - Only use legally accessible data; respect privacy and avoid harassment.
- **Defending Against OSINT Profiling**
    - Practice good OPSEC, use misinformation, audit yourself, and set profiles to private.


## Real-World OSINT and OPSEC Examples

- **Criminals**
    - *Sony Pictures Hack (2014):* Used OSINT on staff and infrastructure for phishing and breach.
    - *Ashley Madison Breach (2015):* Used OSINT to leak sensitive user data, causing blackmail and public exposure.
- **Civilians**
    - *Identifying Russian Soldiers:* Used facial recognition and open-source images to ID participants in conflicts.
    - *BBC Cameroon Investigation:* Used metadata and geolocation to verify military abuses.
- **Law Enforcement**
    - *Tracking Stolen Property:* Monitored online marketplaces to recover stolen goods.
    - *ShadowDragon’s SocialNet:* Mapped social networks from 200+ sources to aid investigations.
- **OPSEC Failures**
    - *Guccifer 2.0:* Forgot to activate VPN, exposing real IP and identity.
    - *Silk Road’s Ross Ulbricht:* Used personal email and left digital traces, leading to arrest.

These guides collectively highlight the importance of strong operational security, the power and risks of OSINT, and the need for continuous vigilance and ethical conduct in information gathering and online behavior.

## (Operations Security) is a systematic process for:
1. Identifying
2. Protecting and controlling critical information

It's a security discipline and operations function that involves a continuous cycle of:
* Identifying critical information and indicators (CII)
  * Critical information and indicators are essential components of Operations Security aimed at protecting sensitive data that could be exploited by adversaries. Critical Information includes unclassified or controlled unclassified information about activities, intentions, capabilities, or limitations that adversaries can use to gain an advantage. Indicators are observable actions or pieces of information that reveal critical details about operations, such as sudden changes in procedures or increased security measures. Protecting this information involves identifying vulnerabilities and implementing countermeasures to prevent unauthorized disclosure
* Analyzing potential threats and vulnerabilities
* Assessing risks
* Developing countermeasures to protect CII

 is used to protect information and activities from adversaries. It helps identify and protect sensitive information that could give an adversary an advantage. OPSEC principles can be applied in daily life, such as not sharing personal information like a DOB, street address, email, phone number.

**Examples of OPSEC mistakes include:**
* Over-sharing personal information online
   * [Chris Chan](https://www.youtube.com/playlist?list=PLABqEYq6H3vpCmsmyUnHnfMOeAnjBdSNm)
   * [suspectAGB](https://opsecfail.github.io/blog.html?filecase=suspectAGB)

* Leaving unused social media online
* interacting with a target on social media
   * [w0rmer](https://opsecfail.github.io/blog.html?filecase=w0rmer)
   * [darknetdiaries](https://darknetdiaries.com/transcript/63/)(article)

* [examples of good and bad opsec and some osint.](https://github.com/airborne-commando/OPSEC-OSINT-Tools/blob/main/examples.md)

OPSEC supplements other security disciplines rather than replacing them.

### How to OPSEC:

* **Use services that can conceal your identity:**
---

| **Category**               | **Tool/Technique**       | **Description**                                                                 | **Pros**                                      | **Cons/Limitations**                          |
|---------------------------|-------------------------|-------------------------------------------------------------------------------|---------------------------------------------|---------------------------------------------|
| **Encrypted Messaging**   | [Telegram](https://telegram.org/)                | Cloud-based messaging with optional E2E ("Secret Chats")                      | Widely adopted, feature-rich               | Not E2E by default; stores data on servers; requires phone number |
|                            | [Simplex](https://simplex.chat/)                 | No user identifiers (not even random numbers)                                 | Maximum metadata privacy                   | Less user-friendly; smaller network         |
|                            | [Signal](https://signal.org/download/)                  | E2E encrypted by default; minimal metadata retention                         | Gold standard for privacy; court-resistant | Requires phone number                       |
| **Anonymity Networks**    | [Tor](https://www.torproject.org/)                     | Routes traffic through encrypted nodes to hide IP                             | Free; robust against tracking              | Slow; frequent CAPTCHAs                     |
|                            | [Mullvad VPN](https://mullvad.net/en)             | No-logs VPN accepting Monero (XMR) payments                                   | Strong privacy; anonymous payment options  | VPNs can’t fix poor OPSEC habits            |
| **Cryptocurrency**        | [Monero (XMR)](https://www.getmonero.org/)            | Untraceable cryptocurrency                                                   | Private transactions                       | Requires mining/local node for full anonymity + time |
| **Identity Management**   | Unique Usernames        | Use different credentials per site                                           | Prevents correlation attacks               | Hard to manage without a password manager   |
|                            | Word Spinners           | Paraphrase text to avoid detection                                           | Evades plagiarism/identity linking        | May sound unnatural                         |
|                            | AI-Generated Faces      | Fake profile pictures (e.g., ThisPersonDoesNotExist.com)                     | Hides real identity                        | May look unnatural               |
| **Self-OSINT**           | Opt-Out Guides          | Remove personal data from people-search sites                                | Reduces digital footprint                 | Time-consuming; not all sites honor requests without payment |
| **OPSEC Resources**      | Bad OPSEC Examples      | [List of pitfalls](https://github.com/airborne-commando/OPSEC-OSINT-Tools/blob/main/badopsec.md) | Learn from others’ mistakes               | N/A                                        |
|                            | Good OPSEC Practices    | [Guidelines](https://github.com/airborne-commando/OPSEC-OSINT-Tools/blob/main/good-opsec.md) | Actionable tips                          | Requires discipline                         |
| **Tool Lists**           | OPSEC Tools             | [Curated list](https://github.com/airborne-commando/OPSEC-OSINT-Tools/blob/main/opsec.md) | Comprehensive resource                   | May need updates                            |

---

### **Key Takeaways**  
1. **Messaging**:  
   - **Signal** OR **Simplex** > **Telegram** for privacy.  

   - Remember: E2E ≠ total anonymity (metadata leaks/habits matter).


2. **Anonymity**:  
   - **Tor** + **Mullvad VPN** + **XMR** = layered protection.  
   - Avoid logging into personal accounts while using these tools.
   - Pitfalls: you need to use TOR and Mullvad separately for maximum Anonymity, use a [Virtual Machine](https://github.com/airborne-commando/OPSEC-OSINT-Tools/blob/main/opsec.md#virtualization) for VPN's and TOR on another (or the host).

3. **Identity**:  
   - **Unique usernames** + **AI faces** + **word spinning** = harder to trace.  

4. **Self-Audit**:  
   - Regularly **opt out** of data brokers and **[OSINT yourself](#toolchain-self-osint)**.  

5. **OPSEC Mindset**:  
   - Follow **[good OPSEC](https://github.com/airborne-commando/OPSEC-OSINT-Tools/blob/main/good-opsec.md)** and avoid **[bad habits](https://github.com/airborne-commando/OPSEC-OSINT-Tools/blob/main/badopsec.md)**.


**Note**:

By TOR I mean Tor Browser, VPN as in Virtual Private Network, and by Virtual Private Network I mean by Virtual Private Network Service - IE: Mullvad (though it can be other types of VPN's out there as long as it's safe to use and vetted by privacy experts). XMR is Monero Coin or Monero for short, a Privacy Coin.

Check Wikipedia If you're confused on all of these here:
1. [VPN](https://en.wikipedia.org/wiki/Virtual_private_network) (What we don't use here)
   - [VPN service](https://en.wikipedia.org/wiki/VPN_service) (What we're gonna use here)
2. [TOR](https://en.wikipedia.org/wiki/Tor_(network)) (What should be used separately)
3. [XMR](https://en.wikipedia.org/wiki/Monero) (For VPN's that take XMR as payment)

--- 

### **Pro Tips**  
- **Monero Mining**: Run a local node to avoid centralized exchanges tracing purchases.  

For full tool details, see the **[OPSEC Tools List](https://github.com/airborne-commando/OPSEC-OSINT-Tools/blob/main/opsec.md)**.

## Smoke Screen and misinfo

A smoke screen operation in the context of OSINT (Open Source Intelligence) refers to deliberate actions taken to obscure, mislead, or mask the true activities, intentions, or identities of individuals or organizations from those conducting open-source intelligence gathering. The term is borrowed from military tactics, where a smoke screen is used to conceal movements or positions from enemy observation. In cyber and intelligence contexts, the concept is adapted to digital and informational environments. You may read more [here](https://github.com/airborne-commando/OPSEC-OSINT-Tools/blob/main/smokescreen-misinfo.md).

## Open Source Intelligence (OSINT)

**<div align="center">What is it, how is this used and why is it important:</div>**

- OSINT is the practice of collecting and analyzing information from public sources to address specific intelligence needs. OSINT is used by government agencies and commercial organizations for various purposes, including:

  - Reconnaissance
  - Cyber crime investigations
  - Market trend analysis
  - Brand positioning analysis
  - Measuring risk to an organization
  - Understanding the actor, tactics, and targets
  - Gather real-time information
  - Make informed decisions
  - Receive early warnings of potential threats

## Who uses Open-Source Intelligence (OSINT)?

- National Security and Intelligence Agencies, Law Enforcement, Businesses, Cybersecurity and Cyber-crime Groups, Privacy-Conscious People, Non-Governmental Organizations

  - The CIA, Defense Intelligence Agency (DIA), and Office of the Director of National Intelligence (ODNI) all use OSINT.
  - OSINT can protect citizens (private or otherwise) from identity theft, sexual violence, and abuse.
  - OSINT can monitor competitors, investigate new markets, and plan marketing activities.
  - OSINT can gather intelligence about specific targets online.
  - OSINT can check how outsiders can break into their computing devices.
  - OSINT can be used on oneself to secure privacy.
  - Bellingcat, the Center for Information Resilience, and Oryx use OSINT.
  - And you! Yes, you can use OSINT.

## Sources of OSINT
OSINT can gather information from various sources, including:
- [Public government data](https://www.opendatasoft.com/en/glossary/public-data/)

  - Public data refers to all information made freely available by government bodies or local collectivities. This data is in the public domain. It is different to open data, which is a subset of public data. Open data is structured and well-maintained data that is therefore easier to understand, access and consume. By contrast public data can be difficult to find, or (in the case of public bodies), require the submission of a Freedom of Information Act to retrieve it.

- [Professional and academic publications](https://www.lawinsider.com/dictionary/academic-publication)

  - Academic Publication means the publication of an abstract, article or paper in a journal or electronic repository, or its presentation at a conference or seminar.


- [Commercial data](https://www.lawinsider.com/dictionary/commercial-data)

  - Commercial Data means any and all data and information relating to an identified or identifiable Person (whether the information is accurate or not), alone or in combination with other information, which Person is or was an actual or prospective customer of, or consumer of products offered by, the VS Business or L Brands Business, as applicable.

  - Commercial Data means any and all data and information relating to an identified or identifiable Person (whether the information is accurate or not), alone or in combination with other information, which Person is or was an actual or prospective customer of, or consumer of products or services offered by, the LoyaltyOne Business and/or ADS Business, as applicable.

  - Commercial Data means any and all data collected or otherwise processed by the Seller Entities relating to a customer of the Business.

- [Grey literature](https://browse.welch.jhmi.edu/c.php?g=1195274)

  - Grey literature is "Information produced on all levels of government, academics, business and industry in electronic and print formats not controlled by commercial publishing i.e. where publishing is not the primary activity of the producing body."
   
  - Grey literature can be useful for your research, but finding resources requires different tactics than you'd use for commercially published materials. This is because many types of grey literature are not indexed in some of the more common research tools like PubMed, CINAHL, Scopus, etc.

- genealogical

   - Genealogy: Using family history research and genealogy databases as an intelligence-gathering tool.
   - Death records: Gathering intelligence from records such as death notices, obituaries, gravestone databases, and burial registries.
   - Obituary: Systematically using obituaries to collect personal and relational data for investigations. (news papers or local news sites) 



- people search aggregators, typically used in the united states. can give you information on someone such as an email, home address, date of birth, etc.


- Google Dorks:

| Operator              | Description                                     | Example                       |
| --------------------- | ----------------------------------------------- | ----------------------------- |
| `site:`               | Search within a specific website or domain      | `site:example.com`            |
| `intitle:`            | Find pages with specific words in the **title** | `intitle:"login page"`        |
| `allintitle:`         | All words must appear in the **title**          | `allintitle:admin login`      |
| `inurl:`              | Words in the **URL**                            | `inurl:admin`                 |
| `allinurl:`           | All terms in the **URL**                        | `allinurl:dashboard admin`    |
| `filetype:` or `ext:` | Search for specific file types                  | `filetype:pdf` or `ext:xls`   |
| `intext:`             | Word or phrase in the **page body**             | `intext:"confidential"`       |
| `allintext:`          | All terms in the **body text**                  | `allintext:password username` |
| `link:`               | Pages linking to a specified URL                | `link:example.com`            |
| `define:`             | Look up a word definition                       | `define:opsec`                |
| `related:`            | Find sites similar to a URL                     | `related:example.com`         |
| `*`                   | Wildcard – matches any word                     | `"admin * login"`             |
| `OR`                  | Either search term can appear                   | `login OR signin`             |
| `AND`                 | Both terms must appear (default behavior)       | `username AND password`       |
| `-`                   | Exclude term                                    | `login -facebook`             |
| `"`                   | Exact phrase                                    | `"confidential file"`         |
 


**Default Behavior**
- Google treats multiple words as if connected by AND, so results must contain all terms unless you specify otherwise.
- Quotation marks, site:, and filetype: are among the most commonly used explicit operators for more targeted searches.

These operators are not used unless you include them in your query—Google’s default is simply to return results matching all your search terms, ranked by relevance.


### Real world examples of OSINT

## In the year 2016, a basket weaving image board used OSINT to pay some supposed terrorist a visit from a [govt in Russia resulting in airstrikes.](https://imgur.com/pol-helps-coordinate-airstrike-on-moderate-syrian-rebels-N7DwWP1)

- [A video detailing the events](https://www.youtube.com/watch?v=OR6epSP_Xlw)

  - In 2016, during the complex Syrian Civil War, various rebel groups—some with good intentions and others with nefarious motives—sought to overthrow President Assad. The chaos allowed terrorist groups to flourish, prompting intervention from the United States and Russia, with the former supporting rebels and the latter aiding Assad. An anonymous user on 4chan's Syria General board (SG) claimed that a Syrian rebel group, Jaysh al-Izza, posted a video on YouTube revealing their secret encampment. The group, linked to Al-Qaeda, was seen by 4chan users as a target. A notable 4chan user, Ivan Sirenko, who had connections with the Russian military, received the coordinates from the 4chan community and tweeted them to the Russian Ministry of Defense. This led to an airstrike on the encampment. Two months later, the same rebel group posted another video showing a new training camp. 4chan users once again pinpointed the location using landmarks seen in the video. After thorough verification, they sent the coordinates to Ivan, who facilitated another Russian airstrike.

UPDATE: Turns out it was a really complex war the 4chan got involved in, still keeping this up as a key example however; the main issue is that they exposed their training locations with geographic locations to the internet like complete morons.
Thus bad opsec.

## In 2017, Shia LaBeouf had a protest due to Trumps election; this resulted in a basket weaving image board using OSINT and [sky patterns to figure out where a flag is.](https://www.vice.com/en/article/4chan-does-first-good-thing-pulls-off-the-heist-of-the-century1/)

- In 2017, 4chan users managed to track down and replace Shia LaBeouf's "He Will Not Divide Us" protest flag. Using only the live-stream footage of the flag, they analyzed flight patterns, star positions, and a tweet to locate the flag in Greeneville, Tennessee. A local troll then honked his car horn until the sound was picked up on the live-stream, pinpointing the exact location. The flag was replaced with a Trump hat, marking the end of this elaborate trolling operation.

## Digital profiling (OSINT profiling). 

Digital profiling and behavioral analysis are powerful techniques for understanding individuals based on their online activities and digital footprints. While these methods are often used by professionals, you can apply many of the same principles and processes yourself by following a structured approach.

Read more inside this readme on [Digital Profiling](https://github.com/airborne-commando/OPSEC-OSINT-Tools/blob/main/Digital-Profiling.md)

## Closed Sourced Info

- [HUMINT](https://github.com/airborne-commando/OPSEC-OSINT-Tools/blob/main/HUMINT.md)

**HUMINT can be collected overtly (e.g., interviews, debriefings, diplomatic reporting) or covertly (e.g., espionage, clandestine surveillance).**

**Buying from databrokers can be closed sourced if the info isn't freely available IF not cross referenced VIA the [Curated Lists](#curated-lists) OR the [Toolchain](#toolchain-self-osint) for self OSINT**

[Breached Data](#breached-data)

> And remember, closed sourced info can change depending on context. If it came from social media then it's considered open source as it's already out there. If it's from a closed source document like let's say a USB drive then consider it closed source.

# IMINT

[IMINT](https://github.com/airborne-commando/OPSEC-OSINT-Tools/blob/main/IMINT.md)(Image INTelligence) involves collecting and analyzing visual imagery—satellite, aerial, drone, or ground photos—to extract useful information.
Contains information such as [SOCMINT](https://github.com/airborne-commando/OPSEC-OSINT-Tools/blob/main/IMINT.md#socmint-social-intelligence) and [Reverse Search](https://github.com/airborne-commando/OPSEC-OSINT-Tools/blob/main/IMINT.md#reverse-search-google).


## Tools

---

| **Category**               | **Tool**                  | **Link**                                                                 | **Functionality**                                                                 | **Limitations/Notes**                                                                 |
|----------------------------|--------------------------|-------------------------------------------------------------------------|---------------------------------------------------------------------------------|-------------------------------------------------------------------------------------|
| **Search Engine Queries**  | dorksearch                | [dorksearch](https://dorksearch.com/)        | Advanced Google dorking for targeted searches                                  | AI Doesn't work, have to build manually & internet access.                                              |
|                            | Google-FU                | [GitHub](https://github.com/airborne-commando/GoogleFU-improved)        | Advanced Google dorking for targeted searches                                  | Rate limits apply; may trigger CAPTCHAs                                              |
|                            | gdork                | [gist](https://gist.github.com/airborne-commando/d6430788b2c6b786f085a9133e88de52)        | Written in shell script, Gnu Linux                                  | In dev; not sure If I'll finish this.                                              |
| **Biometric Analysis**     | Facecheck.ID             | [vin3110 repo](https://github.com/vin3110/facecheck.id-results-extractor) and [my repo](https://github.com/airborne-commando/facecheck.id-results-extractor-mobile/tree/main) that includes the [older scripts](https://github.com/airborne-commando/facecheck.id-results-extractor-mobile/tree/old) + [dev](https://github.com/airborne-commando/facecheck.id-results-extractor-mobile/tree/dev)     | Reverse image search bypassing paywalls                                        | Requires Tampermonkey; extracts source links only                                   |
| **Username/Email Search**  | Blackbird                | [GitHub](https://github.com/p1ngul1n0/blackbird)                       | Fast cross-platform username/email lookup                                      | CLI-only; lightweight                                                               |
|                            | Crow (GUI for Blackbird) | [GitHub](https://github.com/airborne-commando/crow)                     | GUI version of Blackbird                                                       | Same functionality as CLI                                                           |
|                            | Sherlock                 | [GitHub](https://github.com/sherlock-project/sherlock)                  | Comprehensive username search across 300+ sites                                | False positives (e.g., Imgur); CLI-based                                            |
|                            | No-Shit-Sherlock (GUI)   | [GitHub](https://github.com/airborne-commando/no-shit-sherlock)         | GUI wrapper for Sherlock                                                       | Inherits Sherlock’s limitations                                                     |
|                            | Maigret                  | [GitHub](https://github.com/soxoj/maigret)                              | Finds username connections (Sherlock fork)                                     | Focuses on profile linkages                                                         |
|                            | Maigret-Night (GUI)      | [GitHub](https://github.com/airborne-commando/maigret-night)            | GUI for Maigret                                                                | Same as Maigret CLI                                                                 |
|                            | Holehe                   | [GitHub](https://github.com/megadose/holehe)                            | Checks email usage across sites                                                | Imgur false positives; CLI-based                                                    |
| **Email Compromises**      | Hudson Rock Extractor    | [GitHub](https://github.com/airborne-commando/hudsonrock-search-extractor)| Manual email breach checker (Flask-based)                                     | Not automated; requires manual input                                                |
| **Geolocation**            | Google Maps              | [maps.google.com](https://maps.google.com/)                             | Pinpoint locations/compare landmarks                                           | Public data only; no advanced OSINT features                                        |
|                            | geohints                     | [geohints](https://geohints.com/)                                     | a curated list that contains the most accurate and detailed information about metas in Geoguessr as possible.| used for Geoguessr, but can be used to give clues in where an image is located.                                 |
|                            | GeoGuessr GPT              | [GeoGuessr GPT](https://chatgpt.com/g/g-brlHi7t2R-geoguessr-gpt)                             | Use AI to pinpoint a photo                                          | Can give out false info; it's AI so ***it will*** hallucinate! Only 3 uploads for free users.                                        |
|                            | findpiclocation              | [findpiclocation](https://findpiclocation.com/)                           | Use AI to pinpoint a photo                                          | May not be as accurate as GPT.                                        |
| **Generalized OSINT**      | OSINT Rocks              | [osint.rocks](https://osint.rocks/)                                     | Multi-tool: Hudson Rock, Holehe, GHunt (Gmail), phone/domain/username lookups  | Web-based; combines multiple tools in one interface                                 |
| **MISC CLI tools**         | zabasearch-auto   | [GitHub](https://github.com/airborne-commando/zabasearch-auto)         | A CLI tool to look up public info on someone in the USA                                                       | CLI, advanced usage                                                     |
|                            | link extractor and archive   | [GitHub](https://github.com/airborne-commando/link-extractor-and-archive)         | An archive tool for archive.ph, can extract links from a basic webpage                                                       | CLI, advanced usage; basic webpages only, Requires manual intervention (text edits FIND+REPLACE).                                                     |
|                            | voter reg status   | [GitHub](https://github.com/airborne-commando/voter-reg-status)        | A CLI tool that looks up voter info on an person                                                       | Only in PA, Needs county, zip, first last name, DOB. Advanced usage. Census data may be out of date.                                                  |


---

### **Key Insights & Pro Tips**

1. **False Positives**:  
   - **Sherlock/Holehe**: Imgur often returns misleading results—verify manually.  
   - **Facecheck.ID**: Extracts links but doesn’t analyze images; cross-reference with [Pimeyes (10 searches)](https://pimeyes.com/en) or others listed on 6.  

2. **GUI vs. CLI**:  
   - **CLI Tools (Blackbird, Sherlock, Maigret)**: requires technical familiarity.  
   - **GUI Wrappers (Crow, No-Shit-Sherlock)**: Easier for beginners; same backend logic.  

3. **Email Investigations**:  
   - Combine **Holehe** (account detection) + **Hudson Rock Extractor** (breach data) for thorough checks; see [**Toolchain Recommendations**](#Toolchain-Recommendations).  
   - For Gmail-specific OSINT, use **GHunt** (via OSINT Rocks).  

4. **Geolocation**:  
   - Use **Google Maps Street View** to verify addresses/landmarks from other tools (e.g., ClustrMaps).  

5. **OPSEC Notes**:  
   - **Rate Limits**: Tools like Google-FU may trigger blocks—use proxies/VPNs.  
   - **Legality**: Avoid scraping private data (e.g., Facebook pro) without consent.  

6. **Biometric Analysis**: You can supplement your biometric analytics with these tools by extracting the results from:
 - faceonlive.com (3 or 4 search limit, may need TOR)
 - lenso.ai 

After that open image in new tab and save or drag it into facecheck.id and compare (as mentioned earlier on step 1)

---

### **Toolchain Recommendations**
- **Quick Username Search**: Crow (GUI for indepth) → Maigret (GUI for indepth) → Sherlock (CLI for depth).  
- **Email Breaches**: Have I Been Pwned → Pentester (freeish) → OSINT Rocks (Hudson Rock/Holehe) → LOLArchiver.  
- **Images**: Facecheck.ID → Pimeyes → lenso.ai → faceonlive  
- **Files**: Encrypted drives (LUKS) → veracrypt → keepassxc

Note on Pentester: Pentester can provide free results on usernames, etc but on a time limit, not worth to buy a service if you're smart and keep records (snapshot).

Note: For keepassxc it's a good idea to use a strong password or a YubiKey (hardware password/security key)
you may also create an additional database, one that has the password you can remember; the other that has the generated database password for sensitive files.

For niche tools, refer to the [Curated Lists](#curated-lists) section.

Pipeline discussed [here](https://github.com/airborne-commando/OPSEC-OSINT-Tools/blob/main/opsec.md#opsec-pipeline-for-secure-files)
    
## People search tools (in the states):

**DISCLAIMER: Most of the email info found on these sites appear to be from a databrech from long ago; subjects on these sites can and possibly will still use their email found on these sites as people will rarely change email providers due to TFA + password managers unless if the email itself has been compromised in any way, shape, or form OR if they've changed emails due to harassment, spam, etc etc.**

---

| **Tool**               | **Lookup By**                | **Returns**                              | **Notes**                                                                 |
|------------------------|-----------------------------|------------------------------------------|---------------------------------------------------------------------------|
| **[FastPeopleSearch](https://www.fastpeoplesearch.com/)**   | Name, Phone, Address        | Age, Address, Phone, Email               | Free; data may be outdated.                                               |
| **[That's Them](https://thatsthem.com/)**        | Name, Email, IP, VIN, Phone | IP, Addresses, Phone, Email              | Aggregates data from Intelius/Spokeo; some paid results.                 |
| **[Nuwber](https://nuwber.com/)**            | Name, Phone, Email, Address | DOB, Address, Email, Phone               | Detailed reports may require payment.                                    |
| **[IDCrawl](https://idcrawl.com/)**           | Name, Username, Phone, Email | Names, Usernames, Phone, Email           | Focuses on usernames/social media.                                       |
| **[PeekYou](https://www.peekyou.com/)**           | Name, Username, State       | Age, Social Media, Emails, Addresses     | Strong for social media profiling.                                       |
| **[Webmii](https://webmii.com/)**            | First + Last Name           | Social Media, Search Results             | Lightweight; scans public web/social profiles.                           |
| **[PublicRecords](https://www.publicrecords.onlinesearches.com/)**     | Name, Address, State        | Name, Address, Partial Phone             | Free directory; redirects to Intelius for paid details.                  |
| **[ClustrMaps](https://clustrmaps.com/)**        | Name, Address               | Addresses, Residents, Property, IP Data  | Focuses on geolocation/demographics; may include ownership history.      |
| **[fastbackgroundcheck](https://www.fastbackgroundcheck.com)** | Name, Address, Phone Number | Name, Address, Phone Number, Emails | Seems to comb though billions of records as stated on it's [website](https://www.fastbackgroundcheck.com/about) |
| **[zbase](https://www.zabasearch.com/)** | first, last name, city state | Names, Possible Relatives, User IDs, Address, Phone Number, Emails, education, job history | comes from various sources, as stated on it's [faq](https://www.zabasearch.com/faq/), free partial look up and is **accurate*** |

---

### **Key Observations**:
1. **Free vs. Paid**: Most tools offer basic info for free but upsell detailed reports (e.g., PublicRecords → Intelius).  
2. **Data Sources**: Many pull from the same breaches/public records (emails/phones often outdated but still in use).  
3. **Specializations**:  
   - *Social Media*: PeekYou, IDCrawl.  
   - *Geolocation*: ClustrMaps.  
   - *Comprehensive*: FastPeopleSearch, Nuwber, fastbackgroundcheck.  

**Disclaimer**: Accuracy varies; users rarely update emails unless compromised. Use ethically!

- For additonal tools see [Curated lists](#curated-lists)

## Grey literature

Use this site; [do not register](https://vote.gov/register), check a voter registration. Will probably need more info in some states; while others need less.

An automtic tool that I've made for [pa voter services](https://github.com/airborne-commando/voter-reg-status). Feel free to fork for other states.

## Breached Data:
---

| **Tool**               | **Lookup By**       | **Returns**                              | **Limitations/Costs**                          | **Notes**                                                                 |
|------------------------|--------------------|------------------------------------------|-----------------------------------------------|---------------------------------------------------------------------------|
| **[Have I Been Pwned](https://haveibeenpwned.com/)**  | Email, Phone       | Breach names, dates, compromised data    | Free; no passwords/raw data                   | Trusted source; alerts for new breaches.                                  |
| **[BreachDirectory](https://breachdirectory.org/)**    | Email, Username    | Partial password hashes (SHA-1, first 4 chars), length | Free; no full passwords            | Useful for credential stuffing checks.                                    |
| **[Breach.vip](https://Breach.vip)**         | Email, Username    | Minecraft-focused leaks (usernames, IPs) | Free; requires login                          | Niche for gaming accounts; "memey" but functional.                        |
| **[LeakPeek](https://leakpeek.com/)**           | Email, Username    | Partial breach snippets (e.g., domains)  | 5 free searches; Tor bypass possible          | Paid plans for full data; obfuscates results.                             |
| **[LOLArchiver](https://osint.lolarchiver.com/)**        | Email, Username    | Full breach databases (e.g., emails, passwords) | Paid service only                     | For OSINT professionals; curated high-value leaks.                        |
| **[Icebreaker](https://github.com/airborne-commando/ice-breaker)**         | Local breach files | Parses/analyzes large breach datasets    | Python/EXE; works best for <1000GB files      | Demo script provided; use with caution (e.g., [Facebook 533M leak](https://github.com/davidfegyver/facebook-533m)).        |
| **[hashes.com](https://hashes.com/)**         | Hash (MD5, SHA-1, etc.) | Decrypted passwords (if hash is cracked) | Free/paid cracking tools                      | Useful for reversing hashes from breaches.                               |
| **[pentester.com](https://pentester.com/)**          | Email, Username    | Full breach details (more than HIBP)     | Free; no Tor needed                           | Unofficial but extensive; may include sensitive data.                    |

---

### **Key Takeaways**:  
1. **Free vs. Paid**:  
   - *Free*: HIBP, BreachDirectory, Pentester, Hashes.com.  
   - *Limited Free*: LeakPeek (5 searches), Breach.vip (login required).  
   - *Paid*: LOLArchiver, LeakPeek plans.  

2. **Specializations**:  
   - *Password Recovery*: Hashes.com (decrypt hashes), BreachDirectory (partial hashes).  
   - *Gaming Leaks*: Breach.vip (Minecraft).  
   - *Local Analysis*: Icebreaker (Python tool for large datasets).  

3. **Ethical/Legal Notes**:  
   - Many tools provide **partial data** (e.g., first 4 chars of passwords) to comply with ethics.  
   - Use **Tor** with LeakPeek to bypass search limits.  
   - Avoid misuse: Some tools (e.g., Pentester) may expose sensitive data.  

4. **For Large Datasets**:  
   - [Icebreaker](https://github.com/airborne-commando/ice-breaker) + [Facebook 533M](https://github.com/davidfegyver/facebook-533m) (no passwords) for bulk analysis.  

---

### **Additional Resources**:  
- **Curated Lists**: Check [Curated Lists](#curated-lists) for more niche tools.  
- **Demo Scripts**: [Icebreaker](https://github.com/airborne-commando/ice-breaker) includes a demo for testing.  

## social media
---

| **Platform**  | **Tool**               | **URL**                              | **Functionality**                          | **Limitations/Notes**                     |
|--------------|-----------------------|--------------------------------------|------------------------------------------|------------------------------------------|
| **General**  | Social Searcher       | [social-searcher.com](https://www.social-searcher.com/) | Searches multiple platforms at once | Free tier has limited searches |
| **Snapchat** | Snapchat Map          | [map.snapchat.com](https://map.snapchat.com/) | View public Snapchat location stories | Requires Snapchat account |
| **Instagram**| Dumpor               | [dumpor.com](https://dumpor.com/)    | View profiles/stories anonymously      | May have rate limits |
| **Twitter**  | Sotwe                | [sotwe.com](https://www.sotwe.com/)  | Anonymous Twitter browsing             | No login required |
|              | Xcancel              | [xcancel.com](https://xcancel.com/)  | Alternative Twitter viewer             | Lightweight interface |
|              | Nitter               | [nitter.net](https://nitter.net/)    | Privacy-focused Twitter front-end      | Avoids Twitter tracking |
| **Facebook** | Facebook Search      | [facebook.com/search](https://www.facebook.com/search/) | Native Facebook search tool | Limited without login |
|              | WhoPostedWhat       | [whopostedwhat.com](https://www.whopostedwhat.com/) | Search Facebook posts by date/keyword | Requires precise queries, public accounts |
| **reddit**   | r00m101.com         | [r00m101](https://r00m101.com/)       | Get info from an active or deleted reddit account                                       | Pricing for full scope possibly

---

### **Pro Tips & Workarounds**

1. **Facebook Private Accounts**:
   - Method 1: Create a fake account (difficult due to Facebook's verification)
   - Method 2: Use browser's *Inspect Element* → *Device Simulator* (or mobile phone) + direct URL
   - Always try logged out or in private mode first

2. **LinkedIn Limitations**:
   - If profiles don't load:
     - Wait 1-2 minutes (cookie/IP rotation)
     - Create a basic account (avoid looking suspicious)
   - HWID/IP tracking may block repeated searches

3. **Twitter Alternatives**:
   - Use **Nitter**/**Xcancel** to avoid rate limits/tracking
   - **Sotwe** work without login

4. **Instagram**:
   - **Dumpor** bypasses some privacy settings
   - **Quick Use** https://dumpor.io/v/USERNAME replace ``USERNAME`` with the user you are trying to see
   - **Will not work with private accounts**

---

### **Key Takeaways**
- **Anonymity**: Tools like Nitter/Dumpor avoid platform tracking
- **Mobile Tricks**: Simulating mobile devices often works better for restricted content
- **Persistence**: Some platforms (LinkedIn/Facebook) require patience or account creation

- For additonal tools see the Curated Lists section below.


## Curated lists

- [Awesome OSINT](https://github.com/jivoi/awesome-osint) - a curated list of OSINT tools, blogs, and videos

- [OSINT Framework](https://osintframework.com/) - a larger list of tools
  
- [OSINT Resources](https://sizeof.cat/post/osint-resources/) - Collection of OSINT resources that seems to be more up to date (includes NSFW)

  - [Archive](https://archive.ph/rZZf0)
  

- [OSINT toolbox](https://github.com/The-Osint-Toolbox) 

- A whole reddit wiki from the [OSINT community](https://www.reddit.com/r/OSINT/wiki/index/)

- A list of social media, maps, domains, etc also listed [in cipher387's OSINT collection](https://github.com/cipher387/osint_stuff_tool_collection).

- bellingcat [toolkit](https://bellingcat.gitbook.io/toolkit)

**OPT OUT**

- A whole [big ass list](https://github.com/yaelwrites/Big-Ass-Data-Broker-Opt-Out-List) to opt out and to compare info.

- [inteltechniques opt out workbook](https://inteltechniques.com/workbook.html)

- [Results about you (google index)](https://myactivity.google.com/results-about-you) - Check what google emails you; actually visit the website and see about doing an opt-out there.

## Toolchain (self-OSINT):

Google dorks: `https://www.google.com/search?q= "first+last" "Street Address" "City state" "age"` -> [Results about you (google index)](https://myactivity.google.com/results-about-you) -> [big ass list](https://github.com/yaelwrites/Big-Ass-Data-Broker-Opt-Out-List) -> [inteltechniques opt out workbook](https://inteltechniques.com/workbook.html) -> [People Search tools](https://github.com/airborne-commando/OPSEC-OSINT-Tools/tree/main?tab=readme-ov-file#people-search-tools-in-the-states)

**Notice** 

[Results about you (google index)](https://myactivity.google.com/results-about-you) can also be emailed so keep that in mind when comparing info I.E.: Google will find webistes containing your first-last name and address and will ask to remove it from the index. Before applying the removal process on google search be sure to remove info from the website itself that it's hosted on. Google Dorking seems to be a bit quicker and preemptive on removing info about yourself after you visit said sites (if applicable).

Also with doing google dorks the manual way is that you won't get flagged by google itself as a bot.

Additonal tools:

- For additonal tools see the curated-lists above



Donations:

If you find this useful feel free to donate to this monero address:

![mon](https://github.com/user-attachments/assets/f77ce530-5a5d-479d-bb47-481674c93f4c)

    8BPdcsLtA5iWLNTWvYzUVyTWtQkM62e8r7xqAuwjXTSC4RcoSWqpmtyLsMYvz3QNZtT1rbgPUnmVpMAudhxTn6zkRxUFcZN
