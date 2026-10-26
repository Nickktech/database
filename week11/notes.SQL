--  what is a index--- 
-- an index is like a table of contents for a database 
--  it helps SQL find rows faster without scanning the entire table

-- how to create a basic index 
create index  
-- this tells our database to build our index
idx_category
-- this is the name of our index
-- idx means index and everything after is what the index is being applied to 
on products(category)
--  were creating the index on the category colum in the products table
-- overall this query builds an index on the category column
-- SQL will use it automatically when it decides its faster then a full scan
-- select * from products


-- analyze query performance 
-- use EXPLAIN ANALYZE before and after creating the index
explain analyze 
select * from products 
where category='skincare';
-- we use explain analyze to 
-- see if your index is helping
-- if we see seq scan, SQL is scanning the whole table
-- if we se index scan, its using the index we made to locate matches faster 

-- forcing SQL to use INDEX scan 
set enable_seqscan=off
-- tell sql to turn it off
explain analyze 
select*from products
where category='skincare';
-- index is for long books
-- small tables dont benefits from indexes _______
-- when the entire table fits into memory , its gfaster for sql to read all rows directly than perform multiple index lookups

--  indexes have lookup over head
--  each index lookup adds extra work ,
-- postgreSQL  has to look for index , the retrive the rows , then peice them back together 

-- sql chooses whatever is faster , this may resault in havoing a seq scan rather than an index scan
-- inmdexes are extremly usefull when databases ahve thousands or millions of rows 
-- final database is 10-13 tables 
-- think of themes for finals -- video games -- movies 
