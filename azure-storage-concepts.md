## Azure Storage Services

1) Blob Storage
- Object storage for unstructured data (images, videos, documents, backups)
- Highly scalable - store petabytes of data
- Three tiers: Hot (frequent access), Cool (infrequent, 30+ days), Archive (rare access, 180+ days)
- Three types: Block blobs (files/documents), Append blobs (logs), Page blobs (VHD files for VMs)
- Use cases: Media files, backups, data lakes, static website hosting, VM disks

2) File Storage
- Fully managed cloud file shares using SMB/NFS protocols
- Access like traditional file servers via network drive mapping
- Can be mounted on Windows, Linux, and macOS simultaneously
- Supports lift-and-shift of legacy apps requiring file shares
- Use cases: Replace/supplement on-premises file servers, shared application settings, containerized apps needing persistent storage, development tools requiring shared storage

3) Queue Storage
- Message queue service for asynchronous communication between application components
- Store millions of messages (up to 64 KB each)
- Enables decoupling of application components for scalability
- FIFO not guaranteed (use Service Bus for strict ordering)
- Messages can have time-to-live and visibility timeout
- Use cases: Task queue for background processing, communication between web and worker roles, buffering work between components, distributed application workflows

4) Table Storage
- NoSQL key-value store for semi-structured data
- Schemaless design - no rigid schema required
- Extremely scalable and cost-effective
- Uses partition key and row key for fast lookups
- No foreign keys, joins, or complex queries (use Cosmos DB for advanced features)
- Use cases: Storing structured non-relational data, user data for web apps, IoT device metadata, logs and telemetry data, flexible datasets that don't need relational features

5) Comparison Summary
<img width="846" height="253" alt="image" src="https://github.com/user-attachments/assets/caa76c8d-21f7-46c6-a158-e642c07022d0" />
