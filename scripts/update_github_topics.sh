#!/bin/bash
# Script to update GitHub topics for all repositories
# This casts a wide, relevant net of topics for maximum discoverability

set -e

# Color output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Common topics that apply to most/all repos
COMMON_TOPICS="elixir beam otp erlang-vm functional-programming"

# Function to update repo topics
update_topics() {
    local repo=$1
    shift
    local topics="$@"

    echo -e "${YELLOW}Updating topics for ${repo}...${NC}"

    # Clear existing topics first, then add new ones
    for topic in $topics; do
        gh repo edit "nshkrdotcom/${repo}" --add-topic "$topic" 2>/dev/null || true
    done

    echo -e "${GREEN}✓ Updated ${repo}${NC}"
}

# Function to update North-Shore-AI org repos
update_org_topics() {
    local repo=$1
    shift
    local topics="$@"

    echo -e "${YELLOW}Updating topics for North-Shore-AI/${repo}...${NC}"

    for topic in $topics; do
        gh repo edit "North-Shore-AI/${repo}" --add-topic "$topic" 2>/dev/null || true
    done

    echo -e "${GREEN}✓ Updated North-Shore-AI/${repo}${NC}"
}

echo -e "${GREEN}Starting GitHub topics update...${NC}\n"

# =============================================================================
# AI AGENT ORCHESTRATION & MULTI-AGENT SYSTEMS
# =============================================================================

update_topics "synapse" \
    $COMMON_TOPICS \
    ai agent-orchestration multi-agent-systems \
    llm ai-agents pydantic-ai python-integration \
    genserver distributed-ai agent-framework \
    ai-orchestration autonomous-agents \
    concurrency fault-tolerance supervision

update_topics "ds_ex" \
    $COMMON_TOPICS \
    ai dspy declarative-programming \
    self-improving program-optimization \
    prompt-engineering llm-optimization \
    ai-framework machine-learning \
    automated-optimization metaprogramming

update_topics "DSPex" \
    $COMMON_TOPICS \
    ai dspy declarative-programming \
    self-improving program-optimization \
    prompt-engineering llm-optimization \
    ai-framework autonomous-systems \
    prompt-optimization llm-programming

update_topics "mabeam" \
    $COMMON_TOPICS \
    multi-agent-systems distributed-systems \
    agent-orchestration autonomous-agents \
    distributed-computing distributed-agents \
    actor-model concurrency

update_topics "AutoElixir" \
    $COMMON_TOPICS \
    ai multi-agent-systems agent-swarms \
    swarm-intelligence collective-intelligence \
    autonomous-agents distributed-ai \
    agent-coordination emergent-behavior

update_topics "ALTAR" \
    $COMMON_TOPICS \
    agent-protocol tool-arbitration \
    agent-coordination protocol-design \
    multi-agent-systems agent-communication \
    coordination-protocol distributed-protocols

# =============================================================================
# AI SDKs & API CLIENTS
# =============================================================================

update_topics "gemini_ex" \
    $COMMON_TOPICS \
    ai llm google-gemini gemini \
    api-client sdk ai-integration \
    vertex-ai ai-studio genai \
    llm-client generative-ai

update_topics "claude_agent_sdk" \
    $COMMON_TOPICS \
    ai claude anthropic llm \
    api-client sdk ai-integration \
    claude-ai agent-sdk streaming \
    llm-client ai-sdk

update_topics "codex_sdk" \
    $COMMON_TOPICS \
    ai openai codex code-generation \
    api-client sdk llm \
    ai-integration code-synthesis \
    llm-client

update_topics "jules_ex" \
    $COMMON_TOPICS \
    ai jules-api api-client sdk \
    ai-coding coding-assistant \
    ai-integration llm developer-tools

update_topics "pipeline_ex" \
    $COMMON_TOPICS \
    ai claude gemini collaboration \
    ai-orchestration multi-model workflow \
    ai-pipeline llm-orchestration \
    model-collaboration

# =============================================================================
# AI INFRASTRUCTURE & UTILITIES
# =============================================================================

update_topics "json_remedy" \
    $COMMON_TOPICS \
    json json-repair json-validation \
    llm-infrastructure data-validation \
    error-recovery json-parser \
    malformed-json json-fix \
    data-quality

update_topics "snakepit" \
    $COMMON_TOPICS \
    python python-integration python-orchestration \
    process-pooling session-management \
    python-elixir python-beam free-threading \
    python-313 grpc interop \
    language-integration python-processes \
    polyglot high-performance

# =============================================================================
# SCHEMA & DATA VALIDATION
# =============================================================================

update_topics "sinter" \
    $COMMON_TOPICS \
    schema schema-validation data-validation \
    json-schema type-system validation \
    json-generation type-checking \
    data-modeling

update_topics "exdantic" \
    $COMMON_TOPICS \
    schema schema-validation data-validation \
    pydantic type-system validation \
    data-modeling type-checking \
    runtime-validation serialization

update_topics "perimeter" \
    $COMMON_TOPICS \
    type-system typing static-typing \
    type-checking gradual-typing \
    type-inference type-annotations \
    type-safety

# =============================================================================
# DEVELOPER TOOLS & DEBUGGING
# =============================================================================

update_topics "ex_dbg" \
    $COMMON_TOPICS \
    debugging introspection developer-tools \
    debugging-tools phoenix development \
    debugging-system inspection \
    runtime-analysis development-tools

update_topics "elixir_scope" \
    $COMMON_TOPICS \
    debugging ast code-analysis \
    code-intelligence static-analysis \
    developer-tools ast-analysis \
    code-inspection debugging-tools \
    syntax-tree

update_topics "ElixirScope" \
    $COMMON_TOPICS \
    ai debugging execution-analysis \
    ai-debugging developer-tools \
    runtime-visualization debugging-tools \
    execution-cinema code-analysis

# =============================================================================
# OTP & DISTRIBUTED SYSTEMS
# =============================================================================

update_topics "superlearner" \
    $COMMON_TOPICS \
    otp-supervision supervision education \
    learning-platform otp-patterns \
    supervisor-trees fault-tolerance \
    educational tutorial

update_topics "apex" \
    $COMMON_TOPICS \
    otp-supervision monitoring supervision \
    process-monitoring supervisor-trees \
    fault-tolerance observability \
    distributed-systems

update_topics "apex_ui" \
    $COMMON_TOPICS \
    otp-supervision monitoring web-ui \
    visualization dashboard observability \
    process-monitoring phoenix \
    supervision

update_topics "arsenal" \
    $COMMON_TOPICS \
    metaprogramming rest-api api-generation \
    code-generation otp automation \
    api-framework macro-programming \
    automatic-api

update_topics "arsenal_plug" \
    $COMMON_TOPICS \
    phoenix plug adapter \
    web-framework middleware http \
    api-framework

# =============================================================================
# TESTING & QUALITY ASSURANCE
# =============================================================================

update_topics "supertester" \
    $COMMON_TOPICS \
    testing test-framework quality-assurance \
    testing-tools otp-testing resilience \
    test-utilities property-testing \
    testing-toolkit

update_topics "sandbox" \
    $COMMON_TOPICS \
    testing isolation application-isolation \
    otp-applications sandbox-environment \
    process-isolation testing-tools \
    application-management

update_topics "cluster_test" \
    $COMMON_TOPICS \
    testing distributed-testing cluster-testing \
    distributed-systems test-cluster \
    distributed-erlang mix-tasks \
    integration-testing

# =============================================================================
# INFRASTRUCTURE & OBSERVABILITY
# =============================================================================

update_topics "foundation" \
    $COMMON_TOPICS \
    infrastructure observability telemetry \
    monitoring metrics logging \
    infrastructure-library instrumentation \
    production-ready

update_topics "AITrace" \
    $COMMON_TOPICS \
    ai observability tracing monitoring \
    ai-observability telemetry \
    distributed-tracing ai-infrastructure \
    control-plane

update_topics "Assessor" \
    $COMMON_TOPICS \
    ai cicd quality-assurance testing \
    ai-quality continuous-integration \
    ai-testing ml-quality \
    quality-platform

update_topics "Citadel" \
    $COMMON_TOPICS \
    ai command-control enterprise \
    ai-infrastructure control-plane \
    ai-platform enterprise-ai \
    orchestration

# =============================================================================
# CLOUD & EDGE COMPUTING
# =============================================================================

update_topics "cf_ex" \
    $COMMON_TOPICS \
    cloudflare edge-computing serverless \
    cloudflare-workers durable-objects \
    cloudflare-calls edge cdn \
    cloud-computing

update_topics "ex_cloudflare_phoenix" \
    $COMMON_TOPICS \
    cloudflare phoenix edge-computing \
    cloudflare-workers durable-objects \
    cloudflare-calls web-framework \
    serverless

# =============================================================================
# BROWSER & PLATFORM INTEGRATION
# =============================================================================

update_topics "playwriter" \
    $COMMON_TOPICS \
    browser-automation wsl windows \
    playwright browser-testing \
    cross-platform wsl-integration \
    automation testing

# =============================================================================
# UTILITIES
# =============================================================================

update_topics "youtube_audio_dl" \
    $COMMON_TOPICS \
    youtube audio-download mp3 \
    media audio-processing \
    youtube-dl music \
    media-download

update_topics "tools" \
    $COMMON_TOPICS \
    utilities helper-library tools \
    utility-functions developer-tools

# =============================================================================
# CRUCIBLE FRAMEWORK (North-Shore-AI organization)
# =============================================================================

CRUCIBLE_COMMON="elixir beam otp ai llm machine-learning research reliability statistical-testing ensemble-methods"

update_org_topics "crucible_framework" \
    $CRUCIBLE_COMMON \
    llm-reliability research-framework \
    reproducible-research experiment-framework \
    ai-research llm-testing \
    documentation research

update_org_topics "crucible_bench" \
    $CRUCIBLE_COMMON \
    statistical-testing statistical-analysis \
    hypothesis-testing effect-size \
    power-analysis statistics \
    benchmarking testing-framework \
    t-test anova mann-whitney

update_org_topics "crucible_ensemble" \
    $CRUCIBLE_COMMON \
    ensemble-methods ensemble-learning \
    voting multi-model model-ensemble \
    consensus llm-ensemble \
    reliability-improvement

update_org_topics "crucible_hedging" \
    $CRUCIBLE_COMMON \
    request-hedging tail-latency \
    latency-optimization distributed-systems \
    performance-optimization hedging \
    latency-reduction

update_org_topics "crucible_trace" \
    $CRUCIBLE_COMMON \
    tracing causal-reasoning \
    transparency explainability \
    reasoning-chains llm-transparency \
    interpretability logging

update_org_topics "crucible_datasets" \
    $CRUCIBLE_COMMON \
    datasets benchmarking benchmark-datasets \
    mmlu humaneval gsm8k \
    dataset-management data-loading \
    ml-datasets ai-benchmarks

update_org_topics "crucible_telemetry" \
    $CRUCIBLE_COMMON \
    telemetry instrumentation metrics \
    observability monitoring \
    research-metrics data-collection \
    experiment-tracking

update_org_topics "crucible_harness" \
    $CRUCIBLE_COMMON \
    experiment-orchestration automation \
    test-harness benchmarking \
    experiment-automation reporting \
    research-automation

update_org_topics "crucible_adversary" \
    $CRUCIBLE_COMMON \
    adversarial-testing robustness \
    security-testing adversarial-attacks \
    model-robustness red-teaming \
    adversarial-examples

update_org_topics "crucible_xai" \
    $CRUCIBLE_COMMON \
    explainable-ai xai interpretability \
    lime shap feature-attribution \
    model-interpretability explainability \
    transparency

update_org_topics "ExDataCheck" \
    $CRUCIBLE_COMMON \
    data-validation data-quality \
    ml-pipelines data-checking \
    data-integrity validation \
    quality-assurance

update_org_topics "ExFairness" \
    $CRUCIBLE_COMMON \
    fairness bias-detection \
    ai-fairness ml-fairness \
    bias-mitigation ethical-ai \
    responsible-ai algorithmic-fairness

update_org_topics "LlmGuard" \
    $CRUCIBLE_COMMON \
    security guardrails ai-firewall \
    llm-security content-filtering \
    safety-constraints prompt-injection \
    security-framework ai-safety

echo -e "\n${GREEN}✓ All topics updated successfully!${NC}"
echo -e "${YELLOW}Note: GitHub may take a few moments to reflect these changes.${NC}"
