## ETL Decisions

### Decision 1 — Date Format Standardization
Problem: The dataset contained inconsistent date formats.
Resolution: All dates were converted into a standard YYYY-MM-DD format before loading.

---

### Decision 2 — Handling NULL Values
Problem: Some revenue values were missing.
Resolution: NULL values were replaced with 0 to ensure accurate aggregation.

---

### Decision 3 — Category Standardization
Problem: Product categories had inconsistent casing (e.g., electronics, Electronics).
Resolution: All category values were converted to a consistent format (proper case).

