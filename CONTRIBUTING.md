# Contributing to Antigravity Skills Vault

First off, thank you for considering contributing to the **Antigravity Skills Vault**! 🎉

This repository is a community-driven catalog of production-grade skills designed for Google Antigravity, Claude Code, and autonomous coding agents. Contributions of all kinds—from proposing new skills to refining existing prompts and workflows—are welcome!

---

## 🧭 Code of Conduct

Be respectful, constructive, and collaborative. We are building tooling to help engineers and agents work together seamlessly.

---

## 🛠️ How to Add a New Skill

Each skill is a self-contained capability directory inside `./skills/<skill-name>/`.

### 1. Skill Directory Anatomy

```text
skills/<skill-name>/
├── SKILL.md             # Required: Skill instructions and trigger conditions
├── scripts/             # Optional: Deterministic helper scripts (Python, Bash, PS1)
├── references/          # Optional: Official documentation summaries, schemas
└── examples/            # Optional: Code examples, prompt inputs/outputs
```

### 2. Standard `SKILL.md` Format

Every `SKILL.md` must start with YAML frontmatter:

```markdown
---
name: your-skill-name
description: >-
  A clear, concise 1-2 sentence description explaining exactly what this skill
  achieves, what capabilities it adds, and when an AI agent should activate it.
---

# Skill Title

Detailed operational workflow instructions, quality gates, and procedural rules...
```

### 3. Guidelines for High-Quality Skills

- **Deterministic Quality Gates**: Emphasize explicit verification commands (e.g., test suites, linters, pre-push checks) over vague assumptions.
- **Path Portability**: Never hardcode personal paths (e.g., `C:\Users\username`). Use dynamic variables or placeholders like `<project-root>`.
- **Zero Secrets**: Do NOT include real API keys, credentials, or private URLs in examples or scripts.

---

## 🚀 Contribution Workflow

1. **Fork the Repository**:
   Click the **Fork** button at the top right of this repository.

2. **Clone your Fork**:
   ```bash
   git clone https://github.com/<your-username>/antigravity-skills-vault.git
   cd antigravity-skills-vault
   ```

3. **Create a Feature Branch**:
   ```bash
   git checkout -b skill/your-skill-name
   ```

4. **Add Your Skill**:
   Create your folder under `./skills/<your-skill-name>` with a compliant `SKILL.md`.

5. **Commit with Conventional Commits**:
   ```bash
   git add .
   git commit -m "feat(skill): add your-skill-name"
   ```

6. **Push to Your Fork**:
   ```bash
   git push origin skill/your-skill-name
   ```

7. **Open a Pull Request**:
   Go to the original repo and click **"New Pull Request"**. Clearly describe the purpose of the skill, when it triggers, and how it was tested.

---

## 💡 Where to Start?

Check out our [Good First Issues](https://github.com/Anmolop97/antigravity-skills-vault/issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+issue%22) for requested skills that the community is looking for!
