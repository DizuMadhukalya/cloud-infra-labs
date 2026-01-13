# Day 3 – Virtual Network Creation

This lab covers creation of Azure Virtual Network using Azure CLI from CloudShell.

<img width="1562" height="805" alt="image" src="https://github.com/user-attachments/assets/10740971-0435-4b1c-b9a3-1f913bbb1e2e" />
<img width="1746" height="588" alt="image" src="https://github.com/user-attachments/assets/63083f42-09c2-495d-8ba9-78a9dbc2b82d" />

[vnet-show.txt](https://github.com/user-attachments/files/24591319/vnet-show.txt)
{
  "addressSpace": {
    "addressPrefixes": [
      "10.10.0.0/16"
    ]
  },
  "enableDdosProtection": false,
  "etag": "W/\"4385509e-4ef3-42c9-8cbd-1279929d9548\"",
  "id": "/subscriptions/bb297fff-137a-4cc2-a49e-a503b0f4ddd3/resourceGroups/rg-network-labs/providers/Microsoft.Network/virtualNetworks/vnet-cloud-lab",
  "location": "eastus",
  "name": "vnet-cloud-lab",
  "privateEndpointVNetPolicies": "Disabled",
  "provisioningState": "Succeeded",
  "resourceGroup": "rg-network-labs",
  "resourceGuid": "5c30d33f-3d35-4e4f-9b8c-d1d7879668b7",
  "subnets": [
    {
      "addressPrefix": "10.10.1.0/24",
      "delegations": [],
      "etag": "W/\"4385509e-4ef3-42c9-8cbd-1279929d9548\"",
      "id": "/subscriptions/bb297fff-137a-4cc2-a49e-a503b0f4ddd3/resourceGroups/rg-network-labs/providers/Microsoft.Network/virtualNetworks/vnet-cloud-lab/subnets/default",
      "name": "default",
      "privateEndpointNetworkPolicies": "Disabled",
      "privateLinkServiceNetworkPolicies": "Enabled",
      "provisioningState": "Succeeded",
      "resourceGroup": "rg-network-labs",
      "type": "Microsoft.Network/virtualNetworks/subnets"
    }
  ],
  "type": "Microsoft.Network/virtualNetworks",
  "virtualNetworkPeerings": []
}
