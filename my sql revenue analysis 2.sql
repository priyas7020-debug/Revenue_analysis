Create DATABASE construction_sales;
Use construction_sales;
CREATE TABLE sales_data (
amount INT,
tax INT,
total INT,
sno INT,
party_name VARCHAR(255),
site_id VARCHAR(100),
invoice_no VARCHAR(100),
invoice_date DATE,
type VARCHAR(100),
state VARCHAR(100),
site_address VARCHAR(255),
month VARCHAR(20)
);
SELECT COUNT(*) FROM sales_data;

#total revenue of the company

SELECT SUM(amount) AS total_revenue
FROM sales_data;

#total tax  collected

SELECT Sum(tax) AS total_tax
FROM sales_data;

#revenue by state

SELECT state, SUM(amount) AS revenue
FROM sales_data
group by state
order by revenue desc;

# top 10 clients

SELECT party_name, sum(amount) AS revenue
FROM sales_data
group by party_name
ORDER by revenue DESC
LIMIT 10;

#monthly revenue trend

SELECT month, SUM(amount) AS monthly_revenue
FROM sales_data
group by month
order by month;

#average project values

SELECT 	AVG(amount) AS project_value
From sales_data;