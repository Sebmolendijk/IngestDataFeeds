$today = Get-Date -Format "MM-dd-yyyy"
$suffix = Get-Random -Maximum 100
$deploymentName = "IngestDataFeed_" + $today + "_$suffix"

Import-Module Az.Resources
New-AzResourceGroupDeployment -ResourceGroupName DCU -TemplateFile .\IngestDataFeed.json -Name $deploymentName -Verbose

