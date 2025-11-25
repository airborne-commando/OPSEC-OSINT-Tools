# Table of Contents

1. [Reverse Search (Google)](#reverse-search-google)</br>
1a. [reconnaissance framework](IMINT.md#reconnaissance-framework)
   * [How to Use Reverse Image Search](#how-to-use-reverse-image-search)  
     - [On Mobile](#on-mobile)  
     - [On Desktop](#on-desktop)  
   * [What You Can Use It For](#what-you-can-use-it-for)  
     - [Find an Article](#find-an-article)  
     - [Identify a Device Name or Type](#identify-a-device-name-or-type)  
     - [Find a Brand, Restaurant, or Location](#find-a-brand-restaurant-or-location)  
   * [What You Cannot Do](#what-you-cannot-do)  
   * [Extra Tips](#extra-tips)  


3 [GEOINT (Geographical Intelligence)](#geoint-geographical-intelligence)

4. [IMINT (Imagery Intelligence)](#imint-imagery-intelligence)  
   * [Definition](#definition)  
   * [Who Uses IMINT?](#who-uses-imint)  
   * [SOCMINT (Social Intelligence)](#socmint-social-intelligence)  
   * [Using Public Images with Maps](#using-public-images-with-maps)  
   * [Ten Practical Applications](#ten-practical-applications)  
   * [Ethical and Legal Considerations](#ethical-and-legal-considerations)  

5. [Combining IMINT, SOCMINT, and Digital Profiling](#combining-imint-socmint-reverse-search-and-digital-profiling)  
   * [Multidimensional Intelligence](#multidimensional-intelligence)  
   * [Enhanced Geolocation](#enhanced-geolocation)  
   * [Improved Digital Profiling](#improved-digital-profiling)  
   * [OPSEC Assessment](#opsec-assessment)  
   * [Real-World Applications](#real-world-applications)  

6. [10 Practical Use Cases](#10-practical-use-cases)  
7. [Best Practices & Cautions](#best-practices--cautions)
8. [References](#References)

---


## Reconnaissance Framework

<p align="center">
<img alt="IMINT (Imagery Intelligence)" src="../img/png/graphs/Recon.png" width="300" height="auto" />
</p>

---

# Reverse Search (Google)

Reverse image search tools like **Google Image Search** and **Google Lens** enable you to use images instead of text to find related information online.

### How to Use Reverse Image Search

#### On Mobile
- Open the Google app or go to google.com.
- Tap the **Google Lens** icon (camera).
- Take a photo or upload one from your device.
- Adjust the focus area if needed and view results.

#### On Desktop
- Visit google.com or images.google.com.
- Click the **camera icon** (Google Lens).
- Upload an image, paste an image URL, or drag and drop.
- View results showing visually similar images and related pages.

### What You Can Use It For
- **Find an article:** Locate the original article or similar ones using screenshots or photos.[^9]
- **Identify device name or type:** Identify brands and models of devices (e.g., Samsung, Pixel, Apple).
- **Find brand, restaurant, or location:** Recognize logos, storefronts, food items, or landmarks.[^9]

### What You Cannot Do
- **Reverse search people:** Not designed for facial recognition or identifying individuals.
- If you wanted to reverse search people, please use this tool for [facecheck.id](https://github.com/vin3110/facecheck.id-results-extractor).[^13][^14][^15]

### Extra Tips
- On mobile browsers, request the desktop site for full features.
- Long-press images in Chrome mobile and select “Search Image with Google.”
- Don't just rely on google image search, you may have to manually deduce an image (is this really a iphone or samsung)

---

# GEOINT (Geographical Intelligence)

What is GEOINT?[^1]

Geospatial Intelligence is the analysis and visual representation of security related activities on the earth. It is produced through an integration of imagery, imagery intelligence, and geospatial information.

# IMINT (Imagery Intelligence)

### Definition
IMINT—Imagery Intelligence[^1] includes representations of objects reproduced electronically or by optical means on film, electronic display devices, or other media. Imagery can be derived from visual photography, radar sensors, and electro-optics. NGA is the manager for all imagery intelligence activities, both classified and unclassified, within the government, including requirements, collection, processing, exploitation, dissemination, archiving, and retrieval.[^1]

### Who Uses IMINT?
- **Civilians:** Disaster tracking, social media verification, urban planning (unclassified).[^12]
- **Law Enforcement:** Surveillance, crime investigation, missing persons search (classified).[^1]

### SOCMINT (Social Intelligence)

SOCMINT[^4][^2] refers to collecting and analyzing digital data about social relationships and networks, primarily through metadata, social media activity, and geolocation data. It focuses on:

- **Social Networks:** Mapping social dynamics and connections.
- **Data Sources:** Social platforms (Facebook, Instagram, LinkedIn), communications metadata, location info.
- **Analytical Depth:** Large-scale data and algorithms reveal patterns beyond traditional human or signals intelligence.

> See also [Digital Profiling](Digital-Profiling.md), which closely relates to SOCMINT.

### Using Public Images with Maps
Cross-referencing public images with mapping **GEOINT** tools like Google Maps or Street View can:
- Verify locations
- Track events or individuals
- Investigate crimes or fraud
- Identify vehicles, buildings, or terrain

### Ten Practical Applications
- Confirm social media post locations
- Investigate crime scenes or accidents
- Verify travel photo authenticity
- Locate missing persons
- Detect unauthorized construction
- Map protest activities
- Validate disaster imagery
- Identify specific objects or vehicles
- Enhance geographic data with user-contributed imagery

### Ethical and Legal Considerations
Use IMINT responsibly, respecting privacy and laws, especially with personally identifiable or sensitive information.

---

# Combining IMINT, SOCMINT, Reverse Search and Digital Profiling

Combining visual intelligence (IMINT) with social data (SOCMINT) and digital profiling significantly enhances investigative depth and accuracy.

### Multidimensional Intelligence
- IMINT provides visual context (locations, layouts, environmental changes).[^7][^8]
- SOCMINT and digital profiling supply social and behavioral data from online footprints.[^7][^8]
- Google Reverse search can identify landmarks, devices and brands.[^10][^9]
- Together, these reveal identities, timelines, and interactions in a holistic manner.

### Enhanced Geolocation
- Identify landmarks in images via IMINT.[^7][^8]
- Cross-reference with social data and OSINT tools to connect locations with people or events.[^7][^8]

### Improved Digital Profiling
- Analyze social media[^3] images with IMINT location verification.[^7][^8]
- Use Google reverse search to figure out a device and a users ecosystem (android, apple, mac) and to find landmarks or brands (a restaurant, a landmark, et al).[^10][^9][^8]
- Layer data from emails, usernames, and phone lookups to build comprehensive profiles.[^11]

### OPSEC Assessment
- Use IMINT to assess physical security vulnerabilities (entry points, cameras).[^7][^8][^16]
- Use OSINT to identify digital exposure (breached credentials, leaked emails).
- This combined view uncovers physical and cyber vulnerabilities.

### Real-World Applications
- Missing persons searches combining photo and location data.[^5]
- Crime scene analysis with visual and digital evidence[^6].
- Event verification by matching social media and satellite data[^7][^8].

---

# 10 Practical Use Cases

1. Locate residences by matching social media photos with maps and verifying identities.
2. Track suspect movements using geotagged images and breached data.
3. Verify viral news images with satellite imagery and digital footprints.
4. Identify OPSEC failures from location-revealing social posts.
5. Monitor illegal construction using satellite imagery and public records.
6. Support disaster response by mapping affected areas and finding contacts.
7. Detect fraud by matching online listing photos with real locations.
8. Analyze protest sites via crowd photos and satellite images.
9. Investigate cyberstalking by tracing images to locations and accounts.
10. Assess facility security combining IMINT layout and breached credential checks.

---

# Best Practices & Cautions

- Respect privacy laws and ethical guidelines.
- Verify findings through multiple sources.
- Protect your own digital footprint and OPSEC during investigations.

---

back to the readme [main OPSEC-OSINT-Tools repository](../README.md).

## References:

[^1]:  Office of the Director of National Intelligence. “Intelligence Community.” Office of the Director of National Intelligence, www.odni.gov/index.php/ncsc-what-we-do/121-dni/intelligence-community. Accessed 25 Nov. 2025. (Office of the Director of National Intelligence, sec.Types of Intelligence)

[^2]: “Social Media Intelligence Best Practices.” Rochester Institute of Technology, 2023-10_CPSI, Rochester Institute of Technology, Oct. 2023, www.rit.edu/liberalarts/sites/rit.edu.liberalarts/files/docs/CRIM%20Resources/2023-10_CPSI%20Working%20Paper_Social%20Media%20Intelligence%20Best%20Practices.pdf.

[^3]: Kraakevik, Jeff. “Crafting a positive professional digital profile to augment your practice.” Neurology. Clinical practice vol. 6,1 (2016): 87-93. doi:10.1212/CPJ.0000000000000211

[^4]: “HC3: Analyst Note.” U.S Department of Health and Human Services, 202208091700, Washington D.C., United States of America, Health and Human Services, 9 Aug. 2022, http://web.archive.org/web/20230617000751/https://www.hhs.gov/sites/default/files/osint-how-to-analyst-note-tlpwhite.pdf.

[^5]: Mathieu Gaucheler. “How OSINT Helps Find Missing Persons.” Maltego, 2 May 2025, www.maltego.com/blog/how-osint-helps-find-missing-persons.

[^6]: Tracey L. Johnson, Basia E. Lopez, Jonathan McGrath, Caleb D. Hudgins, Meaghan L. Pimsler, and Veronica White, "Introducing the NIJ Forensic Intelligence Framework: Pillars and Guiding Principles for Successful Implementation," National Institute of Justice, NCJ 309128, November 2024.

[^7]: “The Time 4Chan Called in an Airstrike.” Youtube, uploaded by Pezle, 17 Aug. 2023, www.youtube.com/watch?v=OR6epSP_Xlw.

[^8]: Lamoureux, Mack, and Mack Lamoureux. “How 4Chan’s Worst Trolls Pulled off the Heist of the Century.” VICE, 27 July 2024, www.vice.com/en/article/4chan-does-first-good-thing-pulls-off-the-heist-of-the-century1.

[^9]: Postma, Foeke. “Using New Tech to Investigate Old Photographs - Bellingcat.” Bellingcat, 9 Aug. 2022, www.bellingcat.com/resources/2022/08/09/using-new-tech-to-investigate-old-photographs.

[^10]: Toler, Aric. “Guide to Using Reverse Image Search for Investigations - Bellingcat.” Bellingcat, 27 Dec. 2019, www.bellingcat.com/resources/how-tos/2019/12/26/guide-to-using-reverse-image-search-for-investigations.

[^11]: Jain, Shefali. “10 Best Background Check Sites In 2022.” United States Department Of Labor, 6 Jan. 2022, www.dol.gov/sites/dolgov/files/ETA/advisories/TEIN/2000/youth.htm.

[^12]: “IC21: The Intelligence Community in the 21st Century.” U.S. Government Publishing Office, www.govinfo.gov/content/pkg/GPO-IC21/html/GPO-IC21-6.html. Accessed 25 Sept. 2025.

[^13]: Creps, Jake. “The OSINT Newsletter - Issue #45.” The OSINT Newsletter, 4 Mar. 2024, https://osintnewsletter.com/p/45

[^14]: Creps, Jake. “The OSINT Newsletter - August 2023 OSINT Review.” The OSINT Newsletter, 14 Aug. 2023, https://osintnewsletter.com/p/the-osint-newsletter-august-2023.

[^15]: Creps, Jake. “The OSINT Newsletter - April 2023 OSINT Review.” The OSINT Newsletter, 15 Apr. 2023, https://osintnewsletter.com/p/april-osint-2023.

[^16]: Szuba, Tom, et al. “Chapter 5-Protecting Your System: Physical Security.” The Institute of Education Sciences, The Institute of Education Sciences, 1998, pp. 55–62. https://nces.ed.gov/pubs98/safetech/chapter5.asp.