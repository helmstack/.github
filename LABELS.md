# 🏷️ HelmStack GitHub Labels

## Label Categories & Colors

### Priority Labels
- `priority:critical` - #B60205 - Issues that block releases or cause data loss
- `priority:high` - #D93F0B - Important features or serious bugs
- `priority:medium` - #FBCA04 - Standard features and bug fixes
- `priority:low` - #0E8A16 - Nice-to-have features or minor issues

### Type Labels
- `type:epic` - #5319E7 - Large features spanning multiple issues
- `type:feature` - #1D76DB - New functionality
- `type:bug` - #D73A4A - Something isn't working
- `type:task` - #0E8A16 - Development tasks
- `type:docs` - #0075CA - Documentation improvements
- `type:test` - #F9D0C4 - Testing related
- `type:refactor` - #5319E7 - Code refactoring
- `type:performance` - #FBCA04 - Performance improvements

### Component Labels
- `component:cli` - #006B75 - CLI interface
- `component:core` - #1F2937 - Core business logic
- `component:addons` - #7C3AED - Service integrations
- `component:providers` - #059669 - AI provider integrations
- `component:schemas` - #DC2626 - Contract definitions
- `component:infrastructure` - #374151 - Build, CI/CD, deployment

### Milestone Labels
- `milestone:m0` - #8B5CF6 - M0: Foundation & Architecture
- `milestone:m1` - #10B981 - M1: Core Runtime + Basic CLI
- `milestone:m2` - #F59E0B - M2: Smart Indexing + Search
- `milestone:m3` - #EF4444 - M3: Code Understanding + AST
- `milestone:m4` - #3B82F6 - M4: Test Integration + Fix Loop
- `milestone:m5` - #8B5CF6 - M5: Git/GitHub Integration
- `milestone:m6` - #F97316 - M6: AI Orchestration + Agents
- `milestone:m7` - #06B6D4 - M7: Polish + Security + Launch

### Status Labels
- `status:blocked` - #D73A4A - Cannot proceed due to dependency
- `status:in-progress` - #FBCA04 - Currently being worked on
- `status:review` - #0075CA - Ready for review
- `status:testing` - #7C3AED - In testing phase
- `status:done` - #0E8A16 - Completed

### Effort Labels
- `effort:xs` - #E1F5FE - < 2 hours
- `effort:s` - #B3E5FC - 2-8 hours
- `effort:m` - #81D4FA - 1-3 days
- `effort:l` - #4FC3F7 - 3-7 days
- `effort:xl` - #29B6F6 - 1-2 weeks
- `effort:xxl` - #0288D1 - > 2 weeks

### Special Labels
- `good-first-issue` - #7057FF - Good for newcomers
- `help-wanted` - #008672 - Extra attention is needed
- `dependencies` - #0366D6 - Pull requests that update a dependency file
- `breaking-change` - #B60205 - Changes that break backward compatibility
- `security` - #D73A4A - Security-related issues
- `performance` - #FBCA04 - Performance-related issues
- `documentation` - #0075CA - Documentation needs update

### AI/ML Labels
- `ai:openai` - #10A37F - OpenAI provider specific
- `ai:anthropic` - #D97706 - Anthropic provider specific
- `ai:google` - #2563EB - Google provider specific
- `ai:ollama` - #7C3AED - Ollama provider specific
- `ai:prompt` - #F59E0B - Prompt engineering related
- `ai:context` - #059669 - Context building related

### User Experience Labels
- `ux:cli` - #6366F1 - CLI user experience
- `ux:performance` - #FBBF24 - Performance user experience
- `ux:error-handling` - #EF4444 - Error handling and messages
- `ux:onboarding` - #10B981 - New user experience

## Label Usage Guidelines

### Priority Assignment
- **Critical**: Security vulnerabilities, data loss, complete feature breakdown
- **High**: Major features, serious bugs affecting core functionality
- **Medium**: Standard features, regular bugs, improvements
- **Low**: Nice-to-have features, minor bugs, optimizations

### Component Assignment
- Every issue should have exactly one primary component label
- Use additional component labels for cross-cutting issues
- Infrastructure includes CI/CD, build systems, deployment

### Milestone Assignment
- All issues should be assigned to a milestone
- Milestones follow the M0-M7 structure
- Issues can be moved between milestones if priorities change

### Effort Estimation
- Based on ideal development time (not calendar time)
- Includes implementation, testing, and documentation
- Review and adjust estimates as work progresses

### Special Label Usage
- `good-first-issue`: Simple, well-defined, doesn't require deep system knowledge
- `help-wanted`: Community contributions welcome
- `breaking-change`: Requires version bump and migration guide
- `security`: Private disclosure process may be needed

## Automation Rules

### Auto-labeling
- PRs auto-labeled based on file paths changed
- Issues auto-labeled based on template used
- Dependencies auto-labeled by Dependabot

### Label Synchronization
- Labels sync across all repositories in HelmStack organization
- Core label set maintained in .github repository
- Repository-specific labels allowed for local needs

### Workflow Integration
- Milestone labels trigger specific GitHub Actions
- Priority labels affect issue sorting and notifications
- Status labels control automated workflows