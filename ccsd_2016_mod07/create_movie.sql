-- 1.a
create table Director
	(
		dir_num decimal(4,0) primary key,
		name varchar(50) not null,
		year_born decimal(4,0) not null,
		year_death decimal(4,0) null

	);

-- 1.b
create table Movie
	(
		movie_number decimal( 4, 0 ) primary key,
		title varchar( 30 ) not null,
		year_created decimal(4,0) not null,
		type varchar( 15 ) not null,
		dir_num decimal(4,0) not null,
		critics_id decimal( 4, 0 ) not null
	);


create table Critics
	(
		critics_id decimal( 4, 0 ) primary key,
		critics_rating decimal(2,1) not null,
		mpaa_rating char( 4 ) not null,
		number_awards_nom decimal( 2, 0 ) not null,
		number_awards_won decimal( 2, 0 ) not null
		);


-- Question 2
--------------
-- +-----------+          +------------+
-- |           | 1      oo|            |
-- | Director  | -------> | Movie      |
-- +-----------| (directs)+------------+

-- FV -- Taking it over from here