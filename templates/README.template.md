# nshkrdotcom

**A governed execution platform for AI workloads on the BEAM**

> A layered platform where semantic reasoning, typed commands, and external execution share one Brain-to-Spine governance contract.

**{{REPO_COUNT}} repositories** | [@North-Shore-AI](https://github.com/North-Shore-AI) | [nshkr.com](https://nshkr.com)

---

## What You'll Find Here

Welcome to the public home of **nshkrdotcom**: an Operating System for Distributed Cognition built on the BEAM.

This platform establishes the cryptographic and temporal lattice that chaos (LLMs) requires to safely enter enterprise production, moving beyond the limitations of stateless, hallucination-prone agent frameworks. By ruthlessly separating semantic compute from durable governance, we provide a governed execution platform where semantic reasoning, typed commands, and external execution share a single, verifiable Brain-to-Spine governance contract. 

Every semantic turn, typed command, and external execution call passes through a shared governance and durable-truth chain before touching an outside system. 

### The Memory System Innovation: Governed Memory Architecture (GMA v2)

At the heart of our platform is the realization that AI agents without reliable memory are incapable of long-horizon tasks. We enforce a **"One Shared Memory"** rule: despite having specialized agent harnesses, all agents rely on a single unified memory core to prevent enterprise data silos.

Our memory architecture introduces two radical shifts:
1. **The Access Graph as Cognitive Physics:** An agent cannot hallucinate context it cannot physically perceive. By strictly tying recall to a snapshot epoch (`ε_t`), we enable **Time-Travel Cognition**. Operators can spawn "Shadow Agents" pinned to a past epoch to perform Retrospective Audits, genuinely unaware of future patches or data.
2. **StructMem and the Promotion Economy:** Because graph databases are brittle for LLM relational thoughts, we treat StructMem as a semantic strategy. The semantic engine (`outer_brain`) extracts factual and relational hypotheses to private memory (`M^private`). It then proposes these via `ShareUp` to shared memory (`M^shared`). Finally, the governance layer (`mezzanine`) pays an "epistemic debt" to evaluate and promote this hypothesis into governed memory (`M^governed`). If confidence is low, the system explicitly routes the decision to a human operator via the Review Engine.

### The "Hazmat" Plans and the Extravaganza Proving Ground

To prove this architecture, we are building **Extravaganza**, our first proving-ground application. Extravaganza demonstrates a sophisticated, multi-product operator surface layered strictly over our northbound `app_kit`, pushing reusable business semantics and workflow machinery down into `mezzanine`.

Beneath Extravaganza lies our complex **"Hazmat"** execution capabilities. Modern AI workloads demand long-lived, bidirectional JSON-RPC host runtimes (like the `codex app-server`) to support complex operations beyond isolated prompt execution. Our `agent_session_manager` (ASM) successfully orchestrates persistent thread-and-turn models, host-side dynamic tools (such as our injected `linear_graphql` tool), and precise command-approval callbacks. We securely sandbox these "hazmat" capabilities, ensuring that remote execution, tool calling, and session continuations remain strictly bound by our governance contracts.

### Long-Term Aspirations

We are building this system because the future of enterprise AI demands absolute verifiable truth. We envision an ecosystem where epistemic markets resolve the confidence of AI decisions, where operators can forensically replay an agent's entire causal chain of thought and state via `AITrace`, and where distributed cognition operates with the same deterministic reliability as a traditional database.

---

## Architecture

Our repositories are layers in a single architecture—each with explicit ownership boundaries. Every layer claims specific truth with strict boundaries defining what belongs above or below it. These ownership lines are enforced structurally within the architecture.

```text
Products and host shells
  extravaganza | jido_code | jido_hive | future apps
        ↓
Northbound surface
  app_kit                              ← default product-facing entry point
  optional neutral operational layer   ← reusable operational/review/assurance backing
        ↓
Brain chain  (semantic → typed → governed)
  outer_brain → citadel_domain_surface → citadel
        ↓
Spine  (durable intake, auth, control plane, review truth)
  mezzanine → jido_integration
        ↓
Execution substrate  (transport, placement, sandbox, raw facts — no durable meaning)
  execution_plane
        ├─ REST family:      pristine | prismatic | github_ex | notion_sdk | linear_sdk
        ├─ CLI / session:    cli_subprocess_core | agent_session_manager (hazmat/codex)
        └─ Python / ML:      snakepit | snakebridge | slither | DSPex

Foundational substrate  (ids, fences, leases, checkpoints, generic persistence)
  ground_plane                         ← underlies the entire universal core

Operator and observability surfaces
  AITrace                              ← unified tracing and execution cinema
  stack_lab                            ← assembled proofs, fault injection, restart drills
  switchyard                           ← workbench, shell, site mapping, operator UX
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

- **Every layer has a clear owner and a clear non-owner list**: each repo claims specific truth with strict boundaries defining what belongs above or below it. These ownership lines are enforced structurally within the architecture.
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
