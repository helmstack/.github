# 🚀 HelmStack v1.0.0 Vision & Roadmap

## 🎯 Core Principles

### 1. Contract-First + Thin CLI
- Commands are "shells" in oclif, logic resides in core
- All I/O uses envelope format: `{ok, cmd, version, duration_ms, payload, meta}`
- Contract validation at every boundary

### 2. Provider-Agnostic AI
- OpenAI/Anthropic/Google/Local (Ollama) through unified adapter
- "Smart-select" based on speed/cost/quality requirements
- Configurable provider fallback chains

### 3. AST-Aware Code Operations
- Not just "prompt patches" - parse → transform → validate → apply
- Language-specific parsers for TS/JS/Python/Go
- Semantic understanding for refactoring operations

### 4. Deterministic Flow + Rollback
- Atomic patches with AtomicFS operations
- Auto-revert if tests fail
- Complete operation audit trail

### 5. Privacy-First
- Default "no-cloud" mode (local indexing, masking)
- Opt-in cloud search and remote operations
- PII redaction and secret protection

## 🏗️ Architecture (CLI → Core → Services → Addons → Providers)

### Core Modules
- **Runtime**: Timeout/Retry/Lock/AtomicFS
- **ContextBuilder**: Index+RAG system
- **AST Operations**: TS/JS/Python/Go parsers
- **TestRunner**: Jest/Pytest/Vitest integration
- **Lint/Format**: ESLint/Prettier integration
- **Diff/Patch**: Atomic file operations
- **Prompt Orchestrator**: Multi-agent coordination
- **Cost/Latency Budget**: Resource management
- **Telemetry**: Local, PII-free metrics
- **Policy Guard**: Secret/migration protection

### Services
- **Git/GitHub**: Repository operations
- **Jira/Linear**: Issue tracking (optional)
- **ML**: AI model coordination
- **BrandImage**: Visual assets (future)

### Addons
- **LSP**: Language server integration
- **Test Frameworks**: Jest/Pytest/Vitest
- **Linters**: ESLint/Prettier
- **Tools**: Docker/Poetry/pnpm
- **Databases**: Supabase/Prisma
- **E2E Testing**: Playwright

### Providers
- **OpenAI**: GPT models
- **Anthropic**: Claude models
- **Gemini**: Google models
- **Ollama**: Local models
- **OpenRouter**: Model router (optional)

## 🎯 Feature Parity ("Cursor / Claude Code" class minimums)

### Full Codebase Index
- File type parsers (TS/JS/TSX/JSX, Python, Go)
- Symbol graph and module dependencies
- Test coverage mapping

### Work Context
- Active file + connected module tree
- Related tests + recent commit diff
- Open issues integration

### Smart Edit
- Selected block refactoring
- File-wide transformations
- Multi-file patches

### Task-Oriented Agent Flow
- Plan → Edit → Test → Fix → Review → Commit → PR (auto)
- End-to-end automation

### Test-Driven Loop
- Jest/pytest execution
- Failure hint extraction
- Auto-patch and retry

### Conversations to Changes
- Instruction → plan → patch diff → explained commit message
- Natural language to code transformation

### Offline Operation
- Local index + AST operations
- Local LLM option (Ollama)
- No mandatory cloud dependencies

## 🌟 HelmStack Differentiators

### Envelope & Audit
- Every operation archived as JSON chain (`./.heck/runlogs/*`)
- Full reproducibility of operations

### Policy Guard
- Two-man rule for sensitive changes
- `.env`, configs, migrations protection

### Experiment Orchestrator
- A/B testing across multiple providers
- Best diff selection

### Cost/Latency Budget
- "Finish under X cents / Y seconds" constraints
- Resource optimization

### Patch-as-File
- All changes as `./heck/patches/*.diff`
- Apply/rollback command control

### Learning Loop
- Local "playbook" (repo-specific examples)
- Agent context prioritization

## 💻 CLI UX Flow (Terminal Only)

### Main Interface
```bash
heck  # Opens TUI or --no-ui flag for direct commands
```

### TUI Panels
- **Project Map**: File structure and dependencies
- **Tasks**: Current operations and queue
- **Index**: Search and symbol navigation
- **Agents**: Multi-agent coordination
- **Patches**: Change management
- **Tests**: Test results and coverage
- **Logs**: Operation audit trail

### Quick Actions
- "Explain this file"
- "Make it faster"
- "Add endpoint"
- "Fix failing tests"
- "Write migration + tests"
- "Create PR"

## 📋 Commands (23 Initial Set)

1. `heck init` - Setup, .heck structure, ignores
2. `heck index` - Full index + embedding cache
3. `heck plan "<goal>"` - Task plan + artifacts
4. `heck edit` - Smart-edit for selected file/range
5. `heck refactor <pattern>` - AST refactor: rename/split/inline/export
6. `heck test [--watch]` - Jest/pytest integration
7. `heck fix` - Auto-fix from test failures
8. `heck doc` - JSDoc/py docstring/README generation
9. `heck explain [path:line]` - Code explanation
10. `heck review [diff]` - Static + AI review
11. `heck patch create` - Create diff file
12. `heck patch apply|rollback <id>` - Patch management
13. `heck commit [-m msg] [--signoff]` - Smart commits
14. `heck pr open [--title ...]` - Auto PR body/checklist
15. `heck migrate make "<title>"` - DB migration + test template
16. `heck api scaffold <spec.yaml>` - Contract-first generation
17. `heck agent run <recipe.yml>` - Multi-agent orchestration
18. `heck budget set --cost 0.25 --latency 30s` - Resource limits
19. `heck provider set <auto|oai|anthropic|ollama|gemini>` - AI provider
20. `heck policy guard --check` - Sensitive file protection
21. `heck sandbox run "<cmd>"` - Isolated test/build
22. `heck telemetry on|off` - Local telemetry
23. `heck status` - Runlog, index, provider, budget summary

## 🔄 Context Pipeline (Quality Critical)

### Collect
- Active file, import graph, related tests
- Last 20 commit diffs, open issues

### Filter
- TF-IDF + path heuristics + LSP cross-refs

### Summarize
- Head/tail + AST node summary for long files

### RAG
- Embed cache (disk) → topK → windowed snippets

### Guard
- PII/secret masking

### Prompt
- Role → purpose → rules → context → strict acceptance criteria

## ⚡ Performance/Stability

### Caching
- Index + embedding + tool results on disk
- Intelligent cache invalidation

### Timeout/Retry
- Jitter on all provider calls
- Graceful degradation

### Streaming
- Live plan/edit/test logs in TUI
- Real-time progress feedback

### Dry-Run Everything
- Diff preview mandatory before apply
- User confirmation for significant changes

## 🔒 Security

### Default Safe Mode
- No-network "safe mode" (LLM calls require permission)
- Local-first operations

### Secret Protection
- Secrets redaction + .env write-block
- Sensitive data masking

### Policy Guard
- Two-stage confirmation for prod-only files
- Change impact analysis

## 🗓️ Roadmap → v1.0.0 (Terminal-Only Focus)

### M1 — Core & Index (Week 1–2)
- Runtime (Retry/Timeout/Lock/AtomicFS)
- Indexer (TS/JS/Py/Go) + Embedding cache
- Commands: `init`, `index`, `status`, `provider set`, `budget set`

### M2 — Edit & AST (Week 2–3)
- AST transformations (TS/JS + Python basic)
- Commands: `edit`, `refactor`, `explain`
- Diff/patch files, `patch create/apply/rollback`

### M3 — Test-Loop (Week 3–4)
- Jest/Pytest integration: `test`, `fix`
- Failure-hint extraction, auto-patch retry

### M4 — GitHub Flow (Week 4–5)
- Commands: `commit`, `review`, `pr open` (PR body/checklist auto)
- Policy Guard (sensitive files)

### M5 — Agent Orchestration (Week 5–6)
- Plan→Edit→Test→Review→PR "recipe"
- Commands: `agent run`, `api scaffold`, `migrate make`

### M6 — Quality & Differentiators (Week 6–7)
- A/B provider selection, cost/latency limit enforcement
- Telemetry (local), runlog view
- "Safe mode" + masking, sandbox exec

## 🎯 v1.0.0 Release Criteria

- ✅ 23 commands functional and documented
- ✅ 10+ real "task recipes" (scaffold endpoint, fix failing test, add feature flag...)
- ✅ 90% operations with diff-preview; rollback always works
- ✅ 1 large repo demo: plan→multi-file edit→test→PR complete workflow

---

**Next Phase**: Create detailed milestones, issues, and epic tracking structure.