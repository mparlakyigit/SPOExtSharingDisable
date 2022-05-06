<#
.HAKKIMDA
	Mehmet PATLAKYİĞİT | Office Apps & Services MVP
	https://www.parlakyigit.net/
	Twitter:@mparlakyigit 
#>

<#
.NOTE
Bu PowerShell 
#>

Write-Host "Mehmet PATLAKYİĞİT | Office Apps & Services MVP" -ForegroundColor blue
Write-Host "https://www.parlakyigit.net/" -ForegroundColor blue
Write-Host "Twitter:@mparlakyigit" -ForegroundColor blue


$Org_Name = "mparlakyigit"
#https://sizin_organizasyonunuz-admin.sharepoint.com/


Write-Output "SharePoint Online Servisine Bağlanılıyor."
Install-Module -Name Microsoft.Online.SharePoint.PowerShell
Import-Module Microsoft.Online.SharePoint.PowerShell -DisableNameChecking
Connect-SPOService -Url "https://$Org_Name-admin.sharepoint.com"

Set-SPOTenant -SharingCapability Disabled