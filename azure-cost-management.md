## Azure Cost Management

1) What is Cost Management
- Azure's built-in tools for monitoring, allocating, and optimizing cloud spending
- Provides visibility into where money is being spent
- Available in Azure portal under "Cost Management + Billing"

## Key Features
1) Cost Analysis
- View actual and forecasted costs
- Break down by resource, resource group, service, location, tags
- Historical trends and patterns
- Export data for external reporting

2) Budgets
- Set spending limits at subscription or resource group level
- Alert notifications at thresholds (50%, 80%, 100%, 110%)
- Can trigger automated actions via Action Groups
- Monthly, quarterly, or annual budget periods

3) Cost Alerts
- Budget alerts (when spending exceeds threshold)
- Credit alerts (for EA customers)
- Department spending quota alerts
- Anomaly alerts (unusual spending patterns)

4) Recommendations
 - Right-size or shut down underutilized VMs
- Reserved instance purchase suggestions
- Delete unattached disks and unused resources
- Switch to lower-cost storage tiers

## Cost Optimization Strategies

1. Reserved Instances
- Commit 1 or 3 years for 40-70% discount
- Best for predictable, steady-state workloads

2. Azure Hybrid Benefit
- Use existing Windows/SQL licenses in Azure
- Significant savings on licensing costs

3. Spot VMs
- Up to 90% discount for interruptible workloads
- Good for batch jobs, dev/test, fault-tolerant apps

4. Auto-scaling
- Scale down during off-hours
- Scale up only when needed

5. Resource Tagging
- Tag resources by: project, environment, cost center, owner
- Enable chargeback/showback reporting
- Track spending per business unit

## Cost Management Best Practices
1. Set up budgets with alerts from day one
2. Tag all resources consistently
3. Review cost recommendations monthly
4. Use Azure Advisor for optimization insights
5. Implement policy to prevent expensive resource creation
6. Shut down non-production resources after hours
7. Regular cleanup of unused resources (orphaned disks, old snapshots)

## Monitoring Tools
1. Azure Cost Management: Native Azure tool
2. Azure Advisor: Free recommendations for cost, security, performance
3. Azure Monitor: Track resource usage and performance
4. Third-party tools: CloudHealth, Cloudability, Kubecost (for Kubernetes)
