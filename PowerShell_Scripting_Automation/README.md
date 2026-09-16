# PowerShell & IT Automation Lab Suite

## Overview
This repository contains 15 production-ready PowerShell scripts designed to automate Helpdesk operations, system diagnostics, Active Directory management, and endpoint compliance.

---

## 📋 Script Inventory

| # | Project Name | Description | Key Modules/Cmdlets | Status |
|---|---|---|---|---|
| 01 | **PC Health Check** | Gathers CPU, RAM, and Disk metrics with threshold alerts | `Get-CimInstance`, `Measure-Object` | Completed |
| 02 | **Bulk AD User Creation** | Provision users from CSV into target OUs | `ActiveDirectory`, `New-ADUser` | Pending |
| 03 | **Password Reset & Audit** | Resets password, forces change on login, logs action | `Set-ADAccountPassword` | Pending |
| 04 | **Temp File Cleanup** | Purges temp directories and logs older than X days | `Remove-Item`, `Get-ChildItem` | Pending |
| 05 | **Software Inventory Scanner**| Exports installed apps & versions to CSV | Registry `HKLM:\Software` | Pending |
| 06 | **Event Log Scraper** | Scans System/App logs for errors and sends alert | `Get-WinEvent`, `Send-MailMessage` | Pending |
| 07 | **Bulk Printer Installer** | Maps network printers based on department | `Add-Printer`, `WmiObject` | Pending |
| 08 | **Network Drive Mapper** | Automatically maps mapped drives for new hires | `New-PSDrive` | Pending |
| 09 | **Automated File Backup** | Zips critical folders and rotates backups weekly | `Compress-Archive` | Pending |
| 10 | **BitLocker Status Checker**| Audits encryption status and backs up keys to AD | `Get-BitLockerVolume` | Pending |
| 11 | **Local Admin Auditor** | Flags unauthorized local admin accounts | `Get-LocalGroupMember` | Pending |
| 12 | **Scheduled Task Checker** | Reports failed Windows Scheduled Tasks | `Get-ScheduledTask` | Pending |
| 13 | **Windows Update Report** | Audits OS patch levels and missing KBs | `PSWindowsUpdate` | Pending |
| 14 | **Orphaned AD Account Finder**| Disables inactive accounts (90+ days) | `Search-ADAccount` | Pending |
| 15 | **Bulk Computer Rename/Join**| Renames system and joins AD domain via CSV | `Rename-Computer`, `Add-Computer` | Pending |

---

## 🛠️ Requirements & Setup
* **PowerShell Version**: 5.1 or 7.x
* **Permissions**: Local Administrator / RSAT tools installed for AD scripts.

---

## 📂 Detailed Documentation

### Project 01: PC Health Check
* **Directory**: `/01-PC-Health-Check/`
* **Features**:
  * Real-time queries for CPU load, RAM utilization, and system disk availability.
  * Customizable thresholds for warning/critical states.
  * Clean color-coded terminal output.
