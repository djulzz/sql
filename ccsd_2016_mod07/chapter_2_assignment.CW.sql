-- Notes

-- Table layout template for planning purposes: 
-- TABLE(PRIMARY_KEY, value_a, value_b)


create database Henry_Movies;
	
use Henry_Movies;

-- Q1a.

create table Director
	(
		dir_num decimal(4,0) primary key,
		name varchar(50) not null,
		year_born decimal(4,0) not null,
		year_death decimal(4,0) null,
		);

-- Q1b.

create table Movie
	(
		movie_number decimal(4,0) primary key,
		title varchar(30) not null,
		year_made decimal(4,0) not null,
		type varchar(15) not null,
-- Q1c.
		dir_num decimal(4,0) not null,
		critic_id decimal(4,0) not null
		);

create table Critics
	(
		critics_id decimal(4,0) primary key,
		critic_rating decimal(2,1) not null,
		mpaa_rating char(4) not null,
		num_awards_nom decimal(2,0) not null,
		num_awards_won decimal(2,0) not null
		);

-- Q1d
create table Actor
	(
		actor_num decimal(4,0) primary key,
		actor_name varchar(50) not null,
		birth_city varchar(50) not null,
		state_or_province varchar(50) not null,
		country char(3) not null,
		actor_born decimal(4,0) not null,
		actor_death decimal(4,0) null
		);

-- Q1e & f
create table Movie_Actor_Association
	(
		association_ID decimal(4,0) primary key,
		movie_number decimal(4,0) not null,
		actor_num decimal(4,0) not null,
		);

-- Director --Directs--> Movie --performed by--> Actors --critiqued by--> Critics
--						  |						    |
--						  v 						v
--						  >	Movie_Actor_Association <
-- Q2
 --Title, Type, Book_Code > Book>> Written by << Author_Num, Author_First, Author_Last
-- Q3
 -- title, type, price, book_code > Book >> Published by << pub_info < pub_code, publisher_name, city