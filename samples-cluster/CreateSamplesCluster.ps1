Param(
    [string]$ResourceGroupName,
    [string]$SubscriptionId
    )
        
$templateFile = "azuredeploy.json"
$templateParameterFile = "azuredeploy.parameters.json"

#Login-AzureRmAccount

Select-AzureRmSubscription -SubscriptionId $SubscriptionId -Current
New-AzureRmResourceGroup -Name $ResourceGroupName -Location "eastus" -Force

New-AzureRm

ResourceGroupDeployment -TemplateFile $templateFile -TemplateParameterFile $templateParameterFile -ResourceGroupName $ResourceGroupName