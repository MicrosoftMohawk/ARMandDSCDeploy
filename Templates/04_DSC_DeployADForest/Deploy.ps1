$ResourceGroupDeploymentParams = @{
    Name                  = 'DSC_ADForest' 
    ResourceGroupName     = "AzureARMTesting" 
    Mode                  = Incremental 
    TemplateFile          = .\template.json 
    TemplateParameterFile = .\parameters.json
}

New-AzureRmResourceGroupDeployment @ResourceGroupDeploymentParams