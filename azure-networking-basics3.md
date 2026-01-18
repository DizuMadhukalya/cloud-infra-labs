## Azure Networking Basics 3
## Application Gateway

1) What is Application Gateway
- Layer 7 (HTTP/HTTPS) load balancer with web application firewall (WAF)
- Advanced routing based on URL path, host headers, cookies
- SSL/TLS termination (offload encryption from backend servers)
- Regional service (not global like Azure Front Door)

2) Key Differences from Load Balancer

   <img width="722" height="323" alt="image" src="https://github.com/user-attachments/assets/9bae4dd0-2989-48e6-a608-c280eb333e2d" />

3) Advanced Features

  <img width="512" height="300" alt="image" src="https://github.com/user-attachments/assets/7750440f-5bbb-4b73-b125-147da00be423" />

4) SSL Termination
- Decrypt traffic at gateway
- Backend servers handle unencrypted traffic (better performance)
- Re-encrypt to backend if needed (end-to-end SSL)

## Web Application Firewall (WAF)
- Protection against common web vulnerabilities (OWASP Top 10)
- SQL injection, cross-site scripting (XSS), command injection
- Detection or prevention mode
- Custom rules for specific threats

1) Components
- Frontend IP: Public or private endpoint
- Listeners: Monitor for incoming requests (port, protocol, host)
- Backend pools: Servers handling requests
- HTTP settings: Port, protocol, cookie affinity, connection draining
- Rules: Connect listeners to backend pools with routing logic

2) Use Cases
- Multi-tier web applications
- Microservices requiring URL-based routing
- Applications needing WAF protection
- SSL offloading for backend performance
- Session affinity (sticky sessions) requirements

## Network Architecture Example

Internet
    │
    ▼
[Application Gateway - WAF enabled]
    │ (HTTPS terminated here)
    ▼
[Subnet-Web: 10.0.1.0/24] + NSG (Allow 443 from App Gateway)
    │
    ├── Web Server 1
    ├── Web Server 2
    └── Web Server 3
         │
         ▼
[Internal Load Balancer]
         │
         ▼
[Subnet-App: 10.0.2.0/24] + NSG (Allow from Web subnet only)
    │
    ├── App Server 1
    ├── App Server 2
    └── App Server 3
         │
         ▼
[Subnet-Database: 10.0.3.0/24] + NSG (Allow from App subnet only)
    │
    └── SQL Database

  <img width="611" height="614" alt="image" src="https://github.com/user-attachments/assets/4045bc56-7f96-46e7-acf7-159699504016" />
  

   
