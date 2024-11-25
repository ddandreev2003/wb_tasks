SELECT seller_id,
       COUNT(DISTINCT category) AS total_categ,
       AVG(rating) AS avg_rating,
       SUM(revenue) AS total_revenue,
       CASE
           WHEN COUNT(DISTINCT category) > 1 AND SUM(revenue) > 50000 THEN 'rich'
           ELSE 'poor'
       END AS seller_type
FROM sellers
WHERE category <> 'Bedding'
GROUP BY seller_id
ORDER BY seller_id;