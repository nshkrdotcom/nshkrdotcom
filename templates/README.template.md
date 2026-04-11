# nshkrdotcom

**Open-source AI and ML infrastructure for Elixir/BEAM**

> SDKs, orchestration runtimes, retrieval systems, and debugging tools for AI workloads on the BEAM.

**{{REPO_COUNT}} repositories** | [@North-Shore-AI](https://github.com/North-Shore-AI) | [nshkr.com](https://nshkr.com)

---

## What You'll Find Here

This is the public home for my Elixir/BEAM work around AI infrastructure. The repositories here are parts of a stack: execution and transport layers, provider SDKs, orchestration engines, retrieval and indexing packages, and the tracing and debugging tools needed to run them well.

The focus is infrastructure you can build on, not showcase apps. Most of these projects are libraries or runtime components built around OTP supervision, explicit contracts, durable workflows, and instrumentation that helps when a system is busy, drifting, or failing.

The adjacent [@North-Shore-AI](https://github.com/North-Shore-AI) organization covers the related work in ML reliability, evaluation, labeling, and research. This profile is where much of the runtime layer, SDK layer, orchestration layer, and developer-facing tooling is built in the open.

---

## Architecture View

```text
Provider CLIs / APIs
Codex | Claude | Gemini | Amp | GitHub | Linear | Notion | MCP | Ollama | vLLM
        ↓
Execution and session layer
execution_plane | external_runtime_transport | cli_subprocess_core | agent_session_manager
        ├─ Python / ML interop: snakepit | snakebridge | slither
        ↓
Orchestration + workflow engines
synapse | flowstone | altar_ai | DSPex | command | synapse_ai | flowstone_ai
        ↓
Retrieval, indexing, and project intelligence
rag_ex | portfolio_core | portfolio_index | portfolio_manager | portfolio_coder
        ↓
Tracing, debugging, and operator interfaces
foundation | AITrace | ElixirScope | ex_dbg | switchyard
```

---

## Start Here

| If you want to evaluate... | Start here | Why it matters |
|---------------------------|------------|----------------|
| Multi-agent orchestration | [synapse](https://github.com/nshkrdotcom/synapse), [synapse_ai](https://github.com/nshkrdotcom/synapse_ai) | Typed signal routing, declarative workflows, persistent audit trails, and provider-aware execution |
| Durable asset and data pipelines | [flowstone](https://github.com/nshkrdotcom/flowstone), [flowstone_ai](https://github.com/nshkrdotcom/flowstone_ai) | Asset-first orchestration with lineage, partitions, approval gates, and restart-safe BEAM execution |
| Provider and session infrastructure | [cli_subprocess_core](https://github.com/nshkrdotcom/cli_subprocess_core), [agent_session_manager](https://github.com/nshkrdotcom/agent_session_manager), [altar_ai](https://github.com/nshkrdotcom/altar_ai) | Shared runtime contracts for sessions, transport, capabilities, fallback, and provider abstraction |
| Running coding-agent tools from OTP apps | [codex_sdk](https://github.com/nshkrdotcom/codex_sdk), [claude_agent_sdk](https://github.com/nshkrdotcom/claude_agent_sdk), [gemini_cli_sdk](https://github.com/nshkrdotcom/gemini_cli_sdk), [amp_sdk](https://github.com/nshkrdotcom/amp_sdk) | Elixir SDKs over the actual provider CLIs and runtimes, built for long-lived sessions, streaming, and control |
| Python-backed ML under BEAM supervision | [snakepit](https://github.com/nshkrdotcom/snakepit), [snakebridge](https://github.com/nshkrdotcom/snakebridge), [slither](https://github.com/nshkrdotcom/slither), [DSPex](https://github.com/nshkrdotcom/DSPex) | Managed Python execution, FFI bridges, and DSPy-style workflows without giving up OTP control |
| Retrieval and code intelligence | [rag_ex](https://github.com/nshkrdotcom/rag_ex), [portfolio_core](https://github.com/nshkrdotcom/portfolio_core), [portfolio_index](https://github.com/nshkrdotcom/portfolio_index), [portfolio_manager](https://github.com/nshkrdotcom/portfolio_manager), [portfolio_coder](https://github.com/nshkrdotcom/portfolio_coder) | RAG, indexing, manifests, vector and graph backends, and practical project knowledge for code and content |
| Tracing, debugging, and operator interfaces | [AITrace](https://github.com/nshkrdotcom/AITrace), [foundation](https://github.com/nshkrdotcom/foundation), [ElixirScope](https://github.com/nshkrdotcom/ElixirScope), [ex_dbg](https://github.com/nshkrdotcom/ex_dbg), [switchyard](https://github.com/nshkrdotcom/switchyard) | Helps make failures, state changes, and external calls easier to see and control |

---

## Engineering Principles

- **OTP is part of the design**: concurrency, supervision, isolation, and recovery shape the architecture from the start.
- **Build in layers with clear seams**: transport, sessions, orchestration, retrieval, tracing, and UI should work together without being welded together.
- **Use the native runtime when fidelity matters**: many integrations target the actual provider CLI or runtime surface instead of flattening everything into a thin wrapper.
- **Prefer explicit contracts**: schemas, manifests, registries, and typed interfaces make systems easier to change and easier to trust.
- **Make operations visible**: telemetry, lineage, traces, and debugging tools are part of the product, not cleanup work.

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
