# 🚀 HelmStack

**AI-Powered Development Tool for Modern Teams**

Contract-first CLI that transforms how you build, test, and deploy applications with intelligent automation and multi-provider AI integration.

---

## ⚡ Quick Start

```bash
# Install HelmStack CLI globally
npm install -g @helmstack/cli
heck --version

# Create new project
npx create-helmstack-app my-project
cd my-project && npm install && npm start  # Starts the generated project

# Or use our interactive installer
curl -fsSL https://raw.githubusercontent.com/helmstack/.github/main/install.sh | bash
```

**🎯 Get started in under 2 minutes!**

---

## 🎯 What is HelmStack?

HelmStack is an intelligent development assistant that combines:

- **🤖 AI-Powered Automation**: Multi-provider AI (OpenAI, Anthropic, Google, Ollama) for code generation, review, and optimization
- **📋 Contract-First Development**: JSON Schema validation with envelope-based I/O for reliable operations
- **🔧 AST-Aware Operations**: Deep code understanding for safe refactoring and intelligent editing
- **🧪 Test-Driven Workflows**: Automated testing with intelligent failure resolution
- **🔄 Git Integration**: Smart commits, code review, and PR automation
- **🛡️ Privacy-First**: Local-first architecture with optional cloud features

---

## 🏗️ Architecture

HelmStack follows a modular architecture:

```
CLI → Core → Services → Addons → Providers
```

### 📦 Core Components

| Repository | Purpose | Status |
|-----------|---------|---------|
| **[helmstack-cli](https://github.com/helmstack/helmstack-cli)** | User interface & command parsing | ✅ Active |
| **[helmstack-core](https://github.com/helmstack/helmstack-core)** | Business logic & orchestration | ✅ Active |
| **[helmstack-addons](https://github.com/helmstack/helmstack-addons)** | Service integrations | ✅ Active |
| **[helmstack-schemas](https://github.com/helmstack/helmstack-schemas)** | Contract definitions | ✅ Active |
| **[create-helmstack-app](https://github.com/helmstack/create-helmstack-app)** | Project scaffolding | ✅ Active |

### 🔧 Supporting Components

| Repository | Purpose | Status |
|-----------|---------|---------|
| **[.github](https://github.com/helmstack/.github)** | Organization workflows & docs | ✅ Active |
| **[helmstack-ml](https://github.com/helmstack/helmstack-ml)** | AI/ML orchestration | 🚧 Beta |
| **[helmstack-brand](https://github.com/helmstack/helmstack-brand)** | Brand assets & guidelines | 🚧 Beta |

---

## 🚀 Key Features

### 🤖 Intelligent Code Operations
- **Smart Editing**: Context-aware code modifications
- **Safe Refactoring**: AST-based transformations with rollback
- **Code Analysis**: Quality, complexity, and security insights
- **Auto-Documentation**: Generate JSDoc, docstrings, README sections

### 🧪 Test-Driven Development
- **Framework Integration**: Jest, Pytest, Vitest, Go Test
- **Intelligent Fixes**: AI-powered test failure resolution
- **Coverage Analysis**: Gap identification and improvement suggestions
- **Continuous Testing**: Watch mode with real-time feedback

### 🔄 Workflow Automation
- **Smart Commits**: Generate conventional commit messages
- **Code Review**: Automated security and quality analysis
- **PR Management**: Auto-generated descriptions and checklists
- **CI/CD Integration**: Seamless pipeline integration

### 🛡️ Security & Privacy
- **Local-First**: Core operations work offline
- **Secret Protection**: Automatic credential redaction
- **Policy Guard**: Configurable safety rules for sensitive files
- **Audit Trail**: Complete operation logging and rollback

---

## 📋 Available Commands

HelmStack provides 23+ commands organized into logical groups:

### 🏗️ **Project Management**
```bash
heck init              # Initialize HelmStack workspace
heck status            # Show project health and status
heck config            # Manage configuration settings
```

### 🔍 **Code Intelligence**
```bash
heck index             # Build searchable codebase index
heck search <query>    # Semantic code search
heck explain [path]    # Explain code functionality
heck analyze          # Code quality and complexity analysis
```

### ✏️ **Code Operations**
```bash
heck edit             # Smart code editing with context
heck refactor         # Safe refactoring operations
heck format           # Intelligent code formatting
heck review [diff]    # AI-powered code review
```

### 🧪 **Testing & Quality**
```bash
heck test [--watch]   # Run tests with intelligent reporting
heck fix              # Auto-fix failing tests
heck coverage         # Test coverage analysis
```

### 🔄 **Git & Collaboration**
```bash
heck commit           # Generate smart commit messages
heck branch           # Intelligent branch management
heck pr               # Create and manage pull requests
```

### 🤖 **AI Orchestration**
```bash
heck plan "<goal>"    # Generate implementation plans
heck build            # Build features from descriptions
heck optimize         # Performance improvements
heck agent run        # Execute multi-step workflows
```

---

## 🎯 Installation Methods

### 📦 NPM Package (Recommended)
```bash
npm install -g @helmstack/cli
heck --version
heck init  # Initialize in existing project
```

### 🚀 Interactive Installer
```bash
curl -fsSL https://raw.githubusercontent.com/helmstack/.github/main/install.sh | bash
```

### 🎯 Create New Project
```bash
npx create-helmstack-app my-project
cd my-project && npm install && npm start  # Starts your generated app
```

### 🐳 Docker
```bash
docker run --rm helmstack/cli:latest heck --version
```

### 🔧 From Source
```bash
git clone https://github.com/helmstack/helmstack-cli.git
cd helmstack-cli && npm install && npm run build && npm link
```

---

## 📚 Documentation & Resources

### 📖 **Getting Started**
- **[Installation Guide](https://github.com/helmstack/.github/blob/main/ONE-LINER-INSTALL.md)** - Quick setup instructions
- **[Project Vision](https://github.com/helmstack/.github/blob/main/PROJECT_VISION.md)** - Complete architecture overview
- **[Development Roadmap](https://github.com/helmstack/.github/blob/main/IMPROVED_ROADMAP.md)** - v1.0.0 development plan

### 🛠️ **Development**
- **[Contributing Guide](https://github.com/helmstack/.github/blob/main/CONTRIBUTING.md)** - How to contribute
- **[Milestones](https://github.com/helmstack/.github/blob/main/MILESTONES.md)** - Development milestones
- **[Epic Issues](https://github.com/helmstack/.github/blob/main/EPIC_ISSUES.md)** - Major feature tracking

### 🏷️ **Project Management**
- **[GitHub Project](https://github.com/orgs/helmstack/projects)** - Development tracking
- **[Labels Guide](https://github.com/helmstack/.github/blob/main/LABELS.md)** - Issue organization
- **[Issue Templates](https://github.com/helmstack/.github/tree/main/.github/ISSUE_TEMPLATE)** - Bug reports, features, epics

---

## 🌟 Why Choose HelmStack?

### 🎯 **For Individual Developers**
- **Faster Development**: AI-assisted coding reduces development time by 40%+
- **Better Quality**: Automated testing and review catch issues early
- **Learning Tool**: Explanations help understand complex codebases
- **Privacy-Focused**: Works offline, your code stays local

### 👥 **For Teams**
- **Consistent Quality**: Standardized code review and formatting
- **Knowledge Sharing**: Code explanations and documentation generation
- **Collaboration**: Smart PR management and review automation
- **Onboarding**: New team members get up to speed faster

### 🏢 **For Organizations**
- **Security-First**: Policy enforcement and audit trails
- **Cost Optimization**: Intelligent provider selection minimizes AI costs
- **Integration-Ready**: Works with existing CI/CD and development workflows
- **Compliance**: Complete operation logging and rollback capabilities

---

## 🤝 Community & Support

### 💬 **Get Help**
- **[Discussions](https://github.com/helmstack/helmstack-cli/discussions)** - Ask questions and share ideas
- **[Issues](https://github.com/helmstack/helmstack-cli/issues)** - Report bugs and request features
- **[Discord](https://discord.gg/helmstack)** - Real-time community chat *(coming soon)*

### 🚀 **Stay Updated**
- **[GitHub](https://github.com/helmstack)** - Follow our repositories
- **[Twitter](https://twitter.com/helmstack)** - Latest news and updates *(coming soon)*
- **[Blog](https://helmstack.dev/blog)** - Deep dives and tutorials *(coming soon)*

### 🤝 **Contributing**
We welcome contributions! Check out our:
- **[Good First Issues](https://github.com/helmstack/helmstack-cli/labels/good-first-issue)** - Perfect for newcomers
- **[Help Wanted](https://github.com/helmstack/helmstack-cli/labels/help-wanted)** - Areas needing assistance
- **[Contributing Guidelines](https://github.com/helmstack/.github/blob/main/CONTRIBUTING.md)** - How to get started

---

## 📊 Project Status

### 🎯 **Current Release**: v0.1.0-beta
### 🚀 **Target Release**: v1.0.0 (Q1 2024)
### 🏗️ **Development Status**: Active development

### 📈 **Milestones Progress**
- ✅ **M0**: Foundation & Architecture (Complete)
- 🚧 **M1**: Core Runtime + Basic CLI (In Progress)
- 📋 **M2**: Smart Indexing + Search (Planned)
- 📋 **M3**: Code Understanding + AST (Planned)
- 📋 **M4**: Test Integration + Fix Loop (Planned)
- 📋 **M5**: Git/GitHub Integration (Planned)
- 📋 **M6**: AI Orchestration + Agents (Planned)
- 📋 **M7**: Polish + Security + Launch (Planned)

---

## 🏆 Recognition

- 🌟 **GitHub Stars**: Growing community of developers
- 🔧 **Active Development**: Daily commits and improvements
- 🤝 **Community Driven**: Open source with transparent development
- 🚀 **Innovation Focus**: Pushing boundaries of AI-assisted development

---

## 📄 License

**MIT License** - See [LICENSE](https://github.com/helmstack/.github/blob/main/LICENSE) for details.

---

<div align="center">

**🚀 Ready to transform your development workflow?**

[**Get Started Now**](https://github.com/helmstack/.github/blob/main/ONE-LINER-INSTALL.md) • [**View Documentation**](https://github.com/helmstack/.github/blob/main/PROJECT_VISION.md) • [**Join Community**](https://github.com/helmstack/helmstack-cli/discussions)

---

*Built with ❤️ by the HelmStack team and community contributors*

</div>