# E2B

- **Site**: https://e2b.dev/ (company: FoundryLabs, Inc.) · Founded 2023
- **Category**: Systems — open-source sandboxes for AI agents
- **Tier**: 2 (second wave; infra product company, "founding researcher" pitch)

## Facts (verified 2026-08-07)

- Founded by **Vasek Mlejnsky** and **Tomas Valenta**.
- **$21M Series A led by Insight Partners (Jul 2025)**; ~$32M total.
- Tech: **Firecracker microVM** sandboxes — fully isolated Linux environments in
  **<200ms**; open source; Python/JS SDKs.
- Traction claims: used by ~88% of Fortune 100; customers incl. **Perplexity, Hugging
  Face, Groq, Manus**; **500M+ sandboxes processed**; 2M+ monthly downloads.

## Why Vaggelis fits

- E2B is productizing "POSIX for agents" without the theory: the sandbox is becoming
  the de-facto agent syscall boundary, ad hoc and per-vendor — his portability
  thesis names exactly this gap.
- 500M sandboxes = the world's best dataset for pillar (i): what do agents actually
  ask of their execution environment? (The EuroSys '16 study, rerun on real agent
  workloads.)
- Security depth (escape-surface analysis, least-privilege defaults, provenance of
  side effects) is where an OSS infra startup needs a researcher-practitioner.

## Letter customization notes

- Subtitle: "Research statement in application to E2B".
- ¶4 anchors: (a) "your sandbox is becoming an interface standard — standards need a
  contract" (portability across E2B/competitors as the POSIX question); (b) the
  measurement goldmine angle (500M sandboxes); (c) open-source culture ↔ his public-
  artifact record.

## Sources

- https://e2b.dev/
- https://www.beam.cloud/blog/best-e2b-alternatives (funding/usage recap)
- https://www.spheron.network/blog/ai-agent-code-execution-sandbox-e2b-daytona-firecracker/
