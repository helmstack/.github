# 📁 HelmStack File Structure

## `heck init` Command Output

When you run `heck init` in your project directory, it creates the following structure:

```
your-project/
├── .heck/                    # HelmStack workspace directory
│   ├── config.yml           # Project-specific configuration
│   ├── index/               # Codebase index and cache
│   │   ├── files.db         # File metadata database
│   │   ├── symbols.db       # Symbol and dependency graph
│   │   └── embeddings/      # Vector embeddings cache
│   ├── logs/                # Operation logs and audit trail
│   │   ├── commands.log     # Command execution history
│   │   ├── errors.log       # Error tracking
│   │   └── performance.log  # Performance metrics
│   ├── patches/             # Patch management
│   │   ├── pending/         # Pending patches
│   │   ├── applied/         # Applied patches
│   │   └── rollback/        # Rollback data
│   ├── recipes/             # Custom task recipes
│   │   ├── built-in/        # Built-in recipes
│   │   └── custom/          # User-defined recipes
│   ├── cache/               # Various caches
│   │   ├── providers/       # AI provider response cache
│   │   ├── ast/            # AST parsing cache
│   │   └── tests/          # Test result cache
│   └── temp/               # Temporary files
├── .heckrc                  # User configuration file
├── .heckignore             # Files to ignore (like .gitignore)
└── your-existing-files...
```

## Configuration Files

### `.heckrc` (Project Root)
```yaml
# HelmStack Project Configuration
version: "1.0.0"
project:
  name: "my-project"
  type: "typescript"  # typescript, javascript, python, go

providers:
  default: "auto"     # auto, openai, anthropic, ollama, google
  fallback: ["openai", "anthropic"]

features:
  ai_enabled: true
  local_only: false
  telemetry: true

indexing:
  auto_update: true
  include_tests: true
  exclude_patterns:
    - "node_modules/**"
    - "dist/**"
    - "*.log"

policies:
  require_review: ["package.json", "*.env*", "migrations/**"]
  block_secrets: true
  auto_backup: true
```

### `.heckignore` (Project Root)
```
# HelmStack ignore file (similar to .gitignore)

# Dependencies
node_modules/
vendor/
__pycache__/

# Build outputs
dist/
build/
*.min.js
*.map

# Logs and temps
*.log
.tmp/
.cache/

# IDE files
.vscode/
.idea/
*.swp

# Environment files (unless explicitly needed)
.env.local
.env.production
```

## Directory Usage

### `.heck/index/` - Codebase Intelligence
- **Purpose**: Stores parsed codebase structure and embeddings
- **Files**:
  - `files.db`: SQLite database with file metadata
  - `symbols.db`: Function/class/variable definitions and references
  - `embeddings/`: Vector representations for semantic search
- **Size**: Typically 1-5MB for medium projects
- **Auto-generated**: Yes, updates on file changes

### `.heck/logs/` - Audit Trail
- **Purpose**: Complete operation history for debugging and compliance
- **Files**:
  - `commands.log`: Every heck command executed with timestamps
  - `errors.log`: Errors and warnings with context
  - `performance.log`: Command execution times and resource usage
- **Rotation**: Automatically rotated weekly
- **Format**: Structured JSON for machine parsing

### `.heck/patches/` - Change Management
- **Purpose**: Atomic change tracking with rollback capability
- **Structure**:
  - `pending/`: Changes waiting to be applied
  - `applied/`: Successfully applied changes with metadata
  - `rollback/`: Backup data for complete rollback
- **Format**: Git-style diff files with metadata

### `.heck/cache/` - Performance Optimization
- **Purpose**: Cache expensive operations for speed
- **Contents**:
  - `providers/`: AI provider responses (with expiration)
  - `ast/`: Parsed AST trees for faster code analysis
  - `tests/`: Test results to avoid re-running unchanged tests
- **Management**: Automatic cleanup based on age and size

## Global vs Project Configuration

### Global Configuration (`~/.heck/`)
```
~/.heck/
├── global.yml              # User-wide settings
├── providers/              # AI provider credentials
│   ├── openai.key
│   ├── anthropic.key
│   └── google.key
├── recipes/                # User's custom recipes
└── cache/                  # Global cache (shared across projects)
```

### Project Configuration (`.heck/`)
- **Inherits**: Global settings as defaults
- **Overrides**: Project-specific configuration
- **Isolated**: Each project has its own index and cache
- **Portable**: Can be committed to git (except sensitive data)

## File Permissions & Security

### Sensitive Files (Restricted Access)
- `.heck/providers/` - API keys and credentials
- `.heck/logs/` - May contain sensitive operation details
- `.heck/cache/providers/` - Cached AI responses

### Safe to Commit
- `.heckrc` - Project configuration
- `.heckignore` - Ignore patterns
- `.heck/recipes/custom/` - Custom task recipes
- `.heck/config.yml` - Project-specific settings

### Gitignore Recommendations
```gitignore
# Add to your .gitignore
.heck/logs/
.heck/cache/
.heck/temp/
.heck/providers/
```

## Command-Specific File Creation

### `heck index`
**Creates/Updates**:
- `.heck/index/files.db`
- `.heck/index/symbols.db`
- `.heck/index/embeddings/*.vec`

### `heck patch create`
**Creates**:
- `.heck/patches/pending/patch-{timestamp}.diff`
- `.heck/patches/pending/patch-{timestamp}.meta.json`

### `heck commit`
**Creates**:
- `.heck/logs/commits.log`
- Updates git repository

### `heck test`
**Creates**:
- `.heck/cache/tests/results-{hash}.json`
- `.heck/logs/test-runs.log`

## Storage Management

### Automatic Cleanup
- **Cache**: 30-day expiration for most cached data
- **Logs**: Weekly rotation, 3-month retention
- **Patches**: Keep applied patches for 30 days
- **Temp**: Clean on each command execution

### Manual Cleanup Commands
```bash
heck cache clear           # Clear all caches
heck cache clear --old     # Clear only expired cache
heck logs rotate           # Force log rotation
heck cleanup               # Full cleanup (interactive)
```

### Size Monitoring
- **Typical Usage**: 5-50MB per project
- **Large Projects**: May reach 100-200MB
- **Alerts**: Warn when .heck/ exceeds 500MB

## Migration & Backup

### Project Migration
```bash
# Backup current project state
heck backup create

# Restore from backup
heck backup restore backup-{timestamp}.tar.gz
```

### Version Upgrades
- **Automatic**: `.heck/` structure auto-migrates on version updates
- **Backward Compatible**: Old structures supported for 2 major versions
- **Migration Logs**: Track all migrations in `.heck/logs/migrations.log`

This structure ensures HelmStack operations are transparent, auditable, and easily manageable while keeping your project directory clean and organized.