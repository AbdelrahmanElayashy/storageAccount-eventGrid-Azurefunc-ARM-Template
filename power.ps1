

$rsgroup = "TEST"
$templateFile = "C:\Users\Abdelrahman\Downloads\ExportedTemplate-grow-sync-blob-table-rg (2)\template1.json"
$templateParam = "C:\Users\Abdelrahman\Downloads\ExportedTemplate-grow-sync-blob-table-rg (2)\parameters1.json"

#New-AzResourceGroup -Name $rsgroup -Location "Central US"

#give storage name if it already exists, then properties will be checked if there is changing, otherwise nothing will happened.
# length should 10 max
$storagePrefix = "aaaaaaaaaa"

#New-AzResourceGroupDeployment -Name "TEST-template" -ResourceGroupName $rsgroup -TemplateFile $templateFile -storagePrefix $storagePrefix -Verbose

New-AzResourceGroupDeployment -Name "TEST-template" -ResourceGroupName $rsgroup -TemplateFile $templateFile -TemplateParameterFile $templateParam -Verbose