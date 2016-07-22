--Q1
create table if not exists FICTION
	(
		book_code char(4) primary key,
		title char(40),
		publisher_code char(3),
		price decimal(4,2));

--Q2
insert into FICTION
select book_code, title, publisher_code, price 
from book where type = 'FIC';

--Q3
update FICTION
	set price = price * 0.96 where publisher_code = 'LB';

--Q4
insert into FICTION values (9946, 'Cannery Row', 'PE', 11.95);

--Q5
delete from FICTION where book_code = 9883;

--Q6
update FICTION
	set price = null where title = 'To Kill A Mockingbird';

--Q7
alter table FICTION
add best_seller char(1)
default 'N';

--Q8
update FICTION
	set best_seller = 'Y' where title = 'Song of Solomon';

--Q9
alter table FICTION
modify title char(50);

--Q10
alter table FICTION
modify best_seller char(1)
not null;

--Q11
drop table FICTION;