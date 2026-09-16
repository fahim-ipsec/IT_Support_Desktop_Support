# Project 03: Automated Active Directory Password Reset & Audit Tool

## 📌 Overview

This script automates helpdesk password resets for Active Directory users. It generates a secure, randomized temporary password, sets the account to force a password change upon the user's next interactive logon, and automatically exports an execution record to a local CSV audit log.

---

## 🛠️ Technical Specifications

- **Script Name**: `Reset-ADUserPassword.ps1`
- **Core Cmdlets**: `Get-ADUser`, `Set-ADAccountPassword`, `Set-ADUser`, `Export-Csv`
- **Supported Platforms**: Windows Server 2016+ (Active Directory Domain Services)
- **Privilege Level**: Helpdesk Operator / Domain Admin (RSAT Required)

---

## 🚀 How to Run (Step-by-Step)

### Step 1: Open Terminal as Administrator

Launch **PowerShell** with elevated privileges on an AD Domain Controller or RSAT-connected workstation.

### Step 2: Navigate to Project Directory

```powershell
cd .\03-Automated-Password-Reset
```

### Step 3: Reset a User Password

Execute the script specifying the target user's SamAccountName:

```powershell
.\Reset-ADUserPassword.ps1 -Identity "jdoe"
```

### Step 4: Reset Password with Custom Log Location

Specify an alternative directory path for the generated audit CSV:

```powershell
.\Reset-ADUserPassword.ps1 -Identity "jsmith" -LogPath "C:\Logs\AD_PasswordResets.csv"
```
