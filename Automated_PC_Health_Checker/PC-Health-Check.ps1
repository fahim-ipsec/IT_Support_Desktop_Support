<#
.SYNOPSIS
    Automated PC Health Checker - IT Support Tool
.DESCRIPTION
    This script checks CPU, RAM, Disk Space, and Uptime.
    Generates a health report and saves it to the desktop.
.AUTHOR
    [YOUR NAME]
.DATE
    [CURRENT DATE]
#>

# Clear the screen for a clean look
Clear-Host

# Set console colors for better visual appeal
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "    AUTOMATED PC HEALTH CHECKER v1.0" -ForegroundColor Yellow
Write-Host "    Created by: [YOUR NAME]" -ForegroundColor Yellow
Write-Host "    Date: $(Get-Date)" -ForegroundColor Yellow
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""

# -------------------- FUNCTION 1: CHECK CPU USAGE --------------------
Write-Host "[1] Checking CPU Usage..." -ForegroundColor White

# Get CPU usage using Get-Counter (most reliable method)
$CPU = Get-Counter '\Processor(_Total)\% Processor Time' | Select-Object -ExpandProperty CounterSamples | Select-Object -ExpandProperty CookedValue
$CPU = [math]::Round($CPU, 2)

if ($CPU -gt 80) {
    Write-Host "    CPU Usage: $CPU% [WARNING - HIGH USAGE!]" -ForegroundColor Red
} elseif ($CPU -gt 50) {
    Write-Host "    CPU Usage: $CPU% [Moderate Usage]" -ForegroundColor Yellow
} else {
    Write-Host "    CPU Usage: $CPU% [Normal Usage]" -ForegroundColor Green
}

# -------------------- FUNCTION 2: CHECK RAM USAGE --------------------
Write-Host ""
Write-Host "[2] Checking RAM Usage..." -ForegroundColor White

# Get total and available RAM
$RAM_Total = (Get-CimInstance -Class Win32_ComputerSystem).TotalPhysicalMemory / 1GB
$RAM_Available = (Get-CimInstance -Class Win32_OperatingSystem).FreePhysicalMemory / 1MB
$RAM_Used = $RAM_Total - ($RAM_Available / 1024)
$RAM_Percent = [math]::Round(($RAM_Used / $RAM_Total) * 100, 2)

if ($RAM_Percent -gt 80) {
    Write-Host "    RAM Usage: $RAM_Percent% [WARNING - LOW MEMORY!]" -ForegroundColor Red
} elseif ($RAM_Percent -gt 50) {
    Write-Host "    RAM Usage: $RAM_Percent% [Moderate Usage]" -ForegroundColor Yellow
} else {
    Write-Host "    RAM Usage: $RAM_Percent% [Normal Usage]" -ForegroundColor Green
}
Write-Host "    Total RAM: $([math]::Round($RAM_Total, 2)) GB" -ForegroundColor Gray
Write-Host "    Available RAM: $([math]::Round(($RAM_Available / 1024), 2)) GB" -ForegroundColor Gray

# -------------------- FUNCTION 3: CHECK DISK SPACE (C: DRIVE) --------------------
Write-Host ""
Write-Host "[3] Checking Disk Space (C: Drive)..." -ForegroundColor White

$Disk = Get-PSDrive -Name C
$Disk_Free = [math]::Round(($Disk.Free / 1GB), 2)
$Disk_Used = [math]::Round((($Disk.Used) / 1GB), 2)
$Disk_Total = [math]::Round((($Disk.Free + $Disk.Used) / 1GB), 2)
$Disk_Percent_Free = [math]::Round(($Disk.Free / ($Disk.Free + $Disk.Used)) * 100, 2)

if ($Disk_Percent_Free -lt 20) {
    Write-Host "    Free Space: $Disk_Percent_Free% [WARNING - LOW DISK SPACE!]" -ForegroundColor Red
} elseif ($Disk_Percent_Free -lt 40) {
    Write-Host "    Free Space: $Disk_Percent_Free% [Moderate Space]" -ForegroundColor Yellow
} else {
    Write-Host "    Free Space: $Disk_Percent_Free% [Healthy Space]" -ForegroundColor Green
}
Write-Host "    Total Disk: $Disk_Total GB" -ForegroundColor Gray
Write-Host "    Used Disk: $Disk_Used GB" -ForegroundColor Gray
Write-Host "    Free Disk: $Disk_Free GB" -ForegroundColor Gray

# -------------------- FUNCTION 4: CHECK SYSTEM UPTIME --------------------
Write-Host ""
Write-Host "[4] Checking System Uptime..." -ForegroundColor White

$Uptime = (Get-Date) - (Get-CimInstance -Class Win32_OperatingSystem).LastBootUpTime
$Uptime_Days = $Uptime.Days
$Uptime_Hours = $Uptime.Hours
$Uptime_Minutes = $Uptime.Minutes

Write-Host "    System Uptime: $Uptime_Days Days, $Uptime_Hours Hours, $Uptime_Minutes Minutes" -ForegroundColor Cyan

# -------------------- FUNCTION 5: CHECK INTERNET CONNECTION --------------------
Write-Host ""
Write-Host "[5] Checking Internet Connectivity..." -ForegroundColor White

if (Test-Connection -ComputerName "8.8.8.8" -Count 2 -Quiet) {
    Write-Host "    Internet Status: [CONNECTED]" -ForegroundColor Green
} else {
    Write-Host "    Internet Status: [DISCONNECTED - CHECK NETWORK]" -ForegroundColor Red
}

# -------------------- FUNCTION 6: GENERATE & SAVE REPORT --------------------
Write-Host ""
Write-Host "[6] Generating Health Report..." -ForegroundColor White

$Report_Date = Get-Date -Format "yyyy-MM-dd_HH-mm"
$Desktop = [Environment]::GetFolderPath("Desktop")
$Report_Path = "$Desktop\PC_Health_Report_$Report_Date.txt"

$Report_Content = @"
============================================
        PC HEALTH REPORT
============================================
Report Generated: $(Get-Date)
Computer Name: $env:COMPUTERNAME
Username: $env:USERNAME
--------------------------------------------
CPU USAGE:
- Usage: $CPU%
- Status: $(if ($CPU -gt 80) {"WARNING - HIGH"} elseif ($CPU -gt 50) {"Moderate"} else {"Normal"})
--------------------------------------------
RAM USAGE:
- Total RAM: $([math]::Round($RAM_Total, 2)) GB
- Available RAM: $([math]::Round(($RAM_Available / 1024), 2)) GB
- Usage: $RAM_Percent%
- Status: $(if ($RAM_Percent -gt 80) {"WARNING - LOW MEMORY"} elseif ($RAM_Percent -gt 50) {"Moderate"} else {"Normal"})
--------------------------------------------
DISK SPACE (C: DRIVE):
- Total Space: $Disk_Total GB
- Used Space: $Disk_Used GB
- Free Space: $Disk_Free GB
- Free Space %: $Disk_Percent_Free%
- Status: $(if ($Disk_Percent_Free -lt 20) {"WARNING - LOW DISK SPACE"} elseif ($Disk_Percent_Free -lt 40) {"Moderate"} else {"Healthy"})
--------------------------------------------
SYSTEM UPTIME:
- $Uptime_Days Days, $Uptime_Hours Hours, $Uptime_Minutes Minutes
--------------------------------------------
INTERNET STATUS:
- $(if (Test-Connection "8.8.8.8" -Count 1 -Quiet) {"Connected"} else {"Disconnected"})
============================================
Generated by: [YOUR NAME]
"@

$Report_Content | Out-File -FilePath $Report_Path

Write-Host "    Report saved to: $Report_Path" -ForegroundColor Green

# -------------------- FINAL SUMMARY --------------------
Write-Host ""
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "    HEALTH CHECK COMPLETE!" -ForegroundColor Yellow
Write-Host "    Report saved on your Desktop" -ForegroundColor Yellow
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""

# Pause so the user can read the output
Read-Host "Press ENTER to close this window"
