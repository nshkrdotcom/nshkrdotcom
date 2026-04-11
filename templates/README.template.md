# nshkrdotcom

**Open-source AI and ML infrastructure for Elixir/BEAM**

> Execution substrates, provider SDKs, orchestration systems, tracing, and operator tooling for reliable AI workloads on the BEAM.

**{{REPO_COUNT}} repositories** | [@North-Shore-AI](https://github.com/North-Shore-AI) | [nshkr.com](https://nshkr.com)

---

## What This Profile Represents

This profile is a layered engineering portfolio for building real AI systems in Elixir. The repositories here are meant to compose: runtime and transport boundaries, provider-facing SDKs, agent and asset orchestration engines, retrieval and project-memory infrastructure, and the tracing, debugging, and operator surfaces needed to run those systems in production.

The emphasis is open-source infrastructure rather than application demos. Most of the work is packaged as reusable libraries and systems with OTP supervision, typed contracts, explicit runtime seams, and telemetry so model calls, workflows, tools, and data pipelines can be inspected, resumed, retried, audited, and extended instead of disappearing into one-off glue code.

The adjacent [@North-Shore-AI](https://github.com/North-Shore-AI) organization extends the same mission into ML reliability, experimentation, labeling, and research systems such as Crucible, Ingot, and CNS. This profile is where much of the runtime substrate, orchestration layer, SDK integration work, and developer/operator tooling is built in the open.

---

## Architecture View

```text
Provider CLIs / APIs
Codex | Claude | Gemini | Amp | GitHub | Linear | Notion | MCP | Ollama | vLLM
        ↓
Execution + session substrate
execution_plane | external_runtime_transport | cli_subprocess_core | agent_session_manager
        ├─ Python / ML interop: snakepit | snakebridge | slither
        ↓
Orchestration + workflow engines
synapse | flowstone | altar_ai | DSPex | command | synapse_ai | flowstone_ai
        ↓
Memory + retrieval + project intelligence
rag_ex | portfolio_core | portfolio_index | portfolio_manager | portfolio_coder
        ↓
Control, tracing, debugging, and operator UX
foundation | AITrace | ElixirScope | ex_dbg | switchyard
```

---

## Start Here

| If you want to evaluate... | Start here | Why it matters |
|---------------------------|------------|----------------|
| Multi-agent orchestration | [synapse](https://github.com/nshkrdotcom/synapse), [synapse_ai](https://github.com/nshkrdotcom/synapse_ai) | Typed signal routing, declarative workflows, persistent audit trails, and provider-aware execution |
| Durable asset and data pipelines | [flowstone](https://github.com/nshkrdotcom/flowstone), [flowstone_ai](https://github.com/nshkrdotcom/flowstone_ai) | Asset-first orchestration with lineage, partitions, approval gates, and restart-safe BEAM execution |
| Provider and session infrastructure | [cli_subprocess_core](https://github.com/nshkrdotcom/cli_subprocess_core), [agent_session_manager](https://github.com/nshkrdotcom/agent_session_manager), [altar_ai](https://github.com/nshkrdotcom/altar_ai) | Shared runtime contracts for sessions, transport, capabilities, fallback, and provider abstraction |
| Embedding frontier coding agents into OTP apps | [codex_sdk](https://github.com/nshkrdotcom/codex_sdk), [claude_agent_sdk](https://github.com/nshkrdotcom/claude_agent_sdk), [gemini_cli_sdk](https://github.com/nshkrdotcom/gemini_cli_sdk), [amp_sdk](https://github.com/nshkrdotcom/amp_sdk) | Production-oriented Elixir SDKs over real provider runtimes and CLIs rather than toy wrappers |
| Python-backed ML under BEAM supervision | [snakepit](https://github.com/nshkrdotcom/snakepit), [snakebridge](https://github.com/nshkrdotcom/snakebridge), [slither](https://github.com/nshkrdotcom/slither), [DSPex](https://github.com/nshkrdotcom/DSPex) | Managed Python execution, FFI bridges, and DSPy-style workflows without giving up OTP control |
| Retrieval and code intelligence | [rag_ex](https://github.com/nshkrdotcom/rag_ex), [portfolio_core](https://github.com/nshkrdotcom/portfolio_core), [portfolio_index](https://github.com/nshkrdotcom/portfolio_index), [portfolio_manager](https://github.com/nshkrdotcom/portfolio_manager), [portfolio_coder](https://github.com/nshkrdotcom/portfolio_coder) | RAG, indexing, manifests, vector and graph backends, and developer-facing project memory |
| Runtime visibility and operator tooling | [AITrace](https://github.com/nshkrdotcom/AITrace), [foundation](https://github.com/nshkrdotcom/foundation), [ElixirScope](https://github.com/nshkrdotcom/ElixirScope), [ex_dbg](https://github.com/nshkrdotcom/ex_dbg), [switchyard](https://github.com/nshkrdotcom/switchyard) | Trace flows, harden external calls, inspect execution, and give operators a real control surface |

---

## Engineering Principles

- **OTP-first by default**: concurrency, supervision, restart semantics, and isolation are core design tools, not afterthoughts.
- **Open layers instead of one black box**: transport, session/runtime, orchestration, retrieval, tracing, and UI stay independently usable but intentionally composable.
- **Native runtime parity matters**: provider integrations often wrap real CLIs or runtime surfaces when that yields better behavioral fidelity than thin HTTP wrappers.
- **Typed seams over hidden magic**: schemas, manifests, registries, signal definitions, and explicit contracts make systems operable and evolvable.
- **Observability is part of the product**: telemetry, lineage, audit trails, and debugging surfaces are treated as first-class infrastructure.

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
