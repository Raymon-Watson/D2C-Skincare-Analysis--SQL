# Global Superstore Sales and Customer Analysis

## Project Overview

This project analyses transaction data from a global superstore in order to understand regional sales performance, customer purchasing habits, and product performance.

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

**Data source:**:  https://www.kaggle.com/datasets/fatihilhan/global-superstore-dataset

The original dataset consisted of one large table, containing all data. This is broken down into several related tables as follows:

- 'customers' - customer information and location
- 'orders' - one record per customer order
- 'products' - product information and prices

Potentially:
- 'order_items' - products contained within each order
This should be used if a single order contains multiple items.

## Database Structure

## Analysis Approach

## Business Questions

## Key Findings

## Recommendations

## Tools Used

## Repository Structure

## How to Run the Project

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
