# NSHKR

**A governed write-path substrate for enterprise AI execution**

> Infrastructure for stateful, effectful AI systems that must preserve authority, workflow truth, receipts, evidence, review, replay, and tenant boundaries while real work is performed.

**{{REPO_COUNT}} repositories** | [@North-Shore-AI](https://github.com/North-Shore-AI) | [nshkr.com](https://nshkr.com)

---

## What This Is

`nshkrdotcom` is the public workspace for NSHKR: a BEAM-native execution stack built on Elixir, OTP, Ash, Postgres, Temporal, and deliberately narrow boundary packages.

Enterprise AI is moving from suggestion to action. The first wave of AI applications helped users draft, summarize, search, and reason. The next wave changes records, coordinates workflows, invokes tools, reconciles systems, collects evidence, escalates exceptions, and asks humans for judgment at the right moments.

NSHKR is built for that transition. Its core execution path is:

```text
intent -> authority -> workflow -> effect -> receipt -> evidence -> projection -> review -> replay
```

It is not a chat UI, a single agent runtime, or a generic workflow engine. It is write-path infrastructure: the layer where AI proposals become authorized operations and where each operation produces structured, replayable institutional memory.

While the core application stack manages governed execution inside the active workflow, the physical topology is materialised and managed from the outside by **Chassis**—the spatial plane stack manager designed to install, deploy, health-check, and verify the NSHKR execution environment.

The platform has one hard constraint: an AI runtime may produce language, plans, code, tool calls, and operator suggestions, but it does not get a direct path to mutate the world. Every consequential action crosses typed context, authority compilation, durable workflow state, lower-runtime dispatch, receipts, evidence, and replayable proof.

---

## The Problem

Enterprise software usually captures outcomes, not decisions.

A discount field records the number, not why the discount was justified. A contract system records the accepted clause, not the rejected fallback positions. A support tool records closure, not why one resolution path was chosen over another. The record preserves the end state while discarding the institutional judgment that produced it.

AI makes that gap operationally dangerous. As agents begin proposing and performing actions, the system has to capture the judgment around those actions: proposal, correction, policy decision, credential scope, external effect, receipt, evidence, review, and eventual outcome.

Without that substrate, enterprises get automation without institutional memory.

---

## The Core Contract

Every AI-mediated action should be able to answer these questions without reading a prompt transcript:

```text
Who asked for this?
What authority did they have?
What workflow was active?
Which external effect was requested?
What actually happened?
What evidence supports the result?
Who reviewed or overrode it?
Can the entire chain be replayed?
```

In NSHKR, the durable chain is explicit:

```text
Command
  -> OperationContext
  -> ResolvedOperationPlan
  -> AuthorityPacket
  -> GovernedInvocationEnvelope
  -> ExecutionInstruction
  -> EffectReceipt
  -> OperationReceipt
  -> EvidenceRecord
  -> Projection
  -> ReviewCase / Decision
  -> AITrace event DAG
```

That chain is the product surface. Operators, auditors, support teams, and future automation should be able to query how work moved from request to governed action to observed result.

| Question | Platform answer |
|----------|-----------------|
| Who asked? | actor, tenant, installation, request context |
| Why was it allowed? | authority packet, policy refs, capability grants, lease scope |
| What changed? | operation receipt, evidence record, projection row, review decision, lower fact |
| Where did it run? | workflow refs, execution ids, lower receipts, runtime family refs |
| Can it be replayed? | AITrace DAG, causation refs, idempotency keys, release manifests, proof refs |
| Can it be stopped? | operator commands, revocation evidence, workflow signal paths, safe actions |
| Can it cross tenants? | only when row/store tenant, actor scope, lease scope, and substrate tenant agree |

---

## Architecture

The repos form a layered execution stack. Each layer owns one class of truth and has explicit boundaries for what it must not absorb.

```text
Bootstrap & Spatial Control (Beside the Stack)
  -> Chassis

Product / Operator (Inside the Stack)
  -> AppKit
  -> Mezzanine
  -> Citadel
  -> Jido Integration
  -> Execution Plane
  -> AITrace
  -> Projections / Reviews / Replay
```

| Layer | Responsibility |
|-------|----------------|
| **Chassis** | Spatial & deployment plane: standalone manager beside the stack that installs, provisions, health-checks, rolls back, and upgrades NSHKR installations. |
| **AppKit** | Product-facing commands, reads, reviews, leases, traces, and stable DTOs. |
| **Mezzanine** | Operational truth: workflows, ledgers, binding registry, receipts, evidence, projections, reviews, and run snapshots. |
| **OuterBrain** | Semantic context, recall, normalized AI outcomes, and semantic failure carriers. |
| **Citadel** | Authority compilation: capabilities, constraints, policy hashes, review gates, downgrade/reject decisions. |
| **Jido Integration** | Connector spine: manifests, operation descriptors, credential leases, governed lower invocation. |
| **Execution Plane** | Raw effect execution across HTTP, CLI, process, sandbox, filesystem, or other lower mechanics. |
| **AITrace** | Causal execution records, replay, redaction, audit lineage, and proof export. |
| **StackLab** | Deterministic proof harness: scanners, acceptance gates, failure drills, and second-product validation. |
| **GroundPlane** | Shared primitive mechanics: refs, idempotency, leases, fences, checkpoints, and persistence helpers. |

The stack is not a universal application framework. It is a governed runtime substrate for systems where product commands become durable workflow, authorized action, external effect, receipt, evidence, projection, review, and replayable proof.

---

## How Execution Works

A product does not call a vendor-specific runtime directly. It submits a product-level command through AppKit using product role references such as `:issue_tracker`, `:runtime`, `:evidence`, or `:resource_effect`.

Mezzanine records the command, creates an operation context, resolves the product role into a compiled binding, captures a run snapshot, and constructs a bounded operation plan. Citadel authorizes the resolved plan against actor, tenant, installation, capability, side-effect class, credential scope, and policy constraints. Jido Integration resolves the connector manifest and materializes the lower invocation. Execution Plane performs the raw mechanics. The resulting receipt returns upward and is reduced into evidence, projections, review state, and replayable trace events.

The important property is that every step is durable and joinable. Boundary envelopes may denormalize safety fields for local checks, but constructors reject mismatches. That prevents reference drift across workflow, receipt, projection, and replay records.

---

## Boundary Invariants

NSHKR is organized around ownership rather than product features:

- product repos own product behavior and operator journeys
- AppKit owns the public product boundary
- Mezzanine owns reusable operational invariants
- OuterBrain owns semantic context and normalized AI outcomes
- Citadel owns authority and policy compilation
- Jido Integration owns connector manifests, leases, and lower invocation envelopes
- Execution Plane owns raw runtime mechanics and lower receipts
- Chassis owns physical deployment and spatial reality
- AITrace owns replayable proof
- StackLab owns acceptance gates and failure drills

The compact version is:

```text
Products own meaning.
The platform owns operational invariants.
Connectors own vendor mechanics.
Execution owns raw effects.
Chassis owns physical deployment and spatial reality.
Trace infrastructure owns replayable proof.
```

Provider choices are allowed as data in product packs, connector manifests, receipts, traces, fixtures, and documentation. They are not allowed to become reusable platform control flow. The invariant is explicit: no vendor noun below its proper boundary, and no generic platform method that secretly delegates to provider-shaped logic.

---

## Governed Execution Memory

NSHKR's compounding asset is not chat history. It is governed execution memory.

Each run captures the institutional facts that ordinary software drops:

```text
the proposed action
the authority context
the binding and manifest used
the credential scope
the external effect requested
the lower receipt returned
the evidence attached
the human review or override
the projection update
the causal replay path
```

Over time, that becomes an enterprise decision graph grounded in actual work. It can answer:

```text
How did we handle this last time?
Which policy allowed it?
Which exception was approved?
Which connector performed the action?
What evidence supported the decision?
Did the outcome validate the action?
What should be done differently next time?
```

That is the enterprise analogue to the behavioral compounding loops that powered consumer platforms, adapted to enterprise realities: authority, confidentiality, tenant boundaries, credential scope, review, evidence, and auditability.

---

## Provider-Parameterized, Not Provider-Locked

Enterprise AI systems need real tools: GitHub, Linear, Codex, Slack, Jira, Notion, internal document systems, local deterministic connectors, custom APIs, and future providers that do not exist yet.

A product pack can declare concrete bindings:

```text
issue tracker -> Linear
code host -> GitHub
coding runtime -> Codex
document source -> local deterministic document connector
```

But reusable AppKit and Mezzanine surfaces operate on product roles, operation classes, manifests, receipts, and projections. Provider mechanics live in connector packages or explicit adapter zones.

A system that merely renames `sync_linear_issues` to `sync_source` while still hardcoding Linear underneath has not become generic. NSHKR's scanners and proof gates are designed to catch exactly that failure mode.

---

## Proof-Driven Generality

The stack is not allowed to claim generality based on one product.

`extravaganza` is the first proving-ground product: a coding-operations product that uses provider-specific product semantics while routing governed work through the generic substrate. It preserves product-level concepts such as Linear issues, GitHub pull requests, Codex sessions, workpads, evidence, and cleanup, but those details remain product or connector data rather than platform control flow.

The substrate must also support a neutral second product, `toy_document_review`, through the same path:

```text
source event
  -> work item
  -> runtime/classification
  -> evidence
  -> review
  -> publication
  -> resource effect
  -> receipt
  -> projection
  -> replay
```

If `extravaganza` passes but the neutral product fails, the generic substrate claim is false. StackLab exists to make that visible before the platform decays into glued provider code.

---

## Technical Defensibility

NSHKR's defensibility comes from several compounding technical choices:

- **Durable operation context.** Every governed action joins back to one operation context carrying actor, tenant, installation, trace, request, idempotency, workflow, authority, binding snapshot, and causation references.
- **Binding registry and run snapshots.** Product roles resolve into compiled binding records, connector manifests, credential scopes, and compatibility checks. A run captures the operation plan it will use, so steady-state dispatch does not chase mutable provider configuration on every operation.
- **Authority after resolution.** Citadel authorizes the resolved operation plan after Mezzanine knows the operation class, manifest ref, binding ref, side-effect class, required scope, and credential constraints.
- **Compact receipts plus lineage.** Operation receipts are compact outcome records. Detailed lineage is attached through trace and evidence records, keeping projections efficient while preserving replay depth.
- **Causal replay.** AITrace records execution as a causal DAG with predecessor references. Replay is not raw emission order; concurrent events reduce through deterministic tie-breakers and declared merge semantics.
- **Fail-closed operator semantics.** Missing bindings, stale registry epochs, manifest mismatches, side-effect expansion, scope expansion, missing credential leases, missing confirmation policies, and registry unavailability produce stable, operator-visible failure classes.
- **Static gates and negative controls.** StackLab enforces no-bypass, no-vendor-noun, supervised-process, generic-dispatch, manifest-dependency, Citadel-policy, and legacy-residue gates.

---

## Why BEAM / OTP

Enterprise AI execution is a distributed systems problem before it is a model problem.

NSHKR is naturally aligned with the BEAM model: supervised processes, explicit failure handling, durable state machines, message passing, long-running workflows, and high-concurrency operational systems. The broader ecosystem includes OTP-native components for agent sessions, tracing, connector integration, subprocess-backed AI runtimes, and governed execution.

That is why the stack separates workflow truth, authority, connector mechanics, runtime mechanics, and trace proof instead of hiding them inside one convenient agent process.

---

## Category Position

NSHKR sits between several existing categories but is not reducible to any of them.

| Existing category | Limitation | NSHKR position |
|-------------------|------------|----------------|
| Agent frameworks | Tool execution without durable enterprise governance | Governed execution substrate |
| Workflow engines | Procedural automation without AI-native provenance | AI-mediated workflow truth |
| Observability platforms | Logs and spans after execution | Causal action memory |
| GRC tools | Governance outside the action path | Governance embedded in execution |
| Data warehouses | Read-path analytics after decisions | Write-path capture during decisions |
| SaaS agents | Siloed provider workflows | Cross-system provider-parameterized substrate |

---

## Start Here

| If you care about | Start with | What to look for |
|-------------------|------------|------------------|
| Spatial topology & stack management | [chassis](https://github.com/nshkrdotcom/chassis) | Standalone host deployment, topology manifests, node placement, rollback controls, and self-upgrades |
| Product boundary and no-bypass rules | [app_kit](https://github.com/nshkrdotcom/app_kit), [extravaganza](https://github.com/nshkrdotcom/extravaganza) | Stable northbound DTOs, product commands, operator reads, reviews, install bootstrap, product/hazmat scans |
| Durable operational truth | [mezzanine](https://github.com/nshkrdotcom/mezzanine) | Pack compilation, binding registry, workflow lifecycle, execution ledgers, decisions, evidence, projections |
| Semantic and authority separation | [outer_brain](https://github.com/nshkrdotcom/outer_brain), [citadel](https://github.com/nshkrdotcom/citadel) | Context assembly, semantic outcomes, policy compilation, authority packets, governance envelopes |
| Connector spine and lower facts | [jido_integration](https://github.com/agentjido/jido_integration) | Manifests, operation descriptors, leases, auth lifecycle, connector admission, lower-fact reads |
| Raw runtime mechanics | [execution_plane](https://github.com/nshkrdotcom/execution_plane), [cli_subprocess_core](https://github.com/nshkrdotcom/cli_subprocess_core), [agent_session_manager](https://github.com/nshkrdotcom/agent_session_manager) | Process/session/JSON-RPC lanes, sandbox posture, lower receipts, terminal and coding-session mechanics |
| Provider families | [pristine](https://github.com/nshkrdotcom/pristine), [prismatic](https://github.com/nshkrdotcom/prismatic), [github_ex](https://github.com/nshkrdotcom/github_ex), [linear_sdk](https://github.com/nshkrdotcom/linear_sdk), [notion_sdk](https://github.com/nshkrdotcom/notion_sdk) | OpenAPI, GraphQL, REST, and connector-specific normalization without owning platform truth |
| Python and ML runtime bridges | [snakepit](https://github.com/nshkrdotcom/snakepit), [snakebridge](https://github.com/nshkrdotcom/snakebridge), [slither](https://github.com/nshkrdotcom/slither), [DSPex](https://github.com/nshkrdotcom/DSPex) | External runtime pools, generated bindings, Python-backed pipelines, DSPy-style optimization on BEAM surfaces |
| Proof and operator visibility | [stack_lab](https://github.com/nshkrdotcom/stack_lab), [AITrace](https://github.com/nshkrdotcom/AITrace), [ElixirScope](https://github.com/nshkrdotcom/ElixirScope), [switchyard](https://github.com/nshkrdotcom/switchyard) | Restart drills, fault injection, trace joins, execution cinema, operator workbench surfaces |

---

## Engineering Principles

- **One owner per durable fact.** Execution records, decision records, lower receipts, source publications, memory fragments, and operator projections each need a clear writer.
- **Semantic richness stops at the boundary.** LLMs can propose, summarize, repair, and classify. Durable mutation requires typed intent, authority, idempotency, and an owner that can replay or reject the operation.
- **Lower runtimes emit receipts, not meaning.** Execution Plane and provider-family packages own transport fidelity, session mechanics, placement, sandbox posture, and raw facts. Product meaning and review state live above them.
- **Read paths still need tenant proof.** A caller-supplied run id, receipt id, issue id, or workflow id is never enough. Tenant scope has to match at the public surface, substrate authorization layer, and lower-facts boundary.
- **Long-lived work is workflow state.** Temporal owns active workflow lifecycle where durable orchestration matters. Postgres owns facts and projections. Local queues are delivery and cleanup tools only where explicitly retained.
- **Proof is a product surface.** Trace ids, causation, idempotency, source positions, schema hashes, release manifests, projection hashes, audit facts, and proof tokens are part of the operator contract.
- **Generate scaffolding, keep meaning explicit.** DTOs, mappers, manifests, and bridge code can be generated when that reduces drift. Policy interpretation, pack semantics, and owner decisions remain explicit source.

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
