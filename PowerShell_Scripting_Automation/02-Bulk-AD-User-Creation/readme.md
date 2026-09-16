# Project 02: Bulk Active Directory User Provisioning

## 📌 Overview

This script automates user onboarding by reading account details from an enterprise CSV file and provisioning Active Directory objects. It handles credential generation, assigns standardized temporary passwords, enforces password resets on first interactive login, and gracefully catches errors.

---

## 🛠️ Technical Specifications

- **Script Name**: `New-BulkADUsers.ps1`
- **Core Cmdlets**: `Import-Csv`, `New-ADUser`, `Get-ADUser`, `ConvertTo-SecureString`
- **Supported Platforms**: Windows Server 2016+ (Active Directory Domain Services)
- **Privilege Level**: Domain Admin / Account Operator (RSAT Tools Required)

---

## 🚀 How to Run (Step-by-Step)

### Step 1: Open Terminal as Administrator

Launch **PowerShell** on an AD Domain Controller or RSAT-enabled management node with elevated privileges.

### Step 2: Navigate to Project Directory

```powershell
cd .\02-Bulk-AD-User-Creation
```

### Step 3: Populate CSV Data

Edit `users.csv` or create a custom CSV file to match your target domain and OU hierarchy:

```csv
Firstname,Lastname,Department,Title,OUPath
John,Doe,IT,Systems Administrator,"OU=IT,OU=Employees,DC=lab,DC=local"
```

### Step 4: Execute Provisioning Script

Run the script passing your target Active Directory domain name:

```powershell
.\New-BulkADUsers.ps1 -DomainName "yourdomain.local"
```

### Step 5: Execute with Custom CSV Location

Specify a non-default file location if your CSV resides elsewhere:

```powershell
.\New-BulkADUsers.ps1 -CsvPath "C:\Data\NewHires.csv" -DomainName "yourdomain.local"
```
