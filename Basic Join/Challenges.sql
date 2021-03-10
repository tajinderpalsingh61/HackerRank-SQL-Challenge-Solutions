-- https://www.hackerrank.com/challenges/challenges/problem

select hacker_id , name , cnt 
from
(
select hacker_id , name , cnt, count(cnt) over (partition by cnt order by cnt) dupl_cnt , max_cnt
from
(
select a.hacker_id , a.name ,  count(0) cnt , max(count(0)) over(partition by 1) max_cnt
from hackers a join challenges b
on a.hacker_id = b.hacker_id
group by a.hacker_id , a.name
)
)
where (dupl_cnt=1) or (dupl_cnt>1 and cnt=max_cnt)
order by 3 desc , 1 asc
;