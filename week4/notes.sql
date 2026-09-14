create TABLE games (
	id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	-- GENERATED ALWAYS AS IDENTITY MAKES IT SO THE DATA TYPE AUTOFILLS
	-- PRIMARY KEYS  MAKES IT SO EACH ID IS UNQIUE 
	 title varchar(100),
	release_year integer
	 );

	INSERT INTO games (title, release_year)
	VALUES 
			('Elden Ring',2022 ),
			('Minecraft',2011),
			('Hades',2020);

	--char(n) stores a fixed legth char values 
-- alter table games 
-- ADD COLUMNS game_code char(5)

-- update games 
-- SET game_code = 'ER001'
-- WHERE title = 'Elden ring'


--text stores variable length without requiring a max legth 
-- alter table games
-- add column description text;


-- update games 
-- set description = 'open world RPG'
-- WHERE title =' Elden Ring'




-- numeric : stores ec=xact decimals Values
-- numeric (6,2)
--6 is the total number of digits 
--2 is didgits after the decimal
-- ALTER table games 
-- add column price numeric(6,2);


-- update games 
-- set price=59.99
-- where title='Elden Ring'



-- update games 
-- set price = 24.995
-- where title ='Hades'
-- post gress SQL will round to fit the column

-- real : stores an approximate floating point






-- update games 
-- set rating =4.7
-- where title ='Elden Ring'


-- floating point types are aproximate , so very percise values may not be 
-- stores exactly as entered

-- update games 
-- set rating= 4.1234567489
-- where title='Hades'



--double percision: is a floating point type , but it supports more percision then real

-- alter table games 
-- add columns hours_played double percision

-- update games 
-- set hours_played=127.75698
-- where title ='Elden Ring'

-- real and double percision are approximate data types
-- while numeric is designed for exact decimal values 


-- time stamp both date and time 
alter table games 
add columns last_played timestamp;


update games 
set last_played ='2026-09-01 14:30:00'
where title='Elden Ring'
-- yyyy-mm-dd hh:mm:ss


-- time stamp with time zone: this stores date and time with timezone info 

alter table games 
add columns created_at timestamp with time zone;

update games
set created_at = '2026-09-10 14:30:00-07'
set created_at = now()  -- now() is a postgress function that returns the current date and time 
where title = 'Elden Ring';



-- time :stores only a time of day without the date 
-- format  is ' hh:mm:ss' using 24 hour time 

--interval: stores the amount of time rather then a specific date or time

 alter table games 
 add columns session_length  interval;

 update games 
 set session_length = '2 hours 30 minutes'
 where title = 'Elden Ring'

 -- other valid examples:
 2 hours
 7 days
 2 months 
 1 hour 15 minutes

 boolean stores a value of either true or false 

 alter table games
 add column multiplayer boolean;

 update games 
 set multiplayer 
