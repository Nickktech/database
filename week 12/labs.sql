-- -- create table 
-- create table customers (
-- customer_id serial primary key,
-- name text, 
-- email text, 
-- city text);


-- -- -- create secondary table/ the table where we are gonna join the 2 together
-- create table orders (
-- id serial primary key,
-- customer_id int,
-- product text,
-- total numeric (10,2),
-- store text,
-- warranty text,
-- FOREIGN KEY(customer_id) references customers (customer_id)  -- this line has to match with the first table (customer_id serial primary key)
-- );


-- -- this is 3 rows into my parent table -- primary key 
-- insert into customers("name",email,city)
-- Values 
-- ('devin',' devin@email.com','boise'),
-- ('bob',' bob@email.com','twin falls'),
-- ('carmen','carmen@email.com','jerome');

-- -- this is 5 rows into my child table -- foreign key 
-- insert into orders (customer_id, product, total, store, warranty)
-- values
-- (1,'labtop', 999.99, 'best_buy', 'no'),
-- (1,'mouse', 25.50, 'walmart', 'yes'),
-- (2,'headphones', 89.99, 'best_buy', 'yes'),
-- (3,'monitor', 199.99, 'target', 'no'),
-- (3,'mouse_pad', 2567.99, 'best_buy', 'no'),
-- (1,'speakers', 67.23, 'walmart', 'no' ),
-- (2,'monitor_stand', 19.99, 'temu', 'no' );

-- this is where i join both tables together referencing tables and columns
SELECT
customers.name, -- selecting the name column from the customer table
customers.city, -- selecting the city column from the customer table 
-- want to select the product and total colums from the order table 
orders.product,
orders.total,
orders.store,
orders.warranty
FROM orders  --- it dosent matter if i put ORDER here or CUSTOMERS ---  
JOIN customers -- join default to inner join , only rows matching customers will appear
ON orders.customer_id=customers.customer_id;  -- very important   
-- on "table name that is listed on the FROM".Foreignkey="tablename that is listed on the JOIN".Primarykey from that table <--on format 

-- reflection questions
-- 1. 1-many
-- 2. nothing, the employees would still be there  but the department wouldnt 
-- 3.because you can use it multiple times, it also keeps a primary key kind of but you are able to use it other places because its a fk/ child 
