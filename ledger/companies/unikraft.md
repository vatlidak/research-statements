# Unikraft

- **Site**: https://unikraft.com/ · https://unikraft.org/ (OSS) · https://unikraft.cloud/
- **HQ**: Heidelberg, Germany · Corporate entity formed 2022 (NEC Labs Europe spin-off)
- **Category**: Systems — specialized library OS / unikernels + microVMs; "10ms sandbox" platform
- **Tier**: 1 (standout systems match — builds the design-pillar primitive)

## Facts (verified 2026-08-12)

- Origin: started 2017 at **NEC Laboratories Europe** (Felipe Huici, Simon Kuenzer,
  Alexander Jung); EU Horizon 2020 (UNICORE) funded; became an independent company
  (**Unikraft GmbH / Unikraft Inc.**) in 2022–2023.
- **~$6M seed** VC funding ("$6M to drive efficiencies in scale and cost for cloud
  computing in the AI era").
- OSS: **Linux Foundation** member, **Xen Project incubator**; 100+ developers across
  industry and academia; GitHub org github.com/unikraft.
- Foundational paper: **"Unikraft: Fast, Specialized Unikernels the Easy Way,"
  EuroSys 2021 — Best Paper Award** (doi:10.1145/3447786.3456248).
- **Unikraft Cloud** platform: 10–50 ms cold starts even for heavyweight apps;
  10,000–100,000+ strongly isolated VMs per server; millisecond autoscaling + true
  scale-to-zero; benchmarked ~2× requests/sec at ~half the price of traditional VMs.
- Release cadence: 2–3 core releases/yr (v0.18.0 Dec 2024, v0.19.0 May 2025,
  v0.20.0 Sep 2025, v0.21.0 May 2026).

## Why Vaggelis fits

- His letter's design pillar — **"isolation cheap enough to wrap every tool call"** —
  is literally what Unikraft's unikernel+microVM stack delivers; they ship the
  primitive the agentic-abstractions program assumes.
- Same venue lineage: their foundational paper and his POSIX-abstractions study are
  both **EuroSys** systems work — credibility, NOT kinship (do not claim his work
  anticipated theirs; see me.md banned phrasings).
- Measurement pillar: quantifying per-tool-call isolation cost across agent runtimes
  is a study that lands directly on their platform's value proposition.

## Letter customization notes

- Addressee: "Unikraft"; subtitle kept generic ("Research statement accompanying a
  general application"); date August 12, 2026.
- ¶4 anchors: (a) name the missing primitive (per-call isolation) and why runtimes
  amortize it away by sandbox reuse — the exact failure mode for task-scoped isolation;
  (b) Unikraft's concrete numbers (10–50 ms cold start, 10k+ isolated instances/server,
  scale-to-zero) as the substrate that makes per-call isolation affordable;
  (c) prefer building agentic abstractions on a specialized library OS over re-deriving
  isolation in user space. Cite [EuroSys '21] for Unikraft's own paper.
- Tone: systems-first, concrete numbers; no metaphor, no claimed kinship.

## Sources

- https://finance.yahoo.com/news/unikraft-launches-6m-drive-dramatic-110700168.html
- https://neclab.eu/about-us/press-releases/detail/unikraft-a-nec-laboratories-europe-spin-off-raises-european-and-us-venture-capital-and-begins-operation-as-an-independent-company
- https://dl.acm.org/doi/10.1145/3447786.3456248
- https://unikraft.cloud/blog/ · https://unikraft.com/ · https://github.com/unikraft
