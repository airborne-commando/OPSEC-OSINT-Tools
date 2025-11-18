# Sub guides
This DIR contains all the other guides that are the essential and or supplemental to the [main guide](../README.md).

This collection provides methodologies, toolkits, real-world examples, and best practices for both defensive security and intelligence gathering.

---

## 📚 Table of Contents

### Core Methodologies
*   **[Unified OPSEC-OSINT Lifecycle (`methodology.md`)](./methodology.md)** - The central framework outlining the continuous cycle of threat modeling, self-auditing, profiling, and counter-intelligence.
*   **[Digital Profiling Pipeline (`Digital-Profiling.md`)](./Digital-Profiling.md)** - A guide to building a comprehensive profile of an individual from their digital footprint and behavioral patterns.

### Intelligence Disciplines (INTs)
*   **[OSINT: Imagery Intelligence (`IMINT.md`)](./IMINT.md)** - Techniques for analyzing photos, videos, and satellite imagery, including reverse image search and geolocation.
*   **[OSINT: Social Intelligence (`IMINT.md#socmint-social-intelligence`)](./IMINT.md#socmint-social-intelligence)** - Analyzing social media data and networks (SOCMINT), covered within the IMINT guide.
*   **[HUMINT: Human Intelligence (`HUMINT.md`)](./HUMINT.md)** - Methods for gathering information through direct human interaction and engagement.
*   **[CSINT: Closed-Source Intelligence (`CSINT.md`)](./CSINT.md)** - An overview of intelligence collected from non-public, confidential sources.

### Security Practices
*   **[OPSEC Toolkit (`opsec.md`)](./opsec.md)** - A comprehensive list of tools and techniques for anonymity, encryption, obfuscation, and physical security.
*   **[Good OPSEC Practices (`good-opsec.md`)](./good-opsec.md)** - Fundamental security hygiene for everyday personal digital safety.
*   **[disinformation (`disinformation.md`)](./disinformation.md)** - How to obfuscate activities and mislead adversaries conducting OSINT against you.

### Practical Applications & Lessons
*   **[Real-World Examples (`examples.md`)](./examples.md)** - Case studies showing how OSINT and OPSEC failures played out for criminals, civilians, and law enforcement.
*   **[Bad OPSEC Case Studies (`badopsec.md`)](./badopsec.md)** - A collection of famous operational security failures and the lessons learned from them.

### Data Management
*   **[Physical Data Destruction (`physical-destruction.md`)](./physical-destruction.md)** - A complete guide to securely destroying HDDs, SSDs, NVMe drives, and USB sticks to prevent data recovery.

---

## 🔄 The Unified Approach

This repository is built on the principle that effective security (**OPSEC**) and effective intelligence gathering (**OSINT**) are two sides of the same coin. The process is cyclical:

1.  **Threat Model & Self-Audit:** Identify what to protect and analyze your own exposure.
2.  **Profile & Gather Intelligence:** Understand your target or adversary using structured INTs.
3.  **Implement Countermeasures:** Harden your privacy and employ deception (disinformation).
4.  **Protect & Destroy:** Secure data at rest and ensure its safe disposal.
5.  **Repeat:** Continuously review and adapt your posture.

## ⚠️ Disclaimer

This information is for **educational and research purposes only**. The techniques and tools described can be used for both ethical security improvement and malicious activities. Always adhere to the following principles:

*   **Legality:** Ensure all your activities comply with local, state, and federal laws.
*   **Ethics:** Do not harass, stalk, or invade the privacy of others.
*   **Authorization:** Only conduct security testing on systems you own or have explicit written permission to test.

The authors assume no liability for any misuse of the information provided in these guides.

# Expanded examples

This directory so far provides a concise overview of four related guides detailing different perspectives and methodologies for digital profiling and investigation: Threat Actors, Three-Letter Agencies, Private Investigators (PIs), and State Police; mainly scenarios.

## 1. [Threat Actor](./expanded-examples/threat-actor.md)

This guide outlines the process a malicious individual (threat actor) uses to build a comprehensive digital profile on a target for potentially harmful purposes.

*   **Objective:** To gather extensive information to understand a target's motives, psychological state, and triggers for exploitation (e.g., doxing, psychological warfare).
*   **Key Phases:**
    *   **Planning:** Defining the goal of gathering information on the target.
    *   **Psychological Profiling:** Analyzing content (e.g., old blogs) to build a foundational understanding of the target's mental state and traits.
    *   **OSINT/SOCMINT:** Collecting and analyzing public data from social media, government records, news articles, and obituaries to build a digital biography, identify family, interests, and competencies.
    *   **HUMINT:** Actively engaging with the target under an alias to elicit and confirm information.
    *   **IMINT & Verification:** Using imagery intelligence (Google Maps, Street View) to verify locations and cross-reference findings with multiple sources.
    *   **BIOMETRICS:** Using Biometrics to gather addtional data on said target (face).
    *   **CSINT:** Utilizing closed-source intelligence like data breaches from Telegram or GitHub to find additional information (e.g., past usernames, DOB, activity on adult dating sites).
*   **Conclusion:** The threat actor compiles a verified profile and archives findings. Their intent is malicious, and the information could be used for attacks.

## 2. [Three-Letter Agencies](./expanded-examples/Three-letter-agencies.md)

This guide describes the formal investigative techniques used by agencies like the FBI, CIA, or NSA against threat actors.

*   **Objective:** To conduct protective intelligence and cyber threat hunting to identify, assess, and neutralize threats to national security or public figures.
*   **Key Techniques:**
    *   **Protective Intelligence:** Involves gathering data from interviews, background checks, digital footprints, and behavioral analysis to evaluate threat levels and prevent attacks.
    *   **Cyber Threat Hunting:** Uses analysis of Indicators of Compromise (IOCs), Tactics, Techniques, and Procedures (TTPs), and Digital Forensics and Incident Response (DFIR) to detect and remediate cyber threats.
*   **Alignment with Profiling Phases:** The structured phases of the profiling pipeline (planning, intelligence gathering, analysis, verification, defensive ops) mirror the holistic methodology used by these agencies, integrating physical, behavioral, digital, and legal components while emphasizing OPSEC and legal compliance.

## 3. [Private Investigator (PI)](./expanded-examples/PI.md)

This guide contrasts the methods of a PI with those of a threat actor, highlighting the legal and ethical framework a PI must operate within.

*   **Objective:** To investigate a threat actor for defensive purposes like victim protection, threat attribution, and building court-admissible evidence.
*   **Key Differentiators from a Threat Actor:**
    *   **Legal & Ethical Compliance:** All actions and evidence collection must be lawful and ethical, capable of being used in court.
    *   **Defensive Motivation:** The goal is protection and prosecution, not exploitation.
    *   **Process:** Follows a similar profiling pipeline (planning, psychological analysis, OSINT, verification) but includes:
        *   An **ethical and legal check** at all stages.
        *   Defensive use of social engineering for evidence, not manipulation.
        *   A "trust but verify" approach to counter disinformation from the threat actor.
        *   **Counter-OSINT** to protect the investigation and maintain confidentiality.
*   **Output:** A court-ready report detailing the threat actor's pseudonyms, TTPs, motivations, infrastructure, and digital presence.

## 4. [State Police](./expanded-examples/state-police.md)

This guide details the specific process and legal constraints under which state police investigate a threat actor.

*   **Objective:** To lawfully investigate an anonymous threat actor (e.g., for harassment, doxing) to identify them, assess the threat, and build a case for prosecution.
*   **Key Differentiators from a Threat Actor:**
    *   **Legal Authority:** Investigation is bound by law, requiring subpoenas, warrants, and court orders to access non-public information (**CSINT**).
    *   **Evidence Admissibility:** The entire process is focused on gathering evidence that meets the legal standard "beyond a reasonable doubt."
    *   **HUMINT:** Engagement is rare and risky; replaced by passive observation or formal, recorded interviews to avoid entrapment.
    *   **Digital Forensics:** Relies heavily on seizing devices via warrant to perform forensic analysis (recovering files, logs, browser history).
    *   **Phase 8 (Counter-Audit):** Critically reviews the investigation itself to ensure evidence is admissible, unbiased, and that officer safety is considered.
*   **Output:** A comprehensive case file for prosecution presented to a district attorney.

## Overall Summary

These four documents describe the same core process—digital profiling—from vastly different perspectives and with different constraints:

| Aspect | Threat Actor | Three-Letter Agency | Private Investigator (PI) | State Police |
| :--- | :--- | :--- | :--- | :--- |
| **Intent** | Malicious Exploitation | National Security/Protection | Defensive/Legal Protection | Law Enforcement/Prosecution |
| **Constraints** | None (Unethical) | Legal, Ethical, Policy-Driven | Legal, Ethical | Legal, Constitutional |
| **Primary Data** | OSINT, SOCMINT, CSINT | OSINT, Classified SIGINT, HUMINT | OSINT, Legal SOCMINT | **CSINT** (Subpoenaed/Warranted Data) |
| **Key Differentiator** | Uses HUMINT for elicitation | Broad authority for threat hunting | Court-admissible evidence focus | **Digital Forensics** & Legal Evidence Chain |
| **Final Output** | Profile for Exploitation | Intelligence Product | Defensive Report | **Case File for Trial** |

The methodology remains consistent, but the intent, legal boundaries, and final application of the gathered intelligence define each role.


# mermaid data
This DIR contains the mermaid data for graphs for markdowns. You may look as some graphs are too big to export such as for example the [data-collection-pipeline.md](../markdown/mermaid-data/data-collection-pipeline.md)

**Note:** May not render correcntly on sites like radicle


## 📁 Repository Structure
```
./README.md/ Main Guide, root folder.
../markdown/CSINT.md
../markdown/Digital-Profiling.md
../markdown/HUMINT.md
../markdown/IMINT.md
../markdown/badopsec.md
../markdown/examples.md
../markdown/good-opsec.md
../markdown/methodology.md
../markdown/opsec.md
../markdown/physical-destruction.md
../markdown/disinformation.md
../markdown/expanded-examples/PI.md
../markdown/expanded-examples/Three-letter-agencies.md
../markdown/expanded-examples/state-police.md
../markdown/expanded-examples/threat-actor.md
../markdown/mermaid-data/*.md
../markdown/README.md (this file)
```
