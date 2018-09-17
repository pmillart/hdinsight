set -x
MYRESOURCEGROUP=ScaledRiskarm
#Create Resource Group 
az group create --name $MYRESOURCEGROUP --location "West Europe"

az group deployment create \
  --name ScaledRiskDeployment \
  --resource-group $MYRESOURCEGROUP \
  --template-uri "https://raw.githubusercontent.com/pmillart/hdinsight/master/azuredeploy.json" \
  --parameters @azuredeploy.parameters.json
