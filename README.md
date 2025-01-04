# OSINT/OPSEC Tools

A list of OSINT/OPSEC tools I made, forked, and/or use. First, let's talk about the definitions.

***DISCLAIMER***

I am in no way responsible for any abuse, misuse, or any questionable actions in which someone uses these tools or methods below. OSINT is an information-gathering technique that can be used by ANYBODY and on ANYBODY!

## Why did I create this?

Now why did I make this readme you may ask?

People in the states at least trust their info way to much on the internet and seeing how the internet has now affected our daily lives it's practically indistinguishable from reality now; what's real is now fake - what's fake is now real. tit for tat basically. Do what you must with this readme file, spread this on the net for all I care really and feel free to contribute on either a fork or on your own project (even on my own projects listed). Feel free to clone and spread this info out there or to fork or maybe make a rentry document if you want.

If you find this useful feel free to donate to this monero address:

      8BPdcsLtA5iWLNTWvYzUVyTWtQkM62e8r7xqAuwjXTSC4RcoSWqpmtyLsMYvz3QNZtT1rbgPUnmVpMAudhxTn6zkRxUFcZN

## Table of Contents
1. [OPSEC](#opsec)
   - [How to OPSEC](#how-to-opsec)
2. [Open Source Intelligence (OSINT)](#open-source-intelligence-osint)
3. [Who uses Open-Source Intelligence (OSINT)?](#who-uses-open-source-intelligence-osint)
4. [Sources of OSINT](#sources-of-osint)
5. [Real world examples of OSINT](#real-world-examples-of-osint)
   - [2016 Airstrike Coordination](#in-the-year-2016-a-basket-weaving-image-board-used-osint-to-pay-some-supposed-terroist-a-vist-from-a-govt-in-russia-resulting-in-airstrikes)
   - [2017 Shia LaBeouf Protest](#in-2017-shia-labeouf-had-a-protest-due-to-trumps-election-this-resulted-in-a-basket-weaving-image-board-using-osint-and-sky-patterns-to-figure-out-where-a-flag-is)
6. [How to OSINT](#how-to-osint)
7. [Tools](#tools)
8. [People search tools (in the states)](#people-search-tools-in-the-states)
9. [Breached Data](#breached-data)
10. [Social Media](#social-media)
11. [Curated lists](#curated-lists)
12. [Spoofing, fake email generation](#spoofing-fake-email-generation)
13. [Archive tools](#archive-tools-that-ive-made)

## OPSEC

**OPSEC** (Operations Security) is a systematic process for:
1. Identifying
2. Protecting and controlling critical information

It's a security discipline and operations function that involves a continuous cycle of:
* Identifying critical information and indicators (CII)
  * Critical information and indicators are essential components of Operations Security (OPSEC) aimed at protecting sensitive data that could be exploited by adversaries. Critical Information includes unclassified or controlled unclassified information about activities, intentions, capabilities, or limitations that adversaries can use to gain an advantage. Indicators are observable actions or pieces of information that reveal critical details about operations, such as sudden changes in procedures or increased security measures. Protecting this information involves identifying vulnerabilities and implementing countermeasures to prevent unauthorized disclosure
* Analyzing potential threats and vulnerabilities
* Assessing risks
* Developing countermeasures to protect CII

OPSEC is used to protect information and activities from adversaries. It helps identify and protect sensitive information that could give an adversary an advantage. OPSEC principles can be applied in daily life, such as not sharing personal information like a DOB, street address, email, phone number.

**Examples of OPSEC mistakes include:**
* Over-sharing personal information online
* Leaving unused social media profiles online
* Accidentally interacting with a target on social media

OPSEC supplements other security disciplines rather than replacing them.

### How to OPSEC:

* **Use services that can conceal your identity:**
  - Telegram is normie-tier as it isn't encrypted (Telegram does not use end-to-end) by default and requires a phone number. Only encryption you'll get is the secret chat option which; other than that it's all stored in their severs.
  - Read more about this [here on Telegram’s Approach to Encryption](https://www.protectstar.com/en/blog/telegram-encryption). Since Telegram does not use end-to-end encryption by default, it could theoretically hand over the content of messages to law enforcement. OH Wait it [just did](https://www.cnn.com/2024/09/23/tech/telegram-ceo-durov-arrest-user-data-changes/index.html).

  - [Simplex isn't too bad](https://github.com/simplex-chat/simplex-chat?tab=readme-ov-file#simplex-approach-to-privacy-and-security). 

    - Unlike any other existing messaging platform, SimpleX has no identifiers assigned to the users - not even random numbers. This protects the privacy of who are you communicating with, hiding it from SimpleX platform servers and from any observers.

  - Signal is encrypted by default but requires a phone number; however signal can't give anything out even by court order [because of state of the art encryption even on user accounts and phone numbers](https://signal.org/bigbrother/cd-california-grand-jury/). Meaning when you delete an account on signal and they Subpoena information about you or your account; they'll get basically squat. 

* **Tor/VPN/XMR:**
  - Tor isn't bad but will get rate limited by CAPTCHA.
  - Mullvad is a good VPN (Virtual Private Network) as it accepts XMR (Monero), which can't be traced back to you if you mine XMR with your own node (machine/device/computer). Note: VPNs are useless if you have bad OPSEC, same with Tor.

* **Usernames/credentials/Identification:**
  - Use different usernames and credentials on different websites.
  - Use a word spinner to change sentences for identity concealment.
  - Generate a face or use a non-identifiable profile picture.
  - Avoid making enemies online and don't be noticeable (i.e., don't be a turd).
  - Regularly OSINT yourself to check your online presence.

To start you SHOULD OSINT yourself and see if you can remove yourself within the list of these sites:
Here's a curated list to [opt out](https://github.com/airborne-commando/OSINT-Tools?#curated-lists)

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

### Real world examples of OSINT

## In the year 2016, a basket weaving image board used OSINT to pay some supposed terroist a vist from a [govt in Russia resulting in airstrikes.](https://imgur.com/pol-helps-coordinate-airstrike-on-moderate-syrian-rebels-N7DwWP1)

- [A video detailing the events](https://www.youtube.com/watch?v=OR6epSP_Xlw)

  - In 2016, during the complex Syrian Civil War, various rebel groups—some with good intentions and others with nefarious motives—sought to overthrow President Assad. The chaos allowed terrorist groups to flourish, prompting intervention from the United States and Russia, with the former supporting rebels and the latter aiding Assad. An anonymous user on 4chan's Syria General board (SG) claimed that a Syrian rebel group, Jaysh al-Izza, posted a video on YouTube revealing their secret encampment. The group, linked to Al-Qaeda, was seen by 4chan users as a target. A notable 4chan user, Ivan Sirenko, who had connections with the Russian military, received the coordinates from the 4chan community and tweeted them to the Russian Ministry of Defense. This led to an airstrike on the encampment. Two months later, the same rebel group posted another video showing a new training camp. 4chan users once again pinpointed the location using landmarks seen in the video. After thorough verification, they sent the coordinates to Ivan, who facilitated another Russian airstrike.

## In 2017, Shia LaBeouf had a protest due to Trumps election; this resulted in a basket weaving image board using OSINT and [sky patterns to figure out where a flag is.](https://www.vice.com/en/article/4chan-does-first-good-thing-pulls-off-the-heist-of-the-century1/)

- In 2017, 4chan users managed to track down and replace Shia LaBeouf's "He Will Not Divide Us" protest flag. Using only the live-stream footage of the flag, they analyzed flight patterns, star positions, and a tweet to locate the flag in Greeneville, Tennessee. A local troll then honked his car horn until the sound was picked up on the live-stream, pinpointing the exact location. The flag was replaced with a Trump hat, marking the end of this elaborate trolling operation.

### How to OSINT:

- Gather information about yourself, become your own threat actor; use the tools below and come up with your own conclusions. Use people search engines and public data about yourself and most importantly don't overshare on the internet or have such a large footprint.

## Tools
OSINT tools can access and analyze information from sources beyond traditional search engines. Be mindful as some info can be out of date or incorrect such as:

- Phone number
- Email
- Street Address
- IP Address (Dunno if anyone REALLY uses that but will list)

Anyhow, here are some tools I use for OPSEC/OSINT:

- Word spinners

  - [Article spinner, with basic and advanced paraphrase - can only use standard.](https://free-article-spinner.com/)

  - [Another article spinner, no advanced paraphrase; doesn't have different langs](https://www.rewritertools.com/article-spinner)

  - [Article rewriter](https://seotoolstation.com/article-rewriter) this rewriter keeps SEO in mind for search rankings; after a few tries it WILL ask for a login, use TOR to bypass.
 
- Wanna use different langs for free?
 
  - [Use google translate](https://translate.google.com/)

- SEO Tools

  - [Here's a really good site, I'd recommend using TOR browser to bypass the login page after a few tries](https://seotoolstation.com/).

- Google dorks

  - [Google-FU, uses Google to lookup info on someone or something; may get rate limited](https://github.com/airborne-commando/GoogleFU-improved)

- Bio-metric investigation

  - [Facecheck.ID tampermonkey script; improved by me, bypasses payment requirements and gives you the links](https://github.com/vin3110/facecheck.id-results-extractor)

  - [Pimeyes image extractor; gives an idea of where the image was located based on a URL, can use with facecheck.id](https://github.com/airborne-commando/Pimeyes-Free-GUI)

  - [RGB Attack website; gives details on the image, but not the link](https://rgbattack.com/)

- Email + username investigations
  - [Blackbird, robust OSINT tool for rapid searches of user accounts by username or email across many platforms](https://github.com/p1ngul1n0/blackbird)

  - A GUI editon of [this tool named crow](https://github.com/airborne-commando/crow)

- [Sherlock, similar to Blackbird but more robust and developed; caution with imgur red herrings](https://github.com/sherlock-project/sherlock)

  - [GUI for Sherlock, uses the CLI as a backend; commands are bascially the same.](https://github.com/airborne-commando/no-shit-sherlock)

- [maigret, find connections VIA a username; a fork of sherlock](https://github.com/soxoj/maigret)

  - [A GUI Tool, uses the CLI as a backend; commands are going to basically be the same.](https://github.com/airborne-commando/maigret-night) 


- [Hudson rock API extractor, for emails and usernames; not automated but uses Flask, checks email compromises](https://github.com/airborne-commando/hudsonrock-search-extractor)

- [holehe, caution with imgur for false positives; similar to Sherlock](https://github.com/megadose/holehe)

- Geolocation

  - [Google maps, good to pinpoint where someone/thing is and compare landmarks from somewhere](https://maps.google.com/)

- Generalized Toolkit
   - [OSINT rocks](https://osint.rocks/): search hudson; holehe, gmail (ghunt) and skype. Can also use telephone number; domain and username lookups.

- Face generation

   - [stable-diffusion-webui, use models you can find on the internet; can be used on a local machine](https://github.com/AUTOMATIC1111/stable-diffusion-webui)

      - [Civitai](https://civitai.com/models), I'd personally use 1.5 models under filters for older cards. Don't use inpainting models for image generation.

   - [This person doesn't exist; a face generator, will have a logo at the bottom of the screen so use](https://thispersondoesnotexist.com/)

- photo shop tools / photo editing tools

   - [Free inpaint](https://pincel.app/tools/inpaint)

   - [Will downscale the image so you'll probably have to use this after using the tool above](https://www.upscale.media/)

   - [affinity, isn't free](https://affinity.serif.com/en-us/photo/)

   - Can also try [GNU gimp](https://www.gimp.org/) but this is barebones
 
   - [Exiftool](https://exiftool.org/), edits metadata on images and can strip them.
      - For Linux users

   Debian:
      
      sudo apt update
      sudo apt install exiftool

   Other distros:

   Fedora:

      sudo dnf install exiftool

   Arch:

      sudo pacman -S exiftool

- For additonal tools see [Curated lists](#curated-lists)
    
## People search tools (in the states):

**DISCLAIMER: Most of the email info found on these sites appear to be from a databrech from long ago; subjects on these sites can and possibly will still use their email found on these sites as people will rarely change email providers due to TFA + password managers unless if the email itself has been compromised in any way, shape, or form OR if they've changed emails due to harrasment, spam, etc etc.**

1. [fast people search](https://www.fastpeoplesearch.com/)
 

gives out | can lookup
------ | ------
Age       | Name
Address       | Phone
Numbers       | Address
email       |

2. [that's them](https://thatsthem.com/)

gives out | can lookup
------ | ------
IP       | address
addresses       | email
Numbers       | IP
email       | VIN

3. [nuwber.com](https://nuwber.com/) 


| gives out             |      Can lookup        |
| :-------------------- | :--------------------: | 
| DOB                   |          Name          |
| Address               |         Phone          |
| email                 |         Email          |
| Phone Number          |         Address        |


4. [ID Craw](https://idcrawl.com/) 

gives out | can lookup
------ | ------
names  | names
username       | username
phone       | phone
email       | email

5. [Peekyou, search by first last name and username](https://www.peekyou.com/)

Gives out info such as: 

gives out | can lookup
------ | ------
age       | First and last name + state
social media's       | username
emails       |
addresses       |

6. [webmii, search by first last name](https://webmii.com/)

gives out | can lookup
------ | ------
Social       | First and last name
search results       |

7. [publicrecords, use this with fastpeople search or other people search engines](https://www.publicrecords.onlinesearches.com/)

gives out | can lookup
------ | ------
Name       | First and last name
Address       | Address, city, state
Partial phone number       |


**DISCLAIMER: OnlineSearches powered by Intelius® offers a free people search directory that includes basic information, such as name, address, and partial phone numbers. In performing a search, you may ultimately be directed to Intelius.com where additional information is offered for a fee.**

- For additonal tools see [Curated lists](#curated-lists)

## Breached Data:

- [Have I Been Pwned](https://haveibeenpwned.com/): Check if an email has been compromised in a data breach.

- [Breach Directory](https://breachdirectory.org/): Check email and usernames for a breach; will return partial password hashes

    - The following information is imported into the BreachDirectory database:
    - First 4 characters of each password.
    - SHA-1 hash of each password.
    - Length of each password.
    - Usernames.
    - Emails.
 
- [EXPOSED](https://exposed.lol/): Check email with password hashes, limted with only 4 Checks per 12hrs; feel free to use TOR.

- [leakpeek](https://leakpeek.com/): Can only use 5 searches for a free search, will hide most info but with some sluting and the tools listed you should get an idea of WHAT. also use tor if you can to bypass the search limit. Other than that if you really need more details on what was leaked you may need to buy a plan.

- [hashes](https://hashes.com/en/decrypt/hash): Decrypt the hashes you find to get a password possibly linked to a database or username.

- For additonal tools see [Curated lists](#curated-lists)

## Social Media:

- Instagram

  - [picuki - an anon Instagram browser that works if you know a username](https://www.picuki.com/) a great tool for figuring out land markers inside a photo.

- Twitter

  - [sotwe, an anon twitter browser that actually works.](https://www.sotwe.com/)

- For additonal tools see [Curated lists](#curated-lists)


## Curated lists

- [Awesome OSINT, a curated list of OSINT tools, blogs, and videos](https://github.com/jivoi/awesome-osint)

- [OSINT Framework, a larger list of tools](https://osintframework.com/)
  
- [OSINT Resources](https://sizeof.cat/post/osint-resources/) 

- A whole reddit wiki from the [OSINT community](https://www.reddit.com/r/OSINT/wiki/index/)

- A list of social media, maps, domains, etc also listed [in this github repo](https://github.com/cipher387/osint_stuff_tool_collection). 

**OPT OUT**

- A whole [big ass list](https://github.com/yaelwrites/Big-Ass-Data-Broker-Opt-Out-List) to opt out and to compare info.

## Spoofing, fake email generation

- Email address + username + name generation
  - [Email user/name generator for cock.li and ProtonMail; useful for non-temp mail service accounts](https://github.com/airborne-commando/user-email-gen)

***DISCLAIMER: Cock.li may be having issues:***

After:

      My fellow r*t*rds: cock.li has not "shut down". You may need to read more than the first line.
      Anyone suggesting you migrate your account to Gmail, Yahoo, Proton, etc. 
      should not have been using cock.li in the first place. Normal$!gs get off my f*!#ing board.
      Feel free to migrate, I don't have any good suggestions though. Try that on Proton!
      PW changes and maybe registration will be back within a couple days.

Before:

      LIBERTY CANARY
      Date updated: See the PGP Signed Version
      Cock.li is in 100% control of all of its hardware, and the service is still operating normally. 
      The website (account registration+pw change) is currently offline.
      Cock.li will shut down before becoming complicit in crimes against 
      its own user base under duress of any government or organization.
      Cock.li is not under duress of any government or organization.

I'd probably recommend using something other than cock.li; use any domain from cock.li and use a different email service provider. However, if you decide to use cock.li, you can check out how to enable it in the given link.

However feel free to check the status of cock.li wth the provided site here https://cock.li/

## Archive tools that I've made
 
- [link extractor and archive](https://github.com/airborne-commando/link-extractor-and-archive); uses archive.ph - useful on basic webpages. Requires manual intervention.

Additonal tools:

- For additonal tools see [Curated lists](#curated-lists)

