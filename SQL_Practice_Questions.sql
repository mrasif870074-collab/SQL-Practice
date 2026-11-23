USE electronics;
SHOW TABLES;

SELECT *
FROM `superstore_canada (1)`
LIMIT 10;



SELECT *
FROM `superstore_canada (1)`;

-- display all orders from Nunavut
Select *
from  `superstore_canada (1)`
where Region = 'Nunavut';


-- show all product belonging to office supplies category
select *
from `superstore_canada (1)`
where `Product Category` = 'Office Suplies';

-- find all orders with high priority
select *
from `superstore_canada (1)`
where `Order Priority` = 'High';

-- show orders shipped using delivery truck
select * 
from `superstore_canada (1)`
where `ship mode` = 'Delivery Truck';

-- find all customers from consumer segment
select *
from `superstore_canada (1)`
where `Customer Segment` = 'Consumer';

-- find orders where sales is greater than 5000
select *
from `superstore_canada (1)`
where Sales>5000;

-- show product having profit less than 0
select *
from `superstore_canada (1)`
where profit<0;

-- find orders with discount greater than 0.1
select *
from `superstore_canada (1)`
where Discount>0.1;

-- display orders where unit price is at leat 100
select *
from `superstore_canada (1)`
where `Unit Price`>=100;

-- show orders where shipping cost is not equal to 0
select *
from `superstore_canada (1)`
where `Shipping Cost` != 0;

-- find order with sales between 1000 and 5000
select *
from `superstore_canada (1)`
where Sales between 1000 and 5000;

-- show product with unit price between 50 and 500
select *
from `superstore_canada (1)`
where `Unit Price` between 50 and 500;

-- find orders having profit between 100 and 500
select `Profit`
from `superstore_canada (1)`
where Profit between 100 and 500;

-- display orders placed between 2017 and 2018
select *
from `superstore_canada (1)`
where `Order Date` between '2017-01-01' and '2018-12-31';

-- find orders whose quantity is between 10 and 30
select *
from `superstore_canada (1)`
where `Order Quantity` between 10 and 30;

-- find products containing the word 'chair'
select *
from `superstore_canada (1)`
where `Product Name` like '%Chair%';

-- find customers whose name ends with 'n'
select *
from `superstore_canada (1)`
where `Customer Name` like '%n';



-- find all orders where sales > 1000 and profit > 100
select *
from `superstore_canada (1)`
where Sales > 1000 and Profit > 100;

-- find all office suppline products with sales between 500 and 2000

-- write to find customer name that contains character 
-- a who bought diff product that belongs to 
-- office supplies product category
-- got product which cost in the range of 1000 to 10000
-- also holds sales in range of 1500 to 15000
-- got profit more than 500
-- return top 7 such product along with necessary 
-- columns on the basis of cost
select `Customer Name`, `Product Name`, `Product Category`, `Unit price`, Sales , Profit
from `superstore_canada (1)`
where `Customer Name` like "%a%" and `Product Category` = 'Office Supplies' and `Unit Price` between 1000 and 10000 and Sales between 1500 and 15000
and Profit > 500
order by `Unit Price` desc
limit 7;

-- write to find 5th highest selling product
select `Product Name` , Sales
from `superstore_canada (1)`
order by Sales desc
limit 1 offset 4;

-- write to find product which got loss 
-- but return 4th lowest loss making product
select `Product Name` , Profit
from `superstore_canada (1)`
where Profit < 0
order by Profit asc
limit 1 offset 3;

-- write to find avg sales with respect to product category 
-- in which profit will be more than 100 
-- and avg sales will be more than 500
-- return bottom 3 such product category

select `Product Category` , avg(Sales)
from `superstore_canada (1)`
where Profit> 100
group by `Product Category`
having avg(Sales)> 500
order by avg(Sales) asc
limit 3;

-- write to find avg cost of diff product with respect to product subcategory
-- in which unit price  of product should be more than 5
-- also its order quantity will be in range of 5 and 100
-- and avg cost should be more than 400
-- return to 4 such subcategory on the basis of avg cost 
select `Product Sub-Category`, avg(Sales-Profit) as avg_cost
from `superstore_canada (1)`
where `Unit Price` > 5 
and `Order Quantity` between 5 and 100
group by `Product Sub-Category`
having avg_cost > 400
order by avg_cost desc
limit 4;

-- write to find product base margin in terms of percentage 
-- with respect to product subcategory 
-- return 5 subcategory with minimum margin


SELECT
    `Product Sub-Category`,
    (`Product Base Margin`) * 100
FROM `superstore_canada (1)`
ORDER BY (`Product Base Margin`) * 100 asc
LIMIT 5;

-- find all office suplies products with sales between 500 and 2000
select *
from `superstore_canada (1)`
where `Product Category` = 'Office Supplies'
and Sales between 500 and 2000;

-- show customers whose names start with 'A' and belong to customer
select Distinct `Customer Name`, `Customer Segment`
from `superstore_canada (1)`
where `Customer Name` like 'A%'
and `Customer Segment` = 'Consumer';

-- find orders where Discount is less than 0.05
select *
from `superstore_canada (1)`
where Discount < 0.05;

-- find product whose names contain 'paper' and have profit greater than 50
select *
from `superstore_canada (1)`
where `Product Name` like '%Paper%'
and Profit > 50;

-- show all orders where sales is greater than 10000
select *
from `superstore_canada (1)`
where Sales > 10000;

-- find orders with negative profit and sales greater than 50
select *
from `superstore_canada (1)`
where Profit < 0
and Sales > 50;

-- Display all technology products with unit price above 200
select *
from `superstore_canada (1)`
where `Product Name` = 'Technology'
and `Unit Price` > 200;

-- find customers whose name contain 'smith'
select *
from `superstore_canada (1)`
where `Customer Name` like '%Smith%';

-- find all orders where shipping cost is between 20 and 50
select *
from `superstore_canada (1)`
where `Shipping Cost` between 20 and 50;

-- find all loss making orders
select *
from `superstore_canada (1)`
where Profit < 0;

-- find the most expensive product sold
select `Product Name`, `Unit Price`
from `superstore_canada (1)`
order by `Unit Price` desc
limit 1;

-- find all customers whose names start with 'M'
select *
from `superstore_canada (1)`
where `Customer Name` like 'M%';

-- find orders with discount greater than 15%
select *
from `superstore_canada (1)`
where Discount > 0.15;

-- find product sold in nunavut
select *
from `superstore_canada (1)`
where Region = 'Nunavut';

-- find orders where Sales are more than profit
select *
from `superstore_canada (1)`
where Sales > Profit;

-- find product with Unit price between 200 and 500
select *
from `superstore_canada (1)`
where `Unit Price` between 200 and 500;

-- find all customers not belonging consumer segment

select `Customer Name`, `Customer Segment`
from `superstore_canada (1)`
where `Customer Name` != 'Consumer';

-- find products whose names contain 'Desk'
select *
from `superstore_canada (1)`
where `Product Name` like '%Desk%';

-- find orders shipped by regular air and having sales greater tahn 1000
select *
from `superstore_canada (1)`
where `Ship Mode`= 'Regular Air'
and Sales > 1000
