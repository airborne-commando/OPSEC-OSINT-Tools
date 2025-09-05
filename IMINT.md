# Table of Contents

1. [Reverse Search (Google)](#reverse-search-google)  
   * [How to Use Reverse Image Search](#how-to-use-reverse-image-search)  
     - [On Mobile](#on-mobile)  
     - [On Desktop](#on-desktop)  
   * [What You Can Use It For](#what-you-can-use-it-for)  
     - [Find an Article](#find-an-article)  
     - [Identify a Device Name or Type](#identify-a-device-name-or-type)  
     - [Find a Brand, Restaurant, or Location](#find-a-brand-restaurant-or-location)  
   * [What You Cannot Do](#what-you-cannot-do)  
   * [Extra Tips](#extra-tips)  

2. [IMINT (Imagery Intelligence)](#imint-imagery-intelligence)  
   * [Definition](#definition)  
   * [Who Uses IMINT?](#who-uses-imint)  
   * [SOCMINT (Social Intelligence)](#socmint-social-intelligence)  
   * [Using Public Images with Maps](#using-public-images-with-maps)  
   * [Ten Practical Applications](#ten-practical-applications)  
   * [Ethical and Legal Considerations](#ethical-and-legal-considerations)  

3. [Combining IMINT, SOCMINT, and Digital Profiling](#combining-imint-socmint-reverse-search-and-digital-profiling)  
   * [Multidimensional Intelligence](#multidimensional-intelligence)  
   * [Enhanced Geolocation](#enhanced-geolocation)  
   * [Improved Digital Profiling](#improved-digital-profiling)  
   * [OPSEC Assessment](#opsec-assessment)  
   * [Real-World Applications](#real-world-applications)  

4. [10 Practical Use Cases](#10-practical-use-cases)  
5. [Best Practices & Cautions](#best-practices--cautions)
6. [reconnaissance framework](IMINT.md#reconnaissance-framework)  

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

# IMINT (Imagery Intelligence)

### Definition
IMINT is the collection and analysis of visual imagery — from satellites, drones, aerial or ground photography — to extract actionable intelligence.

### Who Uses IMINT?
- **Civilians:** Disaster tracking, social media verification, urban planning.
- **Law Enforcement:** Surveillance, crime investigation, missing persons search.

### SOCMINT (Social Intelligence)

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

### Improved Digital Profiling
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

## Reconnaissance Framework

### 1. **Define Target & Objective**  
   - Example: Company X’s *market expansion plans*, or *mapping local infrastructure for disaster response*.
   - Example #2: You want to figure something out about someone, but how?  
   - Specify outputs: timeline, map, network diagram, risk list.

***

### 2. **Lay the Psychological Foundation**  
   - **Content analysis**: extract tone, sentiment, linguistic markers (via text mining/NLP).  
   - **Behavioral cues**: posting frequency, reactions, engagement spikes → these signal *when* and *how* an entity acts.  
   - **Use case**: anticipate when an organization or person will announce updates, or when public attention is highest.

***

### 3. **Collect OSINT & SOCMINT (Legally)**  
   - **OSINT**: News articles, corporate filings, LinkedIn, press releases, public databases.  
   - **SOCMINT**: Twitter/X, Instagram, TikTok, Reddit.  
   - Build **social network graphs**: highlight central influencers and clusters.  
   - Tools: Read the [Username/Email Search in the readme](README.md#tools) and also [Curated List](README.md#curated-lists).

***

### 4. **Acquire IMINT (with Legal Compliance)**  
   - **Satellite imagery**: Google Earth, Google Maps, Bing Maps see [Geolocation under tools](README.md#tools).
   - **Drone imagery**: if licensed, fly in permitted zones; otherwise, integrate open flight services (like drone‑as‑a‑service providers).  
   - **On foot**: Site photography or environmental scanning, provided public access is allowed.  
   - Goal: confirm whether physical infrastructure aligns with what public data suggests.

***

### 5. **Run Reverse Image & Metadata Checks**  
   - Use reverse search engines to spot reuse of images.  
   - Verify geotags/EXIF if not stripped.  
   - Cross‑check images against historical archives.
   - Also see [Reverse search for people](IMINT.md#what-you-cannot-do)

***

### 6. **Cross‑Reference with Maps**  
   - Match visual cues in images with Bing Maps, Google Earth/Street View see [Geolocation under tools](README.md#tools).  
   - Detect **geospatial changes** (e.g. new building, land clearing, expansion).  
   - Layer all datapoints on a geospatial platform ([QGIS](https://www.qgis.org/)).

***

### 7. **Verification & Triangulation**  
   - Never act on a *single source.*  
   - Triangulate across OSINT (records), [SOCMINT (behavior)](IMINT.md#socmint-social-intelligence), [IMINT (physical imagery)](IMINT.md#imint-imagery-intelligence).  
   - Flag contradictions for deeper scrutiny.

***

### 8. **Counter‑OSINT (Personal/Corporate Security)**  
   - Audit your own data “footprint.”  
   - Use decoy profiles *only defensively* (e.g. protecting anonymity during research, not deceiving targeted individuals).  
   - Strip metadata before publishing photos/videos.
   - post at irregular times of day.  
   - Monitor your digital shadow with tools like Shodan, Google Alerts.
   - Don't post what you don't want others to see.

***

### 9. **Compile & Report**  
   - Structure into **timeline, network map, geospatial overlay, and key findings**.  
   - Deliver clear recommendations: risks, exposures, opportunities.  
   - Securely brief stakeholders (encrypt files, limit access)

## Quick Pro Tips
- **OPSEC Log**: Always note what you expose during searches, see **Templates → Discipline**.  
- **Templates → Discipline**: Use spreadsheets/notes/etc (e.g. “who/what/where/when/so what”).  
- **NLP**: Automate pattern extraction from huge volumes of posts/text.  
- **Legal Awareness**: Drone and imagery laws vary widely → ensure *permits and airspace compliance.*

back to the readme [main OPSEC-OSINT-Tools repository](README.md).
