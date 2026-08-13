# Edera

- **Site**: https://edera.dev/ · **HQ**: Seattle, WA · Founded 2024
- **Category**: Systems — hardened isolation runtime (containers, K8s, AI/GPU workloads)
- **Tier**: 1 (apply first wave — standout systems match)

## Facts (verified 2026-08-07)

- **$5M seed** (645 Ventures, Eniac + FPV/Generationship/Precursor/Rosecliff) +
  **$15M Series A led by M12 (Microsoft's venture fund)** with Mantis VC and
  **In-Q-Tel** → **$20M total**.
- Tech: **type-1 hypervisor** delivering per-container isolation — **no shared kernel
  state between containers**; **memory-safe Rust control plane**; "secure by default"
  positioning; explicitly marketed for containers, Kubernetes, **AI agents, and GPUs**.
- **Edera Protect AI**: automates GPU configuration while isolating AI workloads.

## Why Vaggelis fits

- His letter's "isolation cheap enough to wrap every tool call" is Edera's product
  roadmap; they are building the design-pillar primitive as a company.
- Kernel-level pedigree is their exact hiring profile: FineIBT (Intel adoption + Linux
  kernel upstream), SysXCHG (syscall filtering beating seccomp-BPF), EPF (packet-filter
  attack surface), Eclipse (speculative execution) — he works at the layer their
  hypervisor defends.
- Measurement pillar: quantifying isolation cost per agentic tool-call across
  runtimes = a study Edera would fund happily; In-Q-Tel/M12 backers value published
  rigor.

## Letter customization notes

- Subtitle: "Research statement in application to Edera".
- ¶4 anchors: (a) name the roadmap collision (their per-container/no-shared-kernel
  model ↔ his per-tool-call isolation thesis); (b) below-the-OS credibility (Intel/
  Linux kernel adoption is the strongest card — lead with it here); (c) agents+GPUs:
  the efficiency story (isolation without lfence-style overkill, per Eclipse's
  philosophy).
- Tone: deeply technical, systems-first; publications matter less than kernel scars.

## Sources

- https://siliconangle.com/2025/02/25/edera-raises-15m-expand-workload-isolation-technology-ai-security/
- https://edera.dev/stories/series-a
- https://www.securityweek.com/edera-banks-15m-for-kubernetes-workload-isolation-tech/
