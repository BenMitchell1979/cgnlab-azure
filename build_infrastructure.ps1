Login-AzureRmAccount -Credential (Get-Credential) -SubscriptionName 'LAB'
$resourceGroup = 'lab-test-01'
$TempUri = "https://bitbucket.org/BenMitchell1979/azure-lab-test/raw/619f97963d0a685ef8aba62975e518c79bd8b5d8/infrastructure.json"

#Validate if RG exists and if not build it
New-AzureRmResourceGroup -Name "$resourceGroup" -Location 'eastus' -force

New-AzureRmResourceGroupDeployment -Name 'lab-test-infrastructure' -ResourceGroupName "$resourceGroup" -TemplateUri $TempUri

