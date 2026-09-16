@'
# Project 01: PC Health Check Script

## 📌 Overview
This script queries local machine performance metrics (CPU load, RAM consumption, and main storage disk usage) using Windows CIM/WMI objects. It evaluates metrics against customizable threshold parameters and prints color-coded status alerts directly to the terminal interface.

---

## 🛠️ Technical Specifications
* **Script Name**: `Get-PCHealthReport.ps1`
* **Core Cmdlets**: `Get-CimInstance`, `Measure-Object`, `Write-Host`
* **Supported Platforms**: Windows 10, Windows 11, Windows Server 2016+
* **Privilege Level**: Standard User (Administrator not required)

---

## 🚀 How to Run (Step-by-Step)

### Step 1: Open Terminal
Open **PowerShell** on your workstation.

### Step 2: Navigate to Project Directory
```powershell
cd .\01-PC-Health-Check.

### Step 3: Run Script with Default Settings
Executes the script targeting default alert baselines (80% CPU, 85% RAM, 90% Disk):
.\Get-PCHealthReport.ps1

### Step 4: Run Script with Custom Thresholds
Adjust alert sensitivities manually using parameter overrides:
.\Get-PCHealthReport.ps1 -CpuThreshold 50 -RamThreshold 60 -DiskThreshold 70
