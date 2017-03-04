#Login-AzureRmAccount -Credential (Get-Credential)
$resourceGroup = 'cgnlabs-azure'
$TempUri = "https://raw.githubusercontent.com/BenMitchell1979/cgnlab-azure/master/infrastructure.json"

#Validate if RG exists and if not build it
New-AzureRmResourceGroup -Name "$resourceGroup" -Location 'eastus2' -force

New-AzureRmResourceGroupDeployment -Name 'cgnlabs-infrastructure' -ResourceGroupName "$resourceGroup" -TemplateUri $TempUri

