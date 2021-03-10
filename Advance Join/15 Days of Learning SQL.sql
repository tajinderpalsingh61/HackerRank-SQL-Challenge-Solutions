-- https://www.hackerrank.com/challenges/15-days-of-learning-sql/problem

select a.submission_date, d_cn , b.hacker_id , b.name from
(select submission_date , count(distinct hacker_id) d_cn from
(
select hacker_id ,  b.submission_date , l , s
from
(select submission_date , sum(l) over(order by submission_date) as l
from
(
select to_date('2016-03-01','rrrr-mm-dd')-1+level as submission_date , level  as l
from dual 
connect by level<=15
)
) a join
(
select 
hacker_id , submission_date , sum(to_char(submission_date,'dd')) over(partition by hacker_id order by submission_date) s
from
(
select  a.hacker_id ,  trunc(submission_date) submission_date 
from Hackers a join  Submissions b
on a.hacker_id = b.hacker_id
group by a.hacker_id , trunc(submission_date) 
)
)  b
on a.submission_date = b.submission_date
where l=s
)
group by submission_date
) a join (select * from
(
select submission_date  , hacker_id , name ,
row_number() over(partition by submission_date order by submission_cnt desc , hacker_id) rn
from
(
select  a.hacker_id , trunc(submission_date) submission_date , a.name , count(submission_id ) submission_cnt
from Hackers a join  Submissions b
on a.hacker_id = b.hacker_id
group by a.hacker_id , trunc(submission_date)  , a.name
)
)
where rn = 1) b 
on a.submission_date = b.submission_date
order by 1;