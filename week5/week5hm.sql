-- Nicolas
-- 9/16/26
-- database sql 
-- week 5 
--   build and modifiy your own table 

-- create TABLE games (
-- 	id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
-- 	 title varchar(50),
-- 	release_year integer);

-- 	INSERT INTO games (title, release_year)
-- 	VALUES 
-- 			('Halo 3',2007),
-- 			('Runescape',2001),
-- 			('Fifa',2026);
------ makes the table


-- alter table games 
-- add column ratings real;

-- alter table games 
-- add column last_played timestamp ;

-- ALTER table games 
-- add column price numeric(6,2);

-- alter table games 
-- add column descriptions text;
-------- this alters the table you have made and adds columns 



-- update games
-- set ratings = 8.9
-- where title = 'Runescape';

-- update games 
-- set price = 24.99
-- where title = 'Runescape';

-- update games 
-- set last_played = '2026-09-16 16:30:00'
-- where title = 'Runescape';
------ this updates the columns in your table 



-- alter table games
-- rename last_played TO played_last;
------ this is how you rename a column in your table 


-- SELECT * FROM GAMES

-- SELECT 	title from games 

-- SELECT title from games where ratings = '8.9'

-- SELECT title from games ORDER BY title desc;

-- SELECT title, price
-- from games
-- where title ='Runescape'
-- order by price



-- 2 new concepts are (copy) and (!factorial) 

-- so on the copy command you can set up a table and say your work has all the data you need to do like a profit/
--no profit data file you can just copy straight from that file or document and plug it right into the table ? what are some cool ideas you can do with this ? it sounds like it would be awesome 
-- like if you took a whole football team and kept track of the data from each player on the team
-- then made a table you could potentially see where your weakness are ??



--short reflection 
-- 1. i really liked timestamp / i think its impressive how you can hold data like that , the most useful i would say double percision because of how percise it is 
--2. i choose the data types i used because they were most interesting and i was most comfortabl using them 
--3.alter allows you to completly change your table where update only allows you to change the data inside your table

