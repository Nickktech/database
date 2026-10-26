
-- part a 
select * from products
-- 1. 100
-- 2.larger number of rows will affect the way and time it takes to search


-- part B 
explain analyze 
select*from products
where category='skincare';
-- 1.yes 
-- 2.2
-- 3.0.035ms

-- part c
create index  
idx_category 
on products(category)
explain analyze 
select*from products
where category='skincare';
-- 1.it used an index scan to referance my idx_category
-- 2.slower
-- 3. i think it entirly depends on the database you are searching 

-- part D
set enable_seqscan=off
-- tell sql to turn it off
Explain analyze 
select*from products
where category='skincare';
-- 1. yes i gave it filters and pretty much told it to go to the index then find a row
-- 2. i would say it totally depends on the data , sql is smart enough to know which algorithm tpo use when dealing with smaller or larger databases 
