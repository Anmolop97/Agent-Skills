---
name: github-deploy
description: >-
  Automated GitHub deployment, build verification, and git push workflow for Coditech / TheHellspires
  and modern web projects. Activates whenever the user asks to "deploy", "deploy krde", "push to github",
  "push to remote", "ship changes", "update github", or publish code updates to GitHub.
---

# GitHub Deployment & Release Workflow

This skill automates the full end-to-end build verification, git staging, conventional commit generation, and deployment push to GitHub. It ensures zero broken builds on remote and enforces the mandatory push confirmation gate.

---

## 1. Project & Repository Context

- **Remote Repository**: `<your-remote-repository-url>` (e.g., `https://github.com/username/repo.git`)
- **Primary Branch**: `main` (tracks `origin/main`)
- **Technology Stack**: React 19, TypeScript, Vite, Tailwind CSS, Framer Motion, Lucide Icons
- **Local Dev Directory**: `<project-root-directory>` (e.g., `~/.gemini/antigravity/scratch/project-name`)

---

## 2. Standard Deployment Procedure

Follow these sequential steps whenever the user requests a deployment or git push:

### Step 1: Pre-Build Quality Gate
Never stage or commit code without verifying that TypeScript and Vite production builds pass with 0 errors.

Run the build command (Windows PowerShell syntax):
```powershell
npx.cmd tsc -b; npm.cmd run build
```
- If compilation fails, **STOP immediately**, diagnose and fix the errors, and re-run the build.
- Only proceed to Step 2 after the build exits with code `0`.

### Step 2: Inspect Modified & Untracked Files
Check the git working tree:
```powershell
git status --short
```
Review modified (`M`), untracked (`??`), or deleted (`D`) files to ensure no sensitive files (`.env`, secrets, unnecessary temp files) are being staged.

### Step 3: Stage Changes
Stage the validated files:
```powershell
git add .
```

### Step 4: Conventional Commit Generation
Draft an informative conventional commit message summarizing the changes:
- `feat:` for new UI components, features, or architectural enhancements
- `fix:` for bug fixes, CSS corrections, or runtime error resolutions
- `refactor:` for code simplification or restructuring without behavior changes
- `chore:` for dependency updates or configuration tweaks

Execute the commit:
```powershell
git commit -m "<type>: <concise description of changes>"
```

### Step 5: Mandatory Push Gate (User Confirmation)
> [!IMPORTANT]
> **NEVER execute `git push` automatically without explicit user approval.**
> Always present the commit message and hash to the user, then ask for final push confirmation.

Example confirmation prompt:
> "Build verified (0 errors) and commit `[hash]` created. May I push these changes to `origin/main` on GitHub?"

### Step 6: Push to Remote & Verify
Upon receiving user confirmation, push to the remote repository:
```powershell
git push origin main
```

Verify that the remote working tree is clean:
```powershell
git status
```

### Step 7: Report Success
Provide the user with:
1. The remote commit link: `https://github.com/<username>/<repo>/commit/<commit-hash>`
2. A brief bullet-point summary of the deployed features/fixes.
3. Clean working tree confirmation (`working tree clean`).
