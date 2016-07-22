-- create view Author_Book_Association as
-- select author_first, author_last, title from book, wrote, author
-- where (book.book_code = wrote.book_code)
-- and (author.author_num = wrote.author_num)
-- order by author_last asc;

-- select * from Author_Book_Association where author_last like "Ki%";

--Q1
create view Plume as
	select book_code, title, type, price from book
	where publisher_code = 'PL';

	select book_code, title, price from Plume
	where price < 13;

	select book_code, title, price from book
	where price < 13;

	-- You can update this view provided the base table allows null values for the columns that are not present in the view.

--Q2
create view NONPAPERBACK as
	select book_code, title, publisher_name, price from book B, publisher P 
	where ( B.publisher_code = P.publisher_code )
	and paperback = 'N';

	select title, publisher_name, price from NONPAPERBACK
	where price < 20;

	select title, publisher_name, price from book B, publisher P
	where (B.publisher_code = P.publisher_code )
	and price < 20;

	-- You cannot make any changes to this view, due to the fact that the two tables that make up the view do not contain the same values.

--Q3
create view BOOK_INVENTORY(branch_num, units) as
	select branch_num, on_hand from inventory
	order by branch_num asc;

	select branch_num, units from BOOK_INVENTORY
	where units > 25;

	select branch_num, on_hand from inventory
	where on_hand > 25;

	-- You can update the inventory table from this view, however the data in the inventory table will become inconsistent with other tables that share values with Inventory.

--Q4