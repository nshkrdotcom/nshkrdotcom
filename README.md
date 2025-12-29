# nshkrdotcom

Building AI infrastructure on Elixir/BEAM. Research focus on LLM reliability, distributed systems, and functional programming.

**72+ public repos** | **271+ stars** | [@North-Shore-AI](https://github.com/North-Shore-AI)

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
| [flowstone](https://github.com/nshkrdotcom/flowstone) | - | Asset-first data orchestration - lineage tracking, partitions, scatter/gather, approval gates, Oban persistence |
| [flowstone_ai](https://github.com/nshkrdotcom/flowstone_ai) | - | AI extensions for FlowStone pipelines |
| [synapse](https://github.com/nshkrdotcom/synapse) | 29 | Headless multi-agent orchestration - signal bus, workflow engine, Postgres persistence, LLM gateway |

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

## AI SDKs & Infrastructure

### SDKs

| Project | Stars | Description |
|---------|-------|-------------|
| [gemini_ex](https://github.com/nshkrdotcom/gemini_ex) | 20 | Elixir adapter for Google Gemini LLM |
| [claude_agent_sdk](https://github.com/nshkrdotcom/claude_agent_sdk) | 9 | Elixir SDK for Claude Code - programmatic access |
| [codex_sdk](https://github.com/nshkrdotcom/codex_sdk) | 2 | OpenAI Codex SDK in Elixir |
| [jules_ex](https://github.com/nshkrdotcom/jules_ex) | 2 | Elixir client for Jules API |
| [mcp_client](https://github.com/nshkrdotcom/mcp_client) | - | Model Context Protocol client |

### Infrastructure

| Project | Stars | Description |
|---------|-------|-------------|
| [json_remedy](https://github.com/nshkrdotcom/json_remedy) | 21 | Multi-layered JSON repair library |
| [snakepit](https://github.com/nshkrdotcom/snakepit) | 10 | High-performance process pooler and session manager |
| [snakebridge](https://github.com/nshkrdotcom/snakebridge) | - | Configuration-driven Python library integration |
| [tinkex](https://github.com/North-Shore-AI/tinkex) | 1 | Elixir SDK for Tinker ML platform - LoRA training, sampling, tokenizer |

---

## AI Agents

| Project | Stars | Description |
|---------|-------|-------------|
| [ds_ex](https://github.com/nshkrdotcom/ds_ex) | 15 | DSPEx - Declarative Self-improving Elixir (BEAM-native DSPy) |
| [DSPex](https://github.com/nshkrdotcom/DSPex) | 10 | DSPy Orchestration in Elixir |
| [pipeline_ex](https://github.com/nshkrdotcom/pipeline_ex) | 7 | Claude Code + Gemini AI collaboration tools |
| [ALTAR](https://github.com/nshkrdotcom/ALTAR) | 5 | Agent & Tool Arbitration Protocol |
| [mabeam](https://github.com/nshkrdotcom/mabeam) | 5 | Multi-agent systems framework for BEAM |

---

## Schema & Validation

| Project | Stars | Description |
|---------|-------|-------------|
| [exdantic](https://github.com/nshkrdotcom/exdantic) | 10 | Powerful schema definition and validation library |
| [sinter](https://github.com/nshkrdotcom/sinter) | 10 | Unified schema definition, validation, JSON generation |
| [perimeter](https://github.com/nshkrdotcom/perimeter) | 7 | Advanced typing and type validation for Elixir |

---

## DevTools & Observability

| Project | Stars | Description |
|---------|-------|-------------|
| [foundation](https://github.com/nshkrdotcom/foundation) | 11 | Elixir infrastructure and observability library |
| [ex_dbg](https://github.com/nshkrdotcom/ex_dbg) | 10 | State-of-the-art introspection and debugging |
| [elixir_scope](https://github.com/nshkrdotcom/elixir_scope) | 5 | AST-based debugging and code intelligence |
| [ElixirScope](https://github.com/nshkrdotcom/ElixirScope) | 4 | AI-Powered Execution Cinema Debugger |
| [elixir_dashboard](https://github.com/nshkrdotcom/elixir_dashboard) | 1 | Phoenix LiveView performance monitoring |
| [elixir_tracer](https://github.com/nshkrdotcom/elixir_tracer) | 1 | Local-first observability with New Relic API |

---

## OTP & Testing

### OTP

| Project | Stars | Description |
|---------|-------|-------------|
| [superlearner](https://github.com/nshkrdotcom/superlearner) | 7 | OTP Supervisor Educational Platform |
| [apex](https://github.com/nshkrdotcom/apex) | 4 | Core framework for OTP supervision and monitoring |
| [apex_ui](https://github.com/nshkrdotcom/apex_ui) | 4 | Web UI for Apex OTP tools |
| [arsenal](https://github.com/nshkrdotcom/arsenal) | 4 | Metaprogramming for automatic REST API generation |

### Testing

| Project | Stars | Description |
|---------|-------|-------------|
| [cluster_test](https://github.com/nshkrdotcom/cluster_test) | 4 | Distributed Erlang/Elixir test cluster management |
| [sandbox](https://github.com/nshkrdotcom/sandbox) | 4 | Isolated OTP application management |
| [supertester](https://github.com/nshkrdotcom/supertester) | 4 | Battle-hardened testing toolkit |

---

## Data & Security

### Data

| Project | Stars | Description |
|---------|-------|-------------|
| [duckdb_ex](https://github.com/nshkrdotcom/duckdb_ex) | 1 | DuckDB driver client in Elixir |
| [weaviate_ex](https://github.com/nshkrdotcom/weaviate_ex) | 1 | Elixir client for Weaviate vector database |
| [ex_topology](https://github.com/North-Shore-AI/ex_topology) | - | Graph topology, TDA, and computational geometry |

### Security

| Project | Stars | Description |
|---------|-------|-------------|
| [GUARDRAIL](https://github.com/nshkrdotcom/GUARDRAIL) | 15 | MCP Security Gateway - Unified Access, Restrictions, Auditing, Identity |
| [ASKA](https://github.com/nshkrdotcom/ASKA) | 6 | Secure Computing in the AI age |
| [pqc-hqc](https://github.com/nshkrdotcom/pqc-hqc) | 5 | Post-quantum cryptographic implementation (HQC) |
| [Shield](https://github.com/nshkrdotcom/Shield) | - | Secure Hierarchical Inter-agent Layer for Distributed Environments |

---

## Research

| Project | Stars | Description |
|---------|-------|-------------|
| [ChronoLedger](https://github.com/nshkrdotcom/ChronoLedger) | 2 | Hardware-Secured Temporal Blockchain |
| [EADS](https://github.com/nshkrdotcom/EADS) | - | Evolutionary Autonomous Development System |
| [gepa_ex](https://github.com/nshkrdotcom/gepa_ex) | - | GEPA: LLM-driven evolutionary optimization |
| [AITrace](https://github.com/nshkrdotcom/AITrace) | 1 | Unified observability for AI Control Plane |
| [Citadel](https://github.com/nshkrdotcom/Citadel) | 1 | Command and control layer for AI enterprise |

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

_Updated 2025-12-28_
