## Anomaly Analysis

### Insert Anomaly
In the current dataset, it is not possible to insert a new customer unless an order is also created. Since all data is stored in a single table, adding a customer without an associated order is not allowed.

Example: If a new customer wants to register but has not placed any order yet, their data cannot be inserted.

---

### Update Anomaly
Customer-related information is repeated across multiple rows. If any detail needs to be updated, it must be changed in all rows.

Example: If customer_id = 'CUST048' appears in multiple rows and we want to update related details, we must update every row, otherwise inconsistency will occur.

---

### Delete Anomaly
If a row is deleted, important information may also be lost.

Example: If the only order of a customer is deleted, then all information about that customer is also lost.


## Normalization Justification

The original dataset stores all information in a single table, which leads to redundancy and data anomalies. For example, the same customer_id appears in multiple rows, causing duplication.

This design results in update anomalies, where a change must be made in multiple places, increasing the risk of inconsistency. Insert anomalies also occur, as new customers cannot be added without creating an order. Similarly, delete anomalies can lead to loss of important information when an order is removed.

By normalizing the data into separate tables such as Customers and Orders, redundancy is reduced. Each entity is stored only once, and relationships are maintained using foreign keys. This improves data integrity, consistency, and scalability.

Therefore, normalization is essential and not an over-engineering approach.

