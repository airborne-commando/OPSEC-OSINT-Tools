```mermaid
---
config:
  layout: dagre
---
flowchart TB
 subgraph LEGEND["Legend"]
    direction LR
        L_Phase["Phase Box<br>Primary Process Step"]
        L_Security["Security Tool / Method"]
        L_Defensive["Defensive Operation"]
        L_Data["Multi-Source Data Node"]
        L_Audit["Audit & Review Action"]
  end
 subgraph subGraph1["Entire OSINT Process"]
        B@{ label: "Phase 2:<br>Intelligence Gathering:<br>Lay a Psychological Foundation<br>- <i>Analyze tone &amp; sentiment NLP (</i><span data-huuid=\"15672613114926383220\"><span>Natural Language Processing)</span></span><br><i>- Track behavioral cues &amp; timing</i>" }
        C["Phase 3:<br>Analysis &amp; Processing: Collect OSINT &amp; SOCMINT<br>- <i>Gather public data: news, filings, govt<br>- Scrape social media SOCMINT<br>- Build network graphs</i>"]
        D["Phase 4:<br>Security &amp; Verification: Acquire IMINT<br>- <i>Satellite:<br>Google Earth, Bing<br>- Drone:<br>Legal flights only<br>- On-foot:<br>Public photography</i>"]
        DB["3c.<br>Digital Biography<br>Gather IDs, emails, social profiles, posts"]
        A["Phase 1:<br>Foundation &amp; Planning: Define Target &amp; Objective<br>- <i>What do you need to know?<br>- Define output: map, timeline, network</i>"]
        TM["1b.<br>Threat Modeling &amp;<br>OPSEC Baseline"]
        E["5.<br>Reverse Image &amp; Metadata<br>- <i>Run image through search engines<br>- Inspect EXIF data if available<br>- Check historical archives</i>"]
        F["6.<br>Cross-Reference with Maps<br>- <i>Pin images to geospatial tools like QGIS<br>- Match visuals with Street View<br>- Detect changes over time</i>"]
        GG["multi-sourced"]
        BP["3d.<br>Analyze Behavioral Patterns<br>Find patterns in time, topics, language, networks"]
        CA["3e.<br>Assess Competencies &amp; Affinities<br>Technical skill, privacy awareness, sociability"]
        G["7.<br>Verification &amp; Triangulation<br>- <i>Correlate OSINT, SOCMINT, IMINT<br>- Flag contradictions for review<br>- Never trust a single source</i>"]
        H["8.<br>Counter-OSINT Audit<br>- <i>Strip metadata from your files<br>- Audit your own digital footprint<br>- Monitor for self-leaks</i>"]
        HH["Audit"]
        CI["4.<br>Counter-Intelligence<br>Privacy Hardening, Disinformation,<br>&amp; SOCMINT Monitoring"]
        PDP["Phase 5:<br>Defensive Operations: Physical &amp; Data Protection"]
        CR["Phase 6:<br>Reporting &amp; Integration:<br>Continuous Review &amp; PsyOps Awareness"]
        DM["Defensive Psyop Mindset"]
        I["9.<br>Compile &amp; Report<br>- <i>Synthesize into timeline, map<br>- List key findings &amp; risks<br>- Encrypt &amp; secure report</i>"]
        ENC["Encryption/Decryption Tools"]
        OPSEC["OPSEC Methods"]
        PF["Finalize Profile & Document Findings"]
        EC["Ethical &amp; Legal Check<br>All data public and legally obtained?"]
        END["The the process is complete."]
        n1["if not obtained legally and publicly then stop:<br>remove Illegally Obtained Information securely (CSINT)."]
  end
    DM --> CR
    OPSEC --> ENC
    ENC --> I
    EC --> END & n1
    A --> B
    B --> C
    C --> D
    C --- DB
    D --> E
    E --> F
    F --> GG
    DB --- BP
    BP --- CA
    CA --- GG
    GG --> G
    G --> H
    HH --> CI & OPSEC
    TM --> CI & A
    H --> HH
    CI --> PDP
    PDP --> CR
    CR --> TM
    I --> PF
    PF --> EC
    n1 --> A
    B@{ shape: rect}
    n1@{ shape: rect}
     L_Phase:::phase
     L_Security:::security
     L_Defensive:::defensive
     L_Data:::data
     L_Audit:::audit
     B:::phase
     C:::data
     D:::data
     DB:::data
     A:::phase
     TM:::audit
     E:::data
     F:::data
     GG:::data
     BP:::data
     CA:::data
     G:::data
     H:::defensive
     HH:::audit
     CI:::defensive
     PDP:::defensive
     CR:::defensive
     DM:::defensive
     I:::security
     ENC:::security
     OPSEC:::security
     PF:::audit
     EC:::audit
     END:::phase
     n1:::phase
    classDef phase fill:#e6f3ff,stroke:#333,stroke-width:2px,color:#000
    classDef security fill:#d4edda,stroke:#155724,stroke-width:2px,color:#000
    classDef defensive fill:#fff3cd,stroke:#856404,stroke-width:2px,color:#000
    classDef data fill:#f8d7da,stroke:#721c24,stroke-width:1px,color:#000
    classDef audit fill:#f8ff1f,stroke:#383d41,stroke-width:2px,color:#000
```
