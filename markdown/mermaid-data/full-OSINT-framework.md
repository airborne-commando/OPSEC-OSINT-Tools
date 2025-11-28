```mermaid
---
config:
  layout: elk
---
flowchart LR
 subgraph LEGEND["Legend"]
        L_Phase["Phase<br>Primary Process"]
        L_Step["Process Step"]
        L_Security["Security Tool / Method"]
        L_Defensive["Defensive Operation"]
        L_Data["Data Node / Source"]
        L_Audit["Audit & Review"]
  end
 subgraph P1["Phase 1: Planning & Scoping"]
        A@{ label: "<span style=\"padding-left:\">1b. <br/>Threat Modeling <br/>&amp;<br>OPSEC Baseline</span>" }
        TM@{ label: "<span style=\"padding-left:\">1. Define Target &amp; Objective<br>- What do you need to know?<br>- Define output: <br>map, timeline &amp; network</span>" }
  end
 subgraph s1["<span style=padding-left:><span style=padding-left:><span style=padding-left:>Phase 2:<br>Passive Collection<br>(SOCMINT &amp; OSINT)</span></span></span>"]
        C["2. 
        Collect OSINT 
        &amp; 
        SOCMINT<br>- Gather public data:<br>news, filings, govt<br>- Scrape social media SOCMINT"]
        B["3. 
        Lay Psychological Foundation<br>- Analyze tone 
        &amp; 
        sentiment NLP<br>- Track behavioral cues 
        &amp; 
        timing"]
        DB["3c. 
        Digital Biography<br>Gather IDs, emails,<br>social profiles &amp; posts"]
        BP["3d.<br>Analyze Behavioral Patterns<br>Find patterns in time, topics &amp; networks"]
        CA["3e. 
        Assess Competencies<br>&amp;<br>Affinities<br><br>Technical skill<br>&amp;<br>privacy awareness"]
  end
 subgraph s2["<span style=padding-left:><span style=padding-left:><span style=padding-left:><span style=padding-left:><span style=padding-left:>Phase 3:<br>Active Collection<br>(IMINT &amp; GEOINT)</span></span></span></span></span>"]
        D["4. 
        Acquire IMINT<br>- Satellite:<br>Google Earth, Bing<br>- Drone:<br>Legal flights only<br>- On-foot:<br>Public photography"]
        E["5. 
        Reverse Image &amp; Metadata<br>- Run image(s)<br>through search engines<br>- Inspect EXIF data<br>- Check historical archives"]
        F["6. 
        Cross-Reference with Maps<br>- Pin images to<br>geospatial tools<br>- Match with Street View<br>- Detect changes over time"]
        G["7. 
        Verification &amp; Triangulation<br>- Correlate: 
        OSINT, SOCMINT, IMINT<br>- Flag contradictions for review<br>- Never trust a single source"]
        PF["8. 
        Compile &amp; Report Findings<br>- Synthesize into 
        timeline &amp; map<br>- List key findings &amp; risks"]
  end
 subgraph s3["<span style=padding-left:><span style=padding-left:><span style=padding-left:>Phase 5:<br>Defensive Operations</span></span></span>"]
        H["9. 
        Counter-OSINT Audit<br>- Strip metadata from your files<br>- Audit your own digital footprint<br>- Monitor for self-leaks"]
        PDP["11. 
        Physical &amp; Data Protection"]
        CI["10. 
        Counter-Intelligence<br>Privacy Hardening,<br>Disinformation<br>&amp;<br>SOCMINT Monitoring"]
  end
 subgraph s4["<span style=padding-left:><span style=padding-left:><span style=padding-left:>Phase 6:<br>Reporting &amp; Integration</span></span></span>"]
        I["12. 
        Finalize &amp; Secure Report<br>- Encrypt &amp; secure report"]
        CR["13. 
        Continuous Review 
        &amp;<br>PsyOps Awareness"]
        EC["Ethical &amp; Legal Check<br>All data public and legally obtained?"]
        END_Bad["Stop 
        &amp; 
        Securely Delete Data"]
        END_Good["Process Complete"]
        n1["See phase 1 &amp; 1b<br>Data is never complete"]
  end
    I -- Phase 0:<br>Ethical &amp; Legal Gate --> EC
    I --> CR
    EC -- Yes --> END_Good
    EC -- No --> END_Bad
    DB --> BP
    BP --> CA
    D --> E
    E --> F
    F -- Phase 4:<br>Analysis &amp; Synthesis --> G
    H --> CI
    CI --> PDP
    G --> PF
    TM --> A
    C --> B
    B --> DB
    L_Data ~~~ L_Audit
    L_Defensive ~~~ L_Data
    L_Security ~~~ L_Defensive
    L_Step ~~~ L_Security
    L_Phase ~~~ L_Step
    END_Bad --> END_Good
    CR -- "<span style=padding-left:>Defensive Psyop Mindset</span>" --> EC
    END_Good --> n1

    A@{ shape: rect}
    TM@{ shape: rect}
    n1@{ shape: diam}
     L_Phase:::phase
     L_Step:::security
     L_Security:::security
     L_Defensive:::defensive
     L_Data:::data
     L_Audit:::audit
     A:::audit
     TM:::phase
     C:::step
     B:::phase
     DB:::data
     BP:::data
     CA:::data
     D:::step
     E:::step
     F:::step
     G:::step
     PF:::step
     H:::defensive
     PDP:::defensive
     CI:::defensive
     I:::security
     CR:::defensive
     EC:::audit
     END_Bad:::step
     END_Good:::step
     n1:::audit
     P1:::phaseCluster
    classDef phaseCluster fill:none,stroke:#333,stroke-width:3px,color:#000
    classDef phase fill:#e6f3ff,stroke:#333,stroke-width:2px,color:#000
    classDef step fill:#d4edda,stroke:#155724,stroke-width:2px,color:#000
    classDef security fill:#d4edda,stroke:#155724,stroke-width:2px,color:#000
    classDef defensive fill:#fff3cd,stroke:#856404,stroke-width:2px,color:#000
    classDef data fill:#f8d7da,stroke:#721c24,stroke-width:1px,color:#000
    classDef audit fill:#fffd6e, stroke:#383d41, stroke-width:2px, color:#000
    style P1 color:#FFFFFF,stroke:none,fill:#757575
    style s4 fill:#757575,color:#FFFFFF
    style s1 color:#FFFFFF,fill:#757575
    style s2 fill:#757575,color:#FFFFFF
    style s3 fill:#757575,color:#FFFFFF
    style LEGEND color:#FFFFFF,fill:#757575,stroke:none
    linkStyle 0 stroke:#000000,fill:none
    linkStyle 1 stroke:#000000,fill:none
    linkStyle 2 stroke:#000000,fill:none
    linkStyle 3 stroke:#000000,fill:none
    linkStyle 4 stroke:#000000,fill:none
    linkStyle 5 stroke:#000000,fill:none
    linkStyle 6 stroke:#000000,fill:none
    linkStyle 7 stroke:#000000,fill:none
    linkStyle 8 stroke:#000000,fill:none
    linkStyle 9 stroke:#000000,fill:none
    linkStyle 10 stroke:#000000,fill:none
    linkStyle 11 stroke:#000000,fill:none
    linkStyle 12 stroke:#000000,fill:none
    linkStyle 13 stroke:#000000,fill:none
    linkStyle 14 stroke:#000000,fill:none
```
