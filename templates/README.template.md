# nshkrdotcom

**A BEAM-native control stack for governed AI side effects**

> These repositories are not an agent framework. They are a boundary architecture for letting semantic systems read, reason, request work, and cause external effects without losing authority, tenancy, replay, or operator control.

**{{REPO_COUNT}} repositories** | [@North-Shore-AI](https://github.com/North-Shore-AI) | [nshkr.com](https://nshkr.com)

---

## What This Is

`nshkrdotcom` is a public workspace for a layered AI execution platform built on Elixir, OTP, Ash, Postgres, Temporal, and a set of deliberately narrow boundary packages.

The central design constraint is simple: an AI runtime may produce language, plans, code, tool calls, and operator suggestions, but it should not get a direct path to mutate the world. Every consequential action has to cross typed context, authority compilation, durable acceptance, lower-runtime dispatch, and observable proof.

That means the stack is organized around ownership, not around product features:

- product repos own product behavior and operator journeys
- AppKit owns the public application boundary
- Mezzanine owns reusable operational truth above the lower stack
- OuterBrain owns semantic context and normalized AI outcomes
- Citadel owns authority and policy compilation
- Jido Integration owns durable Brain-to-Spine intake and lower facts
- Execution Plane owns raw runtime mechanics
- Stack Lab and AITrace own proof, replay, and operational visibility

The result is a system where the interesting artifact is not "an agent ran." The interesting artifact is a chain of records: who requested the work, which policy admitted it, which installation revision was active, which durable row accepted it, which workflow or lower runtime performed it, which receipt came back, which review or projection changed, and which proof can be replayed later.

---

## Why It Exists

Most AI application stacks collapse three different concerns into one runtime path:

```text
semantic reasoning -> operational decision -> external side effect
```

That works until the system has to survive real operators, real tenants, long-lived workflows, partial failure, changing permissions, replay, cost attribution, incident export, or post-hoc questions from someone who was not in the room when the model ran.

This workspace separates those concerns:

```text
semantic reasoning       OuterBrain
authority compilation    Citadel
operational truth        Mezzanine
durable lower intake     Jido Integration
raw runtime mechanics    Execution Plane
product boundary         AppKit
proof and replay         Stack Lab + AITrace
```

The goal is not to make AI execution slower or more ceremonial. The goal is to make it inspectable enough that a useful autonomous system can be operated without relying on screenshots, prompt transcripts, and faith.

---

## Architecture

The repos form a contract stack. Each layer has one primary job and an explicit list of things it must not own.

```text
Products and operator shells
  extravaganza | switchyard | jido_hive | future products
        |
        v
Northbound product boundary
  app_kit
    - stable product-facing DTOs and surfaces
    - installation bootstrap, work control, operator reads, reviews
    - lower-read leases and no-bypass scans
        |
        v
Neutral operational substrate
  mezzanine
    - pack model and compilation
    - source admission, lifecycle, execution, decisions, evidence
    - projection, audit, archival, operator actions
    - Temporal workflow handoff backed by Postgres truth
        |
        +---------------------------+
        |                           |
        v                           v
Semantic and authority chain        Lower durable Spine
  outer_brain -> citadel            jido_integration
    - context and recall              - Brain ingress validation
    - semantic failure carriers       - auth and lease lifecycle
    - policy and authority compile    - connector admission
    - governed mutation envelopes     - review/control-plane/lower facts
        |                           |
        +-------------+-------------+
                      |
                      v
Execution substrate
  execution_plane
    - HTTP, process, JSON-RPC, placement, sandbox lanes
    - local, SSH, guest, terminal, and future cell mechanics
    - raw receipts and facts, not product or business truth

Runtime and provider families
  pristine | prismatic | github_ex | notion_sdk | linear_sdk
  cli_subprocess_core | agent_session_manager | codex_sdk | claude_agent_sdk
  snakepit | snakebridge | slither | DSPex

Foundational substrate
  ground_plane
    - ids, leases, fences, checkpoints, and primitive shared contracts

Proof and operations
  stack_lab | AITrace | ElixirScope
    - fault drills, replay, trace joins, execution cinema, release evidence
```

The most important dependency rule is that products should not assemble this path by hand. Product code talks to AppKit. AppKit talks to the substrate. The substrate records facts and requests authority. Lower runtimes execute only after the request has been reduced to explicit, typed, governed intent.

---

## The Core Contract

A governed execution is expected to carry enough structure to answer these questions without reading a prompt transcript:

| Question | Platform answer |
|----------|-----------------|
| Who asked? | actor, tenant, installation, request context |
| Why was it allowed? | authority packet, policy refs, capability grants, lease scope |
| What changed? | subject, execution, decision, evidence, projection, or lower-fact rows |
| Where did it run? | workflow refs, substrate execution ids, lower receipts, runtime family refs |
| Can it be replayed? | trace, causation, idempotency, source-position, release-manifest, proof refs |
| Can it be stopped? | operator commands, revocation evidence, workflow signal paths, safe actions |
| Can it cross tenants? | only when row/store tenant, actor scope, lease scope, and substrate tenant agree |

This is why the system has multiple repos. The split is not cosmetic. It prevents a convenient agent runtime from becoming the owner of policy, durable workflow state, connector truth, product state, and raw execution mechanics at the same time.

---

## Governed Memory

Long-running AI systems need memory, but memory is only useful in production if it is admissible.

The memory design treats recall as an access problem over time, not as a vector search problem with metadata filters. The proposed `Platform.AccessGraph.v1` records user-agent, agent-resource, user-scope, scope-resource, user-policy, and review-authority edges as epoch-stamped state. Memory fragments carry immutable provenance: creation epoch, originating actor, contributing agents, accessed resources, scopes, policies, evidence refs, governance refs, tier, and parent fragment.

Memory is physically tiered:

| Tier | Writer | Purpose |
|------|--------|---------|
| private | OuterBrain per-user path | local recall and working semantic continuity |
| shared | OuterBrain through Mezzanine share-up gate | transformed cross-user or cross-scope reuse |
| governed | Mezzanine promotion coordinator | evidence-grade memory admitted by policy and review |

Share-up and promotion create new fragments instead of mutating tier flags. Transform policy, parent links, evidence, and proof tokens make the path auditable.

The hard requirement is retrospective replay: given a past decision, the platform should be able to reconstruct which fragments were admitted, under which policy version, at which graph epoch, with which transforms, and whether those fragments would still be admissible under current policy.

---

## Proving Ground

`extravaganza` is the first product built to prove the shape from above. It is intentionally thin: product defaults, product operator journeys, product packaging, and product-owned pack definitions live there. Workflow machinery, review mechanics, runtime gateway behavior, source publication, durable receipts, and lower-backed reads stay behind AppKit and Mezzanine.

The lower end is intentionally harsher. Modern coding and operator workloads need long-lived sessions, bidirectional JSON-RPC runtimes, host-side tools, approval callbacks, terminal surfaces, and session continuations. Those capabilities are treated as hazmat. They belong behind leases, grants, workflow facts, lower receipts, and operator-visible controls, not behind a direct product import.

---

## Start Here

| If you care about | Start with | What to look for |
|-------------------|------------|------------------|
| Product boundary and no-bypass rules | [app_kit](https://github.com/nshkrdotcom/app_kit), [extravaganza](https://github.com/nshkrdotcom/extravaganza) | Stable northbound DTOs, work control, operator reads, reviews, install bootstrap, product/hazmat scans |
| Durable operational truth | [mezzanine](https://github.com/nshkrdotcom/mezzanine) | Pack compilation, lifecycle, execution ledgers, decisions, evidence, projections, Temporal handoff |
| Semantic and authority separation | [outer_brain](https://github.com/nshkrdotcom/outer_brain), [citadel](https://github.com/nshkrdotcom/citadel) | Context assembly, semantic outcomes, policy compilation, authority packets, governance envelopes |
| Spine and lower facts | [jido_integration](https://github.com/agentjido/jido_integration) | Brain ingress, leases, auth lifecycle, connector admission, lower-fact reads, review/control-plane truth |
| Raw runtime mechanics | [execution_plane](https://github.com/nshkrdotcom/execution_plane), [cli_subprocess_core](https://github.com/nshkrdotcom/cli_subprocess_core), [agent_session_manager](https://github.com/nshkrdotcom/agent_session_manager) | Process/session/JSON-RPC lanes, sandbox posture, lower receipts, terminal and coding-session mechanics |
| Provider families | [pristine](https://github.com/nshkrdotcom/pristine), [prismatic](https://github.com/nshkrdotcom/prismatic), [github_ex](https://github.com/nshkrdotcom/github_ex), [linear_sdk](https://github.com/nshkrdotcom/linear_sdk), [notion_sdk](https://github.com/nshkrdotcom/notion_sdk) | OpenAPI, GraphQL, REST, and connector-specific normalization without owning platform truth |
| Python and ML runtime bridges | [snakepit](https://github.com/nshkrdotcom/snakepit), [snakebridge](https://github.com/nshkrdotcom/snakebridge), [slither](https://github.com/nshkrdotcom/slither), [DSPex](https://github.com/nshkrdotcom/DSPex) | External runtime pools, generated bindings, Python-backed pipelines, DSPy-style optimization on BEAM surfaces |
| Proof and operator visibility | [stack_lab](https://github.com/nshkrdotcom/stack_lab), [AITrace](https://github.com/nshkrdotcom/AITrace), [ElixirScope](https://github.com/nshkrdotcom/ElixirScope), [switchyard](https://github.com/nshkrdotcom/switchyard) | Restart drills, fault injection, trace joins, execution cinema, operator workbench surfaces |

---

## Engineering Principles

- **One owner per durable fact.** Execution records, decision records, lower receipts, source publications, memory fragments, and operator projections each need a clear writer. Shared reads are allowed; shared ownership is not.
- **Semantic richness stops at the boundary.** LLMs can propose, summarize, repair, and classify. Durable mutation requires typed intent, authority, idempotency, and an owner that can replay or reject the operation.
- **Lower runtimes emit receipts, not meaning.** Execution Plane and provider-family packages own transport fidelity, session mechanics, placement, sandbox posture, and raw facts. Product meaning and review state live above them.
- **Read paths still need tenant proof.** A caller-supplied run id, receipt id, issue id, or workflow id is never enough. Tenant scope has to match at the public surface, substrate authorization layer, and lower-facts boundary.
- **Long-lived work is workflow state, not a background job convention.** Temporal owns active workflow lifecycle where durable orchestration matters. Postgres owns facts and projections. Local queues are delivery and cleanup tools only where explicitly retained.
- **Proof is a product surface.** Trace ids, causation, idempotency, source positions, schema hashes, release manifests, projection hashes, audit facts, and proof tokens are part of the contract operators consume.
- **Generated boundaries are acceptable; generated meaning is not.** DTOs, mappers, manifests, and bridge scaffolding can be generated when that reduces drift. Policy interpretation, pack semantics, and owner decisions remain explicit source.

---

## Repository Atlas

This inventory is generated from live GitHub metadata and grouped by `nshkr-*` topics so it stays current as the ecosystem grows.

{{CATEGORY_OVERVIEW}}

---

## Repositories By Category

<!-- AUTO_GENERATED_START -->
{{AUTO_GENERATED_CONTENT}}
<!-- AUTO_GENERATED_END -->

---

## Related

| Resource | Description |
|----------|-------------|
| [@North-Shore-AI](https://github.com/North-Shore-AI) | Organization-level ML reliability, experimentation, labeling, and research stacks |
| [nsai.online](https://nsai.online) | Organization site and ecosystem entry point |
| [nsai.space](https://nsai.space) | Research, experiments, and long-form exploration |
| [nsai.store](https://nsai.store) | Package and distribution catalog |

---

<details>
<summary>Profile automation</summary>

`nshkrdotcom.github.io` now publishes repo logos under content-hash paths such as `/logos/{repo}-{sha12}.svg`, so downstream logo URLs are intentionally versioned instead of stable `/logos/{repo}.svg` aliases.

Changes to this repo's `README*`, `assets/`, `logo/`, `logos/`, `static/`, and docs-hosted image assets are picked up automatically by `nshkrdotcom.github.io` on its scheduled source-change scan. If `NSHKR_SITE_SYNC_TOKEN` is configured, this repo can also dispatch an immediate sync directly.

</details>

_Updated {{UPDATE_DATE}}_
