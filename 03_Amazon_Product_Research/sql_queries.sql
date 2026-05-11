-- Top products by revenue
SELECT p.product_name, s.monthly_revenue
FROM products p
JOIN sales s ON p.product_id = s.product_id
ORDER BY s.monthly_revenue DESC;

-- Average price per category
SELECT category, AVG(price) AS avg_price
FROM products
GROUP BY category;

-- High demand low competition products
SELECT p.product_name, s.monthly_sales, p.reviews
FROM products p
JOIN sales s ON p.product_id = s.product_id
WHERE s.monthly_sales > 500 AND p.reviews < 200;
