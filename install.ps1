<#
.SYNOPSIS
    Installs skills from Antigravity Skills Vault to your local Antigravity configuration.

.DESCRIPTION
    Copies or links all skills in this vault to $HOME\.gemini\config\skills.

.PARAMETER Mode
    'Copy' (default) copies files directly.
    'Symlink' creates symbolic links (requires Developer Mode or Administrator privileges).

.PARAMETER Overwrite
    Overwrites existing skill folders if set.

.EXAMPLE
    .\install.ps1
    .\install.ps1 -Mode Symlink
    .\install.ps1 -Overwrite
#>
[CmdletBinding()]
param(
    [ValidateSet('Copy', 'Symlink')]
    [string]$Mode = 'Copy',

    [switch]$Overwrite
)

$ErrorActionPreference = 'Stop'

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$sourceSkillsDir = Join-Path $scriptDir "skills"
$targetConfigDir = Join-Path $HOME ".gemini\config\skills"

if (!(Test-Path $sourceSkillsDir)) {
    Write-Error "Source skills directory not found at: $sourceSkillsDir"
    exit 1
}

if (!(Test-Path $targetConfigDir)) {
    Write-Host "Creating target directory: $targetConfigDir" -ForegroundColor Cyan
    New-Item -ItemType Directory -Path $targetConfigDir -Force | Out-Null
}

$skills = Get-ChildItem -Directory $sourceSkillsDir
Write-Host "Found $($skills.Count) skills to install." -ForegroundColor Green
Write-Host "Target: $targetConfigDir" -ForegroundColor Gray
Write-Host "Mode:   $Mode`n" -ForegroundColor Gray

$installedCount = 0
$skippedCount = 0

foreach ($skill in $skills) {
    $destination = Join-Path $targetConfigDir $skill.Name

    if (Test-Path $destination) {
        if ($Overwrite) {
            Write-Host "Overwriting: $($skill.Name)" -ForegroundColor Yellow
            Remove-Item -Path $destination -Recurse -Force
        } else {
            Write-Host "Skipping (already exists): $($skill.Name)" -ForegroundColor DarkGray
            $skippedCount++
            continue
        }
    }

    if ($Mode -eq 'Symlink') {
        try {
            New-Item -ItemType SymbolicLink -Path $destination -Target $skill.FullName -Force | Out-Null
            Write-Host "Linked:   $($skill.Name)" -ForegroundColor Cyan
            $installedCount++
        } catch {
            Write-Warning "Symlink failed for $($skill.Name) (admin privileges might be needed). Falling back to Copy..."
            Copy-Item -Path $skill.FullName -Destination $destination -Recurse -Force
            Write-Host "Copied:   $($skill.Name)" -ForegroundColor Green
            $installedCount++
        }
    } else {
        Copy-Item -Path $skill.FullName -Destination $destination -Recurse -Force
        Write-Host "Copied:   $($skill.Name)" -ForegroundColor Green
        $installedCount++
    }
}

Write-Host "`nInstallation complete! Installed: $installedCount, Skipped: $skippedCount" -ForegroundColor Green
Write-Host "Restart or refresh your Antigravity session to detect new skills." -ForegroundColor Cyan
