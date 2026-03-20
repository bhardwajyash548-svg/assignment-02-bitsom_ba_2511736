## Storage Systems

In this architecture, multiple storage systems are used to handle different types of data and workloads.

A relational database (such as MySQL) is used for storing transactional patient data, including patient records, treatments, and billing information. This ensures strong consistency and reliability.

A data warehouse is used for analytical reporting, such as monthly reports on bed occupancy and department-wise costs. It enables fast querying and aggregation.

A vector database is used to support semantic search over patient records. This allows doctors to ask questions in natural language, such as "Has this patient had a cardiac event before?"

A data lake is used to store raw and unstructured data such as medical images and logs. Additionally, a streaming system is used to ingest real-time data from ICU monitoring devices.

---

## OLTP vs OLAP Boundary

The OLTP system handles real-time transactional operations such as patient updates, admissions, and billing. This is typically managed by the relational database.

The OLAP system is responsible for analytics and reporting. Data is extracted from the OLTP system and loaded into the data warehouse through ETL processes.

This separation ensures that transactional performance is not affected by heavy analytical queries.

---

## Trade-offs

One major trade-off in this architecture is between consistency and scalability. Relational databases provide strong consistency but may not scale easily for large volumes of data.

To address this, a hybrid architecture is used. Critical data is stored in the relational database, while large-scale and unstructured data is handled by the data lake and vector database.

Another trade-off is system complexity. Using multiple storage systems increases architectural complexity, but this is mitigated by clearly defining responsibilities for each component and using data pipelines to manage data flow efficiently.

