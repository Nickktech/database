
-- create table product_raw
-- (index integer primary key,
-- name text,
-- description text,
-- brand text,
-- category varchar(50),
-- price integer,
-- currency text,
-- stock integer,
-- EAN text,
-- color varchar(20),
-- Size text,
-- availblity varchar(50),
-- INTERNAL_ID integer
-- );

-- select * from product_raw


-- -- query 2.1 - finds the avg price
-- SELECT category,
-- ROUND(AVG(price), 2),
-- CEIL(AVG(price))
-- FROM product_raw
-- GROUP BY category;

-- -- query 2.2 - finds the highest and lowest price 
-- SELECT
-- MAX(price),
-- MIN(price)
-- FROM product_raw;

-- -- query 2.3 - create a derived column
-- SELECT product_raw, price,
-- FLOOR(price)
-- FROM product_raw;

-- query 2.4 - convert to uppercase
-- SELECT category,
-- UPPER(category)
-- FROM product_raw;

-- -- query 3.1 - create a view as tempary table 
-- CREATE VIEW category_overview AS
-- SELECT category,
-- ROUND(AVG(price),2),
-- SUM(stock)
-- FROM product_raw
-- GROUP BY category
-- order by AVG(price) > 50;

-- SELECT * FROM category_overview;

