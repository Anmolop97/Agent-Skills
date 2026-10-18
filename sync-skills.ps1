<#
.SYNOPSIS
    Syncs skills from your local Antigravity config (~/.gemini/config/skills) into this repository.

.DESCRIPTION
    Pulls local skills, copies them into ./skills, and sanitizes personal user profile paths.

.EXAMPLE
    .\sync-skills.ps1
#>
[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoSkillsDir = Join-Path $scriptDir "skills"
$localSkillsDir = Join-Path $HOME ".gemini\config\skills"

if (!(Test-Path $localSkillsDir)) {
    Write-Error "Local Antigravity skills directory not found at: $localSkillsDir"
    exit 1
}

if (!(Test-Path $repoSkillsDir)) {
    New-Item -ItemType Directory -Path $repoSkillsDir -Force | Out-Null
}

$localSkills = Get-ChildItem -Directory $localSkillsDir
Write-Host "Syncing $($localSkills.Count) skills from $localSkillsDir to $repoSkillsDir..." -ForegroundColor Cyan

$syncedCount = 0
foreach ($skill in $localSkills) {
    $dest = Join-Path $repoSkillsDir $skill.Name
    Copy-Item -Path $skill.FullName -Destination $dest -Recurse -Force
    Write-Host "Synced: $($skill.Name)" -ForegroundColor Green
    $syncedCount++
}

# Path Sanitization
Write-Host "`nSanitizing personal user paths..." -ForegroundColor Yellow
$userPattern = [regex]::Escape($HOME)
$files = Get-ChildItem -Path $repoSkillsDir -Recurse -File -Include *.md, *.json, *.yaml, *.yml, *.sh, *.ps1

$sanitizedFiles = 0
foreach ($file in $files) {
    $content = Get-Content -Path $file.FullName -Raw
    if ($content -match $userPattern) {
        $sanitizedContent = $content -replace $userPattern, '~'
        Set-Content -Path $file.FullName -Value $sanitizedContent -NoNewline
        Write-Host "Sanitized user path in: $($file.Name)" -ForegroundColor Magenta
        $sanitizedFiles++
    }
}

Write-Host "`nSync complete! $syncedCount skills synced, $sanitizedFiles files sanitized." -ForegroundColor Green
Write-Host "You can now inspect changes with 'git status' and commit when ready." -ForegroundColor Gray
