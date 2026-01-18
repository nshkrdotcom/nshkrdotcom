# nshkrdotcom

**Building AI systems on Elixir/BEAM**

> Multi-agent orchestration, LLM integrations, and developer tooling for the BEAM ecosystem.

**62 repositories** | [@North-Shore-AI](https://github.com/North-Shore-AI) | [nshkr.com](https://nshkr.com)

---

## Focus Areas

### AI Systems and Agents

Building production-grade AI systems that leverage BEAM's unique concurrency model. From multi-agent orchestration frameworks to SDK integrations for major LLM providers, these projects enable reliable AI application development in Elixir.

**Key Projects:**
- **Synapse**: Headless multi-agent orchestration with declarative signal registry, workflow engine, and step-level retry/compensation
- **FlowStone**: Asset-first data orchestration with lineage tracking, partitions, scatter/gather, and approval gates
- **DSPEx**: Declarative self-improving Elixir, a BEAM-native port of DSPy concepts

### LLM Provider Integrations

Native Elixir clients for major AI providers, designed for reliability and observability:
- **gemini_ex**: Google Gemini LLM adapter
- **claude_agent_sdk**: Claude Code programmatic access
- **codex_sdk**: OpenAI Codex integration

### Developer Experience

Tools for building and debugging Elixir applications:
- **ex_dbg**: State-of-the-art introspection and debugging
- **ElixirScope**: AI-powered execution cinema debugger
- **foundation**: Infrastructure and observability library

---

## Why Elixir/BEAM for AI?

The BEAM virtual machine provides unique advantages for AI infrastructure:

| Capability | Benefit |
|------------|---------|
| **Preemptive Concurrency** | Thousands of lightweight processes handle concurrent LLM calls without blocking |
| **Supervision Trees** | Automatic failure recovery ensures resilient AI pipelines |
| **Hot Code Reloading** | Zero-downtime model and configuration updates |
| **Distributed Computing** | Native clustering for scaling AI workloads across nodes |
| **Pattern Matching** | Elegant handling of structured LLM responses |

---

## Repositories

<!-- AUTO_GENERATED_START -->
### AI Agents

| Repository | Description |
|------------|-------------|
| [ALTAR](https://github.com/nshkrdotcom/ALTAR) | The Agent & Tool Arbitration Protocol |
| [DSPex](https://github.com/nshkrdotcom/DSPex) | Declarative Self Improving Elixir - DSPy Orchestration in Elixir |
| [ds_ex](https://github.com/nshkrdotcom/ds_ex) | DSPEx - Declarative Self-improving Elixir | A BEAM-Native AI Program Optimiza... |
| [flowstone](https://github.com/nshkrdotcom/flowstone) | Asset-first data orchestration for Elixir/BEAM. Dagster-inspired with OTP fau... |
| [flowstone_ai](https://github.com/nshkrdotcom/flowstone_ai) | FlowStone integration for altar_ai - AI-powered data pipeline assets with cla... |
| [mabeam](https://github.com/nshkrdotcom/mabeam) | Multi-agent systems framework for the BEAM platform - build distributed auton... |
| [pipeline_ex](https://github.com/nshkrdotcom/pipeline_ex) | Claude Code + Gemini AI collaboration orchestration tools |
| [synapse](https://github.com/nshkrdotcom/synapse) | Headless, declarative multi-agent orchestration framework with a domain-agnos... |
| [synapse_ai](https://github.com/nshkrdotcom/synapse_ai) | Synapse integration for altar_ai - SDK-backed LLM providers for multi-agent w... |

### AI SDKs

| Repository | Description |
|------------|-------------|
| [altar_ai](https://github.com/nshkrdotcom/altar_ai) | Protocol-based AI adapter foundation for Elixir - unified abstractions for ge... |
| [claude_agent_sdk](https://github.com/nshkrdotcom/claude_agent_sdk) | An Elixir SDK for Claude Code - provides programmatic access to Claude Code C... |
| [codex_sdk](https://github.com/nshkrdotcom/codex_sdk) | OpenAI Codex SDK written in Elixir |
| [gemini_ex](https://github.com/nshkrdotcom/gemini_ex) | Elixir Interface / Adapter for Google Gemini LLM, for both AI Studio and Vert... |
| [jules_ex](https://github.com/nshkrdotcom/jules_ex) | Elixir client SDK for the Jules API - orchestrate AI coding sessions |
| [mcp_client](https://github.com/nshkrdotcom/mcp_client) | Full-featured Elixir client for the Model Context Protocol (MCP) with multi-t... |
| [ollixir](https://github.com/nshkrdotcom/ollixir) | Ollixir provides a first-class Elixir client with feature parity to the offic... |
| [vllm](https://github.com/nshkrdotcom/vllm) | vLLM - High-throughput, memory-efficient LLM inference engine with PagedAtten... |

### AI Infrastructure

| Repository | Description |
|------------|-------------|
| [command](https://github.com/nshkrdotcom/command) | Core Elixir library for AI agent orchestration - unified workbench for runnin... |
| [gepa_ex](https://github.com/nshkrdotcom/gepa_ex) | Elixir implementation of GEPA: LLM-driven evolutionary optimization using Par... |
| [json_remedy](https://github.com/nshkrdotcom/json_remedy) | A practical, multi-layered JSON repair library for Elixir that intelligently ... |
| [portfolio_core](https://github.com/nshkrdotcom/portfolio_core) | Hexagonal architecture core for Elixir RAG systems. Port specifications, mani... |
| [portfolio_index](https://github.com/nshkrdotcom/portfolio_index) | Production adapters and pipelines for PortfolioCore. Vector stores (pgvector,... |
| [portfolio_manager](https://github.com/nshkrdotcom/portfolio_manager) | AI-native personal project intelligence system - manage, track, and search ac... |
| [rag_ex](https://github.com/nshkrdotcom/rag_ex) | Elixir RAG library with multi-LLM routing (Gemini, Claude, OpenAI, Ollama), G... |
| [skill_ex](https://github.com/nshkrdotcom/skill_ex) | Claude Skill Aggregator |
| [snakebridge](https://github.com/nshkrdotcom/snakebridge) | Compile-time Elixir code generator for Python library bindings. Declare depen... |
| [snakepit](https://github.com/nshkrdotcom/snakepit) | High-performance, generalized process pooler and session manager for external... |

### Schema

| Repository | Description |
|------------|-------------|
| [exdantic](https://github.com/nshkrdotcom/exdantic) | A powerful, flexible schema definition and validation library for Elixir, ins... |
| [perimeter](https://github.com/nshkrdotcom/perimeter) | Advanced typing and type validation mechanism for Elixir - runtime type check... |
| [sinter](https://github.com/nshkrdotcom/sinter) | Unified schema definition, validation, and JSON generation for Elixir |

### Developer Tools

| Repository | Description |
|------------|-------------|
| [ElixirScope](https://github.com/nshkrdotcom/ElixirScope) | AI-Powered Execution Cinema Debugger for Elixir/BEAM |
| [elixir_dashboard](https://github.com/nshkrdotcom/elixir_dashboard) | A Phoenix LiveView performance monitoring dashboard for tracking slow endpoin... |
| [elixir_scope](https://github.com/nshkrdotcom/elixir_scope) | Revolutionary AST-based debugging and code intelligence platform for Elixir a... |
| [elixir_tracer](https://github.com/nshkrdotcom/elixir_tracer) | Local-first observability for Elixir with New Relic API parity |
| [ex_dbg](https://github.com/nshkrdotcom/ex_dbg) | State-of-the-Art Introspection and Debugging System for Elixir/Phoenix Applic... |
| [portfolio_coder](https://github.com/nshkrdotcom/portfolio_coder) | Code Intelligence Platform: Repository analysis, semantic code search, depend... |
| [pristine](https://github.com/nshkrdotcom/pristine) | Manifest-driven hexagonal core for generating Elixir SDKs and services with p... |

### OTP

| Repository | Description |
|------------|-------------|
| [apex](https://github.com/nshkrdotcom/apex) | Core Apex framework for OTP supervision and monitoring |
| [apex_ui](https://github.com/nshkrdotcom/apex_ui) | Web UI for Apex OTP supervision and monitoring tools |
| [arsenal](https://github.com/nshkrdotcom/arsenal) | Metaprogramming framework for automatic REST API generation from OTP operations |
| [arsenal_plug](https://github.com/nshkrdotcom/arsenal_plug) | Phoenix/Plug adapter for Apex Arsenal framework |
| [superlearner](https://github.com/nshkrdotcom/superlearner) | OTP Supervisor Educational Platform |

### Testing

| Repository | Description |
|------------|-------------|
| [cluster_test](https://github.com/nshkrdotcom/cluster_test) | Distributed Erlang/Elixir test cluster management via Mix tasks |
| [playwriter](https://github.com/nshkrdotcom/playwriter) | Elixir WSL-to-Windows browser integration |
| [sandbox](https://github.com/nshkrdotcom/sandbox) | Isolated OTP application management system for Elixir/Erlang |
| [supertester](https://github.com/nshkrdotcom/supertester) | A battle-hardened testing toolkit for building robust and resilient Elixir & ... |

### Observability

| Repository | Description |
|------------|-------------|
| [AITrace](https://github.com/nshkrdotcom/AITrace) | The unified observability layer for the AI Control Plane |
| [Citadel](https://github.com/nshkrdotcom/Citadel) | The command and control layer for the AI-powered enterprise |
| [foundation](https://github.com/nshkrdotcom/foundation) | Elixir infrastructure and Observability Library |
| [telemetry_reporter](https://github.com/nshkrdotcom/telemetry_reporter) | Pachka-powered telemetry reporter for Elixir that batches client-side events,... |

### Data

| Repository | Description |
|------------|-------------|
| [duckdb_ex](https://github.com/nshkrdotcom/duckdb_ex) | DuckDB driver client in Elixir |
| [weaviate_ex](https://github.com/nshkrdotcom/weaviate_ex) | Modern Elixir client for Weaviate vector database with health checks and frie... |

### Security

| Repository | Description |
|------------|-------------|
| [ASKA](https://github.com/nshkrdotcom/ASKA) | Secure Computing in the AI age |
| [GUARDRAIL](https://github.com/nshkrdotcom/GUARDRAIL) | GUARDRAIL - MCP Security - Gateway for Unified Access, Resource Delegation, a... |
| [Shield](https://github.com/nshkrdotcom/Shield) | SHIELD: Secure Hierarchical Inter-agent Layer for Distributed Environments |
| [pqc-hqc](https://github.com/nshkrdotcom/pqc-hqc) | Post-quantum cryptographic implementation of HQC (Hamming Quasi-Cyclic) - a N... |

### Research

| Repository | Description |
|------------|-------------|
| [ChronoLedger](https://github.com/nshkrdotcom/ChronoLedger) | Hardware-Secured Temporal Blockchain |
| [EADS](https://github.com/nshkrdotcom/EADS) | Evolutionary Autonomous Development System |

### Utilities

| Repository | Description |
|------------|-------------|
| [multipart_ex](https://github.com/nshkrdotcom/multipart_ex) | Client-agnostic multipart/form-data builder for Elixir with explicit file inp... |
| [tools](https://github.com/nshkrdotcom/tools) | Utility library and helper functions for Elixir development - common patterns... |
| [youtube_audio_dl](https://github.com/nshkrdotcom/youtube_audio_dl) | Download high-quality audio from YouTube as MP3 files using Elixir. Features ... |

### Other

| Repository | Description |
|------------|-------------|
| [nshkrdotcom](https://github.com/nshkrdotcom/nshkrdotcom) | Personal GitHub profile README with Elixir/AI projects and LLM reliability re... |


<!-- AUTO_GENERATED_END -->

---

## Related

| Resource | Description |
|----------|-------------|
| [@North-Shore-AI](https://github.com/North-Shore-AI) | ML reliability infrastructure (Crucible, CNS, Ingot stacks) |
| [nsai.online](https://nsai.online) | Organization site |
| [nsai.space](https://nsai.space) | Research and experiments |
| [nsai.store](https://nsai.store) | Package catalog |

---

_Updated 2026-01-18_
