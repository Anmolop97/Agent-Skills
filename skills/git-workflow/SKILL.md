---
name: git-workflow
description: Professional Git workflow assistant. Use whenever the user asks to commit code, inspect git status, create pull requests, resolve merge conflicts, or format conventional commit messages.
---

# Git Workflow & Commit Crafter

Follow these standards whenever handling Git operations:

## 1. Pre-Commit Verification
- Always run `git status` and `git diff --stat` before staging changes.
- Check that sensitive files (`.env`, secrets, credentials, API keys, build artifacts like `node_modules/` or `dist/`) are NOT staged.
- If untracked sensitive files exist, ensure `.gitignore` is updated before committing.

## 2. Conventional Commit Standards
Format commit messages following the Conventional Commits specification:
`<type>(<optional scope>): <imperative description>`

Types:
- `feat`: A new feature for the user
- `fix`: A bug fix
- `refactor`: Code change that neither fixes a bug nor adds a feature
- `perf`: Code change that improves performance
- `style`: Changes that do not affect code logic (formatting, whitespace)
- `test`: Adding or correcting tests
- `docs`: Documentation changes
- `chore`: Build process, dependencies, tooling changes

## 3. Pull Request (PR) Crafting
When creating PR descriptions:
- Provide a concise summary of changes
- Include a bulleted list of key technical updates
- Note any breaking changes or required environment variables
- List steps for reviewers to test

## 4. Remote Push Guard (Mandatory Approval)
- NEVER run `git push` autonomously or unprompted.
- Always prompt the user for explicit confirmation before pushing any branch or commit to a remote repository.
