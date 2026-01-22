/* =========================================================
   Project: Telecom Customer Churn Analysis
   Tool   : MySQL
   ========================================================= */


/* ---------------------------------------------------------
   1. Overall Customer Count & Churn Rate
   --------------------------------------------------------- */
SELECT
  COUNT(*) AS total_customers,
  SUM(CASE WHEN churn_label = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
  ROUND(
    SUM(CASE WHEN churn_label = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
    2
  ) AS churn_rate_percentage
FROM telco;


/* ---------------------------------------------------------
   2. Churn Analysis by Gender
   --------------------------------------------------------- */
SELECT
  gender,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN churn_label = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
  ROUND(
    SUM(CASE WHEN churn_label = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
    2
  ) AS churn_rate_percentage
FROM telco
GROUP BY gender;


/* ---------------------------------------------------------
   3. Churn Analysis by Contract Type
   --------------------------------------------------------- */
SELECT
  contract,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN churn_label = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
  ROUND(
    SUM(CASE WHEN churn_label = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
    2
  ) AS churn_rate_percentage
FROM telco
GROUP BY contract;


/* ---------------------------------------------------------
   4. Average Tenure Comparison (Churned vs Non-Churned)
   --------------------------------------------------------- */
SELECT
  AVG(CASE WHEN churn_label = 'Yes' THEN tenure_in_months END)
    AS avg_tenure_churned_customers,
  AVG(CASE WHEN churn_label = 'No' THEN tenure_in_months END)
    AS avg_tenure_non_churned_customers
FROM telco;


/* ---------------------------------------------------------
   5. Churn Analysis by Payment Method
   --------------------------------------------------------- */
SELECT
  payment_method,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN churn_label = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
  ROUND(
    SUM(CASE WHEN churn_label = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
    2
  ) AS churn_rate_percentage
FROM telco
GROUP BY payment_method;


/* ---------------------------------------------------------
   6. Churn Analysis by Internet Service Availability
   --------------------------------------------------------- */
SELECT
  internet_service,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN churn_label = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
  ROUND(
    SUM(CASE WHEN churn_label = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
    2
  ) AS churn_rate_percentage
FROM telco
GROUP BY internet_service;


/* ---------------------------------------------------------
   7. Churn Analysis by Internet Type
   --------------------------------------------------------- */
SELECT
  internet_type,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN churn_label = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
  ROUND(
    SUM(CASE WHEN churn_label = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
    2
  ) AS churn_rate_percentage
FROM telco
GROUP BY internet_type;


/* ---------------------------------------------------------
   8. High-Risk Customer Segments (Top Churn Contributors)
   --------------------------------------------------------- */
SELECT
  contract,
  payment_method,
  internet_type,
  COUNT(*) AS churned_customers
FROM telco
WHERE churn_label = 'Yes'
GROUP BY contract, payment_method, internet_type
ORDER BY churned_customers DESC
LIMIT 5;
