use employee;
select * from mock_online_sales;
-- Monthly revenue and order volume
Select
   extract(Year from order_date) as year,
   extract(month from order_date) as month,
   sum(amount) as total_revenue,
   count(distinct order_id) as total_orders
from mock_online_sales
group by year, month
order by year, month;

--  top 3 months with highest revenue
Select DATE_FORMAT(order_date, '%Y-%M') as Year_month_combo,
sum(amount) as monthly_revenue
from mock_online_sales
group by Year_month_combo
order by monthly_revenue desc
limit 3;

-- Number of unique products sold per month
Select 
   Year(order_date) as year,
   month(order_date) as month,
   count(distinct product_id) as unique_products
from mock_online_sales
group by Year, month
order by Year, month;

-- average order value 
Select 
   Year(order_date) as year,
   month(order_date) as month,
   sum(amount)/count(distinct order_id) as average_order_value
from mock_online_sales
group by Year, month
order by Year, month;

-- Handle null values in Null
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(COALESCE(amount, 0)) AS total_revenue_handling_nulls
FROM mock_online_sales
GROUP BY year, month
ORDER BY year, month;
