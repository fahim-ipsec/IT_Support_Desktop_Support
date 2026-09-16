<#
.SYNOPSIS
    Resets an Active Directory user password, unlocks the account, forces a reset at login, and logs the action.
.DESCRIPTION
    Automates Tier 1 Helpdesk password resets. Generates a complex temporary password or accepts a custom one,
    verifies target identity, clears account lockouts, and appends execution details to a audit log file.
#>

[CmdletBinding()]
param (
    [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
    [string]$SamAccountName,

    [Parameter(Mandatory = $false)]
    [string]$LogPath = ".\PasswordResetAudit.csv",

    [Parameter(Mandatory = $false)]
    [string]$CustomPassword
)

# 1. Ensure Active Directory Module is Available
if (-not (Get-Module -ListAvailable -Name ActiveDirectory)) {
    Write-Error "ActiveDirectory module is missing. Please run on a management node with RSAT installed."
    return
}

# 2. Verify User Exists
try {
    $adUser = Get-ADUser -Identity $SamAccountName -Properties AccountLockoutTime, Enabled -ErrorAction Stop
}
catch {
    Write-Host "ERROR: User '$SamAccountName' not found in Active Directory." -ForegroundColor Red
    return
}

# 3. Generate or Assign Password
if ($CustomPassword) {
    $plainPassword = $CustomPassword
} else {
    # Generate random 12-char complex password: Temp! + 7 random chars
    $randomChars = -join ((33..126) | ForEach-Object { [char]$_ } | Get-Random -Count 7)
    $plainPassword = "Temp!$randomChars"
}

$securePassword = ConvertTo-SecureString $plainPassword -AsPlainText -Force

# 4. Perform Password Reset & Unlock
try {
    # Reset Password
    Set-ADAccountPassword -Identity $SamAccountName -NewPassword $securePassword -Reset -ErrorAction Stop
    
    # Force Change at Next Logon
    Set-ADUser -Identity $SamAccountName -ChangePasswordAtLogon $true -ErrorAction Stop
    
    # Unlock if locked
    if ($adUser.AccountLockoutTime) {
        Unlock-ADAccount -Identity $SamAccountName -ErrorAction Stop
        $unlockedStatus = "Yes"
    } else {
        $unlockedStatus = "No (Was not locked)"
    }

    Write-Host "SUCCESS: Password reset for '$SamAccountName'." -ForegroundColor Green
    Write-Host "Temporary Password : $plainPassword" -ForegroundColor Yellow
    Write-Host "Account Unlocked   : $unlockedStatus" -ForegroundColor Cyan
    Write-Host "Must Change Password: True" -ForegroundColor Cyan

    # 5. Append Audit Log
    $logEntry = [PSCustomObject]@{
        Timestamp        = (Get-Date -Format "yyyy-MM-dd HH:mm:ss")
        TargetUser       = $SamAccountName
        ExecutedBy       = "$env:USERDOMAIN\$env:USERNAME"
        AccountUnlocked  = $unlockedStatus
        Status           = "Success"
    }

    $logEntry | Export-Csv -Path $LogPath -Append -NoTypeInformation
    Write-Host "Audit log updated at: $LogPath" -ForegroundColor DarkGray
}
catch {
    Write-Host "FAILED: Reset failed for '$SamAccountName'. Error: $_" -ForegroundColor Red

    # Log Failure Entry
    $failedLogEntry = [PSCustomObject]@{
        Timestamp        = (Get-Date -Format "yyyy-MM-dd HH:mm:ss")
        TargetUser       = $SamAccountName
        ExecutedBy       = "$env:USERDOMAIN\$env:USERNAME"
        AccountUnlocked  = "N/A"
        Status           = "Failed: $_"
    }
    $failedLogEntry | Export-Csv -Path $LogPath -Append -NoTypeInformation
}
