# Automated PC Health Checker

![PowerShell](https://img.shields.io/badge/PowerShell-5.1+-blue)
![Windows](https://img.shields.io/badge/Windows-10%20%7C%2011-green)
![License](https://img.shields.io/badge/License-MIT-yellow)

## 📌 Project Overview
This is a **Desktop Support Automation Tool** built using PowerShell. It checks the health of a Windows PC and generates a detailed report. As an aspiring IT Support professional, I built this tool to automate routine system maintenance tasks.

## 🚀 Features
- ✅ Checks **CPU Usage** with color-coded alerts (Green/Yellow/Red)
- ✅ Checks **RAM Usage** and shows Total/Available memory
- ✅ Checks **C: Drive Disk Space** (Alerts if below 20% free)
- ✅ Shows **System Uptime** (Helps identify if a reboot is needed)
- ✅ Tests **Internet Connectivity** (Pings Google DNS)
- ✅ Generates a **.txt Health Report** on the Desktop with timestamp

x
## 🛠️ How to Use

### Prerequisites
- Windows 10 or Windows 11
- PowerShell 5.1 or higher (pre-installed on Windows)

### Step 1: Download the Script
Clone this repository or download `PC-Health-Check.ps1`

### Step 2: Run PowerShell as Administrator
Press `Windows + X` and select **Windows PowerShell (Admin)**
 ## Right-click and Run (Easy way)
   - Save the script on your Desktop
   - Right-click on PC-Health-Check.ps1
   - Select "Run with PowerShell"

### Step 3: Allow Script Execution (One-time)
```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
