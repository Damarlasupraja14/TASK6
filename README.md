# TASK6
# Task 6: Sales Trend Analysis Using Aggregations

**Task Objective**: Analyze monthly revenue and order volume using SQL.

## Dataset
- Table: `Mock_online_sales`
- Columns: `order_date`, `amount`, `product_id`, `order_id`

## Tools Used
- PostgreSQL / MySQL / SQLite (choose based on what you used)

## SQL Concepts Applied
- `EXTRACT(MONTH FROM order_date)` to extract month
- `GROUP BY` year and month
- Aggregate functions:
  - `SUM(amount)` for monthly revenue
  - `COUNT(DISTINCT order_id)` for monthly order volume
- `ORDER BY` to sort results
- `LIMIT` to find top 3 months by revenue
