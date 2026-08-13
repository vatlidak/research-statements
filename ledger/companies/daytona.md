# Daytona

- **Site**: https://www.daytona.io/
- **Category**: Systems — agent-runtime infrastructure ("a computer for every agent")
- **Tier**: 2 (second wave)

## Facts (verified 2026-08-07)

- **$24M Series A led by FirstMark (Feb 2026)** + Pace Capital, Upfront, E2VC,
  Darkmode, and strategic money from **Datadog and Figma Ventures**; earlier $5M seed
  (Upfront, Jun 2024) and $2M pre-seed (Nov 2023). CEO/founder: Ivan Burazin.
- Tech: programmatic, **composable computers for AI agents** — CPU/memory/storage/
  GPU/network/OS configured on demand; **sub-90ms sandbox creation**; start, pause,
  **snapshot** at any point; SDKs in Python, TypeScript, Ruby, Go.
- Customers: **LangChain, Turing, Writer, SambaNova**, YC startups → Fortune 100.
  Reported $1M forward run rate in <3 months, doubled six weeks later.

## Why Vaggelis fits

- Snapshot/pause/resume of agent machines = new lifecycle primitives with no
  semantics standard — exactly the "new abstractions" his statement proposes to
  define (what is the execve/fork of an agent computer?).
- Same portability argument as E2B: every vendor invents its own agent-computer API;
  the contract is missing; he researches contracts.
- Security gap-in-market: infra velocity company without a security-research voice —
  his dual profile adds the missing credibility for enterprise buyers.

## Letter customization notes

- Subtitle: "Research statement in application to Daytona".
- ¶4 anchors: (a) "you gave every agent a computer; I study what that computer must
  promise" — lifecycle semantics, isolation guarantees, provenance of snapshots;
  (b) efficiency angle (sub-90ms is the right target — his statement's "isolation
  cheap enough to wrap every tool call" quantified); (c) Datadog/Figma strategics →
  observability/provenance research resonates.

## Sources

- https://www.prnewswire.com/news-releases/daytona-raises-24m-series-a-to-give-every-agent-a-computer-302680740.html
- https://www.alleywatch.com/2026/02/daytona-ai-agent-infrastructure-sandbox-computing-developer-tools-ivan-burazin/
