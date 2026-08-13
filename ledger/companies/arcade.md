# Arcade.dev

- **Site**: https://www.arcade.dev/
- **Category**: Agent identity & authorization — authenticated tool-calling runtime
- **Tier**: 1 (apply first wave — his "task-scoped identity" pillar as a company)

## Facts (verified 2026-08-07)

- Founded Feb 2024 by **Alex Salazar** and **Sam Partee**.
- **$12M seed** (Laude Ventures, Mar 2025) + **$60M Series A led by SYN Ventures
  (security-focused VC), Jun 2026** → **$72M total**.
- Product: "industry's first authenticated tool-calling platform." Agent sends
  high-level intent (tool + parameters) → Arcade validates authorization, injects
  credentials, executes the API call, returns only the payload. **The model never
  sees the OAuth token or API key.** Manages OAuth 2.0/2.1 flows, API keys, tokens
  for Gmail/Slack/GitHub/Salesforce-class integrations. Positioned as "the
  enterprise-ready actions runtime for AI agents."

## Why Vaggelis fits

- Arcade is a mediation layer — exactly the abstraction the EuroSys '16 study said
  escape hatches destroy. Their product thesis and his research thesis are the same
  sentence at different layers.
- SysXCHG (privilege that follows the executing task, tamper-proof via signing) is
  the kernel-space version of Arcade's credential-injection model — he can give their
  runtime formal, enforceable semantics.
- Pillar (iii): an authorization runtime is an interface that needs stateful,
  feedback-driven security testing — RESTler heritage applies directly to their own
  attack surface.

## Letter customization notes

- Subtitle: "Research statement in application to Arcade".
- ¶4 anchors: (a) "you productized the mediation layer; I want to research its
  contract" — what must an actions runtime guarantee to be portable across agent
  frameworks?; (b) SysXCHG ↔ credential-scoping parallel, explicit; (c) SYN-led =
  security-buyer credibility; a researcher who publishes hardens the category story.

## Sources

- https://siliconangle.com/2026/06/15/ai-agent-authorization-startup-arcade-nabs-60m-investment/
- https://docs.arcade.dev/en/get-started/about-arcade
