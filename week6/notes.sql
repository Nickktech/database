CREATE TABLE products_raw
(id integer PRIMARY KEY,
product_name varchar(20),
brand varchar (20),
category text,
price numeric (10,2),
stock integer);

-- 2 ways to import csv files
--  1st option is with sql
-- copy products from "C:\Users\1009378\Downloads\products_raw.csv" DELIMITER ',' CSV HEADER;
-- copy products from "C:\Users\1009378\Downloads\products_raw.csv" with (format csv , HEADER);



-- steps to import csv files
-- step 1 make table template (create table in relations to the csv colum names and data types)
-- step 2 download file/ import using gui (right click on table , click import export data)
-- confirm file name , delimiter, header is turned on 
-- after import is successful view table via query


-- basic arithmetic in queries
-- select price, stock, price*stock as inventory_value
-- from products_raw limit 5;

-- adding 5
-- select price+5 as price_increase
-- from products_raw limit 5;
-- as = temporary column
-- limit 5 = shows only first 5 columns


-- built in functions that postgre has 
-- sum
-- select SUM(price*stock)as total_inventory_value
-- from products_raw
-- 



-- AVG, average product price
-- select AVG(price) as average_price
-- from products_raw

-- finding the highest and lowest value we will us MIN and MAX
-- select min(price), max(price)
-- from products_raw

-- how to see how many items are in a dataset
-- count

-- select count(*)
-- from products_raw

-- filtering with math = where
-- show me products that cost more then 500

-- select * from products_raw 
-- where price>500;

-- categories with total stock >greater then 200
-- select category, SUM(stock)
-- from products_raw
-- group by category
-- having SUM(stock)>5;

