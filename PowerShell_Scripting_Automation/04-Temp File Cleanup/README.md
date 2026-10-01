# Temp File Cleanup Tool

![PowerShell](https://img.shields.io/badge/PowerShell-5.1+-blue)
![Windows](https://img.shields.io/badge/Windows-10%20%7C%2011-green)
![License](https://img.shields.io/badge/License-MIT-yellow)

## 📌 Project Overview
This is a **Desktop Support Automation Tool** built using PowerShell. It safely cleans temporary files and logs older than a user-defined number of days. Unlike aggressive cleanup tools, this script **shows a preview first** and only deletes files after user confirmation — making it safe for production environments.

## 🚀 Features
- Requires Administrator privileges (safety check)
- Scans multiple temp folders:
  - Windows Temp (`C:\Windows\Temp`)
  - User Temp (`%TEMP%`)
  - Windows Prefetch (`C:\Windows\Prefetch`)
  - SoftwareDistribution Downloads (Windows Update cache)
- Filters by **file age** (older than X days)
- Shows **preview** before deleting (files + size)
- Asks for **confirmation** before deletion
- Handles errors gracefully (locked files are skipped, not crashed)
- Generates a **detailed log** on the Desktop
- Uses **color-coded output** (Green = success, Yellow = warning, Red = error)

## 🛠️ Requirements

- **Windows 10 or Windows 11**
- **PowerShell 5.1 or higher** (pre-installed on Windows)
- **Administrator rights** (required to delete files in system folders)

## 📥 How to Download

### Option 1: Clone the Repository
```bash
git clone https://github.com/fahim-ipsec/IT_Support_Desktop_Support.git
cd IT_Support_Desktop_Support/Temp_File_Cleanup
```

### Option 2: Download the Script Directly
1. Click on `Clear-TempFiles.ps1` in this repository
2. Click the **"Download raw file"** button (top right)
3. Save it to your Desktop or any folder

## ▶️ How to Run

### Step 1: Open PowerShell as Administrator
- Press `Windows + X` on your keyboard
- Select **"Terminal (Admin)"** or **"Windows PowerShell (Admin)"**
- Click **"Yes"** on the User Account Control prompt

### Step 2: Allow Script Execution (One-Time Only)
Run this command in the PowerShell window:

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
```

> **Note:** This only affects the current PowerShell window. It does NOT permanently change your system security settings.

### Step 3: Navigate to the Script Folder
```powershell
cd C:\Users\YourName\Desktop\Temp_File_Cleanup
```
Replace `YourName` with your actual Windows username.

### Step 4: Run the Script
```powershell
.\Clear-TempFiles.ps1
```

### Step 5: Follow the Prompts
1. Enter the **number of days** (e.g., `30` for files older than 30 days)
2. Review the **preview** of files found
3. Type **`Y`** to confirm deletion
4. Wait for the cleanup to complete
5. Check your **Desktop** for the log file



## 🔍 What Each Folder Does

| Folder | Path | Purpose |
| :--- | :--- | :--- |
| **Windows Temp** | `C:\Windows\Temp` | System-level temporary files created by Windows and installed software |
| **User Temp** | `%TEMP%` | Temporary files created by your user account and applications |
| **Windows Prefetch** | `C:\Windows\Prefetch` | Cached data to speed up application launches |
| **SoftwareDistribution Downloads** | `C:\Windows\SoftwareDistribution\Download` | Windows Update cache files |

## 🧠 Skills Demonstrated

- **PowerShell Scripting** — Loops, Conditionals, Try/Catch, Arrays, Hashtables
- **File System Management** — `Get-ChildItem`, `Remove-Item`, `Test-Path`, `Measure-Object`
- **Date Filtering** — `LastWriteTime`, `AddDays`, `Get-Date`
- **Calculations** — Size conversion (Bytes → KB → MB → GB)
- **Safety Design** — Preview → Confirm → Delete pattern
- **Error Handling** — Graceful handling of locked/in-use files
- **Logging & Documentation** — Detailed audit trail

## ⚠️ Safety Notes

1. Always run with a high day threshold first (e.g., 30 or 90 days) to test
2. Never delete files newer than 7 days — some apps need recent temp files
3. Review the preview before confirming deletion
4. Some files will fail to delete — this is normal (they are in use by running programs)
5. The log file is your audit trail — keep it for troubleshooting


⭐ **If you found this project helpful, please give it a star!**
