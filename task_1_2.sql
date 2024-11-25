SELECT category,
       AVG(price)::numeric(10, 2) AS avg_price
FROM products
WHERE name ILIKE '%hair%' OR name ILIKE '%home%'
GROUP BY category;