## Azure Networking Basics 2
## Network Security Group (NSG)

1) What is an NSG
- Virtual firewall containing security rules that allow/deny network traffic
- Filter traffic to/from Azure resources in a VNet
- Can be associated with subnets or individual network interfaces (NICs)
- Stateful firewall (return traffic automatically allowed)

2) Security Rules
Each rule contains:
- Priority: 100-4096 (lower number = higher priority)
- Source/Destination: IP address, CIDR, service tag, application security group
- Protocol: TCP, UDP, ICMP, Any
- Port range: Single port or range (e.g., 80, 443, 1000-2000)
- Action: Allow or Deny

3) Example Rules

<img width="661" height="134" alt="image" src="https://github.com/user-attachments/assets/38d0c15f-0052-4413-a81e-5f3d41016c41" />

4) Rule Evaluation
- Rules processed in priority order (lowest first)
- Processing stops when match found
- Default rules exist (can't delete, lowest priority)
- Best practice: Explicit deny rule at end

5) Association Options
- Subnet-level: Apply to all resources in subnet (preferred for consistency)
- NIC-level: Apply to specific VM (for granular control)
- Can use both (most restrictive rule wins)

## Load Balancer

1) What is Azure Load Balancer
- Layer 4 (TCP/UDP) load balancer distributing traffic across multiple VMs
- High availability and scalability for applications
- Supports inbound and outbound scenarios
- Health probes to detect unhealthy instances

2) Types

 2.1 Public Load Balancer
   - Internet-facing, has public IP address
   - Distributes internet traffic to VMs
   - Example: Load balance web servers receiving public requests

  2.2 Internal Load Balancer
   - Private IP only, no internet access
   - Distributes traffic within VNet
   - Example: Load balance between app tier and database tier

## SKU's

1) Basic (Legacy)
- Free, limited features
- Up to 300 instances
- No SLA

2) Standard (Recommended)
- 99.99% SLA
- Supports availability zones
- Secure by default (NSG required)
- Up to 1000 instances

3) Components
- Frontend IP: Public or private IP that receives traffic
- Backend pool: Group of VMs/instances receiving distributed traffic
- Health probes: Check instance health (HTTP, HTTPS, TCP)
- Load balancing rules: Define how traffic is distributed

4) Use Cases
- Distribute web traffic across multiple web servers
- Load balance internal application tier traffic
- High availability for stateless applications
- Scale applications horizontally
