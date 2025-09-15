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
*   **[Smoke Screen Operations (`smokescreen-misinfo.md`)](./smokescreen-misinfo.md)** - How to obfuscate activities and mislead adversaries conducting OSINT against you.

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
3.  **Implement Countermeasures:** Harden your privacy and employ deception (smokescreens).
4.  **Protect & Destroy:** Secure data at rest and ensure its safe disposal.
5.  **Repeat:** Continuously review and adapt your posture.

## ⚠️ Disclaimer

This information is for **educational and research purposes only**. The techniques and tools described can be used for both ethical security improvement and malicious activities. Always adhere to the following principles:

*   **Legality:** Ensure all your activities comply with local, state, and federal laws.
*   **Ethics:** Do not harass, stalk, or invade the privacy of others.
*   **Authorization:** Only conduct security testing on systems you own or have explicit written permission to test.

The authors assume no liability for any misuse of the information provided in these guides.

---

## 📁 Repository Structure


.
├── CSINT.md
├── Digital-Profiling.md
├── HUMINT.md
├── IMINT.md
├── badopsec.md
├── examples.md
├── good-opsec.md
├── methodology.md
├── opsec.md
├── physical-destruction.md
├── smokescreen-misinfo.md
└── README.md (this file)