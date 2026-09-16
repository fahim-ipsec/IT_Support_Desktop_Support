<#
.SYNOPSIS
    Generates a local PC Health Report (CPU, RAM, Disk Usage) and outputs to console & HTML.
.DESCRIPTION
    Queries system metrics using CIM/WMI objects and flags critical resource thresholds.
#>

[CmdletBinding()]
param (
    [int]$CpuThreshold = 80,
    [int]$RamThreshold = 85,
    [int]$DiskThreshold = 90
)

# 1. System Information
$computerName = $env:COMPUTERNAME
$os = (Get-CimInstance -ClassName Win32_OperatingSystem).Caption
$uptime = (Get-Date) - (Get-CimInstance -ClassName Win32_OperatingSystem).LastBootUpTime
$uptimeFormatted = "{0} Days, {1} Hours, {2} Mins" -f $uptime.Days, $uptime.Hours, $uptime.Minutes

# 2. CPU Usage
$cpuLoad = (Get-CimInstance -ClassName Win32_Processor | Measure-Object -Property LoadPercentage -Average).Average
$cpuStatus = if ($cpuLoad -ge $CpuThreshold) { "CRITICAL" } else { "OK" }

# 3. RAM Usage
$osRam = Get-CimInstance -ClassName Win32_OperatingSystem
$totalRamGB = [math]::Round($osRam.TotalVisibleMemorySize / 1MB, 2)
$freeRamGB  = [math]::Round($osRam.FreePhysicalMemory / 1MB, 2)
$usedRamGB  = [math]::Round($totalRamGB - $freeRamGB, 2)
$ramPercent = [math]::Round(($usedRamGB / $totalRamGB) * 100, 2)
$ramStatus  = if ($ramPercent -ge $RamThreshold) { "CRITICAL" } else { "OK" }

# 4. Disk Usage (C: Drive)
$diskC = Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DeviceID='C:'"
$totalDiskGB = [math]::Round($diskC.Size / 1GB, 2)
$freeDiskGB  = [math]::Round($diskC.FreeSpace / 1GB, 2)
$usedDiskGB  = [math]::Round($totalDiskGB - $freeDiskGB, 2)
$diskPercent = [math]::Round(($usedDiskGB / $totalDiskGB) * 100, 2)
$diskStatus  = if ($diskPercent -ge $DiskThreshold) { "CRITICAL" } else { "OK" }

# Console Output
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "         SYSTEM HEALTH REPORT             " -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "Computer Name : $computerName"
Write-Host "OS Version    : $os"
Write-Host "Uptime        : $uptimeFormatted"
Write-Host "------------------------------------------"
Write-Host "CPU Load      : $cpuLoad% [$cpuStatus]" -ForegroundColor $(if($cpuStatus -eq "OK"){"Green"}else{"Red"})
Write-Host "RAM Usage     : $usedRamGB GB / $totalRamGB GB ($ramPercent%) [$ramStatus]" -ForegroundColor $(if($ramStatus -eq "OK"){"Green"}else{"Red"})
Write-Host "Disk Usage(C:): $usedDiskGB GB / $totalDiskGB GB ($diskPercent%) [$diskStatus]" -ForegroundColor $(if($diskStatus -eq "OK"){"Green"}else{"Red"})
Write-Host "==========================================" -ForegroundColor Cyan
