# Expanded examples

This directory so far provides a concise overview of four related guides detailing different perspectives and methodologies for digital profiling and investigation: Threat Actors, Three-Letter Agencies, Private Investigators (PIs), and State Police; mainly scenarios.

## 1. [Threat Actor](threat-actor.md) 

This guide outlines the process a malicious individual (threat actor) uses to build a comprehensive digital profile on a target for potentially harmful purposes.

*   **Objective:** To gather extensive information to understand a target's motives, psychological state, and triggers for exploitation (e.g., doxing, psychological warfare).
*   **Key Phases:**
    *   **Planning:** Defining the goal of gathering information on the target.
    *   **Psychological Profiling:** Analyzing content (e.g., old blogs) to build a foundational understanding of the target's mental state and traits.
    *   **OSINT/SOCMINT:** Collecting and analyzing public data from social media, government records, news articles, and obituaries to build a digital biography, identify family, interests, and competencies.
    *   **HUMINT:** Actively engaging with the target under an alias to elicit and confirm information.
    *   **IMINT & Verification:** Using imagery intelligence (Google Maps, Street View) to verify locations and cross-reference findings with multiple sources.
    *   **CSINT:** Utilizing closed-source intelligence like data breaches from Telegram or GitHub to find additional information (e.g., past usernames, DOB, activity on adult sites).
*   **Conclusion:** The threat actor compiles a verified profile and archives findings. Their intent is malicious, and the information could be used for attacks.

## 2. [Three-Letter Agencies](Three-letter-agencies.md)

This guide describes the formal investigative techniques used by agencies like the FBI, CIA, or NSA against threat actors.

*   **Objective:** To conduct protective intelligence and cyber threat hunting to identify, assess, and neutralize threats to national security or public figures.
*   **Key Techniques:**
    *   **Protective Intelligence:** Involves gathering data from interviews, background checks, digital footprints, and behavioral analysis to evaluate threat levels and prevent attacks.
    *   **Cyber Threat Hunting:** Uses analysis of Indicators of Compromise (IOCs), Tactics, Techniques, and Procedures (TTPs), and Digital Forensics and Incident Response (DFIR) to detect and remediate cyber threats.
*   **Alignment with Profiling Phases:** The structured phases of the profiling pipeline (planning, intelligence gathering, analysis, verification, defensive ops) mirror the holistic methodology used by these agencies, integrating physical, behavioral, digital, and legal components while emphasizing OPSEC and legal compliance.

## 3. [Private Investigator (PI)](PI.md)

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

## 4. [State Police](state-police.md)

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

Back to the [main guide](../../README.md).
