
create table director
	(
		dir_number decimal( 4, 0 ) primary key,
		name varchar( 50 ) not null,
		birth_year decimal( 4, 0 ) not null,
		death_year decimal( 4, 0 ) null
	);


create table movie
	(
		movie_id decimal( 4, 0 ) primary key,
		title varchar( 50 ) not null,
		year_created decimal( 4, 0 ) not null,
		type varchar( 15 ) not null,
		dir_number decimal( 4, 0 ) not null,
		);


create table awards
(
	award_id decimal( 4, 0 ) primary key,
)
