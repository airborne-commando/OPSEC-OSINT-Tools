## Reconnaissance Framework

### 1. **Define Target & Objective**  
   - Example: Company X’s *market expansion plans*, or *mapping local infrastructure for disaster response*.  
   - Specify outputs: timeline, map, network diagram, risk list.

***

### 2. **Lay the Psychological Foundation**  
   - **Content analysis**: extract tone, sentiment, linguistic markers (via text mining/NLP).  
   - **Behavioral cues**: posting frequency, reactions, engagement spikes → these signal *when* and *how* an entity acts.  
   - **Use case**: anticipate when an organization will announce updates, or when public attention is highest.

***

### 3. **Collect OSINT & SOCMINT (Legally)**  
   - **OSINT**: News articles, corporate filings, LinkedIn, press releases, public databases.  
   - **SOCMINT**: Twitter/X, Instagram, TikTok, Reddit.  
   - Build **social network graphs**: highlight central influencers and clusters.  
   - Tools: Maltego, Gephi, or open‑source browser extensions.

***

### 4. **Acquire IMINT (with Legal Compliance)**  
   - **Satellite imagery**: purchase commercial imagery (Maxar, Planet Labs).  
   - **Drone imagery**: if licensed, fly in permitted zones; otherwise, integrate open flight services (like drone‑as‑a‑service providers).  
   - **On foot**: Site photography or environmental scanning, provided public access is allowed.  
   - Goal: confirm whether physical infrastructure aligns with what public data suggests.

***

### 5. **Run Reverse Image & Metadata Checks**  
   - Use reverse search engines to spot reuse of images.  
   - Verify geotags/EXIF if not stripped.  
   - Cross‑check images against historical archives.

***

### 6. **Cross‑Reference with Maps**  
   - Match visual cues in images with Google Earth/Street View or OpenStreetMap.  
   - Detect **geospatial changes** (e.g. new building, land clearing, expansion).  
   - Layer all datapoints on a geospatial platform (QGIS).

***

### 7. **Verification & Triangulation**  
   - Never act on a *single source.*  
   - Triangulate across OSINT (records), SOCMINT (behavior), IMINT (physical imagery).  
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
- **OPSEC Log**: Always note what you expose during searches.  
- **Templates → Discipline**: Use spreadsheets/notes/etc (e.g. “who/what/where/when/so what”).  
- **NLP**: Automate pattern extraction from huge volumes of posts/text.  
- **Legal Awareness**: Drone and imagery laws vary widely → ensure *permits and airspace compliance.*
