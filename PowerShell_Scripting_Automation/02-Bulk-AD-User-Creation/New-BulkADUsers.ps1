<#
.SYNOPSIS
    Provisions Active Directory users in bulk from a CSV file.
.DESCRIPTION
    Reads a structured CSV file, auto-generates SamAccountName and UPN, assigns 
    a temporary complex password, forces password change on first login, and logs output.
#>

[CmdletBinding()]
param (
    [string]$CsvPath = ".\users.csv",
    [string]$DomainName = "lab.local",
    [securestring]$DefaultPassword = (ConvertTo-SecureString "P@ssw0rd2026!" -AsPlainText -Force)
)

# 1. Active Directory Module Verification
if (-not (Get-Module -ListAvailable -Name ActiveDirectory)) {
    Write-Error "ActiveDirectory module is not installed. Install RSAT tools first."
    return
}

# 2. Validate CSV Path
if (-not (Test-Path -Path $CsvPath)) {
    Write-Error "CSV file not found at $CsvPath"
    return
}

$users = Import-Csv -Path $CsvPath

foreach ($user in $users) {
    # Auto-generate credentials (e.g., John Doe -> jdoe)
    $samAccountName = ($user.Firstname.Substring(0,1) + $user.Lastname).ToLower()
    $upn = "$samAccountName@$DomainName"
    $displayName = "$($user.Firstname) $($user.Lastname)"

    # Check if user already exists
    if (Get-ADUser -Filter "SamAccountName -eq '$samAccountName'") {
        Write-Host "SKIPPED: User '$samAccountName' already exists in AD." -ForegroundColor Yellow
        continue
    }

    # Verify target OU exists
    if (-not (Name-ADObject -Identity $user.OUPath -ErrorAction SilentlyContinue)) {
        Write-Host "ERROR: Target OU '$($user.OUPath)' does not exist for $samAccountName." -ForegroundColor Red
        continue
    }

    # User Creation Parameters
    $userParams = @{
        SamAccountName        = $samAccountName
        UserPrincipalName     = $upn
        GivenName             = $user.Firstname
        Surname               = $user.Lastname
        DisplayName           = $displayName
        Department            = $user.Department
        Title                 = $user.Title
        Path                  = $user.OUPath
        AccountPassword       = $DefaultPassword
        Enabled               = $true
        ChangePasswordAtLogon = $true
    }

    try {
        New-ADUser @userParams -ErrorAction Stop
        Write-Host "SUCCESS: Created user $displayName ($samAccountName)" -ForegroundColor Green
    }
    catch {
        Write-Host "FAILED: Could not create $displayName. Error: $_" -ForegroundColor Red
    }
}
