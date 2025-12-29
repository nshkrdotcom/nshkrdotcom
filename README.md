# nshkrdotcom

Building AI infrastructure on Elixir/BEAM. Research focus on LLM reliability, distributed systems, and functional programming.

**104 public repos** | **317 stars** | [@North-Shore-AI](https://github.com/North-Shore-AI)

> **[Interactive Architecture Explorer](https://nsai.space/architecture.html)** | **[Full Documentation](https://github.com/North-Shore-AI/.github/blob/main/docs/ARCHITECTURE.md)**

---

## Why Elixir/BEAM for AI?

The BEAM virtual machine provides unique advantages for AI infrastructure that no other runtime offers: true preemptive concurrency with lightweight processes, battle-tested fault tolerance through supervision trees, and hot code reloading for zero-downtime model updates. These properties make Elixir ideal for building reliable, observable ML systems that can gracefully handle partial failures across distributed deployments.

This ecosystem represents a comprehensive research platform for world-class ML reliability on BEAM. From hexagonal RAG architectures to dialectical reasoning frameworks, from asset-first data orchestration to multi-agent systems, each project contributes to a unified vision: production-grade AI infrastructure built on functional programming principles.

---

## The 7-Tiered Architecture

| Tier | Layer | Components |
|------|-------|------------|
| 1 | **Interface** | `crucible_ui`, `cns_ui`, `ingot` - Phoenix LiveView dashboards |
| 2 | **Gateway** | `nsai_gateway` - Auth, rate limiting, routing, circuit breaker |
| 3 | **Processing** | `forge`, `anvil`, `labeling_ir` - Data pipelines & HITL workflows |
| 4 | **Core Framework** | `crucible_framework`, `crucible_ir`, `crucible_bench` - Pipeline orchestration |
| 5 | **MLOps** | `crucible_train`, `crucible_model_registry`, `crucible_deployment` |
| 6 | **Reliability** | `crucible_ensemble`, `crucible_hedging`, `LlmGuard` |
| 7 | **Utilities** | `tiktoken_ex`, `embed_ex`, `nx_penalties`, `chz_ex` |

---

## Portfolio RAG Ecosystem

Hexagonal architecture for building flexible RAG systems with pluggable adapters.

| Project | Description |
|---------|-------------|
| [portfolio_core](https://github.com/nshkrdotcom/portfolio_core) | Hexagonal architecture core - 16 Port specifications, ETS-backed Registry, manifest engine |
| [portfolio_index](https://github.com/nshkrdotcom/portfolio_index) | Production adapters (Pgvector, Neo4j, Gemini), Broadway pipelines, RAG strategies (Hybrid, Self-RAG, GraphRAG) |
| [portfolio_manager](https://github.com/nshkrdotcom/portfolio_manager) | CLI workflows, multi-provider LLM routing, agent framework, pipeline orchestration |
| [portfolio_coder](https://github.com/nshkrdotcom/portfolio_coder) | Code intelligence platform - repository indexing, semantic code search, dependency graphs |

**Architecture:**
```
portfolio_coder    (Code Intelligence)
       |
portfolio_manager  (CLI, Router, Agent, Pipeline)
       |
portfolio_index    (Adapters: Pgvector, Neo4j, Gemini, Claude)
       |
portfolio_core     (Ports, Registry, Manifest, Telemetry)
```

---

## Orchestration Frameworks

| Project | Stars | Description |
|---------|-------|-------------|
| [flowstone](https://github.com/nshkrdotcom/flowstone) | 12 | Asset-first data orchestration - lineage tracking, partitions, scatter/gather, approval gates, Oban persistence |
| [flowstone_ai](https://github.com/nshkrdotcom/flowstone_ai) | 1 | AI extensions for FlowStone pipelines |
| [synapse](https://github.com/nshkrdotcom/synapse) | 31 | Headless multi-agent orchestration - signal bus, workflow engine, Postgres persistence, LLM gateway |

**FlowStone** treats assets (named data artifacts) as the primary abstraction for building reliable, auditable data pipelines. Features include partition-aware execution, scatter fan-out, signal gates for external webhooks, and comprehensive lineage queries.

**Synapse** provides domain-agnostic multi-agent orchestration with a declarative signal registry, configurable agent runtime, and workflow engine with step-level retry and compensation.

---

## Crucible Reliability Stack

Open research platform for LLM reliability.

### Core Framework

| Project | Description |
|---------|-------------|
| [crucible_framework](https://github.com/North-Shore-AI/crucible_framework) | ML experimentation orchestration, pipeline runner, composable stages |
| [crucible_ir](https://github.com/North-Shore-AI/crucible_ir) | Intermediate representation for ML pipelines (experiment, stage_def, reliability configs) |
| [crucible_bench](https://github.com/North-Shore-AI/crucible_bench) | Statistical testing - t-tests, ANOVA, effect sizes, power analysis, normality tests |

### MLOps

| Project | Description |
|---------|-------------|
| [crucible_train](https://github.com/North-Shore-AI/crucible_train) | Unified ML training (supervised, RL, DPO, distillation), multi-backend logging |
| [crucible_model_registry](https://github.com/North-Shore-AI/crucible_model_registry) | Model versioning, artifact storage (S3/HF/local), lineage graphs |
| [crucible_deployment](https://github.com/North-Shore-AI/crucible_deployment) | Model deployment (vLLM/Ollama/TGI/K8s), canary/blue-green rollouts |
| [crucible_feedback](https://github.com/North-Shore-AI/crucible_feedback) | Production feedback, drift detection, active learning, retraining triggers |

### Training Infrastructure (Kitchen Metaphor)

| Project | Description |
|---------|-------------|
| [crucible_kitchen](https://github.com/North-Shore-AI/crucible_kitchen) | Backend-agnostic ML training orchestration engine (the facility) |
| [tinkex_cookbook](https://github.com/North-Shore-AI/tinkex_cookbook) | Training recipes and configurations for Tinker platform (the instructions) |

### Reliability

| Project | Description |
|---------|-------------|
| [crucible_ensemble](https://github.com/North-Shore-AI/crucible_ensemble) | Multi-model voting (majority, weighted, ranked-choice, semantic similarity) |
| [crucible_hedging](https://github.com/North-Shore-AI/crucible_hedging) | Request hedging strategies (fixed, adaptive, percentile, workload-aware) |
| [crucible_trace](https://github.com/North-Shore-AI/crucible_trace) | Causal reasoning chain logging, Mermaid diagram export |
| [LlmGuard](https://github.com/North-Shore-AI/LlmGuard) | AI firewall - prompt injection, jailbreak, data leakage detection |

---

## CNS Dialectical Reasoning

Chiral Narrative Synthesis - framework for dialectical reasoning with structured argumentation.

| Project | Description |
|---------|-------------|
| [cns](https://github.com/North-Shore-AI/cns) | Core framework - Proposer, Antagonist, Synthesizer agents; SNO graphs; topology metrics |
| [cns_crucible](https://github.com/North-Shore-AI/cns_crucible) | CNS + Crucible integration, SciFact experiments, topology demos |
| [cns_ui](https://github.com/North-Shore-AI/cns_ui) | Phoenix LiveView UI - dialectical visualization, SNO explorer |
| [tinkerer](https://github.com/North-Shore-AI/tinkerer) | Research workspace for CNS experiments |

**Dialectical Flow:**
```
Proposer (thesis) -> Antagonist (antithesis) -> Synthesizer (synthesis)
     |                    |                         |
  Extract SNOs      Flag contradictions      Resolve with evidence
  (claims+evidence) (Beta-1 gaps, chirality) (critic-guided)
```

**Critic Ensemble:** Grounding, Logic, Novelty, Bias, Causal

**Key Concepts:**
- **SNO (Structured Narrative Objects)** - Claims with supporting evidence
- **Beta-1 Gaps** - Missing supporting evidence
- **Chirality** - Logical handedness of arguments

---

## Data Labeling (Metalworking Stack)

Domain-agnostic sample factory for human-in-the-loop workflows.

| Project | Description |
|---------|-------------|
| [forge](https://github.com/North-Shore-AI/forge) | Raw data processing factory - sample generation, transformation (shaping raw materials) |
| [anvil](https://github.com/North-Shore-AI/anvil) | Labeling queue and governance toolkit for HITL workflows (careful refinement) |
| [ingot](https://github.com/North-Shore-AI/ingot) | Phoenix LiveView labeling UI module (finished product) |
| [labeling_ir](https://github.com/North-Shore-AI/labeling_ir) | Shared IR structs for labeling stack |

**Metaphor:** Raw materials (Forge) are shaped on the Anvil through careful human refinement, producing polished Ingots ready for consumption.

---

<!-- AUTO_GENERATED_START -->
## AI SDKs

| Project | Stars | Description |
|---------|-------|-------------|
| [gemini_ex](https://github.com/nshkrdotcom/gemini_ex) | 21 | Elixir Interface / Adapter for Google Gemini LLM, for bot... |
| [claude_agent_sdk](https://github.com/nshkrdotcom/claude_agent_sdk) | 12 | An Elixir SDK for Claude Code - provides programmatic acc... |
| [codex_sdk](https://github.com/nshkrdotcom/codex_sdk) | 2 | OpenAI Codex SDK written in Elixir |
| [jules_ex](https://github.com/nshkrdotcom/jules_ex) | 2 | Elixir client SDK for the Jules API - orchestrate AI codi... |
| [altar_ai](https://github.com/nshkrdotcom/altar_ai) | 1 | Protocol-based AI adapter foundation for Elixir - unified... |
| [mcp_client](https://github.com/nshkrdotcom/mcp_client) | 0 | Full-featured Elixir client for the Model Context Protoco... |

## AI Infra

| Project | Stars | Description |
|---------|-------|-------------|
| [json_remedy](https://github.com/nshkrdotcom/json_remedy) | 23 | A practical, multi-layered JSON repair library for Elixir... |
| [snakepit](https://github.com/nshkrdotcom/snakepit) | 10 | High-performance, generalized process pooler and session ... |
| [tinkex](https://github.com/North-Shore-AI/tinkex) | 2 | Elixir SDK for the Tinker ML platform—LoRA training, samp... |
| [gepa_ex](https://github.com/nshkrdotcom/gepa_ex) | 1 | Elixir implementation of GEPA: LLM-driven evolutionary op... |
| [nsai_gateway](https://github.com/North-Shore-AI/nsai_gateway) | 1 | Unified API gateway for the NSAI ecosystem—authentication... |
| [nsai_registry](https://github.com/North-Shore-AI/nsai_registry) | 1 | Service discovery and registry for the NSAI ecosystem—dis... |
| [pilot](https://github.com/North-Shore-AI/pilot) | 1 | Interactive CLI and REPL for the NSAI ecosystem—unified i... |
| [rag_ex](https://github.com/nshkrdotcom/rag_ex) | 1 | Elixir RAG library with multi-LLM routing (Gemini, Claude... |
| [skill_ex](https://github.com/nshkrdotcom/skill_ex) | 1 | Claude Skill Aggregator |
| [snakebridge](https://github.com/nshkrdotcom/snakebridge) | 1 | Compile-time Elixir code generator for Python library bin... |
| [tiktoken_ex](https://github.com/North-Shore-AI/tiktoken_ex) | 1 | Pure Elixir TikToken-style byte-level BPE tokenizer (Kimi... |
| [tinkerer](https://github.com/North-Shore-AI/tinkerer) | 1 | Chiral Narrative Synthesis workspace for Thinker/Tinker L... |
| [work](https://github.com/North-Shore-AI/work) | 1 | NSAI.Work - Unified job scheduler for North-Shore-AI plat... |
| [hf_hub_ex](https://github.com/North-Shore-AI/hf_hub_ex) | 0 | Elixir client for HuggingFace Hub—dataset/model metadata,... |
| [portfolio_core](https://github.com/nshkrdotcom/portfolio_core) | 0 | Hexagonal architecture core for Elixir RAG systems. Port ... |
| [portfolio_index](https://github.com/nshkrdotcom/portfolio_index) | 0 | Production adapters and pipelines for PortfolioCore. Vect... |
| [portfolio_manager](https://github.com/nshkrdotcom/portfolio_manager) | 0 | AI-native personal project intelligence system - manage, ... |
| [tinkex_cookbook](https://github.com/North-Shore-AI/tinkex_cookbook) | 0 | Elixir port of tinker-cookbook: training and evaluation r... |

## AI Agents

| Project | Stars | Description |
|---------|-------|-------------|
| [synapse](https://github.com/nshkrdotcom/synapse) | 31 | Headless, declarative multi-agent orchestration framework... |
| [ds_ex](https://github.com/nshkrdotcom/ds_ex) | 15 | DSPEx - Declarative Self-improving Elixir | A BEAM-Native... |
| [flowstone](https://github.com/nshkrdotcom/flowstone) | 12 | Asset-first data orchestration for Elixir/BEAM. Dagster-i... |
| [DSPex](https://github.com/nshkrdotcom/DSPex) | 10 | Declarative Self Improving Elixir - DSPy Orchestration in... |
| [pipeline_ex](https://github.com/nshkrdotcom/pipeline_ex) | 7 | Claude Code + Gemini AI collaboration orchestration tools |
| [ALTAR](https://github.com/nshkrdotcom/ALTAR) | 6 | The Agent {{AUTO_GENERATED_CONTENT}} Tool Arbitration Protocol |
| [mabeam](https://github.com/nshkrdotcom/mabeam) | 5 | Multi-agent systems framework for the BEAM platform - bui... |
| [flowstone_ai](https://github.com/nshkrdotcom/flowstone_ai) | 1 | FlowStone integration for altar_ai - AI-powered data pipe... |
| [synapse_ai](https://github.com/nshkrdotcom/synapse_ai) | 1 | Synapse integration for altar_ai - SDK-backed LLM provide... |

## Schema

| Project | Stars | Description |
|---------|-------|-------------|
| [exdantic](https://github.com/nshkrdotcom/exdantic) | 10 | A powerful, flexible schema definition and validation lib... |
| [sinter](https://github.com/nshkrdotcom/sinter) | 10 | Unified schema definition, validation, and JSON generatio... |
| [perimeter](https://github.com/nshkrdotcom/perimeter) | 7 | Advanced typing and type validation mechanism for Elixir ... |

## DevTools

| Project | Stars | Description |
|---------|-------|-------------|
| [ex_dbg](https://github.com/nshkrdotcom/ex_dbg) | 10 | State-of-the-Art Introspection and Debugging System for E... |
| [elixir_scope](https://github.com/nshkrdotcom/elixir_scope) | 5 | Revolutionary AST-based debugging and code intelligence p... |
| [ElixirScope](https://github.com/nshkrdotcom/ElixirScope) | 4 | AI-Powered Execution Cinema Debugger for Elixir/BEAM |
| [elixir_dashboard](https://github.com/nshkrdotcom/elixir_dashboard) | 1 | A Phoenix LiveView performance monitoring dashboard for t... |
| [elixir_tracer](https://github.com/nshkrdotcom/elixir_tracer) | 1 | Local-first observability for Elixir with New Relic API p... |
| [portfolio_coder](https://github.com/nshkrdotcom/portfolio_coder) | 0 | Code Intelligence Platform: Repository analysis, semantic... |
| [pristine](https://github.com/nshkrdotcom/pristine) | 0 | Manifest-driven hexagonal core for generating Elixir SDKs... |

## OTP

| Project | Stars | Description |
|---------|-------|-------------|
| [superlearner](https://github.com/nshkrdotcom/superlearner) | 8 | OTP Supervisor Educational Platform |
| [apex](https://github.com/nshkrdotcom/apex) | 4 | Core Apex framework for OTP supervision and monitoring |
| [apex_ui](https://github.com/nshkrdotcom/apex_ui) | 4 | Web UI for Apex OTP supervision and monitoring tools |
| [arsenal](https://github.com/nshkrdotcom/arsenal) | 4 | Metaprogramming framework for automatic REST API generati... |
| [arsenal_plug](https://github.com/nshkrdotcom/arsenal_plug) | 3 | Phoenix/Plug adapter for Apex Arsenal framework |

## Testing

| Project | Stars | Description |
|---------|-------|-------------|
| [playwriter](https://github.com/nshkrdotcom/playwriter) | 6 | Elixir WSL-to-Windows browser integration |
| [cluster_test](https://github.com/nshkrdotcom/cluster_test) | 4 | Distributed Erlang/Elixir test cluster management via Mix... |
| [sandbox](https://github.com/nshkrdotcom/sandbox) | 4 | Isolated OTP application management system for Elixir/Erlang |
| [supertester](https://github.com/nshkrdotcom/supertester) | 4 | A battle-hardened testing toolkit for building robust and... |

## Observability

| Project | Stars | Description |
|---------|-------|-------------|
| [foundation](https://github.com/nshkrdotcom/foundation) | 11 | Elixir infrastructure and Observability Library |
| [AITrace](https://github.com/nshkrdotcom/AITrace) | 1 | The unified observability layer for the AI Control Plane |
| [Citadel](https://github.com/nshkrdotcom/Citadel) | 1 | The command and control layer for the AI-powered enterprise |
| [telemetry_reporter](https://github.com/nshkrdotcom/telemetry_reporter) | 0 | Pachka-powered telemetry reporter for Elixir that batches... |

## Data

| Project | Stars | Description |
|---------|-------|-------------|
| [duckdb_ex](https://github.com/nshkrdotcom/duckdb_ex) | 1 | DuckDB driver client in Elixir |
| [embed_ex](https://github.com/North-Shore-AI/embed_ex) | 1 | Vector embeddings service for Elixir—multi-provider suppo... |
| [weaviate_ex](https://github.com/nshkrdotcom/weaviate_ex) | 1 | Modern Elixir client for Weaviate vector database with he... |
| [ex_topology](https://github.com/North-Shore-AI/ex_topology) | 0 | Pure Elixir library for graph topology, TDA, and computat... |
| [nx_penalties](https://github.com/North-Shore-AI/nx_penalties) | 0 | Composable regularization penalties for Elixir Nx. L1/L2/... |

## Security

| Project | Stars | Description |
|---------|-------|-------------|
| [GUARDRAIL](https://github.com/nshkrdotcom/GUARDRAIL) | 16 | GUARDRAIL - MCP Security - Gateway for Unified Access, Re... |
| [ASKA](https://github.com/nshkrdotcom/ASKA) | 7 | Secure Computing in the AI age |
| [pqc-hqc](https://github.com/nshkrdotcom/pqc-hqc) | 5 | Post-quantum cryptographic implementation of HQC (Hamming... |
| [Shield](https://github.com/nshkrdotcom/Shield) | 0 | SHIELD: Secure Hierarchical Inter-agent Layer for Distrib... |

## Research

| Project | Stars | Description |
|---------|-------|-------------|
| [ChronoLedger](https://github.com/nshkrdotcom/ChronoLedger) | 2 | Hardware-Secured Temporal Blockchain |
| [cns](https://github.com/North-Shore-AI/cns) | 1 | Chiral Narrative Synthesis - Dialectical reasoning framew... |
| [EADS](https://github.com/nshkrdotcom/EADS) | 0 | Evolutionary Autonomous Development System |
| [cns_ui](https://github.com/North-Shore-AI/cns_ui) | 0 | Phoenix LiveView interface for CNS dialectical reasoning ... |

## Utilities

| Project | Stars | Description |
|---------|-------|-------------|
| [tools](https://github.com/nshkrdotcom/tools) | 1 | Utility library and helper functions for Elixir developme... |
| [youtube_audio_dl](https://github.com/nshkrdotcom/youtube_audio_dl) | 1 | Download high-quality audio from YouTube as MP3 files usi... |
| [chz_ex](https://github.com/North-Shore-AI/chz_ex) | 0 | Elixir port of OpenAI's chz library - a powerful configur... |
| [multipart_ex](https://github.com/nshkrdotcom/multipart_ex) | 0 | Client-agnostic multipart/form-data builder for Elixir wi... |

## Other

| Project | Stars | Description |
|---------|-------|-------------|
| [nshkrdotcom](https://github.com/nshkrdotcom/nshkrdotcom) | 0 | Personal GitHub profile README with Elixir/AI projects an... |


<!-- AUTO_GENERATED_END -->

---

## Links

**GitHub Organizations:**
- [@North-Shore-AI](https://github.com/North-Shore-AI) - Research organization
- [@nshkrdotcom](https://github.com/nshkrdotcom) - Personal projects

**Websites:**
- [nsai.online](https://nsai.online) - Main site
- [nsai.store](https://nsai.store) - Store
- [nsai.space](https://nsai.space) - Space
- [nshkr.com](https://nshkr.com) - Personal

---

_Updated 2025-12-29_
