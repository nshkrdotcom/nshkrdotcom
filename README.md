# NSHKR

**BEAM-native AI infrastructure, governed execution systems, and mechanistic interpretability research**

> Libraries people run in production; execution systems that produce evidence; experiments whose controls can fail.

**177 repositories | 670 stars** across this account and [@North-Shore-AI](https://github.com/North-Shore-AI) | [nshkr.com](https://nshkr.com)

---

## Most Used

The libraries below carry the bulk of external adoption. Start here if you want something
installable rather than something to read.

| Repository | Stars | Description |
|------------|------:|-------------|
| [trinity_coordinator](https://github.com/nshkrdotcom/trinity_coordinator) | 77 | TRINITY in Elixir (An Evolved LLM Coordinator): route LLM calls via a small-model hidde... |
| [synapse](https://github.com/nshkrdotcom/synapse) | 50 | Headless, declarative multi-agent orchestration framework with a domain-agnostic signal... |
| [claude_agent_sdk](https://github.com/nshkrdotcom/claude_agent_sdk) | 36 | An Elixir SDK for Claude Code - provides programmatic access to Claude Code CLI with st... |
| [gemini_ex](https://github.com/nshkrdotcom/gemini_ex) | 35 | Elixir Interface / Adapter for Google Gemini LLM, for both AI Studio and Vertex AI |
| [json_remedy](https://github.com/nshkrdotcom/json_remedy) | 33 | A practical, multi-layered JSON repair library for Elixir that intelligently fixes malf... |
| [flowstone](https://github.com/nshkrdotcom/flowstone) | 31 | Asset-first data orchestration for Elixir/BEAM. Dagster-inspired with OTP fault toleran... |
| [codex_sdk](https://github.com/nshkrdotcom/codex_sdk) | 26 | OpenAI Codex SDK written in Elixir |
| [DSPex](https://github.com/nshkrdotcom/DSPex) | 18 | Declarative Self Improving Elixir - DSPy Orchestration in Elixir |
| [GUARDRAIL](https://github.com/nshkrdotcom/GUARDRAIL) | 18 | GUARDRAIL - MCP Security - Gateway for Unified Access, Resource Delegation, and Risk-At... |
| [ds_ex](https://github.com/nshkrdotcom/ds_ex) | 18 | DSPEx - Declarative Self-improving Elixir \| A BEAM-Native AI Program Optimization Fra... |
| [supertester](https://github.com/nshkrdotcom/supertester) | 14 | A battle-hardened testing toolkit for building robust and resilient Elixir & OTP applic... |
| [ASKA](https://github.com/nshkrdotcom/ASKA) | 13 | Secure Computing in the AI age |

Three bodies of work sit behind them: a BEAM-native library ecosystem for AI systems, the
[NSHKR governed execution stack](#systems-engineering-governed-ai-execution), and a
[mechanistic interpretability research program](#mechanistic-interpretability-research).
The full inventory is in the [Repository Atlas](#repository-atlas).

---

## Mechanistic Interpretability Research

The research programs test representation, transport, superposition, and causal legibility. Each program freezes its protocol and controls before interpreting real-model or ground-truth synthetic runs; artifacts and negative results remain part of the record.

| Program | Question and current result |
|---------|-----------------------------|
| [Geometry of Conditional Truth](https://github.com/nshkrdotcom/gct) | Tests context transport and hidden-coordinate structure in Qwen3-4B and Phi-4-mini. Across eight preregistered endpoints, Phi supported one and Qwen supported none; both remained Level 1 of 6. [Qwen report](https://github.com/nshkrdotcom/gct/blob/main/REPORT.md) · [Phi report](https://github.com/nshkrdotcom/gct/blob/main/REPORT_MODEL2.md) · [cross-model report](https://github.com/nshkrdotcom/gct/blob/main/REPORT_CROSS_MODEL.md) |
| [Architecture Mechanics](https://github.com/nshkrdotcom/architecture_mechanics) | Uses trained tiny models and known synthetic features to compare transport, overwrite, packing, and causal legibility across sequence-mixing mechanisms. |
| [Attention Lab](https://github.com/nshkrdotcom/attention_lab) | Runs matched GPT pretraining experiments on alternative attention architectures. Two confirmatory pretraining runs reached full-depth analysis; the current mechanism verdict remains `insufficient_evidence`. |
| [Superposition Zoo](https://github.com/nshkrdotcom/superposition_zoo) | Compares attention, hard routing, linear attention, delta-rule memory, and state-space mixing on synthetic retrieval. Attention and hard routing have strong causal retrieval evidence; the feature-isolation question remains open. |

### Research workbenches and records

| Repository | Role |
|------------|------|
| [mwb](https://github.com/nshkrdotcom/mwb) | Local-first mechanistic-interpretability workbench with provenance, evidence graphs, claim-safe reports, and experiment ledgers. |
| [mil](https://github.com/nshkrdotcom/mil) | Lightweight IPython capture, activation patching, SAE analysis, controls, and reproducible visual artifacts. |
| [circuit-tracer](https://github.com/nshkrdotcom/circuit-tracer) | Attribution-graph tooling for tracing and inspecting language-model computations. |
| [learning](https://github.com/nshkrdotcom/learning) | Research archive containing the canonical [SELF-GROUND](https://github.com/nshkrdotcom/learning/tree/main/ml_research/self-ground), [construct-mismatch](https://github.com/nshkrdotcom/learning/tree/main/construct_mismatch), [local MI lab](https://github.com/nshkrdotcom/learning/tree/main/ml_research/local-mi-lab), and ML visualization work. |

The interpretation standard is deliberately conservative: decodability is not causal use, coherence is not truth, and a null result is a successful outcome when the apparatus and controls pass.

---

## Systems Engineering: Governed AI Execution

The systems portfolio is NSHKR's BEAM-native execution stack: Elixir and OTP services with explicit ownership boundaries. The research and systems programs are distinct, but share one operating principle: important claims should resolve to inspectable evidence.

**[nshkr](https://github.com/nshkrdotcom/nshkr) is the production backbone:** the composition and release workspace that assembles the owner services into reproducible monolith and distributed deployments. Its `Nshkr.Runtime` application starts those services, binds their dependencies, and decides how the production system boots and runs as one platform.

Enterprise AI is moving from suggestion to action. The first wave helped people draft and search. The next changes records, invokes tools, and coordinates durable workflows.

NSHKR is built for that transition. Its core execution path is:

```text
intent -> authority -> workflow -> effect -> receipt -> evidence -> projection -> review -> replay
```

It is not a chat UI, a single agent runtime, or a generic workflow engine. It is write-path infrastructure: the layer where AI proposals become authorized operations and where each operation produces structured, replayable institutional memory.

While the core application stack manages governed execution inside the active workflow, the physical topology is materialised and managed from the outside by **Chassis**—the spatial plane stack manager designed to install, deploy, health-check, and verify the NSHKR execution environment.

The platform has one hard constraint: an AI runtime may produce language, plans, code, tool calls, and operator suggestions, but it does not get a direct path to mutate the world. Every consequential action crosses typed context, authority compilation, durable workflow state, lower-runtime dispatch, receipts, evidence, and replayable proof.

---

## The Systems Problem

Enterprise software usually captures outcomes, not decisions.

A discount field records the number, not why the discount was justified. A contract system records the accepted clause, not the rejected fallback positions. A support tool records closure, not why one resolution path was chosen over another. The record preserves the end state while discarding the institutional judgment that produced it.

AI makes that gap operationally dangerous. As agents begin proposing and performing actions, the system has to capture the request, its authorization and review, the external effect, and the resulting evidence.

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

Production Composition & Release
  -> nshkr / Nshkr.Runtime
     -> AppKit
     -> Mezzanine
     -> OuterBrain / Citadel
     -> Jido Integration
     -> Execution Plane
     -> Chassis reconciliation
     -> Synapse / Extravaganza
     -> AITrace / Projections / Reviews / Replay
```

| Layer | Responsibility |
|-------|----------------|
| **nshkr / Nshkr.Runtime** | Production composition root, fail-closed runtime profiles, dependency ordering, release assembly, and monolith/distributed deployment. |
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

The stack is a governed runtime substrate for systems where product commands become durable workflows and replayable, reviewed effects.

---

## How Execution Works

A product does not call a vendor-specific runtime directly. It submits a product-level command through AppKit using product role references such as `:issue_tracker`, `:runtime`, `:evidence`, or `:resource_effect`.

Suppose a product asks to close GitHub issue 42. AppKit accepts the product command. Mezzanine records who requested it, the tenant, the intended effect, and its idempotency context. Citadel decides whether that actor may perform it. Jido Integration resolves the connector, and Execution Plane performs the call. Receipts and evidence return to the workflow, projection, review state, and trace.

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

Enterprise AI systems need real tools: code hosts, work trackers, and internal systems. They also need a stable way to add providers that do not exist yet.

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
| Production composition and releases | [nshkr](https://github.com/nshkrdotcom/nshkr) | `Nshkr.Runtime`, owner-ordered services, fail-closed profiles, deployment composition, and release verification |
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

This inventory is generated from live GitHub metadata and grouped by `nshkr-*` topics so it
stays current as the ecosystem grows. Within each category, repositories are ordered by
stars, so the load-bearing ones surface first.

The atlas covers this account's 116 repositories.
[@North-Shore-AI](https://github.com/North-Shore-AI) holds a further 61,
mostly the Crucible ML packages and the NSAI platform services.

| Category | Repositories | Stars |
|----------|-------------:|------:|
| [AI Agents](#category-nshkr-ai-agents) | 14 | 225 |
| [AI SDKs](#category-nshkr-ai-sdk) | 19 | 128 |
| [AI Infrastructure](#category-nshkr-ai-infra) | 24 | 85 |
| [Research](#category-nshkr-research) | 10 | 2 |
| [ML & Learning](#category-nshkr-ml) | 2 | 1 |
| [Security](#category-nshkr-security) | 4 | 37 |
| [Schema](#category-nshkr-schema) | 3 | 31 |
| [Testing](#category-nshkr-testing) | 4 | 29 |
| [Observability](#category-nshkr-observability) | 3 | 16 |
| [Developer Tools](#category-nshkr-devtools) | 16 | 37 |
| [OTP](#category-nshkr-otp) | 5 | 23 |
| [Data](#category-nshkr-data) | 2 | 4 |
| [User Interface](#category-nshkr-ui) | 1 | 4 |
| [Utilities](#category-nshkr-utility) | 3 | 5 |
| [Ecosystem](#category-nshkr-ecosystem) | 1 | 0 |
| [Misc](#category-nshkr-misc) | 1 | 0 |
| [Tools](#category-nshkr-tools) | 1 | 0 |
| [Other](#category-uncategorized) | 3 | 4 |


---

## Repositories By Category

<!-- AUTO_GENERATED_START -->
<a id="category-nshkr-ai-agents"></a>
### AI Agents (14)

| Repository | Stars | Description |
|------------|------:|-------------|
| [trinity_coordinator](https://github.com/nshkrdotcom/trinity_coordinator) | 77 | TRINITY in Elixir (An Evolved LLM Coordinator): route LLM calls via a small-m... |
| [synapse](https://github.com/nshkrdotcom/synapse) | 50 | Headless, declarative multi-agent orchestration framework with a domain-agnos... |
| [flowstone](https://github.com/nshkrdotcom/flowstone) | 31 | Asset-first data orchestration for Elixir/BEAM. Dagster-inspired with OTP fau... |
| [DSPex](https://github.com/nshkrdotcom/DSPex) | 18 | Declarative Self Improving Elixir - DSPy Orchestration in Elixir |
| [ds_ex](https://github.com/nshkrdotcom/ds_ex) | 18 | DSPEx - Declarative Self-improving Elixir \| A BEAM-Native AI Program Optimi... |
| [ALTAR](https://github.com/nshkrdotcom/ALTAR) | 9 | The Agent & Tool Arbitration Protocol |
| [mabeam](https://github.com/nshkrdotcom/mabeam) | 9 | Multi-agent systems framework for the BEAM platform - build distributed auton... |
| [pipeline_ex](https://github.com/nshkrdotcom/pipeline_ex) | 9 | Claude Code + Gemini AI collaboration orchestration tools |
| [jido_hive](https://github.com/nshkrdotcom/jido_hive) | 2 | Phoenix coordination server and embeddable Elixir client for augmented human-... |
| [flowstone_ai](https://github.com/nshkrdotcom/flowstone_ai) | 1 | FlowStone integration for altar_ai - AI-powered data pipeline assets with cla... |
| [synapse_ai](https://github.com/nshkrdotcom/synapse_ai) | 1 | Synapse integration for altar_ai - SDK-backed LLM providers for multi-agent w... |
| [extravaganza](https://github.com/nshkrdotcom/extravaganza) |  | First proving-ground product app for the nshkr stack: a thin, sophisticated o... |
| [mezzanine](https://github.com/nshkrdotcom/mezzanine) |  | Neutral high-level reusable monorepo for the nshkr stack: Ash-driven business... |
| [stack_coder](https://github.com/nshkrdotcom/stack_coder) |  | An advanced Elixir-based AI coding agent focused on full-stack code generatio... |

<a id="category-nshkr-ai-sdk"></a>
### AI SDKs (19)

| Repository | Stars | Description |
|------------|------:|-------------|
| [claude_agent_sdk](https://github.com/nshkrdotcom/claude_agent_sdk) | 36 | An Elixir SDK for Claude Code - provides programmatic access to Claude Code C... |
| [gemini_ex](https://github.com/nshkrdotcom/gemini_ex) | 35 | Elixir Interface / Adapter for Google Gemini LLM, for both AI Studio and Vert... |
| [codex_sdk](https://github.com/nshkrdotcom/codex_sdk) | 26 | OpenAI Codex SDK written in Elixir |
| [agent_session_manager](https://github.com/nshkrdotcom/agent_session_manager) | 11 | Agent Session Manager - A comprehensive Elixir library for managing AI agent ... |
| [ollixir](https://github.com/nshkrdotcom/ollixir) | 5 | Ollixir provides a first-class Elixir client with feature parity to the offic... |
| [altar_ai](https://github.com/nshkrdotcom/altar_ai) | 4 | Protocol-based AI adapter foundation for Elixir - unified abstractions for ge... |
| [antigravity_cli_sdk](https://github.com/nshkrdotcom/antigravity_cli_sdk) | 2 | Elixir SDK for the Google Antigravity CLI (agy) — stream-json headless sessio... |
| [jules_ex](https://github.com/nshkrdotcom/jules_ex) | 2 | Elixir client SDK for the Jules API - orchestrate AI coding sessions |
| [notion_sdk](https://github.com/nshkrdotcom/notion_sdk) | 2 | Native Elixir SDK for the Notion API — comprehensive, idiomatic client for No... |
| [amp_sdk](https://github.com/nshkrdotcom/amp_sdk) | 1 | Elixir SDK for the Amp CLI — provides a comprehensive client library for inte... |
| [cli_subprocess_core](https://github.com/nshkrdotcom/cli_subprocess_core) | 1 | Foundational Elixir runtime library for deterministic CLI subprocess orchestr... |
| [github_ex](https://github.com/nshkrdotcom/github_ex) | 1 | Native Elixir SDK for the GitHub REST API — comprehensive, idiomatic client f... |
| [mcp_client](https://github.com/nshkrdotcom/mcp_client) | 1 | Full-featured Elixir client for the Model Context Protocol (MCP) with multi-t... |
| [vllm](https://github.com/nshkrdotcom/vllm) | 1 | vLLM - High-throughput, memory-efficient LLM inference engine with PagedAtten... |
| [cursor_cli_sdk](https://github.com/nshkrdotcom/cursor_cli_sdk) |  | Elixir SDK for the Cursor Agent CLI (agent) — stream-json headless sessions, ... |
| [external_runtime_transport](https://github.com/nshkrdotcom/external_runtime_transport) |  | An Elixir-first external runtime transport foundation for AI SDK integrations... |
| [linear_sdk](https://github.com/nshkrdotcom/linear_sdk) |  | Elixir SDK for Linear built on Prismatic, using a schema-driven GraphQL toolc... |
| [llama_cpp_sdk](https://github.com/nshkrdotcom/llama_cpp_sdk) |  | Barebones Elixir wrapper and integration surface for llama.cpp experiments, l... |
| [self_hosted_inference_core](https://github.com/nshkrdotcom/self_hosted_inference_core) |  | Core Elixir primitives for building reliable self-hosted inference clients, p... |

<a id="category-nshkr-ai-infra"></a>
### AI Infrastructure (24)

| Repository | Stars | Description |
|------------|------:|-------------|
| [json_remedy](https://github.com/nshkrdotcom/json_remedy) | 33 | A practical, multi-layered JSON repair library for Elixir that intelligently ... |
| [rag_ex](https://github.com/nshkrdotcom/rag_ex) | 13 | Elixir RAG library with multi-LLM routing (Gemini, Claude, OpenAI, Ollama), G... |
| [snakepit](https://github.com/nshkrdotcom/snakepit) | 11 | High-performance, generalized process pooler and session manager for external... |
| [snakebridge](https://github.com/nshkrdotcom/snakebridge) | 8 | Compile-time Elixir code generator for Python library bindings. Declare depen... |
| [gepa_ex](https://github.com/nshkrdotcom/gepa_ex) | 5 | Elixir implementation of GEPA: LLM-driven evolutionary optimization using Par... |
| [command](https://github.com/nshkrdotcom/command) | 2 | Core Elixir library for AI agent orchestration - unified workbench for runnin... |
| [execution_plane](https://github.com/nshkrdotcom/execution_plane) | 2 | Execution Plane is an Elixir/OTP runtime substrate for boundary-aware AI infr... |
| [portfolio_core](https://github.com/nshkrdotcom/portfolio_core) | 2 | Hexagonal architecture core for Elixir RAG systems. Port specifications, mani... |
| [slither](https://github.com/nshkrdotcom/slither) | 2 | Lightweight Elixir runtime for composing and executing Python-backed data pip... |
| [citadel](https://github.com/nshkrdotcom/citadel) | 1 | The command and control layer for the AI-powered enterprise |
| [gepa_framework](https://github.com/nshkrdotcom/gepa_framework) | 1 | Reusable GEPA optimizer framework for typed candidate generation, evaluation,... |
| [ground_plane](https://github.com/nshkrdotcom/ground_plane) | 1 | Shared lower infrastructure monorepo for the nshkr platform core: contracts, ... |
| [inference](https://github.com/nshkrdotcom/inference) | 1 | Reusable Elixir semantic inference contracts, adapters, trace metadata, and c... |
| [nshkr](https://github.com/nshkrdotcom/nshkr) | 1 | NSHKR is the production Elixir/OTP composition and release workspace for a go... |
| [skill_ex](https://github.com/nshkrdotcom/skill_ex) | 1 | Claude Skill Aggregator |
| [trinity_framework](https://github.com/nshkrdotcom/trinity_framework) | 1 | Reusable TRINITY router and coordination framework for deterministic agent ro... |
| [app_kit](https://github.com/nshkrdotcom/app_kit) |  | Shared app-facing surface monorepo for the nshkr platform core: composition, ... |
| [chassis](https://github.com/nshkrdotcom/chassis) |  | Spatial & deployment plane for NSHKR: standalone manager beside the stack tha... |
| [gepa_buildout](https://github.com/nshkrdotcom/gepa_buildout) |  | Deterministic GEPA buildout examples and domain task fixtures for framework v... |
| [outer_brain](https://github.com/nshkrdotcom/outer_brain) |  | Semantic runtime above Citadel for raw language intake, context assembly, mod... |
| [portfolio_index](https://github.com/nshkrdotcom/portfolio_index) |  | Production adapters and pipelines for PortfolioCore. Vector stores (pgvector,... |
| [portfolio_manager](https://github.com/nshkrdotcom/portfolio_manager) |  | AI-native personal project intelligence system - manage, track, and search ac... |
| [self_hosted_inference_bumblebee](https://github.com/nshkrdotcom/self_hosted_inference_bumblebee) |  | Bumblebee/Nx runtime backend for self_hosted_inference_core |
| [stack_lab](https://github.com/nshkrdotcom/stack_lab) |  | Local distributed-development harness and proving ground for the full stack: ... |

<a id="category-nshkr-research"></a>
### Research (10)

| Repository | Stars | Description |
|------------|------:|-------------|
| [ChronoLedger](https://github.com/nshkrdotcom/ChronoLedger) | 2 | Hardware-Secured Temporal Blockchain |
| [EADS](https://github.com/nshkrdotcom/EADS) |  | Evolutionary Autonomous Development System |
| [anti_agents](https://github.com/nshkrdotcom/anti_agents) |  | Anti Agents - Inspired by Sakana AI's String Seed of Thought paper |
| [architecture_mechanics](https://github.com/nshkrdotcom/architecture_mechanics) |  | Synthetic ground-truth lab for testing how sequence-mixing architectures shap... |
| [attention_lab](https://github.com/nshkrdotcom/attention_lab) |  | Controlled GPT pretraining and mechanistic-interpretability harness for testi... |
| [gct](https://github.com/nshkrdotcom/gct) |  | Leakage-resistant experiments testing contextual transport and latent-coordin... |
| [learning](https://github.com/nshkrdotcom/learning) |  | Mechanistic-interpretability experiments, research records, and ML visualizat... |
| [mil](https://github.com/nshkrdotcom/mil) |  | Local mechanistic-interpretability workbench with IPython capture, activation... |
| [mwb](https://github.com/nshkrdotcom/mwb) |  | Mechanistic Workbench (mwb): Local-first mechanistic interpretability workben... |
| [superposition_zoo](https://github.com/nshkrdotcom/superposition_zoo) |  | A research harness for studying how sequence-mixing architectures (softmax at... |

<a id="category-nshkr-ml"></a>
### ML & Learning (2)

| Repository | Stars | Description |
|------------|------:|-------------|
| [micrograd_ex](https://github.com/nshkrdotcom/micrograd_ex) | 1 | Micrograd, implemented in Elixir |
| [ml_musings](https://github.com/nshkrdotcom/ml_musings) |  | Foundations: A premium, hands-on educational curriculum exploring high-dimens... |

<a id="category-nshkr-security"></a>
### Security (4)

| Repository | Stars | Description |
|------------|------:|-------------|
| [GUARDRAIL](https://github.com/nshkrdotcom/GUARDRAIL) | 18 | GUARDRAIL - MCP Security - Gateway for Unified Access, Resource Delegation, a... |
| [ASKA](https://github.com/nshkrdotcom/ASKA) | 13 | Secure Computing in the AI age |
| [pqc-hqc](https://github.com/nshkrdotcom/pqc-hqc) | 6 | Post-quantum cryptographic implementation of HQC (Hamming Quasi-Cyclic) - a N... |
| [Shield](https://github.com/nshkrdotcom/Shield) |  | SHIELD: Secure Hierarchical Inter-agent Layer for Distributed Environments |

<a id="category-nshkr-schema"></a>
### Schema (3)

| Repository | Stars | Description |
|------------|------:|-------------|
| [exdantic](https://github.com/nshkrdotcom/exdantic) | 13 | A powerful, flexible schema definition and validation library for Elixir, ins... |
| [sinter](https://github.com/nshkrdotcom/sinter) | 11 | Unified schema definition, validation, and JSON generation for Elixir |
| [perimeter](https://github.com/nshkrdotcom/perimeter) | 7 | Advanced typing and type validation mechanism for Elixir - runtime type check... |

<a id="category-nshkr-testing"></a>
### Testing (4)

| Repository | Stars | Description |
|------------|------:|-------------|
| [supertester](https://github.com/nshkrdotcom/supertester) | 14 | A battle-hardened testing toolkit for building robust and resilient Elixir & ... |
| [playwriter](https://github.com/nshkrdotcom/playwriter) | 6 | Elixir WSL-to-Windows browser integration |
| [cluster_test](https://github.com/nshkrdotcom/cluster_test) | 5 | Distributed Erlang/Elixir test cluster management via Mix tasks |
| [sandbox](https://github.com/nshkrdotcom/sandbox) | 4 | Isolated OTP application management system for Elixir/Erlang |

<a id="category-nshkr-observability"></a>
### Observability (3)

| Repository | Stars | Description |
|------------|------:|-------------|
| [foundation](https://github.com/nshkrdotcom/foundation) | 13 | Elixir infrastructure and Observability Library |
| [AITrace](https://github.com/nshkrdotcom/AITrace) | 2 | The unified observability layer for the AI Control Plane |
| [telemetry_reporter](https://github.com/nshkrdotcom/telemetry_reporter) | 1 | Pachka-powered telemetry reporter for Elixir that batches client-side events,... |

<a id="category-nshkr-devtools"></a>
### Developer Tools (16)

| Repository | Stars | Description |
|------------|------:|-------------|
| [ex_dbg](https://github.com/nshkrdotcom/ex_dbg) | 10 | State-of-the-Art Introspection and Debugging System for Elixir/Phoenix Applic... |
| [dexterity](https://github.com/nshkrdotcom/dexterity) | 6 | Code Intelligence: Token-budgeted codebase context for Elixir agents. Solves ... |
| [ElixirScope](https://github.com/nshkrdotcom/ElixirScope) | 5 | AI-Powered Execution Cinema Debugger for Elixir/BEAM |
| [elixir_scope](https://github.com/nshkrdotcom/elixir_scope) | 5 | Revolutionary AST-based debugging and code intelligence platform for Elixir a... |
| [elixir_dashboard](https://github.com/nshkrdotcom/elixir_dashboard) | 3 | A Phoenix LiveView performance monitoring dashboard for tracking slow endpoin... |
| [prompt_runner_sdk](https://github.com/nshkrdotcom/prompt_runner_sdk) | 2 | Prompt Runner SDK - Elixir toolkit for orchestrating multi-step prompt execut... |
| [atlas_once](https://github.com/nshkrdotcom/atlas_once) | 1 | Atlas Once is a filesystem-first personal memory system and Unix-native conte... |
| [blitz](https://github.com/nshkrdotcom/blitz) | 1 | Small parallel command runner for Elixir and Mix workspaces that executes iso... |
| [elixir_agent_debug](https://github.com/nshkrdotcom/elixir_agent_debug) | 1 | Evidence-first Elixir & OTP debugging layer for Claude Code CLI and Codex CLI. |
| [elixir_tracer](https://github.com/nshkrdotcom/elixir_tracer) | 1 | Local-first observability for Elixir with New Relic API parity |
| [pristine](https://github.com/nshkrdotcom/pristine) | 1 | Shared runtime substrate and build-time bridge for first-party OpenAPI-based ... |
| [weld](https://github.com/nshkrdotcom/weld) | 1 | Deterministic Hex package projection for Elixir monorepos: audit app identiti... |
| [alkahest](https://github.com/nshkrdotcom/alkahest) |  | Reusable Temporal facade, typed workflow-control contracts, Elixir client, an... |
| [coolify_ex](https://github.com/nshkrdotcom/coolify_ex) |  | Generic Elixir tooling for triggering, monitoring, and verifying Coolify depl... |
| [portfolio_coder](https://github.com/nshkrdotcom/portfolio_coder) |  | Code Intelligence Platform: Repository analysis, semantic code search, depend... |
| [prismatic](https://github.com/nshkrdotcom/prismatic) |  | GraphQL-native Elixir SDK platform and monorepo for schema-driven providers, ... |

<a id="category-nshkr-otp"></a>
### OTP (5)

| Repository | Stars | Description |
|------------|------:|-------------|
| [superlearner](https://github.com/nshkrdotcom/superlearner) | 8 | OTP Supervisor Educational Platform |
| [apex](https://github.com/nshkrdotcom/apex) | 4 | Core Apex framework for OTP supervision and monitoring |
| [apex_ui](https://github.com/nshkrdotcom/apex_ui) | 4 | Web UI for Apex OTP supervision and monitoring tools |
| [arsenal](https://github.com/nshkrdotcom/arsenal) | 4 | Metaprogramming framework for automatic REST API generation from OTP operations |
| [arsenal_plug](https://github.com/nshkrdotcom/arsenal_plug) | 3 | Phoenix/Plug adapter for Apex Arsenal framework |

<a id="category-nshkr-data"></a>
### Data (2)

| Repository | Stars | Description |
|------------|------:|-------------|
| [duckdb_ex](https://github.com/nshkrdotcom/duckdb_ex) | 2 | DuckDB driver client in Elixir |
| [weaviate_ex](https://github.com/nshkrdotcom/weaviate_ex) | 2 | Modern Elixir client for Weaviate vector database with health checks and frie... |

<a id="category-nshkr-ui"></a>
### User Interface (1)

| Repository | Stars | Description |
|------------|------:|-------------|
| [switchyard](https://github.com/nshkrdotcom/switchyard) | 4 | Terminal-native operator workbench monorepo for multi-site terminal applicati... |

<a id="category-nshkr-utility"></a>
### Utilities (3)

| Repository | Stars | Description |
|------------|------:|-------------|
| [youtube_audio_dl](https://github.com/nshkrdotcom/youtube_audio_dl) | 3 | Download high-quality audio from YouTube as MP3 files using Elixir. Features ... |
| [multipart_ex](https://github.com/nshkrdotcom/multipart_ex) | 1 | Client-agnostic multipart/form-data builder for Elixir with explicit file inp... |
| [tools](https://github.com/nshkrdotcom/tools) | 1 | Utility library and helper functions for Elixir development - common patterns... |

<a id="category-nshkr-ecosystem"></a>
### Ecosystem (1)

| Repository | Stars | Description |
|------------|------:|-------------|
| [portfolio_registry](https://github.com/nshkrdotcom/portfolio_registry) |  | Canonical machine-readable registry for the complete nshkrdotcom portfolio, w... |

<a id="category-nshkr-misc"></a>
### Misc (1)

| Repository | Stars | Description |
|------------|------:|-------------|
| [prappy](https://github.com/nshkrdotcom/prappy) |  | Windows-native C++20 app and reproducible setup for SDL3, bgfx, Dear ImGui, C... |

<a id="category-nshkr-tools"></a>
### Tools (1)

| Repository | Stars | Description |
|------------|------:|-------------|
| [mix_workspace_ops](https://github.com/nshkrdotcom/mix_workspace_ops) |  | Operator-first Elixir workspace tooling for safe local sibling dependency ove... |

<a id="category-uncategorized"></a>
### Other (3)

| Repository | Stars | Description |
|------------|------:|-------------|
| [docs](https://github.com/nshkrdotcom/docs) | 2 | Docs |
| [nshkrdotcom](https://github.com/nshkrdotcom/nshkrdotcom) | 2 | Personal GitHub profile README with Elixir/AI projects and LLM reliability re... |
| [req_llm_zai](https://github.com/nshkrdotcom/req_llm_zai) |  | Z.AI provider for ReqLLM - OpenAI-compatible GLM models |


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

_Updated 2026-08-29_
