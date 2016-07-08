create table ccsd_developer
(
	contributor_id decimal( 4, 0 ) primary key,
	first_name varchar( 50 ) not null,
	last_name varchar( 50 ) not null,
	handle varchar( 50 ) null,
	email varchar( 50 ) not null
);

insert into table ccsd_developer values( 1, 'Robert', 'Acosta II', 'malakim66', null );
insert into table ccsd_developer values( 2, 'Kierstin', 'Meza', 'KMMeza', null );
insert into table ccsd_developer values( 3, 'Daniel', 'Rodriguez', 'stinger1316', null );
insert into table ccsd_developer values( 4, 'Aaron', 'Ausejo', 'eahaus', null );
insert into table ccsd_developer values( 5, 'Andrew', 'Cwirka', null, 'cwirkaedu@gmail.com' );
insert into table ccsd_developer values( 6, 'Frank', 'Vasquez', 'Vasquezf27', null );
insert into table ccsd_developer values( 7, 'John', 'Teefy', 'jteefy46', null );
insert into table ccsd_developer values( 8, 'Mitch', 'Rowley', 'mrowley', 'mrowley@gmail.com' );

create table repository
(
	repository_id decimal( 4, 0 ) primary key,
	public char( 1 ) not null,
	name varchar( 20 ) not null
);

insert into table repository values( 1, 'y', 'SQL' );
insert into table repository values( 2, 'y', 'Linux' );

create table dev_repo_association
(
	association decimal( 4, 0 ) primary key,
	repository_id decimal( 4, 0 ) not null,
	contributor_id decimal( 4, 0 ) not null
);

insert into table dev_repo_association values( 1, 1, 8 );
insert into table dev_repo_association values( 2, 2, 8 );

