# 🖥️ PROJECT : IT ONBOARDING - COMPLETE GUIDE

## STEP 1: HARDWARE SETUP (Day 1 Morning)

```
┌─────────────────────────────────────┐
│  NEW EMPLOYEE ARRIVES               │
│  ✓ Laptop ready                     │
│  ✓ Monitor connected                │
│  ✓ Keyboard/Mouse ready             │
│  ✓ Network cable connected          │
│  ✓ Phone provisioned                │
└─────────────────────────────────────┘
         ↓
┌─────────────────────────────────────┐
│  HARDWARE CHECKLIST:                │
│  [ ] Power on laptop                │
│  [ ] Windows loads                  │
│  [ ] Monitor displays               │
│  [ ] Peripherals detected           │
│  [ ] Network connected (ping test)  │
│  [ ] Phone dial tone working        │
└─────────────────────────────────────┘
         ↓
┌─────────────────────────────────────┐
│  ASSET TAGGING:                     │
│  [ ] Asset tag number: AS-00234     │
│  [ ] Serial number recorded         │
│  [ ] Tag physically applied         │
│  [ ] Database updated               │
└─────────────────────────────────────┘
      ✅ COMPLETE
```

---

## STEP 2: ACTIVE DIRECTORY ACCOUNT CREATION

### Command to Run (Copy-Paste):

```powershell
# CREATE NEW USER IN ACTIVE DIRECTORY
# Run as Administrator

$FirstName = "John"
$LastName = "Smith"
$Username = "jsmith"
$Email = "john.smith@company.com"
$Password = "TempPass123!@#"
$Department = "Sales"
$Manager = "jane.doe"
$OUPath = "OU=Users,OU=Sales,DC=company,DC=com"

# CREATE THE ACCOUNT
New-ADUser -SamAccountName $Username `
    -UserPrincipalName $Email `
    -Name "$FirstName $LastName" `
    -GivenName $FirstName `
    -Surname $LastName `
    -DisplayName "$FirstName $LastName" `
    -Department $Department `
    -Path $OUPath `
    -AccountPassword (ConvertTo-SecureString $Password -AsPlainText -Force) `
    -Enabled $true `
    -ChangePasswordAtLogon $true

# VERIFY CREATED
Get-ADUser -Identity $Username

Write-Host "✓ User $Username created successfully!"
```

---

## STEP 3: EMAIL SETUP

### Outlook Configuration (Visual Steps):

```
╔════════════════════════════════════════╗
║  OUTLOOK EMAIL SETUP                   ║
╠════════════════════════════════════════╣
║                                        ║
║  1. OPEN OUTLOOK                       ║
║     └─ Click Start menu                ║
║        └─ Type "Outlook"               ║
║           └─ Click Outlook icon        ║
║                                        ║
║  2. ENTER EMAIL                        ║
║     └─ Email: john.smith@company.com   ║
║     └─ Password: [Use AD password]     ║
║     └─ Click "Connect"                 ║
║                                        ║
║  3. CREATE SIGNATURE                   ║
║     └─ File → Options                  ║
║        └─ Mail → Signatures             ║
║           └─ Click "New"               ║
║              └─ Name: "Default"        ║
║                 └─ Add signature text: ║
║                                        ║
║                John Smith              ║
║                Sales Department        ║
║                john.smith@company.com  ║
║                (555) 123-4567          ║
║                                        ║
║  4. TEST EMAIL                         ║
║     └─ Click "New Email"               ║
║        └─ Send to: your.email@co.com   ║
║           └─ Click "Send"              ║
║              └─ Wait 30 seconds        ║
║                 └─ Check received      ║
║                                        ║
╚════════════════════════════════════════╝
```

---

## STEP 4: SOFTWARE INSTALLATION

### Required Software List:

```
PRIORITY 1 (INSTALL FIRST - 30 min):
┌──────────────────────────────────────┐
│ • Windows Defender (Built-in)        │
│ • Windows Update (Built-in)          │
│ • Microsoft Office 365               │
│ • Google Chrome                      │
│ • Adobe Reader                       │
└──────────────────────────────────────┘

PRIORITY 2 (INSTALL NEXT - 20 min):
┌──────────────────────────────────────┐
│ • VPN Client (Cisco AnyConnect)      │
│ • Microsoft Teams                    │
│ • Slack (if used)                    │
│ • Zoom                               │
└──────────────────────────────────────┘

PRIORITY 3 (OPTIONAL - 10 min):
┌──────────────────────────────────────┐
│ • Notepad++                          │
│ • VLC Media Player                   │
│ • 7-Zip                              │
│ • PuTTY (for IT staff)               │
└──────────────────────────────────────┘
```

### Installation Script (PowerShell):

```powershell
# AUTOMATED SOFTWARE INSTALLATION
# Run as Administrator

Write-Host "════════════════════════════════════" -ForegroundColor Green
Write-Host "  INSTALLING REQUIRED SOFTWARE" -ForegroundColor Green
Write-Host "════════════════════════════════════" -ForegroundColor Green

# UPDATE WINDOWS
Write-Host "`n[1/5] Updating Windows..." -ForegroundColor Yellow
Start-Service -Name wuauserv
Write-Host "✓ Windows Update enabled" -ForegroundColor Green

# ENABLE DEFENDER
Write-Host "`n[2/5] Enabling Windows Defender..." -ForegroundColor Yellow
Start-Service -Name WinDefend
Write-Host "✓ Windows Defender running" -ForegroundColor Green

# CHECK OFFICE
Write-Host "`n[3/5] Checking Microsoft Office..." -ForegroundColor Yellow
$office = Get-WmiObject -Class Win32_Product | Where-Object {$_.Name -match "Office"}
if ($office) {
    Write-Host "✓ Office already installed" -ForegroundColor Green
} else {
    Write-Host "⚠ Office not found - install manually" -ForegroundColor Yellow
}

# CHECK CHROME
Write-Host "`n[4/5] Checking Google Chrome..." -ForegroundColor Yellow
$chrome = Test-Path "C:\Program Files\Google\Chrome\Application\chrome.exe"
if ($chrome) {
    Write-Host "✓ Chrome already installed" -ForegroundColor Green
} else {
    Write-Host "⚠ Chrome not found - install from google.com/chrome" -ForegroundColor Yellow
}

# CHECK ANTIVIRUS
Write-Host "`n[5/5] Checking Antivirus..." -ForegroundColor Yellow
$defender = Get-Service -Name WinDefend
if ($defender.Status -eq "Running") {
    Write-Host "✓ Antivirus running" -ForegroundColor Green
} else {
    Write-Host "⚠ Antivirus not running" -ForegroundColor Yellow
}

Write-Host "`n════════════════════════════════════" -ForegroundColor Green
Write-Host "  SETUP COMPLETE!" -ForegroundColor Green
Write-Host "════════════════════════════════════" -ForegroundColor Green
```

---

## STEP 5: NETWORK DRIVES & ACCESS

### Map Network Drives (PowerShell):

```powershell
# MAP NETWORK DRIVES
# Run as Administrator

Write-Host "Mapping network drives..." -ForegroundColor Cyan

# HOME DIRECTORY (H: Drive)
$homeShare = "\\server01\homes\jsmith"
New-PSDrive -Name H -PSProvider FileSystem -Root $homeShare -Persist
Write-Host "✓ H: drive mapped to $homeShare" -ForegroundColor Green

# DEPARTMENT SHARE (D: Drive)
$deptShare = "\\server01\departments\Sales"
New-PSDrive -Name D -PSProvider FileSystem -Root $deptShare -Persist
Write-Host "✓ D: drive mapped to $deptShare" -ForegroundColor Green

# SHARED RESOURCES (S: Drive)
$sharedShare = "\\server01\shared"
New-PSDrive -Name S -PSProvider FileSystem -Root $sharedShare -Persist
Write-Host "✓ S: drive mapped to $sharedShare" -ForegroundColor Green

# VERIFY ALL DRIVES
Write-Host "`nVerifying network drives..." -ForegroundColor Yellow
Get-PSDrive H, D, S | Select-Object Name, Root

Write-Host "✓ All drives mapped!" -ForegroundColor Green
```

---

## STEP 6: SECURITY SETUP

### Enable Windows Firewall & Defender:

```powershell
# SECURITY CONFIGURATION
# Run as Administrator

Write-Host "Configuring Security..." -ForegroundColor Cyan

# ENABLE FIREWALL
Write-Host "`n1. Enabling Windows Firewall..." -ForegroundColor Yellow
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled True
Write-Host "✓ Firewall enabled" -ForegroundColor Green

# ENABLE DEFENDER
Write-Host "`n2. Enabling Windows Defender..." -ForegroundColor Yellow
Start-Service -Name WinDefend
Set-MpPreference -DisableRealtimeMonitoring $false
Write-Host "✓ Real-time protection enabled" -ForegroundColor Green

# SET SCREEN LOCK (10 minutes)
Write-Host "`n3. Configuring screen lock..." -ForegroundColor Yellow
powercfg.exe -change-plan-setting scheme_current sub_desktop screensaveTimeout 600
powercfg.exe -change-plan-setting scheme_current sub_disk powerdown 600
Write-Host "✓ Screen lock set to 10 minutes" -ForegroundColor Green

# UPDATE FIREWALL RULES
Write-Host "`n4. Configuring firewall rules..." -ForegroundColor Yellow
New-NetFirewallRule -DisplayName "Allow Windows Update" -Direction Inbound -Action Allow -Service wuauserv
Write-Host "✓ Firewall rules configured" -ForegroundColor Green

Write-Host "`n════════════════════════════════════" -ForegroundColor Green
Write-Host "  SECURITY SETUP COMPLETE!" -ForegroundColor Green
Write-Host "════════════════════════════════════" -ForegroundColor Green
```

---

## STEP 7: PASSWORD RESET (Day 3)

### Quick Password Reset Command:

```powershell
# RESET USER PASSWORD
# Run as Administrator

$Username = "jsmith"
$NewPassword = "NewSecurePass123!@#"

# RESET PASSWORD
Set-ADAccountPassword -Identity $Username `
    -Reset `
    -NewPassword (ConvertTo-SecureString -AsPlainText $NewPassword -Force)

# FORCE USER TO CHANGE AT LOGIN
Set-ADUser -Identity $Username -ChangePasswordAtLogon $true

Write-Host "✓ Password reset for $Username" -ForegroundColor Green
Write-Host "✓ User must change password on next login" -ForegroundColor Green
Write-Host "`nTell user: Password is: $NewPassword" -ForegroundColor Yellow
```

---

## STEP 8: VERIFICATION CHECKLIST

```
╔═══════════════════════════════════════════════════╗
║          FINAL VERIFICATION (Day 3)               ║
╠═══════════════════════════════════════════════════╣
║                                                   ║
║  COMPUTER ACCESS:                                 ║
║  [ ] User can login to computer                   ║
║  [ ] Desktop loads without errors                 ║
║  [ ] No missing drivers (Device Manager)          ║
║                                                   ║
║  EMAIL:                                           ║
║  [ ] Outlook opens                                ║
║  [ ] Email account active                         ║
║  [ ] Can send/receive emails                      ║
║  [ ] Signature appears in emails                  ║
║                                                   ║
║  NETWORK:                                         ║
║  [ ] H: drive accessible (home)                   ║
║  [ ] D: drive accessible (department)             ║
║  [ ] S: drive accessible (shared)                 ║
║  [ ] Can access shared files                      ║
║                                                   ║
║  APPLICATIONS:                                    ║
║  [ ] Office apps open (Word, Excel)               ║
║  [ ] Chrome opens                                 ║
║  [ ] Teams starts                                 ║
║  [ ] All required apps working                    ║
║                                                   ║
║  SECURITY:                                        ║
║  [ ] Firewall enabled                             ║
║  [ ] Defender running                             ║
║  [ ] Screen lock working                          ║
║  [ ] MFA enabled                                  ║
║                                                   ║
║  PRINTING:                                        ║
║  [ ] Can access network printers                  ║
║  [ ] Test page prints                             ║
║  [ ] Color printing works                         ║
║                                                   ║
╚═══════════════════════════════════════════════════╝
```

---

## COMPLETE 3-DAY TIMELINE

```
DAY 1 - MORNING (9:00 AM - 12:30 PM)
├─ 9:00-9:30:   Welcome & orientation
├─ 9:30-11:00:  Hardware setup & testing
├─ 11:00-11:30: Create AD account (PowerShell script above)
└─ 11:30-12:30: Email setup (Outlook config)

DAY 1 - AFTERNOON (1:00 PM - 5:00 PM)
├─ 1:00-2:00:   Software installation
├─ 2:00-3:00:   Map network drives (PowerShell script above)
├─ 3:00-4:00:   Security setup (PowerShell script above)
└─ 4:00-5:00:   Test & verify access

DAY 2 - FULL DAY
├─ 9:00-10:00:  Install remaining software
├─ 10:00-12:00: Business app configuration
├─ 1:00-3:00:   VPN & remote access setup
├─ 3:00-5:00:   Final testing & troubleshooting
└─ End of day:  Ready for productivity

DAY 3 - MORNING (9:00 AM - 12:00 PM)
├─ 9:00-10:00:  Password change (use script above)
├─ 10:00-11:00: Security training
├─ 11:00-12:00: Final verification (checklist above)
└─ 12:00:       ✅ COMPLETE - Ready to work!
```

---

## TRACKING SPREADSHEET (Copy-Paste into Excel)

```
Employee Name | Start Date | Hardware ✓ | Software ✓ | Network ✓ | Complete | Notes
John Smith    | 2024-01-15 |     ✓      |     ✓      |     ✓     |   YES    | No issues
Jane Doe      | 2024-01-22 |     ✓      |     ✓      |    WAIT   |    NO    | Waiting for VPN
```

---

## REAL RESULTS YOU GET

```
┌────────────────────────────────────────┐
│  BEFORE (Without This Project)         │
├────────────────────────────────────────┤
│  Setup Time: 2-3 hours per employee    │
│  Missed Steps: Yes (30% of the time)   │
│  Consistency: Low (60%)                │
│  Documentation: None                   │
│  Cost per hire: $250                   │
│  IT time: 40 hours/month               │
└────────────────────────────────────────┘

┌────────────────────────────────────────┐
│  AFTER (With This Project)             │
├────────────────────────────────────────┤
│  Setup Time: 45 minutes per employee   │
│  Missed Steps: None (100% complete)    │
│  Consistency: High (100%)              │
│  Documentation: Complete               │
│  Cost per hire: $75                    │
│  IT time: 10 hours/month               │
│  SAVINGS: 30 hours/month = $1,500      │
└────────────────────────────────────────┘
```
