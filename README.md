***DISCLAIMER***

I am in no way responsible for any abuse, misuse, or any questionable actions in which someone uses these tools or methods below. OSINT is an information-gathering technique that can be used by ANYBODY and on ANYBODY!
Also I'd like for anyone to be aware that some of the domains (such as exposed.lol) may be expired, if so check the curated list or the other links listed.

## Why did I create this?

Now why did I make this readme you may ask?

People in the states at least trust their info way to much on the internet and seeing how the internet has now affected our daily lives it's practically indistinguishable from reality now; what's real is now fake - what's fake is now real. tit for tat basically. Do what you must with this readme file, spread this on the net for all I care really and feel free to contribute on either a fork or on your own project (even on my own projects listed). Feel free to clone and spread this info out there or to fork or maybe make a rentry document if you want.

# OSINT/OPSEC Tools

A list of OSINT/OPSEC tools I made, forked, and/or use. First, let's talk about the definitions.

## Table of Contents
1. [OPSEC](#operations-security-is-a-systematic-process-for)
   - [How to OPSEC](#how-to-opsec)
2. [Open Source Intelligence (OSINT)](#open-source-intelligence-osint)
3. [Who uses Open-Source Intelligence (OSINT)?](#who-uses-open-source-intelligence-osint)
4. [Sources of OSINT](#sources-of-osint)
5. [Real world examples of OSINT](#real-world-examples-of-osint)
   - [2016 Airstrike Coordination](#in-the-year-2016-a-basket-weaving-image-board-used-osint-to-pay-some-supposed-terrorist-a-vist-from-a-govt-in-russia-resulting-in-airstrikes)
   - [2017 Shia LaBeouf Protest](#in-2017-shia-labeouf-had-a-protest-due-to-trumps-election-this-resulted-in-a-basket-weaving-image-board-using-osint-and-sky-patterns-to-figure-out-where-a-flag-is)
6. [Tools](#tools)
7. [People search tools (in the states)](#people-search-tools-in-the-states)
8. [Grey literature](#grey-literature)
9. [Breached Data](#breached-data)
10. [Social Media](#social-media)
11. [Curated lists](#curated-lists)
12. [Archive tools](#archive-tools-that-ive-made)

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
* Leaving unused social media profiles online
* Accidentally interacting with a target on social media

OPSEC supplements other security disciplines rather than replacing them.

### How to OPSEC:

* **Use services that can conceal your identity:**
  - [Telegram](https://telegram.org/) is normie-tier as it isn't encrypted (Telegram does not use end-to-end) by default and requires a phone number. Only encryption you'll get is the secret chat option which; other than that it's all stored in their servers.
  - Read more about this [here on Telegram’s Approach to Encryption](https://www.protectstar.com/en/blog/telegram-encryption). Since Telegram does not use end-to-end encryption by default, it could theoretically hand over the content of messages to law enforcement. OH Wait it [just did](https://www.cnn.com/2024/09/23/tech/telegram-ceo-durov-arrest-user-data-changes/index.html).

  - [Simplex](https://simplex.chat/) [isn't too bad](https://github.com/simplex-chat/simplex-chat?tab=readme-ov-file#simplex-approach-to-privacy-and-security). 

    - Unlike any other existing messaging platform, SimpleX has no identifiers assigned to the users - not even random numbers. This protects the privacy of who are you communicating with, hiding it from SimpleX platform servers and from any observers.

  - [Signal](https://signal.org/download/) is encrypted by default but requires a phone number; however signal can't give anything out even by court order [because of state of the art encryption even on user accounts and phone numbers](https://signal.org/bigbrother/cd-california-grand-jury/). Meaning when you delete an account on signal and they Subpoena information about you or your account; they'll get basically squat. 

And remember just because something is end to end doesn't mean you cannot get eavesdropped.

* **Tor/VPN/XMR:**
  - [Tor](https://www.torproject.org/) isn't bad but will get rate limited by CAPTCHA.
  - [Mullvad](https://mullvad.net/en) is a good VPN (Virtual Private Network) as it accepts [XMR (Monero)](https://www.getmonero.org/), which can't be traced back to you if you mine XMR with your own node (machine/device/computer). Note: VPNs are useless if you have bad OPSEC, same with Tor.
  - Here is a list of bad [opsec](https://github.com/airborne-commando/OPSEC-OSINT-Tools/blob/main/badopsec.md) to give you an idea of what not to do with tor and other services (such as a VPN).

* **Usernames/credentials/Identification:**
  - Use different usernames and credentials on different websites.
  - Use a word spinner to change sentences for identity concealment.
  - Generate a face or use a non-identifiable profile picture.
  - Avoid making enemies online and don't be noticeable (i.e., don't be a turd).
  - Regularly OSINT yourself to check your online presence.

To start you SHOULD OSINT yourself and see if you can remove yourself within the list of these sites:
Here's a curated list to [opt out](https://github.com/airborne-commando/OSINT-Tools?#curated-lists)
And here's some [good opsec](https://github.com/airborne-commando/OPSEC-OSINT-Tools/blob/main/good-opsec.md).

- Opsec tools

  - List of opsec tools will be ***[here](https://github.com/airborne-commando/OPSEC-OSINT-Tools/blob/main/opsec.md)***

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

## In the year 2016, a basket weaving image board used OSINT to pay some supposed terrorist a vist from a [govt in Russia resulting in airstrikes.](https://imgur.com/pol-helps-coordinate-airstrike-on-moderate-syrian-rebels-N7DwWP1)

- [A video detailing the events](https://www.youtube.com/watch?v=OR6epSP_Xlw)

  - In 2016, during the complex Syrian Civil War, various rebel groups—some with good intentions and others with nefarious motives—sought to overthrow President Assad. The chaos allowed terrorist groups to flourish, prompting intervention from the United States and Russia, with the former supporting rebels and the latter aiding Assad. An anonymous user on 4chan's Syria General board (SG) claimed that a Syrian rebel group, Jaysh al-Izza, posted a video on YouTube revealing their secret encampment. The group, linked to Al-Qaeda, was seen by 4chan users as a target. A notable 4chan user, Ivan Sirenko, who had connections with the Russian military, received the coordinates from the 4chan community and tweeted them to the Russian Ministry of Defense. This led to an airstrike on the encampment. Two months later, the same rebel group posted another video showing a new training camp. 4chan users once again pinpointed the location using landmarks seen in the video. After thorough verification, they sent the coordinates to Ivan, who facilitated another Russian airstrike.

UPDATE: Turns out it was a really complex war the 4chan got involved in, still keeping this up as a key example however; the main issue is that they exposed their training locations with geographic locations to the internet like complete morons.
Thus bad opsec.

## In 2017, Shia LaBeouf had a protest due to Trumps election; this resulted in a basket weaving image board using OSINT and [sky patterns to figure out where a flag is.](https://www.vice.com/en/article/4chan-does-first-good-thing-pulls-off-the-heist-of-the-century1/)

- In 2017, 4chan users managed to track down and replace Shia LaBeouf's "He Will Not Divide Us" protest flag. Using only the live-stream footage of the flag, they analyzed flight patterns, star positions, and a tweet to locate the flag in Greeneville, Tennessee. A local troll then honked his car horn until the sound was picked up on the live-stream, pinpointing the exact location. The flag was replaced with a Trump hat, marking the end of this elaborate trolling operation.

## Tools
OSINT tools can access and analyze information from sources beyond traditional search engines. Be mindful as some info can be out of date or incorrect such as:

- Phone number
- Email
- Street Address
- IP Address (Dunno if anyone REALLY uses that but will list)

Anyhow, here are some tools I use for OPSEC/OSINT:

- Google dorks

  - [Google-FU](https://github.com/airborne-commando/GoogleFU-improved) - uses Google to lookup info on someone or something; may get rate limited

- Bio-metric investigation

  - [Facecheck.ID](https://github.com/vin3110/facecheck.id-results-extractor) - A tampermonkey script that is improved by me, bypasses payment requirements and gives you the links on where the images were orginated from.

- Email + username investigations
  - [Blackbird](https://github.com/p1ngul1n0/blackbird) - robust OSINT tool for rapid searches of user accounts by username or email across many platforms

  - A GUI editon of this tool named [crow](https://github.com/airborne-commando/crow)

- [Sherlock](https://github.com/sherlock-project/sherlock) - similar to Blackbird but more robust and developed; caution with imgur red herrings

  - [GUI for Sherlock](https://github.com/airborne-commando/no-shit-sherlock) - uses the CLI as a backend; commands are bascially the same.

- [maigret](https://github.com/soxoj/maigret) - find connections VIA a username; a fork of sherlock

  - [A GUI Tool](https://github.com/airborne-commando/maigret-night) - uses the CLI as a backend; commands are going to basically be the same.


- [Hudson rock API extractor](https://github.com/airborne-commando/hudsonrock-search-extractor) - for emails and usernames; not automated but uses Flask, checks email compromises

- [holehe](https://github.com/megadose/holehe) - caution with imgur for false positives; similar to Sherlock

- Geolocation

  - [Google maps](https://maps.google.com/) - good to pinpoint where someone/thing is and compare landmarks from somewhere

- Generalized Toolkit
   - [OSINT rocks](https://osint.rocks/) - search hudson; holehe, gmail (ghunt) and skype. Can also use telephone number; domain and username lookups.

- For additonal tools see [Curated lists](#curated-lists)
    
## People search tools (in the states):

**DISCLAIMER: Most of the email info found on these sites appear to be from a databrech from long ago; subjects on these sites can and possibly will still use their email found on these sites as people will rarely change email providers due to TFA + password managers unless if the email itself has been compromised in any way, shape, or form OR if they've changed emails due to harrasment, spam, etc etc.**

---

### **People Search Tools Comparison Matrix**  

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

---

### **Key Observations**:
1. **Free vs. Paid**: Most tools offer basic info for free but upsell detailed reports (e.g., PublicRecords → Intelius).  
2. **Data Sources**: Many pull from the same breaches/public records (emails/phones often outdated but still in use).  
3. **Specializations**:  
   - *Social Media*: PeekYou, IDCrawl.  
   - *Geolocation*: ClustrMaps.  
   - *Comprehensive*: FastPeopleSearch, Nuwber.  

**Disclaimer**: Accuracy varies; users rarely update emails unless compromised. Use ethically!

- For additonal tools see [Curated lists](#curated-lists)

## Grey literature

Use this site; [do not register](https://vote.gov/register), check a voter registration. Will probably need more info in some states; while other need less.

An automtic tool that I've made for [pa voter services](https://github.com/airborne-commando/voter-reg-status). Feel free to fork for other states.

## Breached Data:

- [Have I Been Pwned](https://haveibeenpwned.com/) - Check if an email has been compromised in a data breach.

- [Breach Directory](https://breachdirectory.org/) - Check email and usernames for a breach; will return partial password hashes

    - The following information is imported into the BreachDirectory database:
    - First 4 characters of each password.
    - SHA-1 hash of each password.
    - Length of each password.
    - Usernames.
    - Emails.

-  [pentester](https://pentester.com/) - same as exposed almost but has more info for free; doesn't need the use of TOR. REALLY GOOD!

-  [breachvip](https://breach.vip/) - needs a login to perform searches; breach.vip is the largest Minecraft DB search engine. We aim to provide a means to assess what data has been leaked in said breaches, at no cost to the public. Enjoy Searching. sounds memey

- [leakpeek](https://leakpeek.com/) - Can only use 5 searches for a free search, will hide most info but with some sluting and the tools listed you should get an idea of WHAT. also use tor if you can to bypass the search limit. Other than that if you really need more details on what was leaked you may need to buy a plan.

- [lolarchiver](https://osint.lolarchiver.com/) - A paid service in which will provide you data breaches

- [hashes](https://hashes.com/en/decrypt/hash) - Decrypt the hashes you find to get a password possibly linked to a database or username.

- For additonal tools see [Curated lists](#curated-lists)

If you happen to have a breached database on your person

- [Icebreaker](https://github.com/airborne-commando/ice-breaker) - uses python and is good for databases that are less than 1000GB; feel free to try it with the demo python script supplied. Comes with a windows EXE for both.
   - [facebook-533m](https://github.com/davidfegyver/facebook-533m) - facebook-533m raidforms leak; Doesn't Contain Any Passwords. read the Disclaimer on that repo. Use the python script above.

## Social Media:

- SMSEs

    - [Social Searcher](https://www.social-searcher.com/)

- Snapchat map

   - [Snapchat Map](https://map.snapchat.com/) - need an account for that


- Instagram
  - [Dumpor](https://dumpor.com/) - another instagram viewer


- Twitter

  - [sotwe](https://www.sotwe.com/) - an anon twitter browser that actually works.
  - [xcancel](https://xcancel.com/) - Another one.
  - [Nitter](https://nitter.net/) - Twitter alternative front-end
 
- Facebook
  - [Facebook Search](https://www.facebook.com/search/)
  - [Facebook post search](https://www.whopostedwhat.com/) 


  Pro-tips for social media:
  Facebook:
  For private facebook accounts, you can either use a fake facebook account (difficult due to Zucc's anti-spoofing features) OR use inspect element and simulate a mobile device (or use an actual phone), so long as you have a link to that account 
  or POST. (be sure you are logged out or in Private mode).

  Linkedin:
  Sometimes linkedin will not give you the account, to combat this you'll need to either create an account or wait a minute (cookies probably, could be IP+HW ID's beats me)

- For additonal tools see the Curated lists below


## Curated lists

- [Awesome OSINT](https://github.com/jivoi/awesome-osint) - a curated list of OSINT tools, blogs, and videos

- [OSINT Framework](https://osintframework.com/) - a larger list of tools
  
- [OSINT Resources](https://sizeof.cat/post/osint-resources/) - Collection of OSINT resources that seems to be more up to date (includes NSFW)

  - [Archive](https://archive.ph/rZZf0) 

- A whole reddit wiki from the [OSINT community](https://www.reddit.com/r/OSINT/wiki/index/)

- A list of social media, maps, domains, etc also listed [in cipher387's OSINT collection](https://github.com/cipher387/osint_stuff_tool_collection). 

**OPT OUT**

- A whole [big ass list](https://github.com/yaelwrites/Big-Ass-Data-Broker-Opt-Out-List) to opt out and to compare info.

- [inteltechniques opt out workbook](https://inteltechniques.com/workbook.html)

## Archive tools that I've made
 
- [link extractor and archive](https://github.com/airborne-commando/link-extractor-and-archive) uses archive.ph - useful on basic webpages. Requires manual intervention (text edits FIND+REPLACE).


Additonal tools:

- For additonal tools see the curated-lists above



Donations:

If you find this useful feel free to donate to this monero address:

![mon](https://github.com/user-attachments/assets/f77ce530-5a5d-479d-bb47-481674c93f4c)

    8BPdcsLtA5iWLNTWvYzUVyTWtQkM62e8r7xqAuwjXTSC4RcoSWqpmtyLsMYvz3QNZtT1rbgPUnmVpMAudhxTn6zkRxUFcZN
