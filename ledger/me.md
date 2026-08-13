# Candidate Dossier — Vaggelis Atlidakis

Single source of truth for all letters. Compiled 2026-08-07 from the candidate's CV
(fetched from https://vatlidak.github.io/), dblp, and his personal site. Every claim
in every letter must trace back to this file.

## Identity & contact (letterhead block — user-confirmed choices)

- **Name**: Vaggelis Atlidakis
- **Email**: v.atlidakis@gmail.com (personal — chosen for applications; do NOT use
  vaggelis@crashoverride.com on letters)
- **Web**: https://vatlidak.github.io/
- **Phone**: +30 698 992 9982
- **Affiliation line** (letterhead): "Assistant Professor, Informatics &
  Telecommunications, University of Athens" — **academic role only.**
  *Revised 2026-08-08: the user asked to remove Crash Override from the letter.* The
  researcher-practitioner framing survives, stated without naming a current employer
  ("I ship production software in industry alongside my tenure-track post in Athens").
  **Do not name Crash Override in any letter**, and keep using the personal email —
  the two rules have the same motive.
- **Signature block** (user-provided verbatim, 2026-08-07; implemented in
  `preamble.tex` `\signature` — bold name, then small muted lines):

  > Vaggelis Atlidakis,
  > Assistant Professor, Informatics & Telecommunications
  > National and Kapodistrian University of Athens
  > M.Sc. · M.Phil. · Ph.D. in Computer Science, Columbia University
  > Formerly: Brown University · Microsoft Research · CERN

  Note: because the signature now carries Columbia/Brown/MSR/professorship, letters
  should NOT repeat "PhD from Columbia / Fellow at Brown" verbatim in ¶3 — current
  template says "NSF/CRA Computing Innovation Fellow … tenure-track post in Athens."

## Positions

| Years | Role |
|---|---|
| 2025–present | Assistant Professor (tenure track), Dept. of Informatics & Telecommunications, University of Athens |
| 2024–present | Software Engineer, Crash Override, New York, USA |
| 2023–2024 | Software Engineer, Lacework, London, UK |
| 2021–2023 | Postdoctoral Research Associate, Secure Systems Lab, Brown University (mentor: Prof. Vasileios Kemerlis) |
| Fall 2018; Summers 2017, 2018 | Research Intern, Microsoft Security Risk Detection, Microsoft Research (mentors: Patrice Godefroid, Marina Polishchuk) |
| 2012–2013 | Research Associate, CERN (supervisor: Ignacio Reguero) |

## Education

- **PhD in Computer Science, Columbia University** (Aug 2020). Advisor: Prof. Roxana
  Geambasu. Thesis: *Structure and Feedback in Cloud Service API Fuzzing*.
- M.Phil. CS, Columbia (Feb 2018); M.S. CS, Columbia (May 2016, GPA 3.85/4).
- B.S. Informatics & Telecommunications, University of Athens (June 2011, GPA 9/10,
  **summa cum laude**).

## Honors, funding, patents

- **NSF/CRA Computing Innovation Fellowship** (Jan 2021) — Co-PI, "Fuzzing of RESTful
  Cloud Services," $318,288, 01/2021–05/2023.
- Gerondelis Foundation Scholarship (2015); Columbia Chair's Distinguished Award (2013).
- **US Patent 10,977,161** — "Automatic, Intelligent Cloud Service Testing"
  (Godefroid, Polishchuk, Atlidakis; issued Dec 2019).
- US patent pending — "Vulnerability Remediation Recommendation System"
  (Godefroid, Zhang, Atlidakis, Rioux, Kim, Chen).

## Research narrative (four threads)

### 1. OS abstractions & measurement — THE hook for the statement
- **POSIX study** [EuroSys '16]: broad measurement study (Android, OSX, Ubuntu) of how
  modern applications actually use POSIX. Findings: apps outgrew POSIX; new
  abstractions implemented as ad-hoc user-space libraries layered on POSIX; heavy use
  of extension escape hatches (ioctl) that the OS cannot properly mediate → mismatches,
  inefficiencies, security risks. Built **libtrack** (github.com/columbia/libtrack).
- Companion piece: **"POSIX Has Become Outdated"**, USENIX *;login:* 41(3), Fall 2016.
- Statement move: rerun this playbook for agentic workloads ("the old, the new, and
  the missing, redone for agents").

### 2. Automated vulnerability discovery / fuzzing
- **RESTler** [ICSE '19] — *first stateful REST API fuzzer*. Found hundreds of bugs in
  production O365, Azure, and Bing cloud services; used internally by multiple
  Microsoft teams since 2017; open-sourced 2020 (github.com/microsoft/restler-fuzzer);
  patented (US 10,977,161).
- **Security checkers for REST APIs** [ICST '20] — active checkers detecting violations
  of security rules in cloud APIs; found security bugs in production Azure/O365.
- **Pythia** [arXiv 2005.11498, May 2020] — REST fuzzing + coverage-guided feedback +
  **learning-based mutations**; found bugs beyond reach of baseline stateful fuzzing.
  (Early hybrid ML+fuzzing — predates the current LLM+fuzzing wave; rhymes with
  Buttercup-style hybrids.)
- **IvySyn** [USENIX Security '23] — automated vulnerability discovery in DL
  frameworks: type-aware mutation fuzzing of native kernels + automatic synthesis of
  Python "Proof-of-Vulnerability" snippets. **61 previously-unknown vulnerabilities,
  39 CVEs in TensorFlow and PyTorch**.
- **Cynthia** [ICSE '21] — data-oriented differential testing of ORM systems; 28
  previously-unknown bugs incl. 3 release blockers; Distinguished Artifact.

### 3. OS/kernel/hardware defense mechanisms
- **SysXCHG** [CCS '23] — adaptive system-call filtering: filters exchanged at
  execve so privilege tracks the currently-executing program (dynamic least
  privilege); filters embedded in binaries + cryptographically signed; xfilter
  outperforms seccomp-BPF. *Direct ancestor of "task-scoped least privilege for
  agents" in the statement.*
- **FineIBT** [RAID '23] — fine-grain CFI on Intel IBT. **Adopted by Intel; a variant
  upstreamed to the Linux kernel (April 2022 onward).**
- **Eclipse** [CCS '24] — compiler-assisted defense blocking speculative memory-error
  abuse via artificial data dependencies (software-only, good performance).
- **EPF: Evil Packet Filter** [USENIX ATC '23] — attacks via eBPF/packet-filter
  infrastructure (kernel attack surface).

### 4. ML security & trustworthy data-driven systems
- **PixelDP / Certified Robustness via Differential Privacy** [IEEE S&P '19] — first
  certified defense against adversarial examples scaling to ImageNet-size networks;
  "firewall-like" architecture prepending a small model to a trained one.
- **FairTest** [EuroS&P '17] — testing toolkit for unwarranted associations
  (discrimination bugs) in data-driven applications.
- IvySyn (above) straddles threads 2 and 4.

## Full publication list

Conference: Eclipse [CCS '24]; SysXCHG [CCS '23]; FineIBT [RAID '23]; IvySyn
[USENIX Sec '23]; EPF [USENIX ATC '23]; Cynthia ORM diff-testing [ICSE '21];
REST security checkers [ICST '20]; RESTler [ICSE '19]; PixelDP [IEEE S&P '19];
FairTest [EuroS&P '17]; POSIX abstractions [EuroSys '16]; EnhancedBit unchoking
[EuroPar '12]. Journal: EnhancedBit [JPDC 74(1), 2014]. Preprint: Pythia [arXiv '20].
Magazine: "POSIX Has Become Outdated" [;login: Fall '16]. PhD thesis: *Structure and
Feedback in Cloud Service API Fuzzing* (Columbia, 2021 record / degree Aug 2020).

Google Scholar: https://tinyurl.com/t5f964ut

## Impact & technology transfer (safe, verified claims)

- FineIBT → adopted by Intel; variant upstreamed to Linux kernel.
- IvySyn → 61 new vulns / 39 CVEs in the two most popular DL frameworks.
- RESTler → hundreds of bugs in production Microsoft services; company-wide use;
  open source since 2020.
- Cynthia → 28 ORM bugs, 3 release blockers.
- Artifacts: gitlab.com/brown-ssl/{eclipse,sysxchg,fineibt,ivysyn,epf};
  github.com/microsoft/restler-fuzzer; github.com/columbia/fairtest;
  github.com/columbia/libtrack; github.com/theosotr/cynthia.

## Teaching (University of Athens)

- **Operating Systems (K22)** — Fall 2025.
- **Trustworthy Software Systems (YS16b)** — Spring 2026.

## Service

- Program committees: **CCS 2026, EuroSys 2026, RAID 2026**; IEEE TSE reviewer 2025.
- PhD dissertation committee: C. Mitropoulos, 2026 (Solidity ecosystem).
- Invited talks: USC (Nov 2023, blackbox fuzzing); University of Athens (Oct 2023,
  cybercrime). Conference talks: ICST '20, ICSE '19, EuroSys '16, EuroPar '12.

## The research statement core (shared spine of every letter)

**Title**: *Systems Abstractions for Agentic Workloads*
(user feedback 2026-08-07: "abstractions" is the strong systems angle — always say
"POSIX abstractions," never just "POSIX," and keep abstraction-language dominant.
Shortened 2026-08-08: the "The New POSIX Era:" prefix was dropped — the POSIX framing
is argued in ¶1, so the title does not need to announce it.)

**Thesis (¶1)**: Ten years ago we measured how applications outgrew POSIX — ad-hoc
user-space abstraction layers, unmediated escape hatches, mismatches/inefficiencies/
security risks [EuroSys '16; ;login: '16]. The same story is repeating with agentic
workloads (LLM agents that plan, spawn sub-agents, invoke tools, execute generated
code) running on abstractions built for human users and long-lived services. Every
agent runtime re-implements identity, sandboxing, resource control, audit in user
space, each differently — the new libraries-over-POSIX. Agenda: establish by
measurement what fails, design the new abstractions → **portable, secure, efficient**
agentic workloads. "Those abstractions—the POSIX of the agentic era—do not exist
yet; I intend to help define them."

**Agenda (¶2, three pillars)**:
1. **Measure** — workload study of agent runtimes/tool protocols vs. the OS contract
   ("the old, the new, and the missing, redone for agents").
2. **Design** — task-scoped identity (not user-scoped); dynamically-refined least
   privilege (SysXCHG as direct ancestor); isolation cheap enough to wrap every tool
   call; provenance as first-class object, not a log line.
3. **Test** — agent interfaces need what REST APIs got: automated, stateful,
   feedback-driven testing (RESTler lineage).

**Record (¶3)**: discovery side (RESTler → IvySyn with impact numbers; **Pythia dropped
2026-08-08** — it existed in the letter mainly to set up the "our philosophies rhyme"
parallel, which was also cut, so it no longer earns its line) +
defense side (SysXCHG, FineIBT→Intel/Linux, Eclipse) + researcher-practitioner arc
(NSF/CRA CIF, industry engineering **unnamed**, UoA professorship, 2026 PCs of
CCS/EuroSys/RAID). Employers are not named in ¶3 — see the affiliation-line rule above.

**Fit (¶4)**: fully customized per company — see each profile's *Letter customization
notes*. This is the paragraph the fan-out step rewrites.

**Style rules** (as in approved template): letter body exactly one page, followed by a
**References page** (user decision 2026-08-08: "an extra page for references is fine");
letterhead + dateline + centered title + small-caps run-in leads (The agenda. / The
record. / Why X.); inline `[Venue 'YY]` citations keyed directly to the reference
entries, so no numbering scheme is needed; confident, concrete, zero fluff; close with
"I would welcome a conversation."; every fact traceable to this dossier.

**Banned phrasings** (user corrections, 2026-08-08 — apply to every letter):

| Do not write | Why | Write instead |
|---|---|---|
| "escape hatches" | journalistic metaphor | "extension interfaces such as `ioctl`, which the kernel cannot meaningfully inspect" |
| "load-bearing" | metaphor doing technical work | say what actually depends on it |
| "higher stakes" | not a scientific expression; unmeasurable | name the concrete difference — e.g. "over interfaces that reach the filesystem, the network, and the shell directly" |
| "the overlap is too large to leave unexplored" | vague, pleading | "This letter answers no specific posting: it proposes a direction of work, and I would like to find out where … it belongs." |
| "our philosophies already rhyme" (+ any claim that his prior work anticipated/vindicated the company's) | flattery, and it invites the reader to dispute the parallel | cut entirely; let the record speak |

General rule these share: **no metaphor standing in for a technical statement, and no
claimed kinship with the reader's work.** State what was measured, then what it implies.
