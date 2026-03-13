# Instacart Customer Behavior Analysis Using SQL

## Overview

This project analyzes customer purchasing behavior using the Instacart grocery dataset.
The analysis focuses on understanding order patterns, basket sizes, popular products, reorder behavior, and customer activity levels.

Using SQL queries, different aspects of the dataset were explored to identify patterns in how customers interact with the platform.

---

# About Instacart

Instacart is an online grocery delivery and pick-up service that allows customers to order groceries from local stores through a mobile app or website.

Customers can browse products, add items to their cart, and place orders that are fulfilled by personal shoppers. Understanding customer purchasing behavior helps platforms like Instacart improve product recommendations, inventory planning, and customer retention strategies.

---

# Database Description

The dataset contains multiple tables that describe customer orders and products.

Tables used in the analysis:

| Table          | Description                                                                                |
| -------------- | ------------------------------------------------------------------------------------------ |
| orders         | Contains order information including user ID, order number, day of week, and time of order |
| order_products | Contains products included in each order                                                   |
| products       | Contains product names                                                                     |
| aisles         | Contains aisle categories                                                                  |
| departments    | Contains department categories                                                             |

### Dataset Size

The dataset contains millions of grocery orders placed by customers along with the products included in each order.

### Dataset Link

Instacart Market Basket Analysis Dataset
https://www.kaggle.com/competitions/instacart-market-basket-analysis

---

# Business Questions We Will Unravel

The analysis aims to answer the following questions:

* How many orders and customers are present in the dataset?
* What is the average number of orders placed by customers?
* What is the average basket size (number of products per order)?
* Which products are ordered the most?
* Which products have the highest reorder rate?
* Which product combinations are frequently purchased together?
* How are customers distributed across different activity levels?
* On which days of the week are orders most commonly placed?
* Can we identify customers who have stopped ordering for long periods?

---

# Problem Statement and Objective

Online grocery platforms generate a large amount of transactional data.
Analyzing this data can help businesses understand customer purchasing behavior and product demand patterns.

The objective of this project is to explore the Instacart dataset using SQL to gain insights into:

* Customer ordering behavior
* Product popularity
* Basket composition
* Reorder patterns
* Customer activity levels

---

# Analysis Performed

## Data Validation

Record counts were checked for all tables to understand the size of the dataset and verify that data was loaded correctly.

## Data Exploration

Sample rows from each table were examined to understand the dataset structure and relationships between tables.

## Customer Order Analysis

This analysis calculates:

* Total number of orders
* Number of unique customers
* Average orders per customer

This helps understand overall customer activity on the platform.

## Basket Size Analysis

This analysis calculates the number of products included in each order and measures:

* Average basket size
* Largest basket size
* Orders containing the highest number of products

## Product Popularity Analysis

This analysis identifies the most frequently ordered products in the dataset.

## Reorder Analysis

This analysis calculates reorder rates for products to understand which products customers frequently purchase again.

## Market Basket Analysis

Products purchased together in the same order were analyzed to identify frequently occurring product pairs.

## Customer Segmentation

Customers were grouped based on the number of orders they placed in order to understand different levels of customer activity.

## Time-Based Order Analysis

Orders were analyzed by day of the week to observe patterns in when customers place grocery orders.

## Customer Churn Analysis

Customers whose last recorded order shows a long gap since their previous purchase were identified as potentially inactive customers.

---

# Insights

Key findings from the analysis are documented in a separate insights file.

Insights File: **insights.md**
https://github.com/Gaurav-yadav-03/instacart-sql-analysis/blob/main/key_findings.md

---

# Recommendations

Based on the analysis, businesses can consider:

* Promoting popular products that customers frequently purchase
* Using frequently purchased product pairs for cross-selling strategies
* Targeting highly active customers with loyalty programs
* Monitoring inactive customers to design retention strategies

---

# Conclusion

This project explored the Instacart dataset using SQL to analyze customer purchasing behavior and product trends.

Through different analyses such as basket size evaluation, product popularity analysis, reorder behavior, and customer segmentation, the project provides an overview of how customers interact with an online grocery platform.

These insights can help businesses better understand customer activity and product demand patterns.


# Author

Gaurav Yadav

