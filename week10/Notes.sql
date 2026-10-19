
PART 1
create table products("index"integer primary key,"Name" varchar(100),Description text,brand text,category varchar (100),price numeric (10,2) , Currency varchar(5),
Stock integer, EAN text,Color text,"size" text,Availbility text, internal_id integer);

-- select * from products
-- order by "index" ASC

-- what are functions in sql
-- functions = built in operations that preform a specific task inside a query

-- common built in functions
-- ROUND(), round a number and decimals. EX. select ROUND(3.14159,2)  resault 3.14 2= 2 places after decimal
-- CEIL()     FLOOR(), round up or down  EX. SELECT CEIL (2.1);   ->  3

-- Text functions
-- UPPER(text), converts to uppercase     EX SELECT UPPER (category)
-- LOWER(text), converts to lowercase     EX select LOWER(product_name)
-- LENGTH(text), returns charactor count  EX SELECT length(product_name)

-- DATE functions
-- NOW(), current timestamp                EX SELECT NOW()
-- CURRENT_DATE, todays date                EX SELECT CURRENT_DATE;
-- AGE(), returns the difference between 2 dates    EX SELECT AGE('2025-10-20','2000-05-15');  OUTPUT:25years 5 mon 5 days
-- Date functions are offen use for reports or logs


-- average price by category
-- SELECT category,
-- -- want to find ave=erageprice but i want to round it
-- ROUND(AVG(price),2) as avg_price
-- from products
-- group by category
-- order by avg_price DESC;


-- VIEWS
-- view is a saved sql query that acts like a virtual table
-- it dosent store new data, it just stores a query defintion
-- create view product_summary as 
-- SELECT category,
-- ROUND(AVG(price),2) as avg_price,
-- Sum(stock) as total_stock
-- from products
-- group by category
-- order by avg_price DESC;

-- -- views just create a shortcut , you can use it later as long as we call the view
-- SELECT * from product_summary;
-- to update the view

-- REPLACE VIEW products_summary
-- AS

-- to delete a view
-- DROP VIEW "name of view"  -- dont need quotes
-- why use view?
-- simplify long queries
-- Avoid retyping code
-- Creaste consistent reporting table 
-- Restrict user access (views can hide columns)


PART 2
SELECT UPPER(category)
from products;

SELECT ROUND(price,3)
from products;

SELECT NOW()
from products;



-- PART 3
create view product_more200 as 
SELECT UPPER('Name'),LOWER(Description),price
from products
where price <=200;


part 4
SELECT * FROM product_more200

