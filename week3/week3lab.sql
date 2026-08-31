
---- Nicolas Cunningham
---- Week3 lab
---- Beginning Data EXPLORATION SELECT



CREATE TABLE games (
    id integer GENERATED ALWAYS AS IDENTITY,
    title varchar(100),
    genre varchar(50),
    platform varchar(50),
    release_year integer,
    rating numeric(3,1)
);

INSERT INTO games (title, genre, platform, release_year, rating)
VALUES
    ('Elden Ring', 'RPG', 'PC', 2022, 9.5),
    ('Rocket League', 'Sports', 'PC', 2015, 8.5),
    ('Super Smash Bros. Ultimate', 'Fighting', 'Switch', 2018, 9.0),
    ('Minecraft', 'Sandbox', 'PC', 2011, 9.2),
    ('Mario Kart 8 Deluxe', 'Racing', 'Switch', 2017, 8.8),
    ('Marvel Rivals', 'Shooter', 'PC', 2024, 8.0),
    ('Stardew Valley', 'Simulation', 'PC', 2016, 9.1),
    ('The Legend of Zelda: Tears of the Kingdom', 'Adventure', 'Switch', 2023, 9.4);


-- select statement is used to retrive data from a table 
-- select * from teachers;

-- the * means to select all columns from the table 
-- select 
-- if wanting to show only certian columns 

-- select first_name,school
-- select these columns 
-- from this table 
-- from teachers
-- order by salary;

-- by default PostgressSQL sorts in ascending order,,,,,
-- ASC == ascending order, for numbers it goes 1,2,3,4,5, 
-- for text it goes A,B,C,D
-- for dates == oldest to newest
-- DESC for decending order, or reverse order

--select last_name, First_name
--from teachers 
--order by last_name 

-- ordering by multiple columns
--SELECT last_name, school, hire_date
--from teachers
--ORDER BY school by ASC, hire_date by DESC

-- we can find unique values by using DISTINCT after select 
-- Removes repeated values , makes data retrival neater
--SELECT DISTINCT school
--FROM teachers;

-- where allows us to retrive only rows that meet certian conditions 
--SELECT first_name, last_name, school
--FROM teachers 
--WHERE school = 'Myers Middle School';

-- Comparison Operators
-- = equal to 
-- <> or != NOT EQUAL TO 
-- > greater than 
-- < less than
-- >= greather than equal to 
-- <= less than equal to 
-- BETWEEN: with a range 
-- IN: match one of several values 

-- find all the teachers who were hired before 1/1/2010
--select first_name , hire_date
--from teachers
--where hire_date < '2010-01-01'  --REMEBER DATE dd is yyyy-mm-dd


-- TEAHERS salary who make from 40k-60
-- SELECT first_name, last_name
-- FROM teachers
-- WHERE salary BETWEEN 40000 and 60000; -- ReMEBER when using between you must also have AND

-- sometimes you dont know the exsact text you are looking for 
-- we use LIKE in this scenario
-- SELECT first_name
-- FROM teachers
-- WHERE first_name ILIKE 'sam%'
-- % is a wild card, any number of character can appear



--like vs Ilike 
-- LIKE is case sensitive
-- ILIKE is not case sensitive 
-- SELECT first_name
-- FROM teachers
-- WHERE first_name LIKE '_anet';

-- _ matches exactly one character (midterm)



--- Use AND when both conditions must be true
--SELECT * FROM teachers
--WHERE school = 'Myers Middle School'
--AND salary < 40000
-- A Row must be satisfy both conditions
--USE OR when either condition can be true 
-- SELECT * from teachers 
-- where last_name='Cole'
-- OR last_name='Bush'





-- USING parantheses
-- parantheses () become important when combing AND and OR
--SELECT *
--FROM teachers
--WHERE school='F.D. Roosevelt HS'
--AND(salary <30000 or salary >40000)



 -- Select (what data do we want)

 -- FROM (where dose the data come from)

 -- where (which row do we want)

 -- ORDER BY (how are the result sorted)
 







-- --TASK 1
-- SELECT *
-- FROM games;

-- --TASK 2
-- SELECT title, platform, rating 
-- from games;

-- --Task 3
-- SELECT genre, title, release_year
-- from games;

-- --Task 4
-- SELECT title, rating
-- FROM games
-- ORDER BY rating DESC;

-- --Task 5 
-- SELECT title, release_year
-- FROM games
-- ORDER BY release_year;

-- --Task 6
-- SELECT platform, title, rating
-- FROM games
-- ORDER BY platform ASC, rating DESC;

-- --Task 7
-- SELECT DISTINCT platform
-- FROM games
-- ORDER by platform

-- --Task 8
-- SELECT DISTINCT platform,genre
-- FROM games

-- --Task 9
-- SELECT title, platform, release_year 
-- FROM games
-- WHERE platform ='Switch'


-- --Task 10
-- SELECT title, genre, rating
-- from games
-- WHERE rating >='9.0'
-- ORDER BY rating DESC;

-- -- TASK 11
-- SELECT title, release_year
-- from games 
-- WHERE release_year <2020
-- ORDER BY release_year ASC;

-- -- Task 12
-- SELECT title, rating
-- FROM games
-- WHERE rating between 8.5 and 9.2

-- -- Task 13
-- SELECT title, genre
-- FROM games 
-- WHERE title ILIKE 'm%'

-- -- Task 14
-- SELECT title
-- FROM games
-- WHERE title ILIKE 'the%'

-- -- Task 15
-- SELECT title, genre
-- FROM games 
-- WHERE genre ILIKE '%I%'

-- -- Task 16
-- SELECT title, platform, rating
-- FROM games
-- WHERE platform='PC' 
-- AND rating > 9

-- -- Task 17
-- SELECT title,genre
-- FROM games
-- WHERE genre ='RPG' 
-- OR genre ='Fighting'


-- -- Task 18
-- SELECT title, platform, release_year
-- FROM games
-- WHERE platform='PC'
-- AND (release_year<2017-01-01 OR release_year>2022-01-01)

-- -- Task 19
-- SELECT title, genre, platform, rating
-- FROM games
-- WHERE rating >= 8.8
-- ORDER BY platform ASC, rating DESC

-- -- Task 20
-- SELECT title, rating
-- FROM games
-- WHERE title ILIKE '%r%'
-- AND rating >9.0
-- ORDER BY rating DESC
-- ----- I wanted to find the best games that has the letter r in it know that the game is higher then 9.0 rating ordered by rating highest to lowest
