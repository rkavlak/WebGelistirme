DDL SORGULARI
CREATE TABLE productss (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    category_id INT,
    price DECIMAL(10, 2),
    in_stock BOOLEAN
);

ALTER TABLE customers ADD email VARCHAR(255);

ALTER TABLE customers DROP COLUMN email;

CREATE INDEX idx_product_categoryY ON products(category_id);

CREATE VIEW affordable_products AS
SELECT * FROM products WHERE UnitPrice < 50.00;
