<div align="center">

# ⚡ Antigravity Skills Vault

### *Supercharge Google Antigravity & AI Coding Assistants with 31+ Production-Grade Agentic Skills*

<p align="center">
  <a href="https://github.com/Anmolop97/antigravity-skills-vault/stargazers"><img src="https://img.shields.io/github/stars/Anmolop97/antigravity-skills-vault?style=for-the-badge&color=ffd700&logo=star" alt="Stars Badge"/></a>
  <a href="https://github.com/Anmolop97/antigravity-skills-vault/network/members"><img src="https://img.shields.io/github/forks/Anmolop97/antigravity-skills-vault?style=for-the-badge&color=6366f1" alt="Forks Badge"/></a>
  <img src="https://img.shields.io/badge/Skills-31%20Specialized%20Skills-00C853?style=for-the-badge&logo=codeforces&logoColor=white" alt="Skills Badge"/>
  <img src="https://img.shields.io/badge/License-MIT-0ea5e9?style=for-the-badge" alt="License Badge"/>
  <img src="https://img.shields.io/badge/Agent-Antigravity%20%7C%20Claude%20Code-8b5cf6?style=for-the-badge&logo=robot" alt="Compatible Agents"/>
</p>

<p align="center">
  <a href="#-quick-start">🚀 Quick Start</a> •
  <a href="#-skills-catalog">🗂️ Skills Catalog</a> •
  <a href="#-terminal-preview">💻 Preview</a> •
  <a href="#-keeping-vault-in-sync">🔄 Sync Guide</a> •
  <a href="#-contributing">🤝 Contribute</a>
</p>

---

</div>

## 💡 What is Antigravity Skills Vault?

Antigravity Skills are **modular intelligence extensions** that turn generic LLMs into domain-specialized senior engineers. Instead of relying on raw prompts, these skills equip agents with:

- 🛡️ **Zero-Error Quality Gates** (Auto linting, test-driven validation, pre-push verification)
- 🎨 **Distinctive Design Protocols** (Design systems, shadcn/ui patterns, responsive layouts)
- 🧪 **Autonomous Testing & Debugging** (Playwright end-to-end testing, deep root-cause tracing)
- 📄 **Native Office File Generators** (Programmatic docx, xlsx, pptx, and PDF manipulation)
- 🚀 **Full GitOps & CI Automation** (Conventional commits, automated deploys, GH Actions fixing)

---

## 💻 Terminal Preview

```text
PS > .\install.ps1 -Mode Symlink
Found 31 skills to install.
Target: C:\Users\<User>\.gemini\config\skills
Mode:   Symlink

Linked:   frontend-design           [✔ READY]
Linked:   git-workflow              [✔ READY]
Linked:   deployment-engineer       [✔ READY]
Linked:   security-audit            [✔ READY]
...
Installation complete! 31 skills ready for Antigravity & AI Agents.
```

---

## ⚡ Quick Start

### 1-Line Setup (PowerShell)
Clone and install all 31 skills into your local Antigravity environment with a single command:

```powershell
git clone https://github.com/Anmolop97/antigravity-skills-vault.git; cd antigravity-skills-vault; .\install.ps1
```

### Advanced Installation Flags

```powershell
# Default copy mode
.\install.ps1

# Symlink mode (keeps skills dynamically linked to this repo for instant updates)
.\install.ps1 -Mode Symlink

# Overwrite existing skills
.\install.ps1 -Overwrite
```

---

## 🗂️ Skills Catalog

### 🎨 Frontend & Design Systems
| Skill | Capabilities & Key Deliverables | Triggers / Use Cases |
| :--- | :--- | :--- |
| [`frontend-design`](./skills/frontend-design) | Intentional typography, micro-interactions, layout rhythms, non-generic UI. | UI design, landing pages, Tailwind styling. |
| [`shadcn`](./skills/shadcn) | Managing, styling, and composing shadcn/ui registry components. | Component registries, `components.json`, presets. |
| [`react-best-practices`](./skills/react-best-practices) | React 19 & Next.js performance optimizations from Vercel Engineering. | React re-renders, data fetching, bundle sizes. |
| [`web-artifacts-builder`](./skills/web-artifacts-builder) | Complex, multi-component interactive HTML/React artifacts with routing. | Full-fledged prototypes, interactive demos. |

### 🛠️ Architecture & Backend Systems
| Skill | Capabilities & Key Deliverables | Triggers / Use Cases |
| :--- | :--- | :--- |
| [`api-design-principles`](./skills/api-design-principles) | Industry-standard REST & GraphQL design patterns and schema contracts. | API specs, schema reviews, endpoint design. |
| [`auth-implementation-patterns`](./skills/auth-implementation-patterns) | JWT, OAuth2, session state management, and fine-grained RBAC controls. | Auth systems, API security, token refresh. |
| [`tactical-ddd`](./skills/tactical-ddd) | Enforces Domain-Driven Design (Entities, Value Objects, Domain Events). | Complex business logic, avoiding anemic models. |
| [`mcp-builder`](./skills/mcp-builder) | Authoring high-performance Model Context Protocol (FastMCP/TypeScript) servers. | External tool integrations, custom LLM tools. |
| [`claude-api`](./skills/claude-api) | Reference for Anthropic Claude SDK, token counters, tool use, and caching. | LLM integrations, streaming, MCP servers. |

### 🚀 Git, CI/CD & Deployment Automation
| Skill | Capabilities & Key Deliverables | Triggers / Use Cases |
| :--- | :--- | :--- |
| [`git-workflow`](./skills/git-workflow) | Conventional commits, branch management, merge conflict resolution, and PR drafting. | Git commits, branch workflows, stash/cherry-pick. |
| [`github-deploy`](./skills/github-deploy) | Automated build verification, quality gates, staging, and deployment pushes. | "deploy", "ship changes", automated release. |
| [`deployment-engineer`](./skills/deployment-engineer) | Advanced CI/CD, GitOps workflows (ArgoCD/Flux), progressive delivery, and zero-downtime ops. | Pipeline design, container security, platform engineering. |
| [`gh-fix-ci`](./skills/gh-fix-ci) | Inspects, debugs, and formulates remediation plans for failing GitHub Actions checks. | PR build failures, CI red flags. |

### 🧪 Testing, Debugging & Security Auditing
| Skill | Capabilities & Key Deliverables | Triggers / Use Cases |
| :--- | :--- | :--- |
| [`debugging-and-error-recovery`](./skills/debugging-and-error-recovery) | Systematic root-cause debugging methodology instead of blind patching. | Unexpected errors, broken builds, test failures. |
| [`webapp-testing`](./skills/webapp-testing) | Playwright test automation, browser screenshot capture, and UI debugging. | End-to-end verification, browser interaction. |
| [`unit-testing-test-generate`](./skills/unit-testing-test-generate) | Generates robust, maintainable unit tests with high boundary/edge-case coverage. | Test suites, regression testing, TDD. |
| [`security-audit`](./skills/security-audit) | Vulnerability scanning, secrets leakage checks, SQL injection, and OWASP Top 10 risks. | Security reviews, dependency audit. |

### 📄 Document & Office Automation
| Skill | Capabilities & Key Deliverables | Triggers / Use Cases |
| :--- | :--- | :--- |
| [`docx`](./skills/docx) | Create, edit, inspect, and format professional Word documents (`.docx`, `.dotx`). | Reports, memos, tracked changes, Word templates. |
| [`xlsx`](./skills/xlsx) | Comprehensive spreadsheet processing, formula computing, and tabular cleanup (`.xlsx`, `.csv`). | Data cleaning, financial sheets, CSV conversion. |
| [`pptx`](./skills/pptx) | Create, parse, edit, and layout PowerPoint presentations (`.pptx`, `.potx`). | Slide decks, pitch presentations, speaker notes. |
| [`pdf`](./skills/pdf) | Read, merge, split, watermark, OCR, and extract text/tables from PDF files. | PDF workflows, document scanning, form filling. |

### 🧠 Reasoning, Strategy & Review
| Skill | Capabilities & Key Deliverables | Triggers / Use Cases |
| :--- | :--- | :--- |
| [`code-simplification`](./skills/code-simplification) | Refactors code for maximum readability and clarity without altering behavior. | Code reviews, simplification, removing dead weight. |
| [`source-driven-development`](./skills/source-driven-development) | Grounds technical choices in official, version-verified documentation. | New framework implementations, avoiding deprecated APIs. |
| [`doubt-driven-development`](./skills/doubt-driven-development) | Adversarial cross-examination of high-stakes architectural decisions. | Production auth, irreversible operations, migration plans. |
| [`the-fool`](./skills/the-fool) | Red-team devil's advocate, identifying blind spots and running pre-mortems. | Stress-testing assumptions, finding flaws before rollout. |
| [`interview-me`](./skills/interview-me) | Uncovers underlying user intent via focused, one-question-at-a-time interviews. | Ambiguous tasks, discovery before architecture. |
| [`not-your-babysitter`](./skills/not-your-babysitter) | Autonomous senior-operator mode that resolves tasks end-to-end with verified proof. | Hands-off autonomous engineering. |

### ⚡ Performance, Tokens & Diagrams
| Skill | Capabilities & Key Deliverables | Triggers / Use Cases |
| :--- | :--- | :--- |
| [`context-optimization`](./skills/context-optimization) | Context budgeting, partitioning, retrieval scoping, and KV-cache strategy. | Long sessions, high token consumption. |
| [`token-optimizer`](./skills/token-optimizer) | Audits context waste in agent sessions and measures cost reduction. | Context ceiling reached, cost optimization. |
| [`excalidraw-studio`](./skills/excalidraw-studio) | Generates native `.excalidraw` diagram files from natural descriptions. | Architecture diagrams, flowcharts, ER diagrams. |
| [`antigravity-skills-manager`](./skills/antigravity-skills-manager) | Manages, searches, installs, and updates skills from the Skill Vault. | Skill updates, plugin management. |

---

## 🔄 Keeping Your Vault in Sync

Whenever you modify skills locally, sync them back into this repository with automated path sanitization:

```powershell
.\sync-skills.ps1
```

Then commit and push your updates:
```powershell
git add .
git commit -m "feat: update skills"
git push origin main
```

---

## 🤝 Contributing

We welcome community skills! To contribute:

1. **Fork** this repository.
2. Create your feature branch (`git checkout -b skill/my-awesome-skill`).
3. Add your skill folder under `./skills/` containing a fully detailed `SKILL.md`.
4. Commit your changes (`git commit -m "feat: add my-awesome-skill"`).
5. Push to your branch and submit a **Pull Request**.

---

## 📄 License

Distributed under the **MIT License**. See [`LICENSE`](./LICENSE) for full details.

<div align="center">
  <sub>Built with ⚡ for the next generation of AI-assisted engineering. Star ⭐ this repo if you find it helpful!</sub>
</div>
