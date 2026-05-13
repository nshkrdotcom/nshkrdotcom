# nshkrdotcom

**A BEAM-native control stack for governed AI side effects**

> A boundary architecture for semantic systems that need to read, reason, request work, and cause external effects while preserving authority, tenancy, replay, and operator control.

**98 repositories** | [@North-Shore-AI](https://github.com/North-Shore-AI) | [nshkr.com](https://nshkr.com)

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

The primary artifact is the execution record chain: requester, admitting policy, active installation revision, durable acceptance row, workflow or lower-runtime handoff, returned receipt, review or projection mutation, and replayable proof.

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

Useful autonomy needs inspection points strong enough to replace screenshots, prompt transcripts, and faith with durable records an operator can query after the run.

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

The multi-repo shape keeps those responsibilities from collapsing into one convenient agent runtime that quietly accumulates policy, durable workflow state, connector truth, product state, and raw execution mechanics in a single failure domain.

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

- **One owner per durable fact.** Execution records, decision records, lower receipts, source publications, memory fragments, and operator projections each need a clear writer. Shared reads are normal. Shared write authority turns into ambiguity under failure.
- **Semantic richness stops at the boundary.** LLMs can propose, summarize, repair, and classify. Durable mutation requires typed intent, authority, idempotency, and an owner that can replay or reject the operation.
- **Lower runtimes emit receipts, not meaning.** Execution Plane and provider-family packages own transport fidelity, session mechanics, placement, sandbox posture, and raw facts. Product meaning and review state live above them.
- **Read paths still need tenant proof.** A caller-supplied run id, receipt id, issue id, or workflow id is never enough. Tenant scope has to match at the public surface, substrate authorization layer, and lower-facts boundary.
- **Long-lived work is workflow state, not a background job convention.** Temporal owns active workflow lifecycle where durable orchestration matters. Postgres owns facts and projections. Local queues are delivery and cleanup tools only where explicitly retained.
- **Proof is a product surface.** Trace ids, causation, idempotency, source positions, schema hashes, release manifests, projection hashes, audit facts, and proof tokens are part of the contract operators consume.
- **Generate boundary scaffolding, keep meaning explicit.** DTOs, mappers, manifests, and bridge code can be generated when that reduces drift. Policy interpretation, pack semantics, and owner decisions remain explicit source.

---

## Repository Atlas

This inventory is generated from live GitHub metadata and grouped by `nshkr-*` topics so it stays current as the ecosystem grows.

| Category | Repositories |
|----------|--------------|
| [AI Agents](#category-nshkr-ai-agents) | 13 |
| [AI SDKs](#category-nshkr-ai-sdk) | 18 |
| [AI Infrastructure](#category-nshkr-ai-infra) | 20 |
| [Schema](#category-nshkr-schema) | 3 |
| [Developer Tools](#category-nshkr-devtools) | 14 |
| [User Interface](#category-nshkr-ui) | 1 |
| [OTP](#category-nshkr-otp) | 5 |
| [Testing](#category-nshkr-testing) | 4 |
| [Observability](#category-nshkr-observability) | 4 |
| [Data](#category-nshkr-data) | 2 |
| [Security](#category-nshkr-security) | 4 |
| [Research](#category-nshkr-research) | 4 |
| [Utilities](#category-nshkr-utility) | 3 |
| [Devools](#category-nshkr-devools) | 1 |
| [Other](#category-uncategorized) | 2 |


---

## Repositories By Category

<!-- AUTO_GENERATED_START -->
<a id="category-nshkr-ai-agents"></a>
### AI Agents (13)

| Repository | Description |
|------------|-------------|
| [ALTAR](https://github.com/nshkrdotcom/ALTAR) | The Agent & Tool Arbitration Protocol |
| [DSPex](https://github.com/nshkrdotcom/DSPex) | Declarative Self Improving Elixir - DSPy Orchestration in Elixir |
| [ds_ex](https://github.com/nshkrdotcom/ds_ex) | DSPEx - Declarative Self-improving Elixir | A BEAM-Native AI Program Optimiza... |
| [extravaganza](https://github.com/nshkrdotcom/extravaganza) | First proving-ground product app for the nshkr stack: a thin, sophisticated o... |
| [flowstone](https://github.com/nshkrdotcom/flowstone) | Asset-first data orchestration for Elixir/BEAM. Dagster-inspired with OTP fau... |
| [flowstone_ai](https://github.com/nshkrdotcom/flowstone_ai) | FlowStone integration for altar_ai - AI-powered data pipeline assets with cla... |
| [jido_hive](https://github.com/nshkrdotcom/jido_hive) | Phoenix coordination server and embeddable Elixir client for augmented human-... |
| [mabeam](https://github.com/nshkrdotcom/mabeam) | Multi-agent systems framework for the BEAM platform - build distributed auton... |
| [mezzanine](https://github.com/nshkrdotcom/mezzanine) | Neutral high-level reusable monorepo for the nshkr stack: Ash-driven business... |
| [pipeline_ex](https://github.com/nshkrdotcom/pipeline_ex) | Claude Code + Gemini AI collaboration orchestration tools |
| [stack_coder](https://github.com/nshkrdotcom/stack_coder) | An advanced Elixir-based AI coding agent focused on full-stack code generatio... |
| [synapse](https://github.com/nshkrdotcom/synapse) | Headless, declarative multi-agent orchestration framework with a domain-agnos... |
| [synapse_ai](https://github.com/nshkrdotcom/synapse_ai) | Synapse integration for altar_ai - SDK-backed LLM providers for multi-agent w... |

<a id="category-nshkr-ai-sdk"></a>
### AI SDKs (18)

| Repository | Description |
|------------|-------------|
| [agent_session_manager](https://github.com/nshkrdotcom/agent_session_manager) | Agent Session Manager - A comprehensive Elixir library for managing AI agent ... |
| [altar_ai](https://github.com/nshkrdotcom/altar_ai) | Protocol-based AI adapter foundation for Elixir - unified abstractions for ge... |
| [amp_sdk](https://github.com/nshkrdotcom/amp_sdk) | Elixir SDK for the Amp CLI — provides a comprehensive client library for inte... |
| [claude_agent_sdk](https://github.com/nshkrdotcom/claude_agent_sdk) | An Elixir SDK for Claude Code - provides programmatic access to Claude Code C... |
| [cli_subprocess_core](https://github.com/nshkrdotcom/cli_subprocess_core) | Foundational Elixir runtime library for deterministic CLI subprocess orchestr... |
| [codex_sdk](https://github.com/nshkrdotcom/codex_sdk) | OpenAI Codex SDK written in Elixir |
| [external_runtime_transport](https://github.com/nshkrdotcom/external_runtime_transport) | An Elixir-first external runtime transport foundation for AI SDK integrations... |
| [gemini_cli_sdk](https://github.com/nshkrdotcom/gemini_cli_sdk) | An Elixir SDK for the Gemini CLI — Build AI-powered applications with Google ... |
| [gemini_ex](https://github.com/nshkrdotcom/gemini_ex) | Elixir Interface / Adapter for Google Gemini LLM, for both AI Studio and Vert... |
| [github_ex](https://github.com/nshkrdotcom/github_ex) | Native Elixir SDK for the GitHub REST API — comprehensive, idiomatic client f... |
| [jules_ex](https://github.com/nshkrdotcom/jules_ex) | Elixir client SDK for the Jules API - orchestrate AI coding sessions |
| [linear_sdk](https://github.com/nshkrdotcom/linear_sdk) | Elixir SDK for Linear built on Prismatic, using a schema-driven GraphQL toolc... |
| [llama_cpp_sdk](https://github.com/nshkrdotcom/llama_cpp_sdk) | Barebones Elixir wrapper and integration surface for llama.cpp experiments, l... |
| [mcp_client](https://github.com/nshkrdotcom/mcp_client) | Full-featured Elixir client for the Model Context Protocol (MCP) with multi-t... |
| [notion_sdk](https://github.com/nshkrdotcom/notion_sdk) | Native Elixir SDK for the Notion API — comprehensive, idiomatic client for No... |
| [ollixir](https://github.com/nshkrdotcom/ollixir) | Ollixir provides a first-class Elixir client with feature parity to the offic... |
| [self_hosted_inference_core](https://github.com/nshkrdotcom/self_hosted_inference_core) | Core Elixir primitives for building reliable self-hosted inference clients, p... |
| [vllm](https://github.com/nshkrdotcom/vllm) | vLLM - High-throughput, memory-efficient LLM inference engine with PagedAtten... |

<a id="category-nshkr-ai-infra"></a>
### AI Infrastructure (20)

| Repository | Description |
|------------|-------------|
| [app_kit](https://github.com/nshkrdotcom/app_kit) | Shared app-facing surface monorepo for the nshkr platform core: composition, ... |
| [command](https://github.com/nshkrdotcom/command) | Core Elixir library for AI agent orchestration - unified workbench for runnin... |
| [execution_plane](https://github.com/nshkrdotcom/execution_plane) | Execution Plane is an Elixir/OTP runtime substrate for boundary-aware AI infr... |
| [gepa_buildout](https://github.com/nshkrdotcom/gepa_buildout) | Deterministic GEPA buildout examples and domain task fixtures for framework v... |
| [gepa_ex](https://github.com/nshkrdotcom/gepa_ex) | Elixir implementation of GEPA: LLM-driven evolutionary optimization using Par... |
| [gepa_framework](https://github.com/nshkrdotcom/gepa_framework) | Reusable GEPA optimizer framework for typed candidate generation, evaluation,... |
| [ground_plane](https://github.com/nshkrdotcom/ground_plane) | Shared lower infrastructure monorepo for the nshkr platform core: contracts, ... |
| [inference](https://github.com/nshkrdotcom/inference) | Reusable Elixir semantic inference contracts, adapters, trace metadata, and c... |
| [json_remedy](https://github.com/nshkrdotcom/json_remedy) | A practical, multi-layered JSON repair library for Elixir that intelligently ... |
| [outer_brain](https://github.com/nshkrdotcom/outer_brain) | Semantic runtime above Citadel for raw language intake, context assembly, mod... |
| [portfolio_core](https://github.com/nshkrdotcom/portfolio_core) | Hexagonal architecture core for Elixir RAG systems. Port specifications, mani... |
| [portfolio_index](https://github.com/nshkrdotcom/portfolio_index) | Production adapters and pipelines for PortfolioCore. Vector stores (pgvector,... |
| [portfolio_manager](https://github.com/nshkrdotcom/portfolio_manager) | AI-native personal project intelligence system - manage, track, and search ac... |
| [rag_ex](https://github.com/nshkrdotcom/rag_ex) | Elixir RAG library with multi-LLM routing (Gemini, Claude, OpenAI, Ollama), G... |
| [skill_ex](https://github.com/nshkrdotcom/skill_ex) | Claude Skill Aggregator |
| [slither](https://github.com/nshkrdotcom/slither) | Lightweight Elixir runtime for composing and executing Python-backed data pip... |
| [snakebridge](https://github.com/nshkrdotcom/snakebridge) | Compile-time Elixir code generator for Python library bindings. Declare depen... |
| [snakepit](https://github.com/nshkrdotcom/snakepit) | High-performance, generalized process pooler and session manager for external... |
| [stack_lab](https://github.com/nshkrdotcom/stack_lab) | Local distributed-development harness and proving ground for the full stack: ... |
| [trinity_framework](https://github.com/nshkrdotcom/trinity_framework) | Reusable TRINITY router and coordination framework for deterministic agent ro... |

<a id="category-nshkr-schema"></a>
### Schema (3)

| Repository | Description |
|------------|-------------|
| [exdantic](https://github.com/nshkrdotcom/exdantic) | A powerful, flexible schema definition and validation library for Elixir, ins... |
| [perimeter](https://github.com/nshkrdotcom/perimeter) | Advanced typing and type validation mechanism for Elixir - runtime type check... |
| [sinter](https://github.com/nshkrdotcom/sinter) | Unified schema definition, validation, and JSON generation for Elixir |

<a id="category-nshkr-devtools"></a>
### Developer Tools (14)

| Repository | Description |
|------------|-------------|
| [ElixirScope](https://github.com/nshkrdotcom/ElixirScope) | AI-Powered Execution Cinema Debugger for Elixir/BEAM |
| [atlas_once](https://github.com/nshkrdotcom/atlas_once) | Atlas Once is a filesystem-first personal memory system and Unix-native conte... |
| [blitz](https://github.com/nshkrdotcom/blitz) | Small parallel command runner for Elixir and Mix workspaces that executes iso... |
| [coolify_ex](https://github.com/nshkrdotcom/coolify_ex) | Generic Elixir tooling for triggering, monitoring, and verifying Coolify depl... |
| [dexterity](https://github.com/nshkrdotcom/dexterity) | Code Intelligence: Token-budgeted codebase context for Elixir agents. Solves ... |
| [elixir_dashboard](https://github.com/nshkrdotcom/elixir_dashboard) | A Phoenix LiveView performance monitoring dashboard for tracking slow endpoin... |
| [elixir_scope](https://github.com/nshkrdotcom/elixir_scope) | Revolutionary AST-based debugging and code intelligence platform for Elixir a... |
| [elixir_tracer](https://github.com/nshkrdotcom/elixir_tracer) | Local-first observability for Elixir with New Relic API parity |
| [ex_dbg](https://github.com/nshkrdotcom/ex_dbg) | State-of-the-Art Introspection and Debugging System for Elixir/Phoenix Applic... |
| [portfolio_coder](https://github.com/nshkrdotcom/portfolio_coder) | Code Intelligence Platform: Repository analysis, semantic code search, depend... |
| [prismatic](https://github.com/nshkrdotcom/prismatic) | GraphQL-native Elixir SDK platform and monorepo for schema-driven providers, ... |
| [pristine](https://github.com/nshkrdotcom/pristine) | Shared runtime substrate and build-time bridge for first-party OpenAPI-based ... |
| [prompt_runner_sdk](https://github.com/nshkrdotcom/prompt_runner_sdk) | Prompt Runner SDK - Elixir toolkit for orchestrating multi-step prompt execut... |
| [weld](https://github.com/nshkrdotcom/weld) | Deterministic Hex package projection for Elixir monorepos: audit app identiti... |

<a id="category-nshkr-ui"></a>
### User Interface (1)

| Repository | Description |
|------------|-------------|
| [switchyard](https://github.com/nshkrdotcom/switchyard) | Terminal-native operator workbench monorepo for multi-site terminal applicati... |

<a id="category-nshkr-otp"></a>
### OTP (5)

| Repository | Description |
|------------|-------------|
| [apex](https://github.com/nshkrdotcom/apex) | Core Apex framework for OTP supervision and monitoring |
| [apex_ui](https://github.com/nshkrdotcom/apex_ui) | Web UI for Apex OTP supervision and monitoring tools |
| [arsenal](https://github.com/nshkrdotcom/arsenal) | Metaprogramming framework for automatic REST API generation from OTP operations |
| [arsenal_plug](https://github.com/nshkrdotcom/arsenal_plug) | Phoenix/Plug adapter for Apex Arsenal framework |
| [superlearner](https://github.com/nshkrdotcom/superlearner) | OTP Supervisor Educational Platform |

<a id="category-nshkr-testing"></a>
### Testing (4)

| Repository | Description |
|------------|-------------|
| [cluster_test](https://github.com/nshkrdotcom/cluster_test) | Distributed Erlang/Elixir test cluster management via Mix tasks |
| [playwriter](https://github.com/nshkrdotcom/playwriter) | Elixir WSL-to-Windows browser integration |
| [sandbox](https://github.com/nshkrdotcom/sandbox) | Isolated OTP application management system for Elixir/Erlang |
| [supertester](https://github.com/nshkrdotcom/supertester) | A battle-hardened testing toolkit for building robust and resilient Elixir & ... |

<a id="category-nshkr-observability"></a>
### Observability (4)

| Repository | Description |
|------------|-------------|
| [AITrace](https://github.com/nshkrdotcom/AITrace) | The unified observability layer for the AI Control Plane |
| [citadel](https://github.com/nshkrdotcom/citadel) | The command and control layer for the AI-powered enterprise |
| [foundation](https://github.com/nshkrdotcom/foundation) | Elixir infrastructure and Observability Library |
| [telemetry_reporter](https://github.com/nshkrdotcom/telemetry_reporter) | Pachka-powered telemetry reporter for Elixir that batches client-side events,... |

<a id="category-nshkr-data"></a>
### Data (2)

| Repository | Description |
|------------|-------------|
| [duckdb_ex](https://github.com/nshkrdotcom/duckdb_ex) | DuckDB driver client in Elixir |
| [weaviate_ex](https://github.com/nshkrdotcom/weaviate_ex) | Modern Elixir client for Weaviate vector database with health checks and frie... |

<a id="category-nshkr-security"></a>
### Security (4)

| Repository | Description |
|------------|-------------|
| [ASKA](https://github.com/nshkrdotcom/ASKA) | Secure Computing in the AI age |
| [GUARDRAIL](https://github.com/nshkrdotcom/GUARDRAIL) | GUARDRAIL - MCP Security - Gateway for Unified Access, Resource Delegation, a... |
| [Shield](https://github.com/nshkrdotcom/Shield) | SHIELD: Secure Hierarchical Inter-agent Layer for Distributed Environments |
| [pqc-hqc](https://github.com/nshkrdotcom/pqc-hqc) | Post-quantum cryptographic implementation of HQC (Hamming Quasi-Cyclic) - a N... |

<a id="category-nshkr-research"></a>
### Research (4)

| Repository | Description |
|------------|-------------|
| [ChronoLedger](https://github.com/nshkrdotcom/ChronoLedger) | Hardware-Secured Temporal Blockchain |
| [EADS](https://github.com/nshkrdotcom/EADS) | Evolutionary Autonomous Development System |
| [anti_agents](https://github.com/nshkrdotcom/anti_agents) | Anti Agents - Inspired by Sakana AI's String Seed of Thought paper |
| [trinity_coordinator](https://github.com/nshkrdotcom/trinity_coordinator) | TRINITY in Elixir (An Evolved LLM Coordinator): route LLM calls via a small-m... |

<a id="category-nshkr-utility"></a>
### Utilities (3)

| Repository | Description |
|------------|-------------|
| [multipart_ex](https://github.com/nshkrdotcom/multipart_ex) | Client-agnostic multipart/form-data builder for Elixir with explicit file inp... |
| [tools](https://github.com/nshkrdotcom/tools) | Utility library and helper functions for Elixir development - common patterns... |
| [youtube_audio_dl](https://github.com/nshkrdotcom/youtube_audio_dl) | Download high-quality audio from YouTube as MP3 files using Elixir. Features ... |

<a id="category-nshkr-devools"></a>
### Devools (1)

| Repository | Description |
|------------|-------------|
| [alkahest](https://github.com/nshkrdotcom/alkahest) | Reusable Temporal facade, typed workflow-control contracts, Elixir client, an... |

<a id="category-uncategorized"></a>
### Other (2)

| Repository | Description |
|------------|-------------|
| [docs](https://github.com/nshkrdotcom/docs) | Docs |
| [nshkrdotcom](https://github.com/nshkrdotcom/nshkrdotcom) | Personal GitHub profile README with Elixir/AI projects and LLM reliability re... |


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

_Updated 2026-05-13_
