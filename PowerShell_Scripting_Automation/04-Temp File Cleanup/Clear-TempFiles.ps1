<#
.SYNOPSIS
    Temp File Cleanup Tool - IT Support Automation
.DESCRIPTION
    This script cleans temporary files and logs older than X days.
    It shows a preview of what will be deleted, asks for confirmation,
    and generates a detailed log report.
.AUTHOR
    [YOUR NAME]
.DATE
    [CURRENT DATE]
#>

# Clear screen
Clear-Host

# Banner
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "       TEMP FILE CLEANUP TOOL v1.0" -ForegroundColor Yellow
Write-Host "       Created by: [YOUR NAME]" -ForegroundColor Yellow
Write-Host "       Date: $(Get-Date)" -ForegroundColor Yellow
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""

# -------------------- CHECK ADMIN RIGHTS --------------------
$CurrentUser = [Security.Principal.WindowsIdentity]::GetCurrent()
$Principal = New-Object Security.Principal.WindowsPrincipal($CurrentUser)
$IsAdmin = $Principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

if (-not $IsAdmin) {
    Write-Host "[ERROR] This script must be run as Administrator!" -ForegroundColor Red
    Write-Host "Please right-click PowerShell and select 'Run as Administrator'." -ForegroundColor Yellow
    Read-Host "Press ENTER to exit"
    exit
}
Write-Host "[OK] Running as Administrator." -ForegroundColor Green
Write-Host ""

# -------------------- ASK USER FOR DAYS THRESHOLD --------------------
Write-Host "How old should files be before deleting?" -ForegroundColor White
Write-Host "  (Example: 7 = delete files older than 7 days)" -ForegroundColor Gray
Write-Host ""

$DaysInput = Read-Host "Enter number of days (default = 30)"

if ([string]::IsNullOrWhiteSpace($DaysInput)) {
    $DaysOld = 30
} else {
    $DaysOld = [int]$DaysInput
}

$CutoffDate = (Get-Date).AddDays(-$DaysOld)

Write-Host ""
Write-Host "Files older than: $CutoffDate" -ForegroundColor Cyan
Write-Host ""

# -------------------- DEFINE TARGET FOLDERS --------------------
$TargetFolders = @(
    @{ Name = "Windows Temp";       Path = "C:\Windows\Temp" },
    @{ Name = "User Temp";          Path = $env:TEMP },
    @{ Name = "Windows Prefetch";   Path = "C:\Windows\Prefetch" },
    @{ Name = "Windows SoftwareDistribution Downloads"; Path = "C:\Windows\SoftwareDistribution\Download" }
)

# -------------------- SCAN & PREVIEW --------------------
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "    SCANNING FOR OLD FILES (Preview)" -ForegroundColor Yellow
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""

$AllFiles = @()
$TotalSize = 0

foreach ($Folder in $TargetFolders) {
    if (Test-Path $Folder.Path) {
        Write-Host "Scanning: $($Folder.Name)..." -ForegroundColor White
        
        try {
            $Files = Get-ChildItem -Path $Folder.Path -Recurse -File -ErrorAction SilentlyContinue |
                     Where-Object { $_.LastWriteTime -lt $CutoffDate }
            
            $FolderSize = ($Files | Measure-Object -Property Length -Sum).Sum
            $FolderCount = $Files.Count
            
            if ($FolderSize) {
                $FolderSizeMB = [math]::Round($FolderSize / 1MB, 2)
            } else {
                $FolderSizeMB = 0
            }
            
            Write-Host "    Found: $FolderCount files ($FolderSizeMB MB)" -ForegroundColor Gray
            
            $AllFiles += $Files
            $TotalSize += $FolderSize
        } catch {
            Write-Host "    [WARNING] Could not scan folder: $_" -ForegroundColor Yellow
        }
    } else {
        Write-Host "Skipping: $($Folder.Name) (not found)" -ForegroundColor DarkGray
    }
}

$TotalCount = $AllFiles.Count
$TotalSizeMB = [math]::Round($TotalSize / 1MB, 2)
$TotalSizeGB = [math]::Round($TotalSize / 1GB, 2)

Write-Host ""
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "    PREVIEW SUMMARY" -ForegroundColor Yellow
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "Total Files Found : $TotalCount" -ForegroundColor White
Write-Host "Total Space       : $TotalSizeMB MB ($TotalSizeGB GB)" -ForegroundColor White
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""

if ($TotalCount -eq 0) {
    Write-Host "No files older than $DaysOld days were found. Nothing to clean." -ForegroundColor Green
    Read-Host "Press ENTER to exit"
    exit
}

# -------------------- ASK FOR CONFIRMATION --------------------
$Confirm = Read-Host "Delete these $TotalCount files? (Y/N)"
if ($Confirm -ne "Y" -and $Confirm -ne "y") {
    Write-Host "Cleanup cancelled by user. No files were deleted." -ForegroundColor Yellow
    Read-Host "Press ENTER to exit"
    exit
}

# -------------------- DELETE FILES --------------------
Write-Host ""
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "    DELETING OLD FILES" -ForegroundColor Yellow
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""

$DeletedCount = 0
$FailedCount = 0
$FreedSize = 0
$LogEntries = @()

foreach ($File in $AllFiles) {
    try {
        $FileSize = $File.Length
        Remove-Item -Path $File.FullName -Force -ErrorAction Stop
        $DeletedCount++
        $FreedSize += $FileSize
        $LogEntries += "DELETED: $($File.FullName) | Size: $([math]::Round($FileSize/1KB,2)) KB"
    } catch {
        $FailedCount++
        $LogEntries += "FAILED : $($File.FullName) | Reason: $($_.Exception.Message)"
    }
}

$FreedMB = [math]::Round($FreedSize / 1MB, 2)

# -------------------- SAVE LOG --------------------
$LogDate = Get-Date -Format "yyyy-MM-dd_HH-mm"
$Desktop = [Environment]::GetFolderPath("Desktop")
$LogPath = "$Desktop\Temp_Cleanup_Log_$LogDate.txt"

$LogHeader = @"
============================================
    TEMP FILE CLEANUP LOG
============================================
Date           : $(Get-Date)
Computer       : $env:COMPUTERNAME
User           : $env:USERNAME
Days Threshold : $DaysOld days
Cutoff Date    : $CutoffDate
--------------------------------------------
Files Deleted  : $DeletedCount
Files Failed   : $FailedCount
Space Freed    : $FreedMB MB
============================================
DETAILED LOG:
--------------------------------------------
"@

$LogHeader | Out-File -FilePath $LogPath
$LogEntries | Out-File -FilePath $LogPath -Append

# -------------------- FINAL SUMMARY --------------------
Write-Host ""
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "    CLEANUP COMPLETE!" -ForegroundColor Yellow
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "Files Deleted : $DeletedCount" -ForegroundColor Green
Write-Host "Files Failed  : $FailedCount" -ForegroundColor $(if ($FailedCount -gt 0) { "Yellow" } else { "Green" })
Write-Host "Space Freed   : $FreedMB MB" -ForegroundColor Green
Write-Host "Log Saved To  : $LogPath" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""

Read-Host "Press ENTER to close this window"
