# Application Ledger — Vaggelis Atlidakis

Persistent working memory for the job-application campaign built around the research
statement **"Toward a POSIX for the Agentic Era."**

## Layout

- `me.md` — extensive candidate dossier: CV facts, research narrative, publications,
  teaching, service, impact. **Single source of truth for every claim in every letter.**
- `companies/<slug>.md` — one profile per target company: verified facts, fit hooks,
  and letter-customization notes.
- Letters live one level up: `../preamble.tex` (shared style),
  `../atlidakis-<slug>.tex` → `../atlidakis-<slug>.pdf` (one page each, pdflatex).

## Workflow (agreed 2026-08-07)

1. **Template refinement (current phase)**: user iterates with Claude on the Trail of
   Bits letter (`../atlidakis-trail-of-bits.tex`) until satisfied.
2. **Fan-out**: the approved ToB letter becomes the master template. For each company
   in `companies/`, generate a fresh `atlidakis-<slug>.tex` — keep the thesis/agenda/
   record structure, swap the "Why <Company>" paragraph (and title subtitle/addressee)
   per the profile's *Letter customization notes*. Compile; every letter must be
   exactly one page and every claim must trace to `me.md` or the company profile.

## Status board

| Tier | Company | Category | Letter |
|---|---|---|---|
| anchor | [Trail of Bits](companies/trail-of-bits.md) | Security research consultancy | **v1 drafted** — awaiting user feedback |
| 1 | [XBOW](companies/xbow.md) | Offensive agents | — |
| 1 | [Irregular](companies/irregular.md) | Frontier AI security lab | — |
| 1 | [Virtue AI](companies/virtue-ai.md) | Agent defense (academic-founded) | — |
| 1 | [Edera](companies/edera.md) | Isolation runtime | — |
| 1 | [Unikraft](companies/unikraft.md) | Unikernel / library-OS runtime | **v1 drafted** |
| 1 | [Arcade.dev](companies/arcade.md) | Agent authorization | — |
| 2 | [Keycard](companies/keycard.md) | Agent identity | — |
| 2 | [Daytona](companies/daytona.md) | Agent-runtime infra | — |
| 2 | [E2B](companies/e2b.md) | Agent sandboxes | — |
| 2 | [Gray Swan AI](companies/gray-swan.md) | Agent red-teaming | — |
| 2 | [RunSybil](companies/runsybil.md) | AI pentesting | — |
| 2 | [Dreadnode](companies/dreadnode.md) | Offensive-AI infrastructure | — |
| 3 | [Zenity](companies/zenity.md) | Enterprise agent security | — |
| 3 | [Noma Security](companies/noma.md) | Enterprise agent security | — |
| 3 | [Straiker](companies/straiker.md) | Enterprise agent security | — |
| 3 | [Modal](companies/modal.md) | Infra (thin profile — verify) | — |
| 3 | [Browserbase](companies/browserbase.md) | Infra (thin profile — verify) | — |
| 3 | [Exaforce](companies/exaforce.md) | Agentic SOC (inverse pitch) | — |
| 3 | [Dropzone AI](companies/dropzone.md) | Agentic SOC (inverse pitch) | — |

Off-board (context only): Binarly (dropped — not agentic-fresh); Mindgard (user's own
example/reference archetype); Astrix (Cisco acquisition announced); Invariant Labs
(absorbed into Snyk Labs). Big-lab bets outside the startup ledger: Anthropic,
Google DeepMind (CaMeL/agent security), AWS (AgentCore/Firecracker), Meta (LlamaFirewall).

## Conventions

- Facts in profiles were verified via web research on 2026-08-07 unless marked
  `(verify)`. Re-verify funding/roles before each application.
- Every profile ends with a **Letter customization notes** section — that is the only
  input the fan-out step should need beyond `me.md` and the template.
