# nshkrdotcom

**A governed execution platform for AI workloads on the BEAM**

> A layered platform where semantic reasoning, typed commands, and external execution share one Brain-to-Spine governance contract.

**{{REPO_COUNT}} repositories** | [@North-Shore-AI](https://github.com/North-Shore-AI) | [nshkr.com](https://nshkr.com)

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
