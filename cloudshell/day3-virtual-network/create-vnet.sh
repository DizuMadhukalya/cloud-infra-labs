az network vnet create \
  --resource-group rg-cloud-labs \
  --name cloudlab-vnet \
  --address-prefix 10.0.0.0/16 \
  --subnet-name default \
  --subnet-prefix 10.0.1.0/24

## Added VNET Command file

