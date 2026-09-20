# Help Desk Ticket Management System

> **Level:** L1 | **Time:** Per shift | **Category:** Support Operations

## 📋 Overview

Complete ticketing system for IT support with templates, prioritization, and SLA tracking. Reduces response time by 50% and improves first-contact resolution.

**What This Solves:**
- Disorganized ticket handling
- Slow response times
- Inconsistent documentation
- No priority management
- Missing SLA targets

**Real Impact:**
- ✅ Response time: 2 hours → 30 minutes
- ✅ First-contact resolution: 40% → 65%
- ✅ Customer satisfaction: 3.2/5 → 4.5/5
- ✅ Ticket backlog: Reduced 70%

---

## 🎯 What we'll Learn (Day-to-Day L1 Work)

```
TYPICAL HELP DESK SHIFT (8 AM - 5 PM)

8:00 AM - START OF SHIFT
├─ Check email for overnight tickets
├─ Review priority queue
├─ Read escalated issues
├─ Check status of open tickets
└─ Plan day's workflow

8:30 AM - MORNING TICKETS
├─ Password reset requests (30% of tickets)
│  ├─ Verify identity
│  ├─ Reset password
│  ├─ Document in system
│  └─ Notify user
│
├─ Email issues (20% of tickets)
│  ├─ Check connection
│  ├─ Reset Outlook
│  ├─ Reconfigure account
│  └─ Test sending/receiving
│
├─ Printer problems (15% of tickets)
│  ├─ Check network connectivity
│  ├─ Reinstall drivers
│  ├─ Print test page
│  └─ Verify all devices

10:00 AM - BREAK & FOLLOW-UPS
├─ Call users about their issues
├─ Verify problems resolved
├─ Get feedback/satisfaction
└─ Update ticket status

10:30 AM - AFTERNOON TICKETS
├─ Software issues (15% of tickets)
│  ├─ Check error messages
│  ├─ Restart application
│  ├─ Reinstall if needed
│  └─ Document solution
│
├─ Hardware issues (10% of tickets)
│  ├─ Test peripherals
│  ├─ Check connections
│  ├─ Replace if broken
│  └─ Update inventory
│
├─ Access problems (10% of tickets)
│  ├─ Check AD permissions
│  ├─ Add user to groups
│  ├─ Map drives/shares
│  └─ Verify access

12:00 PM - LUNCH BREAK

1:00 PM - AFTERNOON SHIFT
├─ Handle new incoming tickets
├─ Work on complex issues
├─ Escalate when needed
└─ Document everything

3:00 PM - SECOND BREAK
├─ Review unresolved tickets
├─ Check escalations
├─ Help junior staff
└─ Prepare for shift end

3:30 PM - FINAL TICKETS
├─ Resolve remaining issues
├─ Close completed tickets
├─ Update documentation
└─ Hand off escalations

5:00 PM - END OF SHIFT
├─ Review all open tickets
├─ Prepare handoff notes
├─ Log off
└─ Done!
```

---

---

## 🔧 Ticket Types & Day-to-Day Work

### Ticket Type 1: Password Reset (30% of tickets)

```
PRIORITY: Low
RESPONSE TIME: 15 minutes
RESOLUTION TIME: 5 minutes
COMPLEXITY: Very Easy (L1)

TYPICAL SEQUENCE:
1. User submits: "I forgot my password"
2. You verify identity:
   - Ask security questions
   - Verify from callback
   - Check with manager
3. You reset password:
   - Generate temporary password
   - Tell user (never email)
   - Force user to change
4. User logs in successfully
5. You document in ticket
6. Close ticket

DAILY: Handle 5-10 of these per day
TIME PER TICKET: 5 minutes
AUTOMATION: Can use self-service portal to reduce
```

**Template Response:**
```
Ticket #TKT-5001
User: John Smith
Issue: Forgot Password

VERIFICATION:
✓ Verified via security questions
✓ Confirmed with manager
✓ User identity confirmed

ACTION TAKEN:
✓ Password reset in Active Directory
✓ Temporary password generated
✓ User notified
✓ User changed password successfully
✓ Verified access restored

RESOLUTION:
✓ CLOSED - Issue resolved
✓ User satisfied
✓ Follow-up: 30 days
```

---

### Ticket Type 2: Email Issues (20% of tickets)

```
PRIORITY: Medium
RESPONSE TIME: 30 minutes
RESOLUTION TIME: 15-30 minutes
COMPLEXITY: Easy (L1)

TROUBLESHOOTING SEQUENCE:
1. Check network connectivity
   - ping google.com
   - Check DNS resolution
   - Verify IP address

2. Restart Outlook
   - Close Outlook
   - Wait 30 seconds
   - Reopen Outlook
   - Check if working

3. Check mailbox
   - Verify account configured
   - Check account settings
   - Verify credentials

4. Check firewall/proxy
   - Verify not blocking email
   - Check firewall rules
   - Verify proxy settings

5. Reconfigure account
   - Remove account from Outlook
   - Readd account
   - Test send/receive

6. Escalate if needed
   - Contact Exchange team
   - Create incident ticket
   - Document what was tried

DAILY: Handle 3-4 of these per day
TIME PER TICKET: 15-30 minutes
```

**Troubleshooting Checklist:**
```
[ ] Check network connectivity
[ ] Ping 8.8.8.8 - Success?
[ ] Check internet working
[ ] Restart Outlook
[ ] Shut down completely
[ ] Wait 30 seconds
[ ] Reopen
[ ] Check if working
[ ] Verify account configured
[ ] Check account settings in Outlook
[ ] Verify email address correct
[ ] Check network drives
[ ] Can access file shares?
[ ] Can access other resources?
[ ] Check Windows Event Viewer
[ ] Look for errors
[ ] Check Application log
[ ] Document error messages
[ ] Try from different user
[ ] Does issue persist?
[ ] Is it user-specific?
[ ] Test from another computer
[ ] Does issue repeat?
[ ] Is it hardware issue?
[ ] Escalate to Exchange team
[ ] Create incident ticket
[ ] Document all steps taken
```

---

### Ticket Type 3: Printer Issues (15% of tickets)

```
PRIORITY: Low-Medium
RESPONSE TIME: 30 minutes
RESOLUTION TIME: 10-20 minutes
COMPLEXITY: Easy-Medium (L1-L2)

QUICK FIXES (Try First):
1. Power cycle printer
   - Turn off printer
   - Wait 30 seconds
   - Turn back on
   - Try printing

2. Clear print queue
   - Go to Devices & Printers
   - Right-click printer
   - View print queue
   - Cancel all jobs
   - Restart Print Spooler service
   - Try printing

3. Check connectivity
   - Printer connected to network?
   - Can ping printer IP?
   - Check network cable
   - Check wireless connection

4. Reinstall drivers
   - Go to Device Manager
   - Find printer
   - Uninstall driver
   - Restart
   - Reinstall from manufacturer
   - Test printing

5. Advanced fixes
   - Check printer settings
   - Verify default printer set
   - Check print server
   - Check firewall rules
   - Check network permissions

DAILY: Handle 2-3 of these per day
TIME PER TICKET: 10-20 minutes
```

**Quick Reference Card:**
```
PRINTER NOT PRINTING?

QUICK CHECK:
1. Is printer powered on? YES/NO
2. Is paper in tray? YES/NO
3. Are there error lights? YES/NO
4. Is it set as default? YES/NO

TRY THIS:
→ Power off printer → Wait 30 sec → Power on
→ Try test print from printer menu
→ Clear print queue (Devices & Printers)
→ Restart Print Spooler service
→ Delete print job and retry

STILL NOT WORKING?
→ Reinstall printer driver
→ Check network connectivity
→ Power cycle computer
→ Escalate to printer vendor if hardware issue
```

---

## 🎫 Ticket Template (Use for Every Ticket)

```
╔═══════════════════════════════════════════════╗
║           HELP DESK TICKET FORM               ║
╚═══════════════════════════════════════════════╝

TICKET INFORMATION:
─────────────────────────────────────────────────
Ticket Number:     TKT-5001
Date Opened:       2024-01-15 09:30 AM
Date Assigned:     2024-01-15 09:35 AM
Assigned To:       Mike Johnson (L1 Support)
Status:            ⊙ Open  ⊙ In Progress  ⊙ Waiting  ⊙ Closed

REQUESTER INFORMATION:
─────────────────────────────────────────────────
Name:              John Smith
Email:             john.smith@company.com
Phone:             x5234
Department:        Sales
Manager:           Jane Doe
Office Location:   Building A, Floor 3, Desk 305

ISSUE INFORMATION:
─────────────────────────────────────────────────
Category:          ⊙ Email  ⊙ Password  ⊙ Printer  ⊙ Hardware  ⊙ Software  ⊙ Other
Subcategory:       Email Configuration
Priority:          ⊙ Urgent  ⊙ High  ⊙ Medium  ⊙ Low
Impact:            ⊙ Can't Work  ⊙ Reduced Productivity  ⊙ Minor Issue

DESCRIPTION:
─────────────────────────────────────────────────
"I can't receive emails in Outlook. It keeps saying 
connection error. I've restarted Outlook but still 
not working. Please help!"

TROUBLESHOOTING PERFORMED:
─────────────────────────────────────────────────
[ ] Verified network connectivity - PASS
[ ] Pinged google.com - PASS
[ ] Restarted Outlook - PASS
[ ] Checked email account configuration - PASS
[ ] Removed and readded account - PASS
[ ] Checked firewall settings - PASS
[ ] Checked proxy settings - PASS

ROOT CAUSE:
─────────────────────────────────────────────────
Outlook credentials were incorrect after recent 
password change. User didn't update Outlook settings.

RESOLUTION:
─────────────────────────────────────────────────
1. Removed email account from Outlook
2. Readded account with current credentials
3. Tested send/receive - SUCCESS
4. Verified user can access email
5. Provided password management training

TIME SPENT:
─────────────────────────────────────────────────
Total Time: 25 minutes
- Investigation: 15 minutes
- Resolution: 10 minutes

FIRST CONTACT RESOLUTION:  ✓ YES  ⊙ NO

CUSTOMER SATISFACTION:
─────────────────────────────────────────────────
User Satisfied:    ✓ YES  ⊙ NO  ⊙ PARTIALLY
Feedback:          "Great, now it works. Thanks!"
Rating:            ★★★★★ (5/5)

FOLLOW-UP REQUIRED:
─────────────────────────────────────────────────
⊙ None  ✓ 7 days  ⊙ 30 days  ⊙ Escalate

NOTES & LEARNING:
─────────────────────────────────────────────────
Most email issues are caused by wrong password 
after reset. Consider automated password sync 
in future. User education helped prevent future 
issues.

TICKET CLOSED:
─────────────────────────────────────────────────
Closed Date:       2024-01-15 10:00 AM
Closed By:         Mike Johnson
Time to Resolution: 25 minutes
```

---

## 📊 SLA Requirements (What we Must Track)

```
SLA = Service Level Agreement
= How fast you must respond and resolve

PRIORITY MATRIX:

URGENT:
├─ Response Time: 15 minutes
├─ Resolution Time: 4 hours
├─ Example: User can't work at all
└─ Count: ~5% of tickets

HIGH:
├─ Response Time: 30 minutes
├─ Resolution Time: 8 hours
├─ Example: Major productivity loss
└─ Count: ~15% of tickets

MEDIUM:
├─ Response Time: 1 hour
├─ Resolution Time: 2 business days
├─ Example: Some productivity loss
└─ Count: ~50% of tickets

LOW:
├─ Response Time: 4 hours
├─ Resolution Time: 5 business days
├─ Example: Minor inconvenience
└─ Count: ~30% of tickets

YOUR DAILY TRACKING:

┌─────────────────────────────────────┐
│  TICKET STATUS BOARD                │
├─────────────────────────────────────┤
│  Open:           8 tickets          │
│  In Progress:    3 tickets          │
│  Waiting:        2 tickets          │
│  Closed Today:   12 tickets         │
│                                     │
│  SLA COMPLIANCE:                    │
│  Response Time:  98% ✓              │
│  Resolution:     95% ✓              │
│  Avg Time:       18 minutes         │
│  Satisfaction:   4.6/5 ✓            │
└─────────────────────────────────────┘
```

---

## 💬 Email Response Templates

### Template 1: Ticket Received

```
Subject: Ticket Received - TKT-5001

Dear John,

Thank you for submitting your support request.

YOUR ISSUE:
Email configuration problem in Outlook

TICKET NUMBER: TKT-5001
PRIORITY: Medium
EXPECTED RESPONSE: Within 1 hour
EXPECTED RESOLUTION: Within 8 hours

A support specialist has been assigned to your ticket 
and will contact you shortly.

In the meantime, please:
1. Restart your computer
2. Check if internet connection is working
3. Gather any error messages you see

SUPPORT CONTACT:
Name: Mike Johnson
Phone: ext. 5000
Email: support@company.com

Thank you,
IT Help Desk
```

### Template 2: Issue Resolved

```
Subject: RESOLVED - Email Configuration Issue - TKT-5001

Dear John,

Great news! Your issue has been resolved.

WHAT WAS WRONG:
Your Outlook email credentials needed to be updated 
after your recent password change.

WHAT WE DID:
1. Verified your network connectivity
2. Checked Outlook configuration
3. Updated your email credentials
4. Verified send/receive functionality
5. Tested from your computer

YOUR EMAIL IS NOW WORKING:
✓ Can receive emails
✓ Can send emails
✓ Calendar synchronizing
✓ All features working

FUTURE PREVENTION:
When you change your password, Outlook may need 
the new credentials. You can update this yourself:
1. File → Account Settings
2. Click your email account
3. Click "Change"
4. Enter new password
5. Done!

TICKET CLOSED:
Ticket #TKT-5001 is now closed.

If you have any further issues, simply reply to 
this email or call ext. 5000.

Thank you,
Mike Johnson
IT Help Desk
```

### Template 3: Escalation Notice

```
Subject: Ticket Escalated - TKT-5001

Dear John,

Your support request requires specialized expertise 
and has been escalated to our senior support team.

ORIGINAL ISSUE:
Email configuration problem

ESCALATION REASON:
Issue is not resolved by standard troubleshooting. 
Requires Exchange Server specialist review.

NEXT STEPS:
You will be contacted by a senior technician within 
2 hours. They will have access to advanced tools and 
server-level diagnostics.

TICKET NUMBER: TKT-5001
ESCALATION LEVEL: 2
ASSIGNED SPECIALIST: Sarah Lee (Senior Support)

Thank you for your patience,
IT Help Desk
```

---

## 🔧 PowerShell Scripts for Help Desk

### Script 1: Auto-Response System

```powershell
# Send automatic email when ticket is opened

param(
    [string]$TicketNumber = "TKT-5001",
    [string]$UserEmail = "john@company.com",
    [string]$UserName = "John",
    [string]$Issue = "Email issue"
)

$SMTPServer = "mail.company.com"
$SMTPPort = 587
$From = "support@company.com"

$Subject = "Ticket Received - $TicketNumber"

$Body = @"
Dear $UserName,

Thank you for submitting your support request.

ISSUE: $Issue
TICKET: $TicketNumber

A technician will be assigned shortly.

Thank you,
IT Help Desk
"@

# Send email
$SMTPClient = New-Object Net.Mail.SmtpClient($SMTPServer, $SMTPPort)
$SMTPClient.EnableSsl = $true
$SMTPClient.Send($From, $UserEmail, $Subject, $Body)

Write-Host "✓ Auto-response sent to $UserEmail" -ForegroundColor Green
```

### Script 2: Ticket Status Report

```powershell
# Generate daily ticket status report

Write-Host "════════════════════════════════════" -ForegroundColor Cyan
Write-Host "DAILY TICKET STATUS REPORT" -ForegroundColor Cyan
Write-Host "Date: $(Get-Date -Format 'yyyy-MM-dd')" -ForegroundColor Cyan
Write-Host "════════════════════════════════════" -ForegroundColor Cyan

# Read ticket CSV file
$tickets = Import-Csv "tickets.csv"

$total = $tickets.Count
$open = ($tickets | Where-Object { $_.Status -eq "Open" }).Count
$inProgress = ($tickets | Where-Object { $_.Status -eq "In Progress" }).Count
$resolved = ($tickets | Where-Object { $_.Status -eq "Resolved" }).Count

Write-Host "`nTICKET SUMMARY:" -ForegroundColor Yellow
Write-Host "  Total Tickets: $total" -ForegroundColor White
Write-Host "  Open: $open" -ForegroundColor White
Write-Host "  In Progress: $inProgress" -ForegroundColor White
Write-Host "  Resolved: $resolved" -ForegroundColor Green

# Calculate metrics
$avgTime = ($tickets | Where-Object { $_.Status -eq "Resolved" } | 
    Measure-Object -Property "ResolutionTime" -Average).Average

Write-Host "`nPERFORMANCE:" -ForegroundColor Yellow
Write-Host "  Avg Resolution Time: $avgTime minutes" -ForegroundColor White

# SLA compliance
$urgent = ($tickets | Where-Object { $_.Priority -eq "Urgent" }).Count
$slaCompliant = ($tickets | Where-Object { $_.SLA -eq "Yes" }).Count
$slaPercent = if ($total -gt 0) { ($slaCompliant / $total) * 100 } else { 0 }

Write-Host "  SLA Compliance: $slaPercent%" -ForegroundColor White
Write-Host "  Urgent Tickets: $urgent" -ForegroundColor Yellow

Write-Host "`n════════════════════════════════════" -ForegroundColor Cyan
```

---

## 📈 Daily Metrics You Track

```
HELP DESK DASHBOARD (Daily Update)

╔════════════════════════════════════════╗
║  8:00 AM START OF SHIFT                ║
├────────────────────────────────────────┤
│ Tickets in Queue:        12            │
│ Avg Wait Time:           45 min        │
│ Urgent Tickets:          2             │
│ Your Assigned:           3             │
└────────────────────────────────────────┘

╔════════════════════════════════════════╗
║  12:00 PM MIDDAY CHECK                 ║
├────────────────────────────────────────┤
│ Tickets Resolved:        8             │
│ Tickets in Queue:        6             │
│ Escalations:             1             │
│ Avg Satisfaction:        4.7/5         │
└────────────────────────────────────────┘

╔════════════════════════════════════════╗
║  5:00 PM END OF SHIFT                  ║
├────────────────────────────────────────┤
│ Total Handled Today:     18            │
│ Resolved:                15 (83%)      │
│ Escalated:               2 (11%)       │
│ Still Open:              1 (6%)        │
│ Avg Time/Ticket:         22 min       │
│ Customer Satisfaction:   4.6/5         │
│ SLA Compliance:          94%           │
└────────────────────────────────────────┘
```

---

## 🎯 Knowledge Base Articles (What You Create)

Every time you resolve a unique issue, write an article:

```
KNOWLEDGE BASE ARTICLE #KB-0047

TITLE: "Outlook Email Receives But Can't Send"

PROBLEM:
User can receive emails in Outlook but cannot send. 
Trying to send results in error: "The operation timed out"

SYMPTOMS:
✓ Can receive incoming emails
✗ Cannot send outgoing emails
✗ Error message appears after a few seconds
✗ Issue persists after restart

ROOT CAUSE:
SMTP (outgoing mail) server blocked by firewall or 
using wrong server address

SOLUTION:

Step 1: Check network connectivity
├─ Open Command Prompt
├─ Type: ping 8.8.8.8
└─ Should get responses

Step 2: Check SMTP settings
├─ Open Outlook
├─ Go to File → Account Settings
├─ Click "Change"
├─ Click "Outgoing Server (SMTP)" tab
├─ Verify server: mail.company.com
├─ Verify port: 587
├─ Verify "Requires authentication"

Step 3: Check firewall
├─ Verify port 587 is open
├─ Verify SMTP not blocked
├─ Contact IT if blocked

Step 4: Test send
├─ Create new email
├─ Send to your email
├─ Wait for receipt
├─ If successful, issue resolved

PREVENTION:
- Don't change SMTP server settings
- Use Outlook auto-configuration
- Contact IT before troubleshooting


```
