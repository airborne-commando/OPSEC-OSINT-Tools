# Threat actor

**Although most biographies are about well-known individuals, everyone has biographical information about their own lives (Vocabulary.com)**[^2].

As stated in this graph and in the markdown for [Digital Profiling](../Digital-Profiling.md#digital-profiling-pipeline) also need to check out [the main guide](../../README.md).

**NOTE: DO NOT DO ANYHING DUMB LOL**

<p align="center">
<img  src="../../img/png/graphs/digi-profiling.png" alt="Digital Profiling" width="auto" height="auto" />
</p>

You can build a somewhat clear profile on someone; what their motives are, what they are feeling possibly, what makes them tick...

In this markdown I can give you some tangible examples.

Let's say there is a threat actor trying to gather information on an internet user, s/he collects as much information as s/he can.
Let's say this user has a huge *AND I MEAN HUGE* digital footprint; from older social media to adult sites.

Think like Chris Chan but less autistic[^3] and gross[^4]. Much like Chris Chan this person has a huge digital footprint, see below:

> "The life of Chandler and, by extension, her mother, has been extensively documented since 2007, when users on the fringe chat forum 4chan caught wind of her comic, Sonichu, a cross between Pikachu and Sonic the Hedgehog" (Leighton et al., 2024).[^4]
>
> "Christine Chandler, who is also known online as Chris Chan, was arrested on August 1, 2021, and charged with incest after a leaked phone call revealed she may have had sexual relations with her 79-year-old mother" (Leighton et al., 2024).[^4]

Ok so now what? what can s/he gather? let's refer to this graph.

```mermaid
flowchart TD
    A["Define Objectives"] --> B["Data Collection"]
    B --- C["Sources"]
    B --- D["Methods"]
    C --> C1["Search Engines"] & C2["Social Media"] & C3["Public Records"] & C4["Satellite & Geospatial"] & C5["Specialized Tools"]
    C1 --> C1a["Google, Bing, Yahoo, Google Dorks"]
    C2 --> C2a["Facebook, Twitter, Instagram, LinkedIn, TikTok"]
    C3 --> C3a["Government Databases, Court Records, Property Records, Voter Registries"]
    C4 --> C4a["Google Maps, Bing Maps, Google Earth, Satellite Imagery Providers"]
    C5 --> C5a["Spiderfoot, Blackbird, Sherlock, Maigret, IMINT tools, OSINT frameworks"]
    D --> D1["Advanced Search Operators"] & D2["Digital Profiling"] & D3["Reverse Image & Metadata"] & D4["Geolocation"] & D5["Network Mapping"]
    D <--> E["Analysis & Verification"]
    D1 --> D1a["Google Dorking"]
    D2 --> D2a["Blog posts, social media, digital footprint"]
    D3 --> D3a["biometrics, google image search, yandex"]
    D4 --> D4a["Google maps, bing maps"]
    D5 --> D5a["who communicates with whom, relationships"]
    F["Iterate if Needed"] -- Stop --> G["Preserve Findings"]
    G --> G1["Secure Storage"]
    G1 --> G2["Documentation"]
    G2 --> G3["Reporting"]
    H["Automation"] <--> H1["Automated Tools & Scripts"]
    H1 <--> H1a["chrome driver, python"]
    H3["Data Aggregation"] <--> H3a["collected data from text files, csv"]
    H1a <-- New Leads --> F
    H3a <--> H
    E <--> H3
```


The threat actor had started with Planning and Collection, as stated in the The Intelligence Cycle:

> "From that, the intelligence organization being tasked will plan its activity".(Director of National Intelligence, n.d.)[^9]
> 
> "The raw information gathered includes, but is not limited to, newspaper reporting, aerial imagery, satellite imagery, documents, electronic parameters, and more.".(Director of National Intelligence, n.d.)[^9]

#### **Phase 1: Foundation & Planning**
The threat actor starts by defining the objective: to collect as much information as possible to understand the target's motives, feelings, and psychological triggers.

**Much like the FBI[^5] the threat actor had done behavioral analysis and went to phase two.**

#### **Phase 2: Psychological Foundation**
The actor discovers that the target used the same email as a username on several sites. One of these sites was a Blogspot journal. By analyzing its content, the actor lays a psychological foundation: the user appeared sad or bipolar in the past, and this behavior seems to match their current online output. They've also collected other information such as political party. In an obituary, the internet user seems to suffer the same mental ailments just like the person named in the obit which was a mother. Also seems to like drugs, just like the father does. The threat actor used a NLP to analyze the blogspot for a quick glance.

In phase three described below, the threat actor used various tools to analyze public history such as birthdates, obituaries, government data et al.[^6][^7]

#### **Phase 3: Analysis & Processing (OSINT/SOCMINT)**
This is where the actor collects and analyzes public data:
*   **(3c) Digital Biography:** The user posted a picture next a house. This was later confirmed using government data and maps. Other social media posts also confirmed this location. In another location, there was a mobile home which was either owned by the father or another dwelling; later confirmed by govt records and a public post to be possible.
*   **(3c) Family & Interests:** A family obituary named the user's child and some family members (mother, father, child). The user had also mentioned this child's name multiple times online. The user also publicly broadcasted their personal interests. In a news article, there was a conviction of drugs matching the fathers name. Was confirmed with court docs. The internet user is close with family and leans left like the family member named in the obit.
*   **(3e) Competencies & Affinities:** The assessment shows the user has poor privacy habits and low-moderate technical skill. However, they are highly sociable. In another location, the threat actor confirmed a mobile home with a camera at the doorway.
*   **(3d) Behavioral Patterns:** The user's behavior seems immature. Their old journal entries showed they were upset about uncontrollable issues and obsessed with something, leading to depression—a trait that appears to reflect their current state.

**HUMINT (Human Intelligence):** The threat actor actively engaged with the user using an alias on a fetish site, asking about their family or child, politics and pointing out interest to elicit a response. This confirmed the information gathered and provided further insight into their behavior. The internet user seems easy to evoke and or to elicit a response.[^8][^9]

The threat actor had done what was stated by the JCAT Intelligence Guide For First Responders:

> "Human intelligence (HUMINT) is intelligence derived from information collected and provided by human sources. This information includes overt data collected by personnel in diplomatic and consular posts as well as otherwise unobtainable information collected via clandestine sources, debriefings of foreign nationals and U.S. citizens who travel abroad, official contacts with foreign governments, and direct observation." (Director of National Intelligence, n.d.)[^9]

**Much like this graph here:**
<p align="center">
<img src="../../img/png/graphs/Recon.png" width="300" height="auto" />
</p>

#### **Phases 4, 5, & 6: Image Intelligence (IMINT) and cross reference**
The actor moved to verify the collected information:
*   They used **Google Maps, Google Earth, and Street View** to confirm the user's location(s) and dwellings **GEOSPITAL/GEOINT**.
*   They **cross-referenced** this with parcel address data from historical archives.
*   It was further examined by govt records and later confirmed to be a possible dwelling for the father (home) and the daughter possibly lives at a mobile home (public posts, IMINT, HUMINT).[^9][^10]
*   They've Used **bio-metrics** to gather additional sources and to collect more info to form a complete and refined digital biography.
*   All information was **multi-sourced**, meaning it was confirmed through several independent channels.

#### CSINT (Closed source Intel)

This isn't in the graph, but a threat actor can use CSINT and past data breaches (either from a telegram, github repo, et al) to collect more info about someone.

*   What the actor found was that the internet user also used to use adult hookup sites which fit the profile.
*   In another data breach, there was a closet site; which the actor already knew about; but it had also confirmed the internet users DOB just like the previous adult sites had.
    
Typically it's not open data; not open to public inquiry as stated by the Pennsylvania State University

>"Closed source data is government or private data not available through open inquiry."(Pennsylvania State University, para. 2)[^12]

#### **Phase 7: Verification & Triangulation**
The actor correlated all the intelligence—OSINT, SOCMINT (Social Media Intelligence), CSINT, IMINT (Imagery Intelligence),GEOSPITAL and GEOINT—to build a verified profile. They knew the user's:
*   Location(s) and dwellings (possibly backed by GOV info)[^7].
*   Sensitive family information (backed by AI identity enumeration, obits, social media, et al)[^6][^11][^10]
*   Psychological state (past and present)[^11], blogspot/Snapchat[^10].
*   dating sites (deactivated)[^10], pentester/breaches[^12].
*   Interests, political leanings (including fathers, explained below), digital biography[^11], previous and current career (archived websites and social media posts)[^11].
*   This person used 12 different usernames across their accounts, and they were active on 13 distinct platforms[^10] VIA [crow](https://github.com/airborne-commando/Crow) (a blackbird GUI) and [facecheck](https://facecheck.id/) which is bio-metrics.

Explanation on political leanings:

The political leanings were all figured out with this script named [voter reg status](https://github.com/airborne-commando/tampermonkey-collection/tree/main#voter-reg-status-tapermonkey-edition) (now tampermonkey), all it does it guess the DOB of someone if you have enough info (such as zip and county)

#### **Conclusion (Phases 8 & 9)**
The threat actor Used Phase 8 (a counter-OSINT audit, which is a defensive step) and used an alias and burner email address on a fetish site that the target was on for HUMINT (earlier step), and also went to **Phase 9**.
They compiled a report and archived some websites to document all findings. Since this is a threat actor, their intentions are dubious, and this compiled information could be used for malicious purposes such as doxing or **future psychological warfare**.

<p align="center">
<img src="../../img/png/misc/memes/isaw.webp" alt="I saw what you deleted" width="30%"/>
</p>
<p align="center">
<strong>Meme related.</strong>
</p>

As a result, said user had ***some*** measures but didn't seem to care... or did it

- User deleted some popular videos and deleted/deactivated it's account on sites.
- User had placed false breadcrumbs for the threat actor, which is still bad security - see obscurity.

What the user can do is the following:

- Take a look at the information already available online, see my [methods](../../README.md) for scrubbing of information[^1].
- See if you can identify who you can tell what on specific things; like your diets, hobbies, issues.
- Read up on the Terms of Service, most websites have those such as Facebook and snap.
- Protect his/herself with weapons, whistles, people to trust, escape plans.
  
That's pretty much it, pretty cut and dry.


## References:

[^1]: Barnett, Daly. “Doxxing: Tips To Protect Yourself Online & How to Minimize Harm” EFF, December 16. 2020, https://www.eff.org/deeplinks/2020/12/doxxing-tips-protect-yourself-online-how-minimize-harm

[^2]: "Biographical." Vocabulary.com Dictionary, Vocabulary.com, https://www.vocabulary.com/dictionary/biographical. Accessed 27 Sep. 2025

[^3]: “The Comprehensive Chris Chan Documentary.” www.youtube.com, uploaded by GenoSamuel, 24 Feb. 2019, www.youtube.com/playlist?list=PLABqEYq6H3vpCmsmyUnHnfMOeAnjBdSNm.

[^4]: Leighton, M., et al. (2024, August 18). *A timeline of Chris Chan’s incest charge and dismissal, which came after years of online trolling that documented the creator’s relationship with her mother*. *Business Insider*. https://www.businessinsider.com/chris-chan-saga-timeline-incest-charges-arrest-2021-8

[^5]: FBI. “Behavioral Analysis.” www.fbi.gov/how-we-investigate/behavioral-analysis. Accessed 25 Sept. 2025.

[^6]: University of Maryland. “Research Guides: Maryland Genealogy: What Is Genealogical Research?” University of Maryland Libraries, lib.guides.umd.edu/c.php?g=326980&p=2198795.

[^7]: “Guides: Finding Datasets: Public Data Sources.” University of North Texas Libraries, 22 Jan. 2025, guides.library.unt.edu/datasets/public-data-sources.

[^8]: Levenson, Kathleen Hyatt Zachary. Social Engineering Impacts on Government Acquisition. 1 May 2023, dair.nps.edu/handle/123456789/4858

[^9]: Director of National Intelligence. (n.d.). JCAT *Intelligence Guide for First Responders.* www.dni.gov/nctc/jcat/jcat_ctguide/intel_guide.html.

[^10]: University of South Florida, Office of University Communications and Marketing. "Introduction to Social Media." *USF*, https://www.usf.edu/ucm/social-media/intro-social-media.aspx. Accessed 22 Sept. 2025.

[^11]: Arthur, Paul Longley. "Digital Biography: Capturing Lives Online." a/b: Auto/Biography Studies, vol. 24 no. 1, 2009, p. 74-92. Project MUSE, https://muse.jhu.edu/article/394172.

[^12]: Pennsylvania State University, et al. (n.d.). *L3.09: Closed Source Data.* www.e-education.psu.edu/geointmooc/node/2016