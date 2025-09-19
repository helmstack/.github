# 🔍 HelmStack Command Audit

## Planned Commands vs Actual Implementation

### ✅ Commands Present in Both CLI & Core

| # | Planned Command | CLI File | Core Handler | Status |
|---|----------------|----------|--------------|--------|
| 1 | `heck init` | ✅ init.ts | ✅ InitHandler.ts | ✅ Match |
| 3 | `heck plan "<goal>"` | ✅ plan.ts | ✅ PlanHandler.ts | ✅ Match |
| 9 | `heck explain [path:line]` | ❌ Missing | ❌ Missing | ❌ **MISSING** |
| 10 | `heck review [diff]` | ✅ review.ts | ✅ ReviewHandler.ts | ✅ Match |
| 13 | `heck commit [-m msg]` | ❌ Missing | ❌ Missing | ❌ **MISSING** |
| 14 | `heck pr open [--title]` | ✅ pr.ts | ✅ PRHandler.ts | ✅ Match |
| 19 | `heck provider set` | ❌ Missing | ❌ Missing | ❌ **MISSING** |
| 23 | `heck status` | ✅ status.ts | ✅ StatusHandler.ts | ✅ Match |

### ❌ Commands Missing from Implementation

| # | Planned Command | Description | Priority |
|---|----------------|-------------|----------|
| 2 | `heck index` | Full index + embedding cache | **HIGH** |
| 4 | `heck edit` | Smart-edit for selected file/range | **HIGH** |
| 5 | `heck refactor <pattern>` | AST refactor operations | **HIGH** |
| 6 | `heck test [--watch]` | Jest/pytest integration | **HIGH** |
| 7 | `heck fix` | Auto-fix from test failures | **HIGH** |
| 8 | `heck doc` | JSDoc/py docstring generation | **MEDIUM** |
| 9 | `heck explain [path:line]` | Code explanation | **HIGH** |
| 11 | `heck patch create` | Create diff file | **MEDIUM** |
| 12 | `heck patch apply\|rollback` | Patch management | **MEDIUM** |
| 13 | `heck commit [-m msg]` | Smart commits | **HIGH** |
| 15 | `heck migrate make` | DB migration + test template | **MEDIUM** |
| 16 | `heck api scaffold` | Contract-first generation | **MEDIUM** |
| 17 | `heck agent run` | Multi-agent orchestration | **HIGH** |
| 18 | `heck budget set` | Resource limits | **LOW** |
| 19 | `heck provider set` | AI provider management | **HIGH** |
| 20 | `heck policy guard` | Sensitive file protection | **MEDIUM** |
| 21 | `heck sandbox run` | Isolated test/build | **LOW** |
| 22 | `heck telemetry on\|off` | Local telemetry | **LOW** |

### 🤔 Unexpected Commands in Implementation

These commands exist in the implementation but were not in the planned 23:

| CLI File | Core Handler | Purpose | Keep? |
|----------|--------------|---------|-------|
| audit.ts | AuditHandler.ts | Security/quality audit | ✅ Useful |
| brand_check.ts | BrandCheckHandler.ts | Brand compliance check | ❓ Brand-specific |
| brand_status.ts | BrandStatusHandler.ts | Brand asset status | ❓ Brand-specific |
| brand_sync.ts | BrandSyncHandler.ts | Brand asset sync | ❓ Brand-specific |
| config.ts | ConfigHandler.ts | Configuration management | ✅ Essential |
| focus.ts | FocusHandler.ts | Focus mode/context | ❓ Unclear purpose |
| memory.ts | MemoryHandler.ts | Memory/context management | ✅ Useful |
| metrics.ts | MetricsHandler.ts | Performance metrics | ✅ Useful |
| orchestrate.ts | OrchestrateHandler.ts | Workflow orchestration | ✅ Matches agent |
| pair.ts | PairHandler.ts | Pair programming | ❓ Nice to have |
| publish.ts | PublishHandler.ts | Package publishing | ❓ Unclear scope |
| repo.ts | RepoHandler.ts | Repository operations | ✅ Useful |
| snapshot.ts | SnapshotHandler.ts | Project snapshots | ✅ Useful |
| suggest.ts | SuggestHandler.ts | AI suggestions | ✅ Useful |
| sync.ts | SyncHandler.ts | Synchronization | ❓ Unclear purpose |
| team.ts | TeamHandler.ts | Team collaboration | ✅ Useful |
| wrap.ts | WrapHandler.ts | Command wrapping | ❓ Unclear purpose |

## Command Implementation Analysis

### ✅ Well-Implemented Commands

#### `heck init` (init.ts + InitHandler.ts)
- **Purpose**: Initialize HelmStack workspace
- **Implementation**: ✅ Complete with proper flags
- **Core Logic**: ✅ Handler implements workspace setup
- **Status**: **READY**

#### `heck plan` (plan.ts + PlanHandler.ts)
- **Purpose**: Generate implementation plans
- **Implementation**: ✅ Complete with goal parameter
- **Core Logic**: ✅ Handler implements AI planning
- **Status**: **READY**

#### `heck status` (status.ts + StatusHandler.ts)
- **Purpose**: Show project health and status
- **Implementation**: ✅ Complete with comprehensive info
- **Core Logic**: ✅ Handler shows runlog, index, provider status
- **Status**: **READY**

#### `heck review` (review.ts + ReviewHandler.ts)
- **Purpose**: Static + AI code review
- **Implementation**: ✅ Complete with diff support
- **Core Logic**: ✅ Handler implements review logic
- **Status**: **READY**

### ❌ Critical Missing Commands

#### `heck index` - **HIGH PRIORITY**
- **Missing**: Both CLI and Core implementation
- **Purpose**: Build searchable codebase index
- **Required For**: All search and context operations
- **Impact**: **BLOCKING** - Many other commands depend on this

#### `heck edit` - **HIGH PRIORITY**
- **Missing**: Both CLI and Core implementation
- **Purpose**: Smart code editing with context
- **Required For**: Core editing workflows
- **Impact**: **BLOCKING** - Primary use case

#### `heck test` - **HIGH PRIORITY**
- **Missing**: Both CLI and Core implementation
- **Purpose**: Run tests with intelligent reporting
- **Required For**: Test-driven development loop
- **Impact**: **HIGH** - Key workflow component

#### `heck provider` - **HIGH PRIORITY**
- **Missing**: Both CLI and Core implementation
- **Purpose**: AI provider management
- **Required For**: Basic AI functionality setup
- **Impact**: **BLOCKING** - Required for AI features

#### `heck commit` - **HIGH PRIORITY**
- **Missing**: Both CLI and Core implementation
- **Purpose**: Smart commit message generation
- **Required For**: Git workflow automation
- **Impact**: **HIGH** - Important productivity feature

### 🔧 Commands Needing Alignment

#### Brand Commands
- **Issue**: 3 brand-specific commands not in original plan
- **Decision Needed**: Keep for specialized use or remove for simplicity?
- **Recommendation**: Move to optional addon

#### Unclear Purpose Commands
- `focus.ts` - What does "focus mode" do?
- `sync.ts` - What synchronization is this?
- `wrap.ts` - What command wrapping is this?
- **Action**: Review and clarify or remove

## Recommended Actions

### Immediate (Week 1)
1. **Implement Missing Core Commands**:
   - `heck index` - Critical for all other features
   - `heck provider` - Required for AI setup
   - `heck edit` - Primary editing workflow

2. **Review Unclear Commands**:
   - Document purpose of focus/sync/wrap
   - Decide on brand command fate
   - Clarify pair programming scope

### Short Term (Week 2-3)
3. **Complete Essential Commands**:
   - `heck test` + `heck fix` (test loop)
   - `heck commit` (git workflow)
   - `heck refactor` (code transformation)

4. **Align Command Set**:
   - Either expand plan to include useful extras
   - Or remove extras to match original 23

### Medium Term (Week 4+)
5. **Advanced Commands**:
   - `heck agent run` (multi-agent orchestration)
   - `heck patch` operations (change management)
   - `heck api scaffold` (code generation)

## Command Priority Matrix

### Must Have (Blocking)
- ✅ `heck init` - **DONE**
- ❌ `heck index` - **MISSING**
- ❌ `heck provider` - **MISSING**
- ❌ `heck edit` - **MISSING**
- ✅ `heck status` - **DONE**

### Should Have (High Impact)
- ❌ `heck test` - **MISSING**
- ❌ `heck fix` - **MISSING**
- ❌ `heck commit` - **MISSING**
- ✅ `heck review` - **DONE**
- ✅ `heck plan` - **DONE**

### Could Have (Medium Impact)
- ❌ `heck refactor` - **MISSING**
- ❌ `heck explain` - **MISSING**
- ❌ `heck patch` operations - **MISSING**
- ✅ `heck pr` - **DONE**

### Won't Have (Low Priority)
- ❌ `heck telemetry` - **MISSING**
- ❌ `heck sandbox` - **MISSING**
- ❌ `heck budget` - **MISSING**

## Summary

### Current Status: **40% Complete**
- **Implemented**: 9/23 planned commands (39%)
- **Core Missing**: 14/23 planned commands (61%)
- **Extra Commands**: 13 additional commands
- **Ready for Use**: 4 commands fully functional

### Critical Path
1. **Fix blocking commands**: index, provider, edit
2. **Complete core workflow**: test, fix, commit
3. **Add missing essentials**: refactor, explain
4. **Polish and optimize**: All commands working smoothly

### Recommendation
**Focus on the missing HIGH priority commands first** - they are essential for basic HelmStack functionality. The current implementation has too many experimental features and not enough core functionality.