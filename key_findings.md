# Key Insights from Instacart SQL Analysis

This document summarizes the key findings obtained from the SQL queries performed on the Instacart dataset.

---

# 1. Customer Order Activity

The dataset contains a large number of orders placed by customers.
By analyzing the orders table, the total number of orders and unique customers were identified.

The analysis also calculated the **average number of orders placed per customer**, which helps understand overall customer engagement on the platform.

---

# 2. Basket Size Analysis

Basket size refers to the number of products included in a single order.

The analysis calculated:

* Basket size for each order
* Average basket size across all orders
* Orders containing the largest number of products

This helps understand how many items customers typically purchase in one transaction.

---

# 3. Most Ordered Products

The product analysis identified the **top 10 most frequently ordered products** in the dataset.

These products appear most often across all orders and represent the items that customers purchase the most.

---

# 4. Product Reorder Behavior

Reorder analysis was performed to identify products that customers frequently purchase again.

Products with high reorder rates indicate items that customers consistently buy across multiple orders.

---

# 5. Customers with Highest Order Counts

The analysis identified customers who placed the largest number of orders.

This helps highlight the most active users on the platform.

---

# 6. Frequently Purchased Product Pairs

Market basket analysis was performed to identify **product pairs that are frequently purchased together in the same order**.

This analysis helps reveal patterns in how products are commonly combined in customer purchases.

---

# 7. Products Most Frequently Added First to Cart

By analyzing the `add_to_cart_order` field, the products most frequently added as the first item in the cart were identified.

These products represent items that customers often prioritize when placing orders.

---

# 8. Customer Segmentation Based on Order Activity

Customers were segmented based on the number of orders they placed.

Segments include:

* Highly Active Customers
* Moderately Active Customers
* Low Activity Customers
* Inactive Customers

This segmentation helps understand how customer activity is distributed across the platform.

---

# 9. Order Distribution by Day of Week

Orders were analyzed based on the day of the week they were placed.

This analysis shows how customer ordering behavior varies across different days.

---

# 10. Inactive Customer Identification

Customers whose last recorded order shows a gap of more than 30 days since their previous order were identified.

This helps detect customers who may have become inactive.

---

# 11. Customer Churn Analysis

Customers were categorized as **Active** or **Churned** based on the number of days since their previous order.

This analysis provides an estimate of how many customers may have stopped ordering over time.

---

# Summary

The SQL analysis of the Instacart dataset explored customer ordering behavior, product popularity, basket size patterns, and customer activity levels.

These analyses provide a basic understanding of how customers interact with the platform and how products are purchased across orders.
