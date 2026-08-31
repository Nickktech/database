
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
