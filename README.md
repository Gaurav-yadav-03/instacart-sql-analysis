# Instacart Customer Purchase Behavior Analysis (SQL Project)

## Project Overview

This project analyzes the Instacart Market Basket dataset using SQL to understand customer purchasing behavior, product popularity, basket composition, and customer retention patterns.

The goal of this analysis is to uncover insights that can help an e-commerce grocery platform improve product recommendations, customer engagement, and retention strategies.

The dataset contains millions of grocery orders placed by customers, allowing us to analyze patterns such as reorder behavior, frequently purchased product combinations, and customer activity trends.

---

# Business Problem

Online grocery platforms must understand customer purchasing patterns in order to:

• Improve product recommendations
• Optimize cross-selling opportunities
• Identify loyal customers
• Detect customers at risk of churn
• Understand product demand trends

This project explores these questions using SQL-based data analysis.

---

# Dataset

The analysis uses the **Instacart Market Basket Analysis dataset**, which contains anonymized grocery order data.

Dataset Source: Kaggle
Instacart Market Basket Analysis Dataset

The dataset includes the following tables:

| Table          | Description                                                                |
| -------------- | -------------------------------------------------------------------------- |
| orders         | Contains order information including user, day of week, and order sequence |
| order_products | Contains products included in each order                                   |
| products       | Product names and identifiers                                              |
| aisles         | Product aisle categories                                                   |
| departments    | Product department categories                                              |

---

# Tools & Technologies Used

SQL (MySQL)
GitHub for version control
Data analysis using relational queries

---

# Analysis Performed

## 1. Data Validation

Verified record counts and ensured dataset integrity across all tables.

## 2. Data Exploration

Examined sample records and explored dataset structure to understand relationships between tables.

## 3. Customer Order Analysis

Analyzed customer ordering behavior including:

• Total number of orders
• Number of unique customers
• Average orders per customer

## 4. Basket Size Analysis

Evaluated the number of products purchased in each order to understand customer purchase volume.

Metrics analyzed:

• Average basket size
• Largest basket size
• Distribution of products per order

## 5. Product Popularity Analysis

Identified the most frequently ordered products across the platform.

This helps businesses understand:

• High demand products
• Inventory planning
• Product promotion strategies

## 6. Reorder Behavior Analysis

Measured how frequently customers reorder specific products.

High reorder rates indicate:

• Customer loyalty to specific products
• Essential grocery items

## 7. Market Basket Analysis

Identified product pairs that are frequently purchased together.

This insight helps with:

• Cross-selling strategies
• Product recommendation engines

## 8. Customer Segmentation

Segmented customers based on purchasing activity and order frequency.

Customer segments include:

• High activity customers
• Moderate activity customers
• Low activity customers
• Inactive customers

This helps businesses identify their most valuable customers.

## 9. Time-Based Order Analysis

Analyzed order distribution across different days of the week to understand customer purchasing patterns.

Insights from this analysis can help with:

• Staffing decisions
• Marketing campaign timing
• Inventory management

## 10. Customer Churn Analysis

Identified customers who have not placed orders within a defined time window.

Customers were categorized as:

• Active customers
• Churned customers

This helps businesses detect customer drop-off patterns and design retention strategies.

---

# Key Insights

• A small number of products account for a large percentage of total orders.
• Certain product combinations are frequently purchased together, indicating cross-selling opportunities.
• Some customers place orders significantly more frequently than others, highlighting the importance of loyal customer segments.
• Reorder behavior is strong for staple grocery items.
• Customer activity shows variation across different days of the week.
• A portion of customers become inactive after extended periods without orders.

---

# Example Business Applications

The insights from this analysis can support several business decisions:

• Product recommendation systems
• Cross-selling strategies
• Inventory planning
• Customer loyalty programs
• Churn prevention strategies

---

# Project Structure

```
instacart-sql-analysis
│
├── instacart_analysis.sql
├── README.md
└── dataset_link.txt
```

---

# Author

Gaurav Yadav

Aspiring Data Analyst interested in customer analytics, business intelligence, and data-driven decision making.

GitHub Profile: https://github.com/yourusername
