
-- why primary and foreign keys matter ?
-- in a relational database , data lives in multipule table . those tables must connect somehow
-- we do this using keys 

-- primary keys (pk) : a column or set of columns that unquiely identify a row in a table 
-- > student_id, product_id

-- foreign key (FK): column in one table that refers to a pk in another table 
-- a fk is just a pk in another table 
-- 
-- think of pk/fk as parent child relationships - a parent can have many childern 
-- but each child points to one parent

-- creating the parent table
-- create table customers (
-- id serial primary key,
-- name text, 
-- email text, 
-- city text);

-- serial automatically numbers each new record
-- primary key ensures each id is unique and not null

-- creating the child table (Orders)
create table orders (
id serial primary key,
customer_id int,
product text,
total numeric (10,2),
FOREIGN KEY(customer_id) references customers (customer_id)
);


-- customer_id linked each order back to the customer
-- the fk consist



insert into customers("name",email,city)
Values 
('alice','alice@email.com','boise'),
('brian','brian@email.com','twin falls'),
('carmen','carmen@email.com','jerome');

insert into orders (customer_id, product, total)
(1,'labtop', 999.99),
(1,'mouse', 25.50),
(2,'headphones', 89.99),
(3,'monitor', 199.99);


-- each orders customer_id points to an existing customer in customer_id
-- viewing the relationships with a join
select 
customers.name, -- selecting the name column from the customer table
customers.city, -- selecting the city column from the customer table 
-- want to select the product and total colums from the order table 
orders.product,
orders.total,
from orders
join customers -- join default to inner join , only rows matching customers will appear
on orders.customer_id=customes.customer_id


-- pk uniquly identifies rows
-- fk links tables togethers
-- many relationships types (1:1 , 1:many, Many:many)

