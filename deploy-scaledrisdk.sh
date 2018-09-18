MYRESOURCEGROUP=ScaledRiskARM
PARTNERID=pid-9aa77d5f-a637-4e77-a3ce-51e9f7048fbb
time  az group delete --name $MYRESOURCEGROUP --yes
az group create --name $MYRESOURCEGROUP --location "West Europe"

time az group deployment create \
  --name $PARTNERID \
  --mode Incremental \
  --resource-group $MYRESOURCEGROUP \
  --template-file azuredeploy.json \
  --parameters @azuredeploy.parameters.json
