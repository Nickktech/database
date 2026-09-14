      Nicolas cunningham 
9/14/2026





--CREATE DATABASE WEEK5
--creates database

-- create table products (
-- 	id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
-- 	product_name varchar(100),
-- 	quantity integer
-- 	);
-------creates table

-- INSERT INTO products (product_name, quantity)
-- VALUES
--     ('apple', 10),
--     ('bannana', 8),
--     ('berry', 5),
--     ('pear', 12);
---------------- adds values into table



-- alter table products
-- add column description char(20),
-- ADD column price numeric(7,2),
-- ADD column rating real,
-- ADD column last_played timestamp with time zone,
-- ADD column in_stock boolean;
-------------- add columns to table


-- UPDATE products
-- 	set description =' green apple',
-- 	price =12.55,
-- 	rating =2.3,
-- 	last_played =now(),
-- 	in_stock =TRUE
-- 	where product_name = 'apple';
----------------- updates a single product


	-- UPDATE products
	-- 	SET price = 10.6777
	-- 	WHERE product_name = 'berry';
	------------------ this will round the number because it is only allowed __.__ values so the last number gets rounded up 




-- SELECT *
-- FROM products;


-- SELECT product_name, price
-- FROM products;

--part 6
--query1
-- SELECT * 
-- FROM products;

--query2
-- SELECT product_name,price,rating
-- from products;

-- --query3
-- SELECT *
-- FROM products
-- where price > 10.00

-- --query 4
-- SELECT *
-- FROM products
-- where in_stock= true;

-- --query 5
-- SELECT *
-- FROM products 
-- ORDER BY PRICE DESC





