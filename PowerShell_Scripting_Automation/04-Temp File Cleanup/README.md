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
git clone https://github.com/YOUR-USERNAME/IT_Support_Desktop_Support.git
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

## 📊 Sample Output

```
============================================
       TEMP FILE CLEANUP TOOL v1.0
       Created by: [YOUR NAME]
       Date: 09/30/2026 14:30:00
============================================

[OK] Running as Administrator.

How old should files be before deleting?
  (Example: 7 = delete files older than 7 days)

Enter number of days (default = 30): 30

Files older than: 08/31/2026 14:30:00

============================================
    SCANNING FOR OLD FILES (Preview)
============================================

Scanning: Windows Temp...
    Found: 145 files (245.32 MB)
Scanning: User Temp...
    Found: 89 files (112.45 MB)
Scanning: Windows Prefetch...
    Found: 12 files (8.21 MB)
Scanning: Windows SoftwareDistribution Downloads...
    Found: 34 files (512.78 MB)

============================================
    PREVIEW SUMMARY
============================================
Total Files Found : 280
Total Space       : 878.76 MB (0.86 GB)
============================================

Delete these 280 files? (Y/N): Y

============================================
    DELETING OLD FILES
============================================

============================================
    CLEANUP COMPLETE!
============================================
Files Deleted : 278
Files Failed  : 2
Space Freed   : 875.12 MB
Log Saved To  : C:\Users\YourName\Desktop\Temp_Cleanup_Log_2026-09-30.txt
============================================
```

## 📁 Folder Structure

```
Temp_File_Cleanup/
│
├── Clear-TempFiles.ps1          # Main PowerShell script
├── README.md                    # This documentation file
└── screenshots/                 # Screenshots for documentation
    ├── temp-cleanup-preview.png
    ├── temp-cleanup-complete.png
    └── temp-cleanup-log.png
```

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

## 🔮 Future Enhancements

- Add a `-WhatIf` mode for dry run (preview only, no delete)
- Email the log to IT team automatically
- Schedule with Task Scheduler for weekly cleanup
- Add Recycle Bin cleanup
- Add browser cache cleanup (Chrome, Edge, Firefox)
- Add a GUI version using Windows Forms

## 🐛 Troubleshooting

| Problem | Solution |
| :--- | :--- |
| **"cannot be loaded because running scripts is disabled"** | Run `Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass` first |
| **"Access Denied" errors** | Make sure you opened PowerShell as **Administrator** |
| **Script closes immediately** | Right-click the `.ps1` file → "Run with PowerShell" instead |
| **No files found** | Try a smaller day threshold (e.g., `1` or `7`) for testing |
| **Many files failed to delete** | Normal — those files are in use by running programs |

## 👤 Author

**Your Name**
- Aspiring IT Support / Desktop Support Specialist
- GitHub: [@YOUR-USERNAME](https://github.com/YOUR-USERNAME)
- LinkedIn: [Your LinkedIn Profile](https://linkedin.com/in/YOUR-PROFILE)

## 📝 License

This project is open-source and available under the [MIT License](LICENSE).

---

⭐ **If you found this project helpful, please give it a star!**
