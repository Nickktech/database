
select * from product

-- query1 price*stock 
select (price*stock) as inventory_value
from product

-- query 2 find average price
select AVG(price) as average_price
from product

-- query 3 find min and max price
select min(price), max(price)
from product

-- query 4 count everything in columns 
Select count(*)
from product




-- creating a table getting it ready to import the file 
CREATE TABLE product
(index integer,
Product_name text,
Description text,
brand varchar (100),
category text,
price numeric (10,2),
currency text,
stock integer,
EAN text,
color varchar (100),
product_size varchar(25),
availability text,
internal_id integer);
