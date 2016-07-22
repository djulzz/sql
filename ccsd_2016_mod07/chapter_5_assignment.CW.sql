-- relate book to author
-- select title, author_first, author_last, price from book B, author A, wrote W
-- where ( B.book_code = W.book_code ) and
-- ( A.author_num = W.author_num ) and ( B.price > (select avg(price) from book));

--Q1
select book_code, title, B.publisher_code, publisher_name from book B, publisher P
where ( B.publisher_code = P.publisher_code)
order by publisher_name asc;

--Q2
select book_code, title, price from book, publisher
where (publisher_name = 'Scribner')
and (book.publisher_code = publisher.publisher_code);

--Q3
select book_code, title, price from book, publisher
where (publisher_name = 'Scribner')
and (book.publisher_code = publisher.publisher_code) and (price > 14);

--Q4
select book.book_code, title, on_hand from book, inventory
where (book.book_code = inventory.book_code)
and (inventory.branch_num = 3);

--Q5
select B.title from book B, publisher P
where (B.type = 'PSY')
and (B.publisher_code = P.publisher_code)
and (P.publisher_name = 'Berkley Publishing');

--Q6
select title from book, wrote
where author_num in ( select author_num from wrote where author_num = 18)
and book.book_code = wrote.book_code;

--Q7
select title from book, wrote
where exists 
(select title where book.book_code = wrote.book_code
and author_num = 18);

--Q8
select book.book_code, book.title from book, wrote, inventory, author
where
(book.book_code = inventory.book_code) and
(book.book_code = wrote.book_code) and
(wrote.author_num = author.author_num) and
(inventory.branch_num = 2) and
(author.author_num = 20);

--Q9
select A.book_code, A.price, B.book_code, B.price from book A, book B
where A.price = B.price
and A.book_code < b.book_code
order by A.book_code asc, B.book_code asc;

--Q10
