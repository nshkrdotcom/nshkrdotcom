# nshkrdotcom

**A governed execution platform for AI workloads on the BEAM**

> A layered platform where semantic reasoning, typed commands, and external execution share one Brain-to-Spine governance contract.

**90 repositories** | [@North-Shore-AI](https://github.com/North-Shore-AI) | [nshkr.com](https://nshkr.com)

---

## What You'll Find Here

This is the public home for the platform stack: a governed execution platform for AI-backed applications on the BEAM. The repositories here are not independent libraries. They are layers in a single architecture — each with a specific ownership boundary and a specific list of things it does not own.

Every semantic turn, typed command, and external execution call passes through a shared governance and durable-truth chain before touching an outside system. The northbound surface composes what products and host shells see. The Brain chain shapes and governs intent. The Spine owns durable intake, audit, and control-plane truth. The execution substrate is intentionally isolated — it handles transport, placement, and raw facts but carries no business meaning. Family kits and provider SDKs feed that substrate without owning the contracts above it.

The adjacent [@North-Shore-AI](https://github.com/North-Shore-AI) organization covers ML reliability, evaluation, and research. This profile is where the runtime, SDK, and governance layers are built in the open.

---

## Architecture

```text
Products and host shells
  jido_code | jido_hive | future apps
        ↓
Northbound surface
  app_kit                              ← default product-facing entry point
  optional neutral operational layer   ← reusable operational/review/assurance backing
        ↓
Brain chain  (semantic → typed → governed)
  outer_brain → citadel_domain_surface → citadel
        ↓
Spine  (durable intake, auth, control plane, review truth)
  jido_integration
        ↓
Execution substrate  (transport, placement, sandbox, raw facts — no durable meaning)
  execution_plane
        ├─ REST family:      pristine | prismatic | github_ex | notion_sdk | linear_sdk
        ├─ CLI / session:    cli_subprocess_core | agent_session_manager
        └─ Python / ML:      snakepit | snakebridge | slither | DSPex

Foundational substrate  (ids, fences, leases, checkpoints, generic persistence)
  ground_plane                         ← underlies the entire universal core

Operator and proof surfaces
  stack_lab (assembled proofs, fault injection)
  switchyard (workbench, shell, site mapping, operator UX)
```

---

## Start Here

| Use case | Start here | What the platform provides |
|----------|------------|---------------------------|
| Hosted semantic assistant | [app_kit](https://github.com/nshkrdotcom/app_kit), [outer_brain](https://github.com/nshkrdotcom/outer_brain), [citadel](https://github.com/nshkrdotcom/citadel) | Semantic turns shaped northbound, governed by the Brain chain, with durable acceptance and review held in the Spine |
| Reviewable connector automation | [jido_integration](https://github.com/agentjido/jido_integration), [github_ex](https://github.com/nshkrdotcom/github_ex), [notion_sdk](https://github.com/nshkrdotcom/notion_sdk), [linear_sdk](https://github.com/nshkrdotcom/linear_sdk) | Typed commands through citadel governance; connector semantics stay thin; durable review truth stays below the Brain |
| Multi-turn coding sessions | [cli_subprocess_core](https://github.com/nshkrdotcom/cli_subprocess_core), [agent_session_manager](https://github.com/nshkrdotcom/agent_session_manager), [codex_sdk](https://github.com/nshkrdotcom/codex_sdk), [claude_agent_sdk](https://github.com/nshkrdotcom/claude_agent_sdk) | Provider-session mechanics remain family-owned; platform retains durable invocation and policy truth |
| Multi-node or sandboxed execution | [execution_plane](https://github.com/nshkrdotcom/execution_plane), [snakepit](https://github.com/nshkrdotcom/snakepit), [snakebridge](https://github.com/nshkrdotcom/snakebridge), [DSPex](https://github.com/nshkrdotcom/DSPex) | Placement and sandboxing stay substrate-owned; governance and durable route meaning stay above |
| Durable workflows and asset pipelines | [flowstone](https://github.com/nshkrdotcom/flowstone), [flowstone_ai](https://github.com/nshkrdotcom/flowstone_ai), [synapse](https://github.com/nshkrdotcom/synapse), [synapse_ai](https://github.com/nshkrdotcom/synapse_ai) | Asset-first orchestration with lineage, approval gates, and audit trails that ride the same governance contract |
| Retrieval and code intelligence | [rag_ex](https://github.com/nshkrdotcom/rag_ex), [portfolio_core](https://github.com/nshkrdotcom/portfolio_core), [portfolio_index](https://github.com/nshkrdotcom/portfolio_index), [portfolio_coder](https://github.com/nshkrdotcom/portfolio_coder) | RAG, indexing, vector and graph backends, and project-level knowledge for code and content workloads |
| Operator interfaces and proof harnesses | [switchyard](https://github.com/nshkrdotcom/switchyard), [stack_lab](https://github.com/nshkrdotcom/stack_lab), [AITrace](https://github.com/nshkrdotcom/AITrace), [ElixirScope](https://github.com/nshkrdotcom/ElixirScope) | Workbench, shell, and site-mapping surfaces above the execution family; assembled proofs and fault injection across the seam |

---

## Engineering Principles

- **Every layer has a clear owner and a clear non-owner list**: each repo owns specific truth and explicitly does not own truth that belongs above or below it. Ownership boundaries are structural, not conventions.
- **Governance before execution**: semantic reasoning and typed commands pass through a shared governance chain before reaching the execution substrate. Nothing bypasses that contract.
- **The execution substrate is intentionally isolated**: transport, placement, sandbox mechanics, and raw execution facts live at the bottom. Durable business meaning does not.
- **Define stable data and contracts before wrapping in runtime**: pure compilers, reducers, validators, and projectors are proved before OTP processes claim ownership. Processes exist where recovery requires them, not as a default shape.
- **Use the native runtime surface when fidelity matters**: integrations target actual provider CLIs and runtimes instead of flattening everything into thin wrappers.
- **Operations, lineage, and failures are observable by design**: telemetry, audit trails, and debugging tools are first-class platform concerns, not cleanup work.

---

## Repository Atlas

This inventory is generated from live GitHub metadata and grouped by `nshkr-*` topics so it stays current as the ecosystem grows.

| Category | Repositories |
|----------|--------------|
| [AI Agents](#category-nshkr-ai-agents) | 12 |
| [AI SDKs](#category-nshkr-ai-sdk) | 18 |
| [AI Infrastructure](#category-nshkr-ai-infra) | 16 |
| [Schema](#category-nshkr-schema) | 3 |
| [Developer Tools](#category-nshkr-devtools) | 14 |
| [User Interface](#category-nshkr-ui) | 1 |
| [OTP](#category-nshkr-otp) | 5 |
| [Testing](#category-nshkr-testing) | 4 |
| [Observability](#category-nshkr-observability) | 4 |
| [Data](#category-nshkr-data) | 2 |
| [Security](#category-nshkr-security) | 4 |
| [Research](#category-nshkr-research) | 2 |
| [Utilities](#category-nshkr-utility) | 3 |
| [Devools](#category-nshkr-devools) | 1 |
| [Other](#category-uncategorized) | 1 |


---

## Repositories By Category

<!-- AUTO_GENERATED_START -->
<a id="category-nshkr-ai-agents"></a>
### AI Agents (12)

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
### AI Infrastructure (16)

| Repository | Description |
|------------|-------------|
| [app_kit](https://github.com/nshkrdotcom/app_kit) | Shared app-facing surface monorepo for the nshkr platform core: composition, ... |
| [command](https://github.com/nshkrdotcom/command) | Core Elixir library for AI agent orchestration - unified workbench for runnin... |
| [execution_plane](https://github.com/nshkrdotcom/execution_plane) | Execution Plane is an Elixir/OTP runtime substrate for boundary-aware AI infr... |
| [gepa_ex](https://github.com/nshkrdotcom/gepa_ex) | Elixir implementation of GEPA: LLM-driven evolutionary optimization using Par... |
| [ground_plane](https://github.com/nshkrdotcom/ground_plane) | Shared lower infrastructure monorepo for the nshkr platform core: contracts, ... |
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
### Research (2)

| Repository | Description |
|------------|-------------|
| [ChronoLedger](https://github.com/nshkrdotcom/ChronoLedger) | Hardware-Secured Temporal Blockchain |
| [EADS](https://github.com/nshkrdotcom/EADS) | Evolutionary Autonomous Development System |

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
### Other (1)

| Repository | Description |
|------------|-------------|
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

_Updated 2026-04-19_
