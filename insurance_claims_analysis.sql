USE acer_america;
# STEP 1: Data Understanding
SELECT COUNT(*) FROM insurance_claims;
-- Total number of claims
SELECT COUNT(*) FROM insurance_claims;
-- Earliest and latest claim dates
SELECT MIN(claim_date), MAX(claim_date) FROM insurance_claims;
-- Unique claim types
SELECT DISTINCT claim_type FROM insurance_claims;
-- Unique regions
SELECT DISTINCT region FROM insurance_claims;


# STEP 2: Data Quality check
-- Missing customer IDs
SELECT * FROM insurance_claims WHERE customer_id IS NULL;

-- Claims with negative or zero amounts
SELECT * FROM insurance_claims WHERE claim_amount <= 0;


# STEP 3: Descriptive Analysis
-- Average claim amount by claim type
SELECT claim_type, ROUND(AVG(claim_amount),2) AS avg_claim
FROM insurance_claims
GROUP BY claim_type
ORDER BY avg_claim DESC;

-- Claim counts by region and status
SELECT region, status, COUNT(*) AS total_claims
FROM insurance_claims
GROUP BY region, status
ORDER BY total_claims DESC;

-- Total payout (approved claims only) by region
SELECT region, SUM(claim_amount) AS total_payout
FROM insurance_claims
WHERE status = 'Approved'
GROUP BY region
ORDER BY total_payout DESC;


# STEP 4: Advanced Analysis
-- Which month had the highest claim activity?
SELECT DATE_FORMAT(claim_date, '%Y-%m') AS claim_month,
       COUNT(*) AS total_claims,
       SUM(claim_amount) AS total_amount
FROM insurance_claims
GROUP BY claim_month
ORDER BY total_claims DESC;

-- Average claim amount per customer
SELECT customer_id, ROUND(AVG(claim_amount),2) AS avg_claim
FROM insurance_claims
GROUP BY customer_id
ORDER BY avg_claim DESC
LIMIT 10; -- top 10 customers
