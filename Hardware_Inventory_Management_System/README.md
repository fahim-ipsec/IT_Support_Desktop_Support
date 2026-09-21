# Hardware Inventory Management System

> **Level:** L1-L2 | **Time:** Ongoing | **Category:** Asset Management

## 📋 Overview

Complete hardware asset tracking system for managing company IT equipment. Track laptops, desktops, monitors, phones, and peripherals with serial numbers, warranty dates, locations, and user assignments.

**What This Solves:**
- Don't know what hardware company owns
- Can't track equipment location
- Missing warranty information
- No depreciation planning
- Equipment gets lost/stolen
- No audit trail for compliance

**Real Impact:**
- ✅ Asset visibility: 30% → 100%
- ✅ Lost equipment: 15/year → 2/year
- ✅ Warranty coverage: Unknown → 100% tracked
- ✅ Replacement planning: Reactive → Proactive
- ✅ Compliance: 0% → Complete audit trail

---

## 🎯 What You'll Learn (Day-to-Day L1-L2 Work)

```
TYPICAL ASSET MANAGEMENT DAY:

8:00 AM - START OF SHIFT
├─ Check new equipment arrivals
├─ Review warranty expiration alerts
├─ Process returned equipment
└─ Answer asset location queries

9:00 AM - HARDWARE TRACKING TASKS
├─ New laptop received
│  ├─ Inspect for damage
│  ├─ Record serial number
│  ├─ Create asset tag
│  ├─ Enter into database
│  ├─ Assign to user
│  ├─ Print label
│  ├─ Apply to equipment
│  └─ Update inventory
│
├─ User returning equipment
│  ├─ Retrieve from user
│  ├─ Check condition
│  ├─ Verify all components
│  ├─ Run data wipe
│  ├─ Remove from user assignment
│  ├─ Update location to "storage"
│  └─ Plan for reuse/recycle
│
├─ Warranty question
│  ├─ Look up asset in system
│  ├─ Check warranty status
│  ├─ Determine if still covered
│  ├─ Advise if repair/replace
│  └─ Document decision

11:00 AM - INVENTORY AUDITS
├─ Physical verification
│  ├─ Walk through building
│  ├─ Check asset tags match records
│  ├─ Update locations
│  ├─ Note any missing items
│  └─ Follow up on discrepancies
│
├─ Quarterly audit
│  ├─ Count all equipment
│  ├─ Verify serial numbers
│  ├─ Check user assignments
│  ├─ Update database
│  └─ Generate audit report

12:00 PM - LUNCH BREAK

1:00 PM - DEPRECIATION & REPLACEMENT
├─ Review aging equipment
│  ├─ Check computer ages
│  ├─ Identify replacements needed
│  ├─ Calculate depreciation
│  ├─ Plan refresh cycle
│  └─ Document in system
│
├─ Warranty tracking
│  ├─ Check for expiring warranties
│  ├─ Alert managers of coverage end dates
│  ├─ Plan for self-support after warranty
│  └─ Budget for extended warranty if needed

2:00 PM - VENDOR MANAGEMENT
├─ Process incoming invoices
├─ Reconcile with POs
├─ Update purchase dates
├─ Verify serial numbers match
├─ File warranty docs
└─ Update asset cost records

3:00 PM - REPORTING & ANALYTICS
├─ Generate inventory reports
│  ├─ Equipment by department
│  ├─ Equipment by user
│  ├─ Equipment by age
│  ├─ Warranty expiration report
│  └─ Cost analysis report
│
├─ Compliance reporting
│  ├─ Track moved equipment
│  ├─ Document decommissioned items
│  ├─ Maintain audit trail
│  └─ Create compliance reports

4:00 PM - DOCUMENTATION & FOLLOW-UP
├─ Update asset list
├─ Record moves/changes
├─ Close asset tickets
├─ Answer user questions
└─ Prepare tomorrow's agenda

5:00 PM - END OF SHIFT
```


## 🔧 Hardware Categories & Tracking

### Category 1: Computers

```
LAPTOPS:
├─ Purchase Date: 2023-01-15
├─ Serial Number: ABC123XYZ789
├─ Model: Dell XPS 13
├─ Asset Tag: LT-00234
├─ User: John Smith (john.smith@company.com)
├─ Department: Sales
├─ Location: Building A, Desk 305
├─ Cost: $1,200
├─ Warranty: Until 2026-01-15 (2 years left)
├─ Depreciation: $400/year
├─ Status: In Use
├─ Last Check: 2024-01-15
└─ Notes: Works fine, battery good

DESKTOPS:
├─ Purchase Date: 2022-06-01
├─ Serial Number: WS-998877
├─ Model: HP EliteDesk 800
├─ Asset Tag: DT-00156
├─ User: Jane Doe (jane.doe@company.com)
├─ Department: IT
├─ Location: Building B, Server Room
├─ Cost: $800
├─ Warranty: Expired (2023-06-01)
├─ Depreciation: $160/year (fully depreciated)
├─ Status: In Use
├─ Last Check: 2024-01-10
└─ Notes: High usage, consider replacement in 2025
```

### Category 2: Peripherals

```
MONITORS:
├─ Purchase Date: 2023-06-01
├─ Serial Number: MON-556677
├─ Model: Dell UltraSharp 24"
├─ Asset Tag: MN-00456
├─ User: John Smith
├─ Cost: $300
├─ Warranty: Until 2025-06-01
└─ Status: In Use

KEYBOARDS & MICE:
├─ Purchase Date: 2023-01-01
├─ Serial Number: KBD-112233
├─ Model: Microsoft Ergonomic
├─ Asset Tag: KB-00789
├─ User: Jane Doe
├─ Cost: $60
├─ Warranty: Until 2024-01-01 (EXPIRED)
└─ Status: In Use (Needs Replacement)

DOCKING STATIONS:
├─ Purchase Date: 2023-06-01
├─ Serial Number: DOCK-334455
├─ Model: Dell WD19
├─ Asset Tag: DK-00123
├─ User: John Smith
├─ Cost: $200
├─ Warranty: Until 2025-06-01
└─ Status: In Use
```

### Category 3: Mobile Devices

```
PHONES:
├─ Purchase Date: 2023-09-01
├─ Serial Number: A2RTNC7C2S
├─ Model: iPhone 14
├─ Asset Tag: PH-00567
├─ User: Bob Johnson
├─ Cost: $999
├─ Warranty: Until 2024-09-01 (EXPIRED)
├─ Insurance: AppleCare (Until 2025-09-01)
└─ Status: In Use

TABLETS:
├─ Purchase Date: 2023-03-15
├─ Serial Number: PAD-778899
├─ Model: iPad Pro 12.9"
├─ Asset Tag: TB-00890
├─ User: Sarah Lee
├─ Cost: $1,299
├─ Warranty: Until 2025-03-15
└─ Status: In Use
```

### Category 4: Network Equipment

```
ROUTERS:
├─ Purchase Date: 2021-08-01
├─ Serial Number: ROUTE-001122
├─ Model: Cisco RV340
├─ Asset Tag: NW-00234
├─ Location: Building A, Server Room
├─ Cost: $400
├─ Warranty: Expired
├─ Contract: Support Until 2025-08-01
└─ Status: In Production

SWITCHES:
├─ Purchase Date: 2021-08-01
├─ Serial Number: SWITCH-003344
├─ Model: Cisco C3850
├─ Asset Tag: NW-00235
├─ Location: Building A, Server Room
├─ Cost: $2,500
├─ Warranty: Expired
├─ Contract: Support Until 2025-08-01
└─ Status: In Production
```

---

## 📊 Asset Database Template

```csv
Asset_Tag,Category,Model,Serial_Number,Purchase_Date,Cost,Warranty_Expiry,User,Department,Location,Status,Depreciation_Per_Year,Notes
LT-00234,Laptop,Dell XPS 13,ABC123XYZ789,2023-01-15,1200,2026-01-15,John Smith,Sales,Building A Desk 305,In Use,400,Works fine
LT-00235,Laptop,HP Pavilion,DEF456UVW123,2022-09-01,800,2024-09-01,Jane Doe,Marketing,Building B Room 201,In Use,400,Battery failing - order replacement
DT-00156,Desktop,HP EliteDesk 800,WS-998877,2022-06-01,800,2023-06-01,Bob Johnson,IT,Building A Server Room,In Use,160,Fully depreciated
MN-00456,Monitor,Dell UltraSharp 24,MON-556677,2023-06-01,300,2025-06-01,John Smith,Sales,Building A Desk 305,In Use,75,Pixel issues developing
KB-00789,Keyboard,Microsoft Ergonomic,KBD-112233,2023-01-01,60,2024-01-01,Jane Doe,Marketing,Building B Room 201,In Use,15,Keys sticking - needs replacement
DK-00123,Docking Station,Dell WD19,DOCK-334455,2023-06-01,200,2025-06-01,John Smith,Sales,Building A Desk 305,In Use,50,Working well
PH-00567,Phone,iPhone 14,A2RTNC7C2S,2023-09-01,999,2024-09-01,Bob Johnson,IT,Mobile,In Use,300,AppleCare until 2025
TB-00890,Tablet,iPad Pro 12.9,PAD-778899,2023-03-15,1299,2025-03-15,Sarah Lee,HR,Mobile,In Use,300,Used for presentations
NW-00234,Router,Cisco RV340,ROUTE-001122,2021-08-01,400,2023-08-01,IT,IT,Building A Server Room,In Production,100,Support contract until 2025
NW-00235,Switch,Cisco C3850,SWITCH-003344,2021-08-01,2500,2023-08-01,IT,IT,Building A Server Room,In Production,500,Support contract until 2025
```

---

## 🔧 PowerShell Scripts

### Script 1: Create Asset Database

```powershell
# 01-Create-Asset-Database.ps1
# Creates the hardware inventory database

Write-Host "Creating Hardware Inventory Database..." -ForegroundColor Cyan

# Create database CSV with headers
$DatabasePath = "Hardware-Inventory.csv"

$Headers = @"
Asset_Tag,Category,Model,Serial_Number,Purchase_Date,Cost,Warranty_Expiry,User,Department,Location,Status,Depreciation_Per_Year,Last_Check,Notes
"@

Set-Content -Path $DatabasePath -Value $Headers

Write-Host "✓ Database created: $DatabasePath" -ForegroundColor Green
Write-Host "`nAdd equipment using this format:" -ForegroundColor Yellow
Write-Host 'LT-00234,Laptop,Dell XPS 13,ABC123XYZ789,2023-01-15,1200,2026-01-15,John Smith,Sales,Building A Desk 305,In Use,400,2024-01-15,Works fine' -ForegroundColor White

# Create folders
New-Item -ItemType Directory -Path "Asset-Reports" -Force | Out-Null
New-Item -ItemType Directory -Path "Warranty-Docs" -Force | Out-Null
New-Item -ItemType Directory -Path "Asset-Logs" -Force | Out-Null

Write-Host "✓ Folders created" -ForegroundColor Green
Write-Host "`nDatabase is ready for equipment entries" -ForegroundColor Green

Add-Content -Path "Asset-Logs\activity.log" -Value "$(Get-Date) - Database created"
```

### Script 2: Import Equipment

```powershell
# 02-Import-Equipment.ps1
# Add new equipment to inventory

param(
    [string]$AssetTag = "LT-00234",
    [string]$Category = "Laptop",
    [string]$Model = "Dell XPS 13",
    [string]$SerialNumber = "ABC123XYZ789",
    [string]$PurchaseDate = "2024-01-15",
    [string]$Cost = "1200",
    [string]$WarrantyExpiry = "2026-01-15",
    [string]$User = "John Smith",
    [string]$Department = "Sales",
    [string]$Location = "Building A Desk 305"
)

Write-Host "Adding equipment to inventory..." -ForegroundColor Cyan
Write-Host "Asset Tag: $AssetTag"
Write-Host "Model: $Model"
Write-Host "Serial: $SerialNumber"
Write-Host "User: $User"

# Calculate depreciation
switch ($Category) {
    "Laptop" { $Depreciation = $Cost * 0.33 } # 3-year depreciation
    "Desktop" { $Depreciation = $Cost * 0.20 } # 5-year depreciation
    "Monitor" { $Depreciation = $Cost * 0.25 } # 4-year depreciation
    "Keyboard" { $Depreciation = $Cost * 0.25 } # 4-year depreciation
    "Phone" { $Depreciation = $Cost * 0.33 } # 3-year depreciation
    default { $Depreciation = $Cost * 0.20 } # 5-year default
}

# Create entry
$Entry = "$AssetTag,$Category,$Model,$SerialNumber,$PurchaseDate,$Cost,$WarrantyExpiry,$User,$Department,$Location,In Use,$Depreciation,$(Get-Date -Format 'yyyy-MM-dd'),New equipment"

# Add to database
Add-Content -Path "Hardware-Inventory.csv" -Value $Entry

Write-Host "✓ Equipment added to inventory" -ForegroundColor Green
Write-Host "✓ Asset Tag: $AssetTag" -ForegroundColor Green
Write-Host "✓ Depreciation: $Depreciation/year" -ForegroundColor Green

# Log activity
Add-Content -Path "Asset-Logs\activity.log" -Value "$(Get-Date) - Added: $AssetTag - $Model - $SerialNumber"

Write-Host "`nNext steps:" -ForegroundColor Yellow
Write-Host "1. Print asset label: $AssetTag"
Write-Host "2. Apply to equipment"
Write-Host "3. File warranty documents"
Write-Host "4. Update network documentation"
```

### Script 3: Generate Inventory Report

```powershell
# 03-Generate-Inventory-Report.ps1
# Create detailed inventory reports

Write-Host "Generating Inventory Reports..." -ForegroundColor Cyan

# Import database
$Inventory = Import-Csv "Hardware-Inventory.csv"

# Report 1: Total Inventory Summary
Write-Host "`n════════════════════════════════════" -ForegroundColor Green
Write-Host "INVENTORY SUMMARY" -ForegroundColor Green
Write-Host "════════════════════════════════════" -ForegroundColor Green

$Categories = $Inventory | Group-Object -Property Category

foreach ($Category in $Categories) {
    $Count = $Category.Count
    $TotalCost = ($Category.Group | Measure-Object -Property Cost -Sum).Sum
    Write-Host "$($Category.Name): $Count items ($${TotalCost:N2})" -ForegroundColor White
}

$TotalAssets = $Inventory.Count
$TotalValue = ($Inventory | Measure-Object -Property Cost -Sum).Sum
Write-Host "`nTotal Assets: $TotalAssets" -ForegroundColor Green
Write-Host "Total Value: $${TotalValue:N2}" -ForegroundColor Green

# Report 2: Assets by Department
Write-Host "`n════════════════════════════════════" -ForegroundColor Green
Write-Host "ASSETS BY DEPARTMENT" -ForegroundColor Green
Write-Host "════════════════════════════════════" -ForegroundColor Green

$Departments = $Inventory | Group-Object -Property Department

foreach ($Dept in $Departments) {
    Write-Host "`n$($Dept.Name):" -ForegroundColor Yellow
    foreach ($Asset in $Dept.Group) {
        Write-Host "  - $($Asset.Asset_Tag): $($Asset.Model)" -ForegroundColor White
    }
}

# Report 3: Warranty Status
Write-Host "`n════════════════════════════════════" -ForegroundColor Green
Write-Host "WARRANTY STATUS" -ForegroundColor Green
Write-Host "════════════════════════════════════" -ForegroundColor Green

$Today = Get-Date
$Warning = @()
$Expired = @()

foreach ($Asset in $Inventory) {
    $WarrantyDate = [DateTime]::Parse($Asset.Warranty_Expiry)
    $DaysLeft = ($WarrantyDate - $Today).Days
    
    if ($DaysLeft -lt 0) {
        $Expired += $Asset
        Write-Host "✗ $($Asset.Asset_Tag) - EXPIRED $((-$DaysLeft)) days ago" -ForegroundColor Red
    } elseif ($DaysLeft -lt 90) {
        $Warning += $Asset
        Write-Host "⚠ $($Asset.Asset_Tag) - Expires in $DaysLeft days" -ForegroundColor Yellow
    }
}

Write-Host "`nExpired Warranties: $($Expired.Count)" -ForegroundColor Red
Write-Host "Expiring Soon (<90 days): $($Warning.Count)" -ForegroundColor Yellow

# Save reports to files
$ReportDate = Get-Date -Format "yyyy-MM-dd"
$Summary | Out-File -FilePath "Asset-Reports\Inventory-Summary-$ReportDate.txt"
$Inventory | Export-Csv -Path "Asset-Reports\Full-Inventory-$ReportDate.csv" -NoTypeInformation

Write-Host "`n✓ Reports saved to Asset-Reports folder" -ForegroundColor Green
```

### Script 4: Track Warranty

```powershell
# 04-Track-Warranty.ps1
# Monitor and alert on warranty expiration

Write-Host "Checking Warranty Status..." -ForegroundColor Cyan

$Inventory = Import-Csv "Hardware-Inventory.csv"
$Today = Get-Date
$WarrantyAlerts = @()

foreach ($Asset in $Inventory) {
    $WarrantyDate = [DateTime]::Parse($Asset.Warranty_Expiry)
    $DaysLeft = ($WarrantyDate - $Today).Days
    
    # Alert if warranty expires within 60 days or already expired
    if ($DaysLeft -le 60) {
        $Alert = @{
            AssetTag = $Asset.Asset_Tag
            Model = $Asset.Model
            User = $Asset.User
            ExpiresDate = $Asset.Warranty_Expiry
            DaysLeft = $DaysLeft
            Status = if ($DaysLeft -lt 0) { "EXPIRED" } else { "EXPIRING SOON" }
        }
        $WarrantyAlerts += $Alert
    }
}

Write-Host "`n════════════════════════════════════" -ForegroundColor Green
Write-Host "WARRANTY ALERTS" -ForegroundColor Green
Write-Host "════════════════════════════════════" -ForegroundColor Green

if ($WarrantyAlerts.Count -eq 0) {
    Write-Host "✓ No warranty alerts" -ForegroundColor Green
} else {
    foreach ($Alert in $WarrantyAlerts) {
        $Color = if ($Alert.DaysLeft -lt 0) { "Red" } else { "Yellow" }
        Write-Host "$($Alert.Status): $($Alert.AssetTag)" -ForegroundColor $Color
        Write-Host "  Model: $($Alert.Model)" -ForegroundColor White
        Write-Host "  User: $($Alert.User)" -ForegroundColor White
        Write-Host "  Expires: $($Alert.ExpiresDate) ($($Alert.DaysLeft) days)" -ForegroundColor White
        Write-Host ""
    }
}

# Send email alerts (optional)
$AlertCount = $WarrantyAlerts.Count
if ($AlertCount -gt 0) {
    Write-Host "ACTION REQUIRED:" -ForegroundColor Yellow
    Write-Host "- Review expiring warranties" -ForegroundColor White
    Write-Host "- Plan for replacement of expired items" -ForegroundColor White
    Write-Host "- Renew warranties if needed" -ForegroundColor White
    Write-Host "- Update asset records" -ForegroundColor White
}

# Log activity
Add-Content -Path "Asset-Logs\warranty-check.log" -Value "$(Get-Date) - Warranty check: $AlertCount alerts"
```

### Script 5: Calculate Depreciation

```powershell
# 05-Calculate-Depreciation.ps1
# Calculate asset depreciation and value

Write-Host "Calculating Asset Depreciation..." -ForegroundColor Cyan

$Inventory = Import-Csv "Hardware-Inventory.csv"
$Today = Get-Date

Write-Host "`n════════════════════════════════════" -ForegroundColor Green
Write-Host "ASSET DEPRECIATION REPORT" -ForegroundColor Green
Write-Host "════════════════════════════════════" -ForegroundColor Green

$TotalOriginalCost = 0
$TotalDepreciation = 0
$TotalCurrentValue = 0

foreach ($Asset in $Inventory) {
    $PurchaseDate = [DateTime]::Parse($Asset.Purchase_Date)
    $AgeInYears = ($Today - $PurchaseDate).Days / 365.25
    $DepreciationPerYear = [double]$Asset.Depreciation_Per_Year
    $TotalDepreciated = $DepreciationPerYear * $AgeInYears
    $CurrentValue = [double]$Asset.Cost - $TotalDepreciated
    
    # Don't go below zero
    if ($CurrentValue -lt 0) { $CurrentValue = 0 }
    
    $TotalOriginalCost += [double]$Asset.Cost
    $TotalDepreciation += $TotalDepreciated
    $TotalCurrentValue += $CurrentValue
    
    Write-Host "$($Asset.Asset_Tag) - $($Asset.Model)" -ForegroundColor Yellow
    Write-Host "  Original Cost: $${Asset.Cost}" -ForegroundColor White
    Write-Host "  Age: $([Math]::Round($AgeInYears, 1)) years" -ForegroundColor White
    Write-Host "  Total Depreciation: $${TotalDepreciated:N2}" -ForegroundColor White
    Write-Host "  Current Value: $${CurrentValue:N2}" -ForegroundColor Green
    Write-Host ""
}

Write-Host "════════════════════════════════════" -ForegroundColor Green
Write-Host "TOTAL DEPRECIATION SUMMARY" -ForegroundColor Green
Write-Host "════════════════════════════════════" -ForegroundColor Green
Write-Host "Original Total Cost: $${TotalOriginalCost:N2}" -ForegroundColor White
Write-Host "Total Depreciation: $${TotalDepreciation:N2}" -ForegroundColor Yellow
Write-Host "Current Total Value: $${TotalCurrentValue:N2}" -ForegroundColor Green

# Export report
$Report = @"
Depreciation Report - $(Get-Date -Format 'yyyy-MM-dd')

Original Total Cost: $${TotalOriginalCost:N2}
Total Depreciation: $${TotalDepreciation:N2}
Current Total Value: $${TotalCurrentValue:N2}
Depreciation %: $([Math]::Round(($TotalDepreciation / $TotalOriginalCost) * 100, 2))%
"@

$Report | Out-File -FilePath "Asset-Reports\Depreciation-Report-$(Get-Date -Format 'yyyy-MM-dd').txt"

Write-Host "`n✓ Report saved to Asset-Reports folder" -ForegroundColor Green
```

### Script 6: Audit Assets

```powershell
# 06-Audit-Assets.ps1
# Physical inventory audit and discrepancy check

Write-Host "Starting Asset Audit..." -ForegroundColor Cyan
Write-Host "Manual Input Required - Scan asset tags as you walk through building" -ForegroundColor Yellow

$Inventory = Import-Csv "Hardware-Inventory.csv"
$ScannedAssets = @()

# Simulate scanning (in real scenario, you'd scan actual tags)
Write-Host "`nEnter asset tags (or 'done' to finish):" -ForegroundColor White

while ($true) {
    $Input = Read-Host "Asset Tag"
    if ($Input -eq "done") { break }
    $ScannedAssets += $Input
}

Write-Host "`n════════════════════════════════════" -ForegroundColor Green
Write-Host "AUDIT RESULTS" -ForegroundColor Green
Write-Host "════════════════════════════════════" -ForegroundColor Green

$DatabaseAssets = $Inventory.Asset_Tag
$Found = 0
$Missing = 0
$Extra = 0

# Check for missing items
foreach ($Asset in $DatabaseAssets) {
    if ($Asset -in $ScannedAssets) {
        $Found++
    } else {
        Write-Host "✗ MISSING: $Asset" -ForegroundColor Red
        $Missing++
    }
}

# Check for extra items
foreach ($Scanned in $ScannedAssets) {
    if ($Scanned -notin $DatabaseAssets) {
        Write-Host "✗ UNTRACKED: $Scanned" -ForegroundColor Red
        $Extra++
    }
}

Write-Host "`n════════════════════════════════════" -ForegroundColor Green
Write-Host "SUMMARY" -ForegroundColor Green
Write-Host "════════════════════════════════════" -ForegroundColor Green
Write-Host "Expected: $($DatabaseAssets.Count)" -ForegroundColor White
Write-Host "Found: $Found" -ForegroundColor Green
Write-Host "Missing: $Missing" -ForegroundColor Red
Write-Host "Untracked: $Extra" -ForegroundColor Yellow

$Accuracy = [Math]::Round(($Found / $DatabaseAssets.Count) * 100, 2)
Write-Host "Accuracy: $Accuracy%" -ForegroundColor White

# Create audit report
$AuditReport = @"
Asset Audit Report - $(Get-Date)
Expected: $($DatabaseAssets.Count)
Found: $Found
Missing: $Missing
Untracked: $Extra
Accuracy: $Accuracy%
"@

$AuditReport | Out-File -FilePath "Asset-Reports\Audit-Report-$(Get-Date -Format 'yyyy-MM-dd').txt"

Write-Host "`n✓ Audit report saved" -ForegroundColor Green
```

---

## 📋 Equipment Intake Form (Print & Use)

```
╔═══════════════════════════════════════════════════╗
║        EQUIPMENT INTAKE FORM                      ║
╚═══════════════════════════════════════════════════╝

EQUIPMENT RECEIVED:
─────────────────────────────────────────────────────
Date Received: ________________
Received By: __________________
Delivered By: __________________

EQUIPMENT DETAILS:
─────────────────────────────────────────────────────
Category: ⊙ Laptop  ⊙ Desktop  ⊙ Monitor  ⊙ Phone  ⊙ Other: ______
Model: __________________________
Manufacturer: ____________________
Serial Number: ___________________
Asset Tag Number: ________________ (To be assigned)

INSPECTION:
─────────────────────────────────────────────────────
[ ] Physically intact (no damage)
[ ] All components present
[ ] Cables and accessories included
[ ] Documentation included
[ ] Warranty paperwork included

ACQUISITION INFO:
─────────────────────────────────────────────────────
Purchase Date: __________________
Cost: $____________________
Vendor: ________________________
PO Number: _____________________
Warranty Period: ________________
Warranty Expiry: ________________

WARRANTY DETAILS:
─────────────────────────────────────────────────────
Warranty Type: ⊙ Standard  ⊙ Extended  ⊙ AppleCare  ⊙ Other
Duration: _______________________
Coverage Details: ________________
Support Phone: __________________

ASSIGNMENT:
─────────────────────────────────────────────────────
Assigned To: ____________________
Employee Email: _________________
Department: _____________________
Manager: ________________________
Location: _______________________
Office/Desk: ____________________

DATABASE ENTRY:
─────────────────────────────────────────────────────
[ ] Asset tag printed and applied
[ ] Serial number recorded
[ ] Added to database
[ ] Warranty doc filed
[ ] User notified
[ ] Setup scheduled

APPROVAL:
─────────────────────────────────────────────────────
IT Manager: _____________________
Date: ___________________________
Signature: ______________________

NOTES:
─────────────────────────────────────────────────────
_____________________________
_____________________________
_____________________________

Next Steps:
1. ⊙ Equipment setup/configuration
2. ⊙ User training
3. ⊙ File warranty documentation
4. ⊙ Create asset inventory record
5. ⊙ Update network documentation
```

---

## 📋 Equipment Return Form (Print & Use)

```
╔═══════════════════════════════════════════════════╗
║       EQUIPMENT RETURN FORM                       ║
╚═══════════════════════════════════════════════════╝

EQUIPMENT RETURN:
─────────────────────────────────────────────────────
Date Returned: __________________
Returned By: ____________________
Received By: ____________________
Reason for Return: ⊙ User leaving  ⊙ Upgrade  ⊙ Repair  ⊙ Other: ___

EQUIPMENT DETAILS:
─────────────────────────────────────────────────────
Asset Tag: ______________________
Category: ________________________
Model: ___________________________
Serial Number: ___________________
Employee Name: __________________
Department: _____________________

CONDITION ASSESSMENT:
─────────────────────────────────────────────────────
Overall Condition: ⊙ Good  ⊙ Fair  ⊙ Poor  ⊙ Damaged
Damage Description: ______________
Estimated Repair Cost: $__________

COMPONENTS CHECK:
─────────────────────────────────────────────────────
[ ] Monitor(s)
[ ] Keyboard
[ ] Mouse
[ ] Power Supply(ies)
[ ] Cables (all)
[ ] Docking station
[ ] Peripherals: ________________
[ ] All accessories

MISSING ITEMS:
─────────────────────────────────────────────────────
Items Missing: ___________________
Replacement Cost: $_______________

DATA HANDLING:
─────────────────────────────────────────────────────
[ ] Hard drive securely wiped
[ ] Wipe method: ⊙ DBAN  ⊙ Secure Erase  ⊙ Other: ___
[ ] Certificate of destruction obtained
[ ] BitLocker disabled
[ ] All passwords removed
[ ] Data verified destroyed

NEXT ACTION:
─────────────────────────────────────────────────────
⊙ Repair
  Estimate: $__________
  Send to: ________________
  
⊙ Reuse
  Assign to: ________________
  
⊙ Refurbish
  Process: _________________
  
⊙ Recycle
  Method: ___________________

DATABASE UPDATE:
─────────────────────────────────────────────────────
[ ] Removed from current user
[ ] Status changed to: ⊙ Storage  ⊙ Repair  ⊙ Reuse  ⊙ Recycle
[ ] Location updated
[ ] User deactivated
[ ] All systems removed

APPROVAL:
─────────────────────────────────────────────────────
Checked By: _____________________
Date: ___________________________
Signature: ______________________

NOTES:
─────────────────────────────────────────────────────
_____________________________
_____________________________
_____________________________
```

---

## 📊 Day-to-Day Asset Management

### Morning Tasks (9 AM - 12 PM)

```
TYPICAL MONDAY MORNING:

9:00 AM - CHECK EMAIL & QUEUE
├─ 3 new equipment arrivals
├─ 2 warranty questions
├─ 1 equipment return request
└─ Update daily task list

9:30 AM - PROCESS NEW ARRIVALS
├─ Unbox 2 laptops
│  ├─ Check for damage (✓ OK)
│  ├─ Record serial numbers
│  ├─ Create asset tags: LT-00301, LT-00302
│  ├─ Print asset labels
│  ├─ Apply to laptops
│  ├─ File warranty docs
│  └─ Enter into database
│
└─ Unbox 1 monitor
   ├─ Check for damage (✓ OK)
   ├─ Record serial number
   ├─ Create asset tag: MN-00501
   ├─ Print label
   ├─ Apply to monitor
   └─ File warranty

10:30 AM - ANSWER WARRANTY QUESTIONS
├─ Call from Sales: "Is my laptop under warranty?"
│  ├─ Look up asset LT-00234
│  ├─ Check warranty date: 2026-01-15
│  ├─ Inform: "Yes, until Jan 15 2026"
│  └─ Log the inquiry
│
└─ Email from IT: "Monitor warranty status?"
   ├─ Check MN-00456
   ├─ Check warranty: Until 2025-06-01
   ├─ Inform: "Yes, 6 months left"
   └─ Reply to email

11:00 AM - PROCESS EQUIPMENT RETURN
├─ Employee returning laptop (LT-00200)
├─ Inspect condition: Minor scratches, works fine
├─ Run DBAN wipe (20 minutes)
├─ Verify data destroyed
├─ Remove asset from employee
├─ Update status to "Storage"
├─ Update location: "Building A - Storage Room"
├─ Plan redeployment to new hire
└─ Update database

11:45 AM - GENERATE WARRANTY REPORT
├─ Check for expiring warranties
├─ Find 3 items expiring within 60 days
├─ Flag for renewal
├─ Email manager about renewals
└─ Document actions
```

### Afternoon Tasks (1 PM - 5 PM)

```
TYPICAL MONDAY AFTERNOON:

1:00 PM - LUNCH BREAK

1:30 PM - QUARTERLY AUDIT PREP
├─ Print inventory checklist (47 items)
├─ Organize by location
├─ Plan audit route through building
├─ Prepare scanning device
└─ Brief on missing/found items

2:00 PM - PHYSICAL AUDIT
├─ Building A (20 items)
│  ├─ Scan each asset tag
│  ├─ Verify location matches DB
│  ├─ Note any discrepancies
│  └─ Check condition
│
├─ Building B (15 items)
│  ├─ Scan each asset
│  ├─ Verify users
│  ├─ Check for damage
│  └─ Update locations
│
└─ Server Room (12 items)
   ├─ Check network equipment
   ├─ Verify warranty status
   ├─ Check for any issues
   └─ Document findings

4:00 PM - PROCESS AUDIT RESULTS
├─ Found: 45 of 47 items
├─ Missing: 2 items (investigate)
├─ Untracked: 1 item (add to DB)
├─ Generate audit report
├─ Email to management
├─ Create action items
└─ Document in system

4:45 PM - END OF DAY
├─ Update all database entries
├─ Log all activities
├─ File new warranty docs
├─ Prepare next day tasks
├─ Back up database
└─ Clean up workspace
```

---

## 📊 Dashboard Metrics

```
HARDWARE INVENTORY DASHBOARD

╔════════════════════════════════════════╗
║  TODAY'S ACTIVITY                      ║
├────────────────────────────────────────┤
│ New Equipment Added:    3              │
│ Equipment Returned:     1              │
│ Warranty Questions:     2              │
│ Items Audited:          47             │
│ Discrepancies Found:    2              │
└────────────────────────────────────────┘

╔════════════════════════════════════════╗
║  INVENTORY SNAPSHOT                    ║
├────────────────────────────────────────┤
│ Total Assets:           235            │
│ Total Value:            $145,000       │
│ Average Age:            2.3 years      │
│ Warranty Coverage:      78%            │
│ In Use:                 210 (89%)      │
│ In Storage:             20 (9%)        │
│ Under Repair:           5 (2%)         │
└────────────────────────────────────────┘

╔════════════════════════════════════════╗
║  WARRANTY STATUS                       ║
├────────────────────────────────────────┤
│ Active Coverage:        184            │
│ Expiring Soon (<90d):   8              │
│ Expired:                43             │
│ Warranty Cost/Year:     $8,500         │
└────────────────────────────────────────┘

╔════════════════════════════════════════╗
║  DEPRECIATION SUMMARY                  ║
├────────────────────────────────────────┤
│ Original Cost:          $145,000       │
│ Total Depreciated:      $52,000        │
│ Current Value:          $93,000        │
│ Annual Depreciation:    $18,500        │
│ Items Fully Depreciated: 8             │
└────────────────────────────────────────┘

╔════════════════════════════════════════╗
║  REPLACEMENT PLANNING                  ║
├────────────────────────────────────────┤
│ Due for Replacement:    12             │
│ Next 6 Months:          18             │
│ Replacement Cost:       $22,000        │
│ Budget Allocated:       $25,000        │
│ Budget Status:          ✓ ON TRACK     │
└────────────────────────────────────────┘
```

---
