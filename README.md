# D2C Skincare E-Commerce Dataset Analysis

## Project Overview

This project analyses transaction data from a Direct-to-Consumer (D2C) skincare e-commerce business in order to understand regional sales performance, customer purchasing habits, and product performance.

PostgreSQL was used to organise, explore, and analyse the data. The analysis focuses on identifying revenue trends, high-value customers, product performance, and customer purchasing patterns.

## Business Problem

By analysing this data, we want to better understand its sales and customer base in order to improve revenue and customer retention.

Broad questions the analysis aims to answer:

- How is the revenue changing over time?
- Which products and categories generate the most revenue/profit?
- Which customers contribute the most revenue/profit?
- What population of customers make repeat purchases?
- Which region possesses the largest customer base?

## Dataset

**Data source:**:  https://www.kaggle.com/datasets/kaushalvyas16/d2c-skincare-e-commerce-analytics-dataset

### Table grains

The dataset consists of 6 total files, however for this analysis we will be focusing on only 4 with the possibility of extension to include the additional 2 tables.

The table grains are as follows:
- Customers -> One row per customer
- Orders -> One row per order
- Order_Items -> One row per order / product within order
- Products -> One row per product

There are 2 additional tables, containing:
- Reviews -> One row per review (rating)
- Returns -> One row per returned order / product within returned order







## Database Structure

For a full breakdown of each table, along with the datatypes and brief explanation of each column in each table, see: **docs/data_dictionary.md**.

### Table relations

The relations between each table in this database are as follows:

customers\
--------\
customer_id [PK]\
customer_name\
city\
customer_state\
signup_date\
&emsp;|\
&emsp;| customer_id\
&emsp;&darr;\
orders\
--------\
order_id [PK]\
customer_id [FK]\
order_date\
order_status\
payment_method\
sales_channel\
gross_amount\
discount_amount\
shipping_fee\
final_amount\
delivered_date\
&emsp;|\
&emsp;| order_id\
&emsp;&darr;\
order_items\
--------\
order_item_id [PK]\
order_id [FK]\
product_it [FK]\
quantity\
unit_price\
discount_pct\
item_total\
&emsp;&uarr;\
&emsp;| product_id\
&emsp;|\
products\
--------\
product_id [PK]\
product_name\
category\
skin_type\
key_ingredient\
product_size\
mrp\
cost_price\
stock_qty\
launch_date\



### Table grain
- 'customers': one row per customer
- 'orders': one row per order
- 'order_items': one row per product within an order
- 'products': one row per product

## Analysis Approach

**Expand this section with additional details**

The analysis presented here was completed in five stages:
1. Database setup
2. Data quality assessment
3. Exploratory analysis
4. Business-focused sales, customer, and product analysis
5. Advanced analysis of trends and customer behaviour

## Business Questions

## Key Findings

## Recommendations

## Tools Used

## Repository Structure

## How to Run the Project

1. Run 01_database_setup.sql
2. Import data from .csv files into relevant tables
3. Run 02_data_quality.sql

## SQL Skills Demonstrated

This project uses:

- SELECT, WHERE and CASE
- GROUP BY and HAVING
- aggregate functions
- date manipulation
- INNER and LEFT JOIN
- subqueries
- Common Table Expressions (CTEs)
- conditional aggregation
- ROW_NUMBER
- RANK
- LAG and LEAD
- windowed SUM and AVG
- rolling calculations
