# HelmStack Organization Workflows

This repository contains reusable GitHub Actions workflows and organization-level templates for the HelmStack ecosystem.

## 🔄 Reusable Workflows

### Build & Test
**File**: `workflows/build-test.yml`

Standard build and test workflow for all HelmStack repositories.

```yaml
# Usage in repository workflows
jobs:
  ci:
    uses: helmstack/.github/.github/workflows/build-test.yml@main
    with:
      node_version: '20'
      package_manager: 'npm'
```

### Contract Tests
**File**: `workflows/contract-test.yml`

Validates contract compliance against `@helmstack/schemas`.

```yaml
# Usage in repository workflows
jobs:
  contract:
    uses: helmstack/.github/.github/workflows/contract-test.yml@main
    with:
      schemas_version: 'latest'
```

### Release
**File**: `workflows/release.yml`

Automated release workflow with optional NPM publishing.

```yaml
# Usage in repository workflows
jobs:
  release:
    uses: helmstack/.github/.github/workflows/release.yml@main
    with:
      npm_publish: true
    secrets:
      NPM_TOKEN: ${{ secrets.NPM_TOKEN }}
      GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

### Showcase Demos
**File**: `workflows/showcase.yml`

Validates and tests demo scenarios for showcase repositories.

```yaml
# Usage in helmstack-showcase
jobs:
  demos:
    uses: helmstack/.github/.github/workflows/showcase.yml@main
    with:
      demo_path: 'demos/'
      record_new_casts: false
```

## 📝 Issue Templates

### Bug Report
Standardized bug report template with environment details and debugging information.

### Feature Request
Structured feature request template with use cases and success criteria.

### RFC (Request for Comments)
Comprehensive template for architectural changes and significant proposals.

## 🔒 Security

### Security Policy
**File**: `SECURITY.md`

Our responsible disclosure policy and security best practices.

- Report vulnerabilities: security@helmstack.dev
- Response time: 48 hours
- Supported versions and security features

## 📋 Pull Request Template

Standardized PR template ensuring:
- Clear change description
- Proper testing coverage
- Impact assessment
- Review guidelines

## 🛠️ Repository Setup

To use these workflows in a HelmStack repository:

1. **Create workflow file** in `.github/workflows/`:

```yaml
name: CI
on: [push, pull_request]

jobs:
  build-test:
    uses: helmstack/.github/.github/workflows/build-test.yml@main

  contract-test:
    uses: helmstack/.github/.github/workflows/contract-test.yml@main
    needs: build-test
```

2. **Configure repository settings**:
   - Enable GitHub Actions
   - Set branch protection rules
   - Configure required status checks

3. **Add repository secrets** (if needed):
   - `NPM_TOKEN` for package publishing
   - Integration tokens for external services

## 🏷️ Labels

Standard labels used across HelmStack repositories:

- `bug` - Something isn't working
- `enhancement` - New feature or request
- `rfc` - Request for Comments
- `documentation` - Improvements or additions to docs
- `good first issue` - Good for newcomers
- `help wanted` - Extra attention is needed
- `breaking` - Breaking change
- `security` - Security-related issue

## 📚 Documentation

For more information about HelmStack development:

- [Contributing Guide](https://github.com/helmstack/helmstack/blob/main/CONTRIBUTING.md)
- [Architecture Overview](https://github.com/helmstack/helmstack/blob/main/docs/architecture.md)
- [Development Setup](https://github.com/helmstack/helmstack/blob/main/docs/development.md)

---

Part of the [HelmStack](https://github.com/helmstack/helmstack) ecosystem.
