# Telecom Customer Churn Analysis (SQL)

## Problem Statement
Customer churn is a major challenge for telecom companies as it directly impacts revenue and customer lifetime value.
This project analyzes customer demographics, contracts, payment methods, tenure, and internet services to identify key
factors contributing to customer churn and provide actionable business insights.

## Tools & Technologies
- MySQL
- SQL
- GitHub

## Dataset
The dataset contains ~7,000+ telecom customer records including:
- Customer demographics
- Contract and billing details
- Payment methods
- Internet services and usage
- Customer tenure and churn status

Dataset source:
https://www.kaggle.com/datasets/blastchar/telco-customer-churn

## Key Analysis Performed
- Overall churn rate calculation
- Churn analysis by gender
- Churn analysis by contract type
- Tenure comparison between churned and non-churned customers
- Churn analysis by payment method
- Churn analysis by internet service and internet type

## Key Insights
- Month-to-month customers have the highest churn rate (~46%), while two-year contracts show very low churn (~2.5%).
- Churned customers have significantly lower average tenure (~18 months) compared to retained customers (~38 months).
- Customers using mailed checks and bank withdrawals show higher churn compared to credit card users.
- Internet service customers, especially fiber optic users, exhibit higher churn rates.
- Gender is not a significant factor influencing churn.

## Business Recommendations
- Encourage customers to move from month-to-month to long-term contracts.
- Focus retention efforts on customers in the early stages of their tenure.
- Promote automated payment methods such as credit cards.
- Investigate pricing and service quality issues for fiber optic customers.

## Project Files
- queries.sql : Contains all SQL queries used for the analysis.




    
