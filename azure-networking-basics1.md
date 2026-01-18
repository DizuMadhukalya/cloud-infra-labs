## Azure Networking Basics 1
## Virtual Network (VNet)

1) What is a VNet
- Isolated private network in Azure for your resources
- Logically isolated from other VNets (unless connected)
- Define your own IP address space using private IP ranges (10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16)
- Enables Azure resources to securely communicate with each other, internet, and on-premises networks
- Scoped to a single region (can peer VNets across regions)

2) Key Features
- Segmentation: Divide VNet into subnets for organization
- Internet connectivity: Resources can communicate outbound by default
- Azure service integration: Connect to PaaS services via service endpoints
- VNet peering: Connect VNets within/across regions
- Hybrid connectivity: VPN Gateway or ExpressRoute for on-premises connection

3) Use Cases
- Isolate workloads (dev/test/prod environments)
- Multi-tier applications (web, app, database tiers)
- Hybrid cloud scenarios
- Secure communication between Azure resources

## Subnet

1) What is a Subnet
- Subdivision of a VNet using a range of IP addresses
- Provides logical segmentation within a VNet
- Must be within the VNet's address space
- Azure reserves 5 IP addresses in each subnet (network, gateway, DNS, broadcast, future use)

2) Subnet Design

    <img width="753" height="156" alt="image" src="https://github.com/user-attachments/assets/50b9339f-23ad-4fa2-ba07-02c75ae10ba2" />


3) Best Practices
- Separate subnets per tier (web, app, data)
- Dedicated subnet for Azure services (Azure Bastion, Application Gateway)
- Leave room for growth (don't use entire VNet address space immediately)
- Use Network Security Groups per subnet for traffic control
- Smaller subnets (/27, /28) for management or gateway subnets 
