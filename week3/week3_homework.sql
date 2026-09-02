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

-- --Query 1
-- SELECT * FROM Movies;

-- --Query 2
-- SELECT title FROM Movies;

-- --Query 3
-- SELECT DISTINCT rating FROM Movies;

-- --Query 4
-- SELECT rating FROM Movies 
-- WHERE rating ='7.9';

-- --Query 5
-- SELECT genre FROM Movies 
-- WHERE genre = 'Action';

-- --Query 6
-- SELECT * FROM Movies 
-- ORDER BY rating

----Query 7
-- SELECT * FROM Movies
-- WHERE rating >= 7.0
-- ORDER BY title

-- --Query 8
-- SELECT * FROM Movies
-- WHERE rating >= 6.0
-- AND release_year >=2008




--1. One new concept I learned from skimming chapter 4 is varchar(n) which is nice in some case but the new concept i learned is floating-point
--2. A question i have is on Identity, and i would say on the fixed/floating point concept.
