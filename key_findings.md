# Key Insights — Instacart Customer Behavior Analysis

## SQL Insights

### 1. Customer Order Activity
- Dataset contains over 1 million orders from unique customers
- Average orders per customer shows strong repeat usage of the platform
- A small group of highly active customers places a disproportionately 
  large number of orders

### 2. Basket Size
- Average basket size is 10.09 products per order
- Some orders contain significantly more items indicating bulk shoppers
- Most customers place moderate sized orders consistently

### 3. Most Ordered Products
Top products by order count:
1. Banana
2. Bag of Organic Bananas
3. Organic Strawberries
4. Organic Baby Spinach
5. Organic Hass Avocado

Fresh produce dominates the top ordered products list.

### 4. Reorder Behavior
- 59% of all ordered items are reorders
- This indicates strong product loyalty and habitual purchasing behavior
- High reorder products are mostly fresh produce and dairy items

### 5. Market Basket Analysis
- Frequently purchased product pairs are mostly within the same category
- Organic produce items are commonly purchased together
- Cross-selling opportunities exist between produce and dairy departments

### 6. Customer Segmentation
Customers segmented by order activity:
| Segment | Description |
|---|---|
| Highly Active | Placed 10 or more orders |
| Moderately Active | Placed 5 to 9 orders |
| Low Activity | Placed 2 to 4 orders |
| Inactive | Placed only 1 order |

### 7. Order Distribution by Day
- Sunday and Saturday have the highest order volumes
- Midweek days (Tuesday, Wednesday, Thursday) have the lowest volumes
- Weekend shopping behavior is dominant on this platform

### 8. Peak Ordering Hours
- Peak ordering window is 8am to 3pm
- Orders drop significantly after 6pm
- Very few orders placed between midnight and 6am

### 9. Inactive Customer Identification
- Customers with 30+ days since last order were flagged as potentially inactive
- This segment represents a churn risk requiring retention campaigns

---

## Power BI Dashboard Insights

### Page 1 — Executive Overview
- 1M total orders from 63K unique customers
- Average basket size of 10.09 items per order
- 59% reorder rate confirming high customer loyalty
- Sunday is the busiest day, Thursday the quietest
- Orders peak at 10am across all days

### Page 2 — Product Intelligence
- Produce department accounts for the largest share of orders
- Banana alone is the most ordered single product in the entire dataset
- 59% of items are reordered showing customers buy the same products 
  repeatedly — this is a strong retention signal

### Page 3 — Customer Behavior
- Heatmap confirms Sunday and Saturday 8am–2pm is the peak ordering window
- Most customers return within 7 days showing very high platform retention
- Customer segmentation scatter plot shows a concentration of customers 
  with moderate basket sizes and moderate order frequency
- A small group of high value customers has both large baskets and 
  high order frequency — ideal targets for loyalty programs

---

## Business Recommendations

1. Run weekend promotions between 8am and 12pm for maximum reach
2. Use top reordered products in push notification reminders
3. Bundle frequently purchased product pairs for cross-sell offers
4. Launch loyalty program targeting highly active customer segment
5. Send re-engagement emails to customers inactive for 30+ days
6. Stock produce department heavily — it drives the most orders

---

*Analysis by Gaurav Yadav*
*Dataset: Kaggle Instacart Market Basket Analysis*
