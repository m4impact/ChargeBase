-- Chargebase — Key Analytical Queries
-- Stage 3: Data Storage
-- Owner: You + TechGk-R

-- Average price by brand
SELECT b.brand_name, AVG(bg.price) AS avg_price
FROM bags bg
JOIN brands b ON bg.brand_id = b.brand_id
GROUP BY b.brand_name
ORDER BY avg_price DESC;

-- Price by condition
SELECT condition, AVG(price) AS avg_price, COUNT(*) AS count
FROM bags
GROUP BY condition;

-- Discounted vs non-discounted
SELECT discount, AVG(price) AS avg_price, COUNT(*) AS count
FROM bags
GROUP BY discount;

-- Price retention rate by brand
SELECT b.brand_name,
       AVG(bg.price / bg.original_msrp) AS avg_retention_rate
FROM bags bg
JOIN brands b ON bg.brand_id = b.brand_id
WHERE bg.original_msrp > 0
GROUP BY b.brand_name
ORDER BY avg_retention_rate DESC;
