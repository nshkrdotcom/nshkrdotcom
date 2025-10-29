# Hey there! <img src="./assets/wave.svg" alt="wave" width="20" height="20" />

I'm a software engineer and researcher focused on **AI reliability, distributed systems, and functional programming**. I build infrastructure for LLM research on the Elixir/BEAM platform.

[![GitHub followers](https://img.shields.io/github/followers/nshkrdotcom?label=Follow&style=social)](https://github.com/nshkrdotcom)

---

## <img src="./assets/microscope.svg" alt="microscope" width="20" height="20" /> Crucible Framework - LLM Reliability Research

I'm the creator of the **[Crucible Framework](https://github.com/North-Shore-AI/crucible_framework)**, a platform for conducting reproducible experiments on large language model reliability, built on Elixir/OTP.

**Key Goal**: Building towards 99%+ LLM reliability through ensemble voting and request hedging, with comprehensive statistical testing and transparent causal reasoning chains.

### Core Libraries

All published under the **[@North-Shore-AI](https://github.com/North-Shore-AI)** organization:

| Library | Description |
|---------|-------------|
| **[crucible_framework](https://github.com/North-Shore-AI/crucible_framework)** | Documentation hub & research framework |
| **[crucible_bench](https://github.com/North-Shore-AI/crucible_bench)** | Statistical testing & analysis (15+ tests, effect sizes, power analysis) |
| **[crucible_ensemble](https://github.com/North-Shore-AI/crucible_ensemble)** | Multi-model voting strategies for improved reliability |
| **[crucible_hedging](https://github.com/North-Shore-AI/crucible_hedging)** | Request hedging for latency reduction |
| **[crucible_trace](https://github.com/North-Shore-AI/crucible_trace)** | Causal reasoning chain logging for LLM transparency |
| **[crucible_datasets](https://github.com/North-Shore-AI/crucible_datasets)** | Unified interface to benchmark datasets (MMLU, HumanEval, GSM8K) |
| **[crucible_telemetry](https://github.com/North-Shore-AI/crucible_telemetry)** | Research-grade instrumentation & metrics collection |
| **[crucible_harness](https://github.com/North-Shore-AI/crucible_harness)** | Automated experiment orchestration & reporting |
| **[crucible_examples](https://github.com/North-Shore-AI/crucible_examples)** | Interactive Phoenix LiveView demos showcasing all framework components |
| **[crucible_adversary](https://github.com/North-Shore-AI/crucible_adversary)** | Adversarial testing & robustness evaluation framework |
| **[crucible_xai](https://github.com/North-Shore-AI/crucible_xai)** | Explainable AI tools (LIME, SHAP, feature attribution) |
| **[ExDataCheck](https://github.com/North-Shore-AI/ExDataCheck)** | Data validation & quality library for ML pipelines |
| **[ExFairness](https://github.com/North-Shore-AI/ExFairness)** | Fairness & bias detection library for AI/ML systems |
| **[LLMGuard](https://github.com/North-Shore-AI/LlmGuard)** | AI firewall & guardrails for LLM-based applications |

**Tech Stack**: Elixir, OTP, BEAM VM, Telemetry
**Research Areas**: LLM reliability, ensemble methods, tail latency optimization, statistical testing
**Status**: Active development, v0.1.0 released

---

## <img src="./assets/rocket.svg" alt="rocket" width="20" height="20" /> Elixir Projects

### AI Agent Orchestration & Multi-Agent Systems

- **[synapse](https://github.com/nshkrdotcom/synapse)** ⭐ 22 - Synapse: Elixir-powered AI agent orchestration, built on the battle-teste…
- **[ds_ex](https://github.com/nshkrdotcom/ds_ex)** ⭐ 14 - DSPEx - Declarative Self-improving Elixir | A BEAM-Native AI Program O…
- **[DSPex](https://github.com/nshkrdotcom/DSPex)** ⭐ 8 - Declarative Self Improving Elixir - DSPy Orchestration in Elixir
- **[mabeam](https://github.com/nshkrdotcom/mabeam)** ⭐ 4 - Multi Agent BEAM
- **[AutoElixir](https://github.com/nshkrdotcom/AutoElixir)** ⭐ 3 - AI Multi Agent Swarms in Elixir
- **[ALTAR](https://github.com/nshkrdotcom/ALTAR)** ⭐ 4 - The Agent & Tool Arbitration Protocol

### AI SDKs & API Clients

- **[gemini_ex](https://github.com/nshkrdotcom/gemini_ex)** ⭐ 17 - Elixir Interface / Adapter for Google Gemini LLM, for both AI Studio a…
- **[claude_agent_sdk](https://github.com/nshkrdotcom/claude_agent_sdk)** ⭐ 7 - Elixir SDK for Claude AI Agent API - Renamed from claude_code_sdk_elix…
- **[codex_sdk](https://github.com/nshkrdotcom/codex_sdk)** ⭐ 1 - OpenAI Codex SDK written in Elixir
- **[jules_ex](https://github.com/nshkrdotcom/jules_ex)** ⭐ 0 - Elixir client SDK for the Jules API - orchestrate AI coding sessions
- **[pipeline_ex](https://github.com/nshkrdotcom/pipeline_ex)** ⭐ 6 - Claude Code + Gemini AI collaboration orchestration tools

### AI Infrastructure & Utilities

- **[gepa_ex](https://github.com/nshkrdotcom/gepa_ex)** ⭐ 0 - GEPA (Genetic-Pareto) optimizer combining LLM-powered reflection with Pareto search to evolve text-based system components
- **[snakebridge](https://github.com/nshkrdotcom/snakebridge)** ⭐ 0 - Configuration-driven Python library integration for Elixir - auto-generate type-safe wrappers for any Python library
- **[weaviate_ex](https://github.com/nshkrdotcom/weaviate_ex)** ⭐ 0 - Modern Elixir client for Weaviate vector database with health checks…
- **[json_remedy](https://github.com/nshkrdotcom/json_remedy)** ⭐ 20 - A practical, multi-layered JSON repair library for Elixir that intelli…
- **[snakepit](https://github.com/nshkrdotcom/snakepit)** ⭐ 8 - High-performance, generalized process pooler and session manager for e…
- **[duckdb_ex](https://github.com/nshkrdotcom/duckdb_ex)** ⭐ 0 - DuckDB driver client in Elixir

### Schema & Data Validation

- **[sinter](https://github.com/nshkrdotcom/sinter)** ⭐ 8 - Unified schema definition, validation, and JSON generation for Elixir
- **[exdantic](https://github.com/nshkrdotcom/exdantic)** ⭐ 8 - A powerful, flexible schema definition and validation library for Elix…
- **[perimeter](https://github.com/nshkrdotcom/perimeter)** ⭐ 6 - Elixir Typing Mechanism

### Developer Tools & Debugging

- **[ex_dbg](https://github.com/nshkrdotcom/ex_dbg)** ⭐ 9 - State-of-the-Art Introspection and Debugging System for Elixir/Phoenix…
- **[elixir_scope](https://github.com/nshkrdotcom/elixir_scope)** ⭐ 4 - Revolutionary AST-based debugging and code intelligence platform for E…
- **[ElixirScope](https://github.com/nshkrdotcom/ElixirScope)** ⭐ 3 - AI-Powered Execution Cinema Debugger for Elixir/BEAM
- **[elixir_dashboard](https://github.com/nshkrdotcom/elixir_dashboard)** ⭐ 0 - A Phoenix LiveView performance monitoring dashboard for tracking slow endpoints and database queries
- **[elixir_tracer](https://github.com/nshkrdotcom/elixir_tracer)** ⭐ 0 - Local-first observability for Elixir with New Relic API parity

### OTP & Distributed Systems

- **[superlearner](https://github.com/nshkrdotcom/superlearner)** ⭐ 6 - OTP Supervisor Educational Platform
- **[apex](https://github.com/nshkrdotcom/apex)** ⭐ 3 - Core Apex framework for OTP supervision and monitoring
- **[apex_ui](https://github.com/nshkrdotcom/apex_ui)** ⭐ 3 - Web UI for Apex OTP supervision and monitoring tools
- **[arsenal](https://github.com/nshkrdotcom/arsenal)** ⭐ 3 - Metaprogramming framework for automatic REST API generation from OTP o…
- **[arsenal_plug](https://github.com/nshkrdotcom/arsenal_plug)** ⭐ 2 - Phoenix/Plug adapter for Apex Arsenal framework

### Testing & Quality Assurance

- **[supertester](https://github.com/nshkrdotcom/supertester)** ⭐ 3 - A battle-hardened testing toolkit for building robust and resilient El…
- **[sandbox](https://github.com/nshkrdotcom/sandbox)** ⭐ 3 - Isolated OTP application management system for Elixir/Erlang
- **[cluster_test](https://github.com/nshkrdotcom/cluster_test)** ⭐ 3 - Distributed Erlang/Elixir test cluster management via Mix tasks

### Infrastructure & Observability

- **[foundation](https://github.com/nshkrdotcom/foundation)** ⭐ 10 - Elixir infrastructure and Observability Library
- **[AITrace](https://github.com/nshkrdotcom/AITrace)** ⭐ 0 - The unified observability layer for the AI Control Plane
- **[Assessor](https://github.com/nshkrdotcom/Assessor)** ⭐ 0 - The definitive CI/CD platform for AI Quality.
- **[Citadel](https://github.com/nshkrdotcom/Citadel)** ⭐ 0 - The command and control layer for the AI-powered enterprise

### Cloud & Edge Computing

- **[cf_ex](https://github.com/nshkrdotcom/cf_ex)** ⭐ 3 - Elixir libraries for Cloudflare edge computing services. Battle-tested…
- **[ex_cloudflare_phoenix](https://github.com/nshkrdotcom/ex_cloudflare_phoenix)** ⭐ 0 - Cloudflare Durable Objects and Calls for Phoenix Framework

### Browser & Platform Integration

- **[playwriter](https://github.com/nshkrdotcom/playwriter)** ⭐ 6 - Elixir WSL-to-Windows browser integration

### Utilities

- **[youtube_audio_dl](https://github.com/nshkrdotcom/youtube_audio_dl)** ⭐ 0 - Download high-quality audio from YouTube as MP3 files using Elixir. Fe…
- **[tools](https://github.com/nshkrdotcom/tools)** ⭐ 0 - Elixir repository

---

## <img src="./assets/chart.svg" alt="chart" width="20" height="20" /> GitHub Stats

![GitHub stats](https://github-readme-stats.vercel.app/api?username=nshkrdotcom&show_icons=true&theme=default)

![Top Languages](https://github-readme-stats.vercel.app/api/top-langs/?username=nshkrdotcom&layout=compact)

---

## <img src="./assets/tools.svg" alt="tools" width="20" height="20" /> Tech Stack

**Languages**: Elixir, Erlang, Python, JavaScript/TypeScript, Rust

**Frameworks**: Phoenix, OTP, FastAPI, React

**Specialties**:
- Distributed systems & fault tolerance
- AI/LLM infrastructure & reliability
- Functional programming & metaprogramming
- Statistical analysis & experimental design
- Developer tools & productivity

**Platforms**: BEAM VM, AWS, GCP, Cloudflare Workers, Edge Computing

---

## <img src="./assets/document.svg" alt="document" width="20" height="20" /> Current Focus

- <img src="./assets/microscope.svg" alt="microscope" width="16" height="16" /> **Research**: LLM reliability through ensemble methods and statistical testing
- <img src="./assets/tools.svg" alt="building" width="16" height="16" /> **Building**: AI infrastructure on Elixir/OTP
- <img src="./assets/book.svg" alt="learning" width="16" height="16" /> **Learning**: Advanced OTP patterns, distributed systems optimization
- <img src="./assets/seedling.svg" alt="growing" width="16" height="16" /> **Growing**: The Crucible framework ecosystem

---

## <img src="./assets/globe.svg" alt="globe" width="20" height="20" /> Connect

- **GitHub**: [@nshkrdotcom](https://github.com/nshkrdotcom)
- **Organization**: [@North-Shore-AI](https://github.com/North-Shore-AI)

---

## <img src="./assets/lightbulb.svg" alt="lightbulb" width="20" height="20" /> Philosophy

> "Build infrastructure that researchers and engineers actually want to use. Make reliability measurable. Make experiments reproducible. Make the BEAM shine for AI workloads."

---

## <img src="./assets/target.svg" alt="target" width="20" height="20" /> Open to

- <img src="./assets/handshake.svg" alt="collaboration" width="16" height="16" /> **Collaboration** on Elixir AI tooling
- <img src="./assets/briefcase.svg" alt="consulting" width="16" height="16" /> **Consulting** for distributed systems & AI infrastructure
- <img src="./assets/microphone.svg" alt="speaking" width="16" height="16" /> **Speaking** about LLM reliability, Elixir/OTP, or functional programming
- <img src="./assets/book.svg" alt="research" width="16" height="16" /> **Research partnerships** in AI reliability & distributed systems
- <img src="./assets/star.svg" alt="open source" width="16" height="16" /> **Open source contributions** - PRs welcome on any project!

---

## <img src="./assets/chart.svg" alt="productivity" width="20" height="20" /> Development Metrics (Past 30 Days)

### GitHub Activity Summary

**Period**: September 28 - October 27, 2025

| Metric | Value |
|--------|-------|
| **Repositories Analyzed** | 44 active repositories |
| **Total Commits** | 978 commits |
| **Lines Added** | 3,163,289 |
| **Lines Removed** | 2,476,036 |
| **Net Lines Changed** | 5,639,325 |
| **Average per Repo** | 22 commits, 128k lines |
| **Average per Commit** | 5,766 lines |
| **Daily Velocity** | 187,977 lines/day |

### Top 10 Most Active Projects

1. **DSPex** - 4.8M lines (18 commits) - Declarative AI orchestration framework
2. **pump_fun_web** - 200K lines (202 commits) - Solana memecoin platform
3. **snakepit** - 140K lines (127 commits) - Python-Elixir bridge & process pooling
4. **claude_agent_sdk** - 82K lines (65 commits) - Claude AI agent integration
5. **Spectra** - 70K lines (8 commits) - Web application project
6. **code_agent** - 38K lines (38 commits) - AI coding agent system
7. **weaviate_ex** - 29K lines (28 commits) - Vector database client
8. **nshkrdotcom.github.io** - 28K lines (219 commits) - Portfolio & documentation site
9. **gemini_ex** - 26K lines (23 commits) - Google Gemini LLM client
10. **pipeline_ex** - 24K lines (7 commits) - Multi-LLM orchestration tools

### Work Distribution by Category

| Category | Repositories | Commits | Lines Changed | % of Total |
|----------|--------------|---------|---------------|------------|
| **AI Agent Orchestration & SDKs** | 10 | 234 | ~5,030,237 | 89.2% |
| **Web Applications** | 4 | 435 | ~307,209 | 5.4% |
| **Infrastructure & Data** | 8 | 99 | ~208,412 | 3.7% |
| **Developer Tools** | 6 | 43 | ~51,130 | 0.9% |
| **Other Projects** | 16 | 167 | ~42,337 | 0.8% |

### Claude AI Usage Correlation

**Period**: September 28 - October 27, 2025

| Metric | Value |
|--------|-------|
| **Total Cost** | $3,347.39 |
| **Total Tokens** | 6.1B tokens |
| **Input Tokens** | 6.0M |
| **Output Tokens** | 12.6M |
| **Cache Creates** | 304.5M |
| **Cache Reads** | 5.8B |
| **Average Daily Cost** | $111.58 |
| **Peak Usage Day** | Oct 11 ($256.12) |

**Models Used**: Sonnet 4.5, Sonnet 4, Haiku 4.5, Haiku 3.5, Opus 4.1

### Efficiency Metrics

| Metric | Value | Analysis |
|--------|-------|----------|
| **Cost per Line** | $0.00106 | Extremely cost-efficient at ~$1 per 1,000 lines |
| **Cost per Commit** | $3.42 | High-value commits averaging 5,766 lines each |
| **Cache Hit Rate** | 95% | Exceptional prompt reuse & context efficiency |
| **Lines per Dollar** | 943 | Strong ROI on AI-assisted development |
| **Tokens per Commit** | 6.2M | Complex, context-rich development sessions |

### Development Patterns & Insights

**High-Impact Work**:
- 89% of changes focused on AI/LLM infrastructure and SDK development
- Major refactoring/enhancement of DSPex declarative AI framework
- Production web application (pump_fun_web) with 202 commits shows sustained delivery
- Parallel development across 44 repositories demonstrates broad ecosystem growth

**AI-Assisted Development ROI**:
- **Total Investment**: $3,347 over 30 days
- **Output**: 5.6M lines of code across 978 commits
- **Efficiency**: ~$1 per 1,000 lines of thoughtfully architected code
- **Time Multiplier**: 95% cache hit rate indicates highly efficient iterative development
- **Context Leverage**: Average 6.2M tokens/commit shows deep architectural work

**Peak Activity Correlation**:
- Oct 7-11: Infrastructure automation & AI framework development ($391-$256/day)
- Oct 14: Repository organization & documentation systems ($110/day)
- Oct 17-20: Multi-repo AI SDK development ($253-$182/day)
- Higher costs correlate with complex architectural decisions & framework design

**Notable Achievements**:
- Built/enhanced 10 AI orchestration & SDK projects
- Delivered production Solana platform with 200K+ LOC
- Created comprehensive Python-Elixir bridge (snakepit)
- Developed multiple vector DB & graph DB clients
- Maintained documentation hub with 219 commits
- Automated GitHub star tracking & README generation

### Productivity Breakdown

**Primary Activities**:
- 89% AI/LLM infrastructure & agent orchestration
- 5% Production web applications
- 4% Data infrastructure & database clients
- 2% Developer tooling & automation

**Development Velocity**:
- **Daily Average**: 187,977 lines/day (32.5 commits/day)
- **Per Session**: 5,766 lines/commit
- **With AI Assistance**: 943 lines per dollar spent

**Quality Indicators**:
- High commit-to-LOC ratio (5,766 lines/commit) suggests substantial, well-planned changes
- 95% cache hit rate indicates consistent, iterative refinement
- Distributed across 44 repos shows ecosystem thinking vs. siloed development
- 6.2M tokens/commit demonstrates thorough architectural consideration

---

*Last updated: 2025-10-29*
