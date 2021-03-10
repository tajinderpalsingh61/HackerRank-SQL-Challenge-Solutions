-- https://www.hackerrank.com/challenges/earnings-of-employees/problem

select * from(
select max_earn , count(0)
from
(
select months*salary max_earn from employee   
) 
group by max_earn
order by 1 desc
    )
where rownum=1
;