CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    category VARCHAR(100),
    price DECIMAL(10,2),
    rating DECIMAL(2,1),
    reviews INT
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    monthly_sales INT,
    monthly_revenue DECIMAL(10,2),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
