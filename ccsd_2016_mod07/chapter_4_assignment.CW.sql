-- Question 1
-- select book_code, title from book;

-- Question 2
-- select * from Branch;

-- Question 3
-- select publisher_name from publisher where city = 'Boston';

-- Question 4
-- select publisher_name from publisher where city <> 'New York';

-- Question 5
-- select branch_name from branch where num_employees >= '9';

-- Question 6
-- select book_code, title from book where type = 'HOR';

-- Question 7
-- select book_code, title from book where type = 'HOR' and paperback = 'Y';

-- Question 8
-- select book_code, title from book where type = 'HOR' or publisher_code = 'SC';

-- Question 9
-- select book_code, title, price from book where price between 15 and 25;

-- Question 10
-- select book_code, title from book where type = 'MYS' and price < 20;

-- Question 11
-- *cast is used to round the discounted price in conjunction with the as decimal command
-- select book_code, 
-- title, 
-- cast(
-- (price * .9) as decimal(4,2)
-- ) as DISCOUNTED_PRICE
-- from book;
-- HOW DO YOU DO THIS AND MAKE IT PERMANENT?!

-- Question 12
-- select publisher_name
-- from publisher
-- where publisher_name like '% AND %';

-- Question 13
-- select book_code, title
-- from book
-- where type in ('HOR', 'MYS', 'SFI');

-- Question 14
-- select book_code, title
-- from book
-- where type in ('HOR', 'MYS', 'SFI')
-- order by title;

-- Question 15
-- select book_code, title, price
-- from book
-- where type in ('HOR', 'MYS', 'SFI')
-- order by price desc, title;

-- Question 16
-- select distinct(type) from book;

-- Question 17
-- select count(type)
-- from book
-- where type = 'SFI';

-- Question 18
-- select type, avg(price)
-- from book
-- group by type;

-- Question 19
-- select distinct(type), avg(price), paperback
-- from book
-- where paperback in ('Y')
-- group by type;

-- Question 20
-- select distinct(type), avg(price), paperback
-- from book
-- where paperback in ('Y') and price > 10
-- group by type;

-- Question 21
-- select price, title from book where price = (select min(price) from book);
-- 5.99 | Nine Stories
-- 5.99 | Franny and Zooey
-- 5.99 | The Catcher in the Rye

-- Question 22
-- select price, title from book where price = (select max(price)from book);
-- 37.95 | A Guide to SQL

--Question 23
-- select sum(num_employees) from branch;
-- 40 employees