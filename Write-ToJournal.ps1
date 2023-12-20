[CmdletBinding()]
param (
    [Parameter(mandatory=$true)]
    [string]$Entry,

    [Parameter(mandatory=$false)]
    [string]$Journal = "D:\documents\_journal\2023-journal.txt"
)
$ErrorActionPreference = "Stop"
$writing = Get-Content -Path $Entry 
Add-Content -Path $Journal -Value "`n"
Add-Content -Path $Journal -Value $writing
Write-Host "$Entry contents appended to $Journal." -foregroundColor Green
Remove-Item -Path $Entry -Confirm