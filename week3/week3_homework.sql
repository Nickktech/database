--Nicolas Cunningham
-- Database cisw 217 
-- 9/1/26

CREATE TABLE Movies 
(id bigserial,
title varchar(50),
release_year numeric,
genre varchar (25),
rating DECIMAL);

INSERT INTO Movies (title, release_year, genre, rating)
VALUES
('Shooter', '2007', 'Action','7.2'),
('Batman', '2026', 'Superhero','7.9'),
('Avatar', '2009', 'Fantasy','7.9'),
('The Whisper', '2026', 'drama','6.2'),
('2 Fast 2 Furious', '2003', 'Thriller','6.0');

-- this query selects all from table 
-- --Query 1
-- SELECT * FROM Movies;

-- this query selects just title from table 
-- --Query 2
-- SELECT title FROM Movies;

--this query only selects ratings 
-- --Query 3
-- SELECT DISTINCT rating FROM Movies;

--this query only selects ratings that are == to 7.9
-- --Query 4
-- SELECT rating FROM Movies 
-- WHERE rating ='7.9';

-- this query only selects movies that genre are action 
-- --Query 5
-- SELECT genre FROM Movies 
-- WHERE genre = 'Action';

-- this query orders all movies by thier rating 
-- --Query 6
-- SELECT * FROM Movies 
-- ORDER BY rating

-- this query selects movies that have ratings greater then 7 and sorts them alphbetical order by thier title 
----Query 7
-- SELECT * FROM Movies
-- WHERE rating >= 7.0
-- ORDER BY title

-- this query selects movies greater than 6 rating and realse year after 2008
-- --Query 8
-- SELECT * FROM Movies
-- WHERE rating >= 6.0
-- AND release_year >=2008




--1. One new concept I learned from skimming chapter 4 is varchar(n) which is nice in some case but the new concept i learned is floating-point
--2. A question i have is on Identity, and i would say on the fixed/floating point concept.
