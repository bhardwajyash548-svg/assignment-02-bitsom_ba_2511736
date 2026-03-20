-- Dimension: Date
CREATE TABLE dim_date (
    date_id DATE PRIMARY KEY,
    month INT,
    year INT
);

-- Dimension: Product
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    category VARCHAR(50)
);

-- Dimension: Store
CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(50)
);

-- Fact Table
CREATE TABLE fact_sales (
    sale_id INT PRIMARY KEY,
    date_id DATE,
    product_id INT,
    store_id INT,
    revenue INT,
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id)
);

-- Sample Cleaned Data Inserts

INSERT INTO dim_date VALUES
('2023-01-01', 1, 2023),
('2023-02-01', 2, 2023);

INSERT INTO dim_product VALUES
(1, 'Electronics'),
(2, 'Clothing');

INSERT INTO dim_store VALUES
(101, 'Store A'),
(102, 'Store B');

INSERT INTO fact_sales VALUES
(1, '2023-01-01', 1, 101, 5000),
(2, '2023-02-01', 2, 102, 3000);

