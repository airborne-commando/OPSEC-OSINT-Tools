### **Scenario: State Police Investigation of a Threat Actor**

**Objective:** To lawfully investigate an anonymous threat actor (e.g., conducting harassment, issuing threats, doxing) to identify them, establish motive, assess the credibility of the threat, and build a case for potential prosecution.

#### **Phase 1: Foundation & Legal Authority**
The investigation begins not just with defining an objective, but with establishing **legal authority**. Detectives must operate within the bounds of the law, often requiring:
*   **Subpoenas:** For non-public information from ISPs or social media companies.
*   **Warrants:** For searching private property or seizing devices, requiring probable cause.
*   **Pen Registers/Trap & Trace Orders:** For capturing metadata on calls or emails.
*   **Preservation Requests:** To ask a company to preserve data pending a formal legal order.

The objective is precise: to identify the individual behind the threatening online persona and gather evidence that meets the standard of "beyond a reasonable doubt."

#### **Phase 2: Psychological & Behavioral Foundation**
Just like the threat actor, investigators analyze the target's online output to build a behavioral profile. They would analyze the threat actor's posts, messages, and techniques to understand:
*   **Motive:** Are they driven by ideology, financial gain, personal grievance, or a desire for notoriety?
*   **Technical Skill:** Does their tradecraft suggest novice, intermediate, or advanced capabilities? This helps predict their OPSEC mistakes.
*   **Psychological State:** Language analysis might reveal narcissism, anger, or instability, which helps assess the credibility of any threats made.

#### **Phase 3: Analysis & Processing (CSINT)**
This phase is nearly identical in method but distinct in its access to legally-obtained non-public data **CSINT**.
*   **(3c) Digital Biography:** Investigators would use different tools, but could also serve a subpoena to the email provider to get account creation details (IP address, recovery phone number).
*   **(3c) Family & Interests:** Police interview family or associates (HUMINT) *after* identifying the suspect, using the information as a starting point for questioning.
*   **(3e) Competencies & Affinities:** The assessment of the threat actor's technical skill is critical. A low-skill actor might leak their real IP. A high-skill actor might use VPNs and cryptocurrencies, requiring more advanced forensic techniques.
*   **(3d) Behavioral Patterns:** Police look for the one mistake that breaks anonymity: reusing a username, accidentally posting a unique background, or logging into a personal account from the same IP as the malicious activity.

**HUMINT:** Engagement is extremely risky and rarely done directly by investigators to avoid claims of entrapment. It might be done under strict oversight or not at all, replaced by passive observation. Can also be done with an interrogation or a phone call "Do you know who X is?"..

#### **Phases 4, 5, & 6: Verification & Evidence Collection (IMINT & Forensics)**
Verification is about building an evidence chain for court.
*   They would use **Various Technologies** to corroborate a suspect's location, just like the threat actor.
*   **Cross-referencing** would include law enforcement databases (e.g., DMV records, property deeds) to confirm the identity and details of the person linked to an address.
*   **Digital Forensics:** This is the key differentiator. Upon serving a warrant, police would seize devices and perform forensic imaging to recover:
    *   Browser history linking to the malicious accounts (fingerprinting, cookies, et al).
    *   Files, logs, or communications related to the activity.
    *   Deleted data that can be recovered.
*   **ISP Records:** A subpoena to the ISP can link a specific IP address to a subscriber at a specific date and time.

#### **Phase 7: Verification & Triangulation for Evidence**
All intelligence—CSINT, subpoenaed records, forensic evidence, and witness interviews—is correlated to build an **unassailable case**. The goal is to prove that there is no reasonable alternative explanation for the evidence other than the suspect being the threat actor.

#### **Conclusion (Phases 8 & 9)**
*   **Phase 8 (Counter Audit) is CRITICAL for police.** Before any arrest, investigators must audit their own investigation to ensure:
    1.  **Evidence is Admissible:** Was it obtained legally? Was the chain of custody preserved?
    2.  **No Bias:** Are they ignoring evidence that points to another suspect?
    3.  **Officer Safety:** Does the suspect have weapons? What are the risks during arrest?
*   **Phase 9: Compile & Report.** The final report is not for exploitation but for **prosecution**. It is a comprehensive document detailing all evidence, the methods of collection (to satisfy defense challenges), and is presented to a district attorney to file formal charges.

### **Key Differences Summary:**

| Aspect | Threat Actor | State Police |
| :--- | :--- | :--- |
| **Intent** | See [threat-actor.md](./threat-actor.md) | Defensive: Identify, stop, prosecute, protect public. |
| **Constraints** |  | Bound by constitutional law, privacy statutes, and policy. |
| **Data Sources** |  | legally obtained non-public data via subpoenas/warrants. **CSINT** |
| **HUMINT** |  | Passive observation or formal, recorded interviews. |
| **Verification** |  | For evidence that meets a legal standard for court. |
| **Final Output** |  | A case file for prosecution and a trial. |
| **Phase 8** |  | **Essential** (ensuring integrity and admissibility of evidence). |


back to the [main guide](../../README.md)
