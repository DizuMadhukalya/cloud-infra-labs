# Day 3 – Virtual Network Notes

Today I learned how to create an Azure Virtual Network using Azure CloudShell and Azure CLI.

Key Learnings:

- Azure regions have different VM SKU availability.
- Some VM sizes fail due to capacity restrictions.
- Azure CLI errors must be carefully read to identify region or SKU issues.
- CloudShell persistence requires mounting a storage account.
- Folder creation in GitHub requires filename/foldername/file format.

Command used to create VNET:

az network vnet create \
  --resource-group rg-cloud-labs \
  --name cloudlab-vnet \
  --address-prefix 10.0.0.0/16 \
  --subnet-name default \
  --subnet-prefix 10.0.1.0/24
