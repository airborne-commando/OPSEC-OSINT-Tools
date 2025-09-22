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


3 [GEOINT (Geographical Intelligence)](#GEOINT)
   * [What is GEOINT]()

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

---


## Reconnaissance Framework

<p align="center">
<img alt="IMINT (Imagery Intelligence)" src="../img/svg/Recon.svg" width="300" height="auto" />
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
- **Find an article:** Locate the original article or similar ones using screenshots or photos.
- **Identify device name or type:** Identify brands and models of devices (e.g., Samsung, Pixel, Apple).
- **Find brand, restaurant, or location:** Recognize logos, storefronts, food items, or landmarks.

### What You Cannot Do
- **Reverse search people:** Not designed for facial recognition or identifying individuals.
- If you wanted to reverse search people, please use this tool for [facecheck.id](https://github.com/vin3110/facecheck.id-results-extractor).

### Extra Tips
- On mobile browsers, request the desktop site for full features.
- Long-press images in Chrome mobile and select “Search Image with Google.”
- Don't just rely on google image search, you may have to manually deduce an image (is this really a iphone or samsung)

---



# GEOINT

What is GEOINT?[^odni]

Geospatial Intelligence is the analysis and visual representation of security related activities on the earth. It is produced through an integration of imagery, imagery intelligence, and geospatial information.



# IMINT (Imagery Intelligence)[^odni]

### Definition
IMINT is the collection and analysis of visual imagery — from satellites, drones, aerial or ground photography — to extract actionable intelligence.

### Who Uses IMINT?
- **Civilians:** Disaster tracking, social media verification, urban planning (unclassified).
- **Law Enforcement:** Surveillance, crime investigation, missing persons search (classified).

### SOCMINT (Social Intelligence)[^hhs][^rit]

SOCMINT refers to collecting and analyzing digital data about social relationships and networks, primarily through metadata, social media activity, and geolocation data. It focuses on:

- **Social Networks:** Mapping social dynamics and connections.
- **Data Sources:** Social platforms (Facebook, Instagram, LinkedIn), communications metadata, location info.
- **Analytical Depth:** Large-scale data and algorithms reveal patterns beyond traditional human or signals intelligence.

> See also [Digital Profiling](Digital-Profiling.md), which closely relates to SOCMINT.

### Using Public Images with Maps
Cross-referencing public images with mapping tools like Google Maps or Street View can:
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
- IMINT provides visual context (locations, layouts, environmental changes).
- SOCMINT and digital profiling supply social and behavioral data from online footprints.
- Google Reverse search can identify landmarks, devices and brands.
- Together, these reveal identities, timelines, and interactions in a holistic manner.

### Enhanced Geolocation
- Identify landmarks in images via IMINT.
- Cross-reference with social data and OSINT tools to connect locations with people or events.

### Improved Digital Profiling [^kraakevik]
- Analyze social media images with IMINT location verification.
- Use Google reverse search to figure out a device and a users ecosystem (android, apple, mac) and to find landmarks or brands (a restaurant, a landmark, et al).
- Layer data from emails, usernames, and phone lookups to build comprehensive profiles.

### OPSEC Assessment
- Use IMINT to assess physical security vulnerabilities (entry points, cameras).
- Use OSINT to identify digital exposure (breached credentials, leaked emails).
- This combined view uncovers physical and cyber vulnerabilities.

### Real-World Applications
- Missing persons searches combining photo and location data.
- Crime scene analysis with visual and digital evidence.
- Event verification by matching social media and satellite data.

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

sources:

For the ODNI webpage[^odni].

For the RIT working paper PDF[^rit].

For the article on professional digital profiles[^kraakevik].

For the HHS OSINT How-To analyst note PDF[^hhs].

---

[^odni]: Office of the Director of National Intelligence. "Intelligence Community." *ODNI*, https://www.odni.gov/index.php/ncsc-what-we-do/121-dni/intelligence-community. Accessed 22 Sept. 2025.

[^rit]: Scott, Jason, and Chloe Sitton. *Social Media Intelligence Best Practices*. Center for Public Safety Initiatives, Rochester Institute of Technology, 2023. PDF file. https://www.rit.edu/liberalarts/sites/rit.edu.liberalarts/files/docs/CRIM%20Resources/2023-10_CPSI%20Working%20Paper_Social%20Media%20Intelligence%20Best%20Practices.pdf.

[^kraakevik]: Kraakevik, Jeff. "Crafting a Positive Professional Digital Profile to Augment Your Practice." *Neurology: Clinical Practice*, vol. 6, no. 1, 2016, pp. 87–93. PMC, https://pmc.ncbi.nlm.nih.gov/articles/PMC5765898/.

[^hhs]: U.S. Department of Health and Human Services, Health Sector Cybersecurity Coordination Center. *OSINT How-To*. Analyst Note: TLP White, 9 Aug. 2022. PDF file. https://www.hhs.gov/sites/default/files/osint-how-to-analyst-note-tlpwhite.pdf.
