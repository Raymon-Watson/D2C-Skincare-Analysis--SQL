# Tracker
This file will be used to keep track of:
- findings,
- relevant business questions,
- answers to business questions,
throughout my analysis of the D2C Skincare product store. The key findings found through this analysis will be presented in the Key Findings document.

## Data Quality

All the data is consistent, there are no numerical values that are invalid, and the table relation integrity is sound. **Overall** there were no issues found.

## Exploration
The following subsections contain relevant information found from each table.

### Customers
Basic information:
- Each row contains one distinct customer
- Total number of customers = 500
- Total number of cities = 20
- Total number of states = 13

### Orders
Basic information:
- Each row contains one distinct order
- Total number of orders = 1250

Order statuses:
- Delivered
- Returned
- Cancelled
- In Transit

Payment methods:
- Net banking
- UPI
- Debit Card
- COD
- Credit Card

Sales channels:
- Marketplace
- Mobile App
- Website

**Note:** The date range for signups is 2023-01-1 -> 2024-11-30. In contrast, the date range for orders is 2024-01-01 -> 2025-12-31. Interesting that the first signup date is a whole year before the first order, and practically likewise for the last signup and order dates.

### Order Items
Basic information:
- Each row contains an order/product pairing
- Min quantity = 1 / Max quantity = 3
- Min total items per order = 1 / Max total items per order = 7 (AVG 2.06)
- Min discount = 0% / Max discount = 25% (AVG 9.6%)

**Note:** We found that the discounts are applied to individual items, not to overall orders.


## Products
Basic information:
- Number of products = 28
- Number of categories = 9
- Min mrp = $249 / Max mrp = $799 (AVG 491.86)
- Min cost price = 92 / Max cost price = 372 (AVG 212.54)
- Min stock = 110 / Max stock = 210.89






# Sales Analysis



By taking the difference between MRP and cost price, we can calculate the profit per item:
- Min mrp-cost diff. = 157 / Max mrp-cost diff. = 441 (AVG 279.32)




