# ⚡ Antigravity Skills Vault

A curated collection of production-grade, highly specialized agentic skills for **Google Antigravity**, **Claude Code**, and modern LLM coding agents.

![Skills Count](https://img.shields.io/badge/Skills-31%20Specialized%20Skills-brightgreen?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)
![Agent Compatible](https://img.shields.io/badge/Agent-Antigravity%20%7C%20Claude%20Code-purple?style=for-the-badge)

---

## 📖 Overview

Skills are modular capability extensions that equip AI agents with domain-specific engineering standards, workflow protocols, testing methodologies, and architectural patterns.

This repository serves as a centralized vault to **version-control**, **sync across workstations**, and **share** battle-tested skills across projects.

---

## ⚡ Quick Start & Installation

### 1. Clone the Vault
```powershell
git clone https://github.com/<your-username>/antigravity-skills-vault.git
cd antigravity-skills-vault
```

### 2. Install Skills to Antigravity
Run the installation script to copy or link all skills into your local Antigravity environment (`~/.gemini/config/skills`):

```powershell
# Copy mode (recommended default)
.\install.ps1

# Or symlink mode (keeps files linked directly to this repo)
.\install.ps1 -Mode Symlink

# Force overwrite existing local skills
.\install.ps1 -Overwrite
```

---

## 🗂️ Skills Catalog

### 🎨 Frontend & Design
| Skill | Description | Triggers / Use Cases |
| :--- | :--- | :--- |
| [`frontend-design`](./skills/frontend-design) | Intentional visual design, typography, spacing, and avoiding templated defaults. | UI design, landing pages, CSS/Tailwind styling. |
| [`shadcn`](./skills/shadcn) | Best practices for managing, styling, and composing shadcn/ui components. | Component registries, `components.json`, presets. |
| [`react-best-practices`](./skills/react-best-practices) | React 19 & Next.js performance guidelines from Vercel Engineering. | React re-renders, data fetching, bundle optimization. |
| [`web-artifacts-builder`](./skills/web-artifacts-builder) | Complex, multi-component interactive HTML/React artifacts with routing. | Full-fledged prototypes, interactive demos. |

### 🛠️ Architecture & Backend
| Skill | Description | Triggers / Use Cases |
| :--- | :--- | :--- |
| [`api-design-principles`](./skills/api-design-principles) | REST and GraphQL design patterns for intuitive, maintainable APIs. | API specs, schema reviews, endpoint standards. |
| [`auth-implementation-patterns`](./skills/auth-implementation-patterns) | JWT, OAuth2, session management, and RBAC authorization protocols. | Authentication systems, API security, token refresh. |
| [`tactical-ddd`](./skills/tactical-ddd) | Enforces tactical Domain-Driven Design (Entities, Value Objects, Aggregates). | Domain modeling, avoiding anemic models. |
| [`mcp-builder`](./skills/mcp-builder) | Guides authoring high-quality Model Context Protocol (FastMCP/TypeScript) servers. | External tool integrations, custom LLM tools. |
| [`claude-api`](./skills/claude-api) | Reference for Anthropic Claude SDK, token counters, tool use, and caching. | LLM integrations, streaming, MCP servers. |

### 🚀 Git, CI/CD & Deployment
| Skill | Description | Triggers / Use Cases |
| :--- | :--- | :--- |
| [`git-workflow`](./skills/git-workflow) | Conventional commits, branch management, merge conflict resolution, and PR drafting. | Git commits, branch workflows, stash/cherry-pick. |
| [`github-deploy`](./skills/github-deploy) | Automated build verification, quality gates, staging, and deployment pushes. | "deploy", "ship changes", automated deployment. |
| [`deployment-engineer`](./skills/deployment-engineer) | Advanced CI/CD, GitOps workflows (ArgoCD/Flux), progressive delivery, and zero-downtime ops. | Pipeline design, container security, platform engineering. |
| [`gh-fix-ci`](./skills/gh-fix-ci) | Inspects, debugs, and formulates remediation plans for failing GitHub Actions checks. | PR build failures, CI red flags. |

### 🧪 Testing, Debugging & Security
| Skill | Description | Triggers / Use Cases |
| :--- | :--- | :--- |
| [`debugging-and-error-recovery`](./skills/debugging-and-error-recovery) | Systematic root-cause debugging methodology instead of blind patching. | Unexpected errors, broken builds, test failures. |
| [`webapp-testing`](./skills/webapp-testing) | Playwright test automation, browser screenshot capture, and UI debugging. | End-to-end verification, browser interaction. |
| [`unit-testing-test-generate`](./skills/unit-testing-test-generate) | Generates robust, maintainable unit tests with high boundary/edge-case coverage. | Test suites, regression testing, TDD. |
| [`security-audit`](./skills/security-audit) | Vulnerability scanning, secrets leakage checks, SQL injection, and OWASP Top 10 risks. | Security reviews, dependency audit. |

### 📄 Documents & Data Extraction
| Skill | Description | Triggers / Use Cases |
| :--- | :--- | :--- |
| [`docx`](./skills/docx) | Create, edit, inspect, and format professional Word documents (`.docx`, `.dotx`). | Reports, memos, tracked changes, Word templates. |
| [`xlsx`](./skills/xlsx) | Comprehensive spreadsheet processing, formula computing, and tabular cleanup (`.xlsx`, `.csv`). | Data cleaning, financial sheets, CSV conversion. |
| [`pptx`](./skills/pptx) | Create, parse, edit, and layout PowerPoint presentations (`.pptx`, `.potx`). | Slide decks, pitch presentations, speaker notes. |
| [`pdf`](./skills/pdf) | Read, merge, split, watermark, OCR, and extract text/tables from PDF files. | PDF workflows, document scanning, form filling. |

### 🧠 Reasoning, Strategy & Review
| Skill | Description | Triggers / Use Cases |
| :--- | :--- | :--- |
| [`code-simplification`](./skills/code-simplification) | Refactors code for maximum readability and clarity without altering behavior. | Code reviews, simplification, removing dead weight. |
| [`source-driven-development`](./skills/source-driven-development) | Grounds technical choices in official, version-verified documentation. | New framework implementations, avoiding deprecated APIs. |
| [`doubt-driven-development`](./skills/doubt-driven-development) | Adversarial cross-examination of high-stakes architectural decisions. | Production auth, irreversible operations, migration plans. |
| [`the-fool`](./skills/the-fool) | Red-team devil's advocate, identifying blind spots and running pre-mortems. | Stress-testing assumptions, finding flaws before rollout. |
| [`interview-me`](./skills/interview-me) | Uncovers underlying user intent via focused, one-question-at-a-time interviews. | Ambiguous tasks, discovery before architecture. |
| [`not-your-babysitter`](./skills/not-your-babysitter) | Autonomous senior-operator mode that resolves tasks end-to-end with verified proof. | Hands-off autonomous engineering. |

### ⚡ Optimization & Diagrams
| Skill | Description | Triggers / Use Cases |
| :--- | :--- | :--- |
| [`context-optimization`](./skills/context-optimization) | Context budgeting, partitioning, retrieval scoping, and KV-cache strategy. | Long sessions, high token consumption. |
| [`token-optimizer`](./skills/token-optimizer) | Audits context waste in agent sessions and measures cost reduction. | Context ceiling reached, cost optimization. |
| [`excalidraw-studio`](./skills/excalidraw-studio) | Generates native `.excalidraw` diagram files from descriptions. | Architecture diagrams, flowcharts, ER diagrams. |
| [`antigravity-skills-manager`](./skills/antigravity-skills-manager) | Manages, searches, installs, and updates skills from the Skill Vault. | Skill updates, plugin management. |

---

## 🔄 Keeping Vault in Sync

Whenever you tweak or add new skills locally in your Antigravity environment, sync them back into this repository with automatic personal path sanitization:

```powershell
.\sync-skills.ps1
```

Then commit and push your updates:
```powershell
git add .
git commit -m "feat: add or update skills"
git push origin main
```

---

## 🤝 Contributing

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/amazing-skill`)
3. Ensure every skill folder contains a compliant `SKILL.md` with clear trigger criteria
4. Commit your Changes (`git commit -m 'feat: add amazing-skill'`)
5. Push to the Branch (`git push origin feature/amazing-skill`)
6. Open a Pull Request

---

## 📄 License

Distributed under the **MIT License**. See [`LICENSE`](./LICENSE) for more information.
