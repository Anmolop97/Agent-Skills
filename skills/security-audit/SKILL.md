---
name: security-audit
description: Security auditing and vulnerability scanner. Use when the user asks to review code security, audit dependencies, check for secrets leakage, SQL injections, or OWASP top 10 risks.
---

# Security Audit Skill

Perform systematic security reviews of code and configuration:

## 1. Secrets & Credentials Detection
- Scan for hardcoded API keys, JWT tokens, database connection strings, private keys, or passwords.
- Verify environment variables are used instead (`process.env`, `os.environ`).

## 2. Common Vulnerabilities (OWASP Top 10)
- **SQL / NoSQL Injection:** Ensure all queries use parameterized queries or ORM abstractions; never concatenate user input directly into queries.
- **Cross-Site Scripting (XSS):** Check that user input is properly sanitized or escaped before rendering in HTML/DOM.
- **Cross-Site Request Forgery (CSRF):** Verify anti-CSRF tokens or SameSite cookie configurations on state-modifying requests.
- **Broken Access Control:** Verify authorization checks happen on the server side, not just in frontend UI logic.
- **Insecure Dependencies:** Inspect `package.json`, `requirements.txt`, or lockfiles for outdated or known-vulnerable packages.

## 3. Reporting Format
Structure findings with:
- **Severity:** High / Medium / Low
- **Vulnerability:** Short description
- **Location:** File and line number
- **Remediation:** Concrete code snippet showing how to fix the issue safely
