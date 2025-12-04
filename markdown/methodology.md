# methodology

A list of methodologies or a systematic approach. Everything will be found in the [main guide](../README.md).

# 🔄 Summary: Unified OPSEC–OSINT Cycle

1. **Threat Modeling** → Identify what matters.  
2. **Self-OSINT Audit** → Map your exposure.  
3. **Profiling Others** → Structured intelligence collection.  
4. **Counter-OSINT** → Privacy hardening + disinformation.  
5. **Physical/Data Protection** → Encrypt, compartmentalize, destroy.  
6. **Continuous Review** → Adapt cycle, detect PsyOps, stay disciplined. 

***

# 🔄 Unified OPSEC–OSINT Lifecycle

<p align="center">
<img width="auto" height="auto" alt="Unified OPSEC–OSINT Lifecycle" src="../img/png/graphs/OPSEC–OSINT-lifecycle.png" />
</p>

# 🛡️ OPSEC–OSINT Master Lifecycle

### **Phase 1. Threat Modeling & OPSEC Baseline**
📍 *Goal: Know what you must protect and from whom.*

1. **Identify Critical Information (CII)**  
   - What do you not want adversaries to know? (emails, network access, home address, sensitive ops, habits).  
   - [Main Guide: CII cycle](../README.md#operations-security-is-a-systematic-process-for)

2. **Analyze Threats & Vulnerabilities**  
   - Who might target you? Employer, stalker, law enforcement, competitor, criminal groups.  
   - Which vectors are exposed? (social media, old blogs, leaked credentials).

3. **Assess Risks**  
   - Probability × Impact = Risk priority.  
   Example: Old breached email reused across accounts → high risk.

4. **Develop Countermeasures**  
   - Use anonymization, encryption, compartmentalization, and **disinfo**.

➡️ **Cycle**: *Identify → Analyze → Assess → Protect → Re-evaluate*  
*(Classic OPSEC process).*

***

### **Phase 2. Exposure Identification (Self-OSINT Pipeline)**
📍 *Goal: Audit yourself before adversaries do.*

1. **Google Dorks**: `"First Last" "Address"`, `"email.com" site:pastebin.com`  
2. **Check Google's "Results About You" Index**  
3. **People Search Aggregators (US only)**: PeekYou, ClustrMaps, Nuwber  
4. **Breach Data**: HIBP → Pentester.com → LeakPeek  
5. **Compile Findings in CSV/Excel** (username/email variations, breached accounts, addresses).  
6. **Document & Categorize** by type (Emails, Phones, Addresses, Socials).

➡️ **Outcome**: A *map of your public exposure* across the web.

***

### **Phase 3. Profiling Others (Digital Profiling Cycle)**
📍 *Goal: OSINT workflow for targets, investigations, or red-teaming.*

1. **Collect Digital Biography**  
   - Gather handles, emails, phone numbers.  
   - Use Maigret, Blackbird, Crow, Sherlock.  

2. **Analyze Behavioral Patterns**  
   - Posting hours → timezone.  
   - Topics/content → interests, affiliations.  
   - Reply habits → sociability/temperament.

3. **Assess Competencies & Countermeasures**  
   - Do they use VPN/Tor? Privacy-focused OS?  
   - Do they reuse usernames or reveal location data?

4. **Leverage IMINT / SOCMINT**  
   - Cross-check posted photos against Google Maps / Bing / GeoHints.  
   - Extract network ties through follows, likes, hashtags.

5. **Iterate**  
   - New email → re-run Phase 2 pipelines.  
   - Create timeline from old to new accounts.

➡️ *Digital profiling cycle = Biography → Behavior → Competency → Tools → Iterate.*

***

### **Phase 4. Counter-OSINT (Defensive Playbook)**
📍 *Goal: Reduce footprint & mislead hostile collectors.*

1. **Compartmentalization**  
   - Separate work/personal/anonymous personas.  
   - Never reuse usernames/emails across compartments.

2. **Privacy Hardening**  
   - Lock down social media privacy.  
   - Opt-out of brokers via [Big Ass List / IntelTechniques workbook](../README.md#curated-lists).

3. **disinfo Ops**  
   - Flood decoy identities.  
   - Redirect investigators with misinformation.  
   - Create false ties (dummy handles, meaningless patterns).

4. **OPSEC Habits**  
   - Use Signal/SimpleX for chats.  
   - Use Tor and Mullvad VPN separately, not chained.  
   - Use Monero (XMR) or cash where anonymity is critical.

➡️ *Outcome: exposure shrinks + adversary signal-to-noise ratio collapses.*

***

### **Phase 5. Physical & Data Protection**
📍 *Goal: Eliminate vulnerabilities in hardware, files, and physical space.*

1. **Physical Security**  
   - Locks, cameras, sometimes firearms or chemical deterrents (where legal).  
   - Layered defense (Perimeter → Interior → Access Control → Response).  

2. **Data-at-Rest Protection**  
   - Encrypt drives (VeraCrypt, LUKS).  
   - Password management: KeePassXC DB1 (human pw) → unlock DB2 → unlock containers (VeraCrypt).

3. **File Transfer OPSEC (Tails)**  
   - OnionShare / Taildrop for online.  
   - Encrypted USBs for offline.  

4. **Secure Data Destruction Matrix**  
   - HDD → DBAN → drill/hammer/shred platters.  
   - SSD/NVMe → nvme-cli / nvme-sanitize → destroy NAND chips directly.  
   - USB → fill with zeros → smash chip, don't just format.  

➡️ *Outcome: No physical compromise leaks into digital OSINT exposure.*

***

### **Phase 6. Continuous Review & PsyOps Awareness**
📍 *Goal: Stay adaptive and guard against psychological operations.*

- **Iterate**: Run self-OSINT quarterly.  
- **Profile Adversaries**: Just as they profile you.  
- **PsyOps Awareness**: Recognize manipulation (sales, social media, politics).  
- **Guard Against Paranoia**: Skeptical without isolating yourself.

## Additional Methodologies from Related Guides

### Digital Profiling Methodology
From [Digital-Profiling.md](Digital-Profiling.md):

1. **Understand the Basics** - Digital profiling gathers and analyzes online data; behavioral analysis infers motives, habits, and future actions.

2. **Collect Digital Biographical Information** - Gather identifiers, track online activity, search for recurring usernames, document findings.

3. **Analyze Behavioral Patterns** - Look for posting times, topics, language, interaction style, preferred platforms, and social networks.

4. **Assess Competencies and Affinities** - Evaluate technical skill, privacy awareness, sociability, and domain expertise.

5. **Use Analytical Tools** - Employ search engines, data aggregators, visualization/statistics tools and Natural Language Processing (NLPs) for deeper analysis.

6. **Iterate and Refine** - Continuously update the profile as new data emerges; use structured documentation.

### IMINT Methodology
From [IMINT.md](IMINT.md):

1. **Reverse Image Search** - Use Google Lens or specialized tools to find image sources and related content.

2. **Geolocation Analysis** - Cross-reference public images with mapping tools like Google Maps or Street View.

3. **SOCMINT Integration** - Combine visual intelligence with social data from platforms like Facebook, Instagram, LinkedIn.

4. **Verification** - Validate findings through multiple sources and analytical techniques.

### HUMINT Methodology
From [HUMINT.md](HUMINT.md):

1. **Direct Engagement** - Use interviews, debriefings, and interpersonal communication.

2. **Rapport Building** - Establish trust through shared interests and gradual disclosure.

3. **Active Listening** - Use body language and verbal cues to encourage information sharing.

4. **Observation** - Notice details about appearance, environment, and behavior.

5. **Ethical Considerations** - Respect privacy boundaries and legal constraints.

### Counter-OSINT Methodology
From [disinformation.md](disinformation.md):

1. **Information Overload** - Flood open sources with irrelevant or misleading information.

2. **Decoy Accounts** - Create fake social media profiles and websites.

3. **False Attribution** - Plant data pointing to incorrect actors or locations.

4. **Obfuscation Techniques** - Use anonymization and deliberate mislabeling of data.
