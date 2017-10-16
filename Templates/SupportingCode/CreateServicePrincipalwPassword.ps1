Login-AzureRMAccount

$sp = New-AzureRmADServicePrincipal -DisplayName exampleapp -Password "{provide-password}"
Sleep 20
New-AzureRmRoleAssignment -RoleDefinitionName Contributor -ServicePrincipalName $sp.ApplicationId

$creds = Get-Credential -UserName "SP_DSCEA-SI"

$secpasswd = ConvertTo-SecureString "mmy8V6nOcOyGX0B" -AsPlainText -Force
$mycreds = New-Object System.Management.Automation.PSCredential ("768835e9-73f7-4a04-a5c4-b68c43b11477", $secpasswd)
Login-AzureRmAccount -Credential $mycreds -ServicePrincipal -TenantId 72f988bf-86f1-41af-91ab-2d7cd011db47