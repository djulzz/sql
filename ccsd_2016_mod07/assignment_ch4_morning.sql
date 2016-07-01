-- Question 01
--------------

-- Q2
-----
-- select * from branch;

-- Q3
-----
-- select publisher_name from publisher where city='Boston';

-- Q4
-----
-- select publisher_name, city from publisher where city<>'New York';

-- Q5
-----
-- select branch_name from branch where num_employees>=9;

-- Q6
-----
-- select book_code, title from book where type='HOR';

-- Q7
-----
-- select book_code, title from book where (type='HOR') and (paperback='Y');

-- Q8
-----
select book_code, title, from book where (type='HOR') or (publisher_code='SC');