-- https://www.hackerrank.com/challenges/the-report/problem

select case when b.grade< 8 then NULL else  a.name end name
,  b.grade , a.marks
from Students  a join Grades  b
on a.marks between b.min_mark and b.max_mark
order by b.grade desc , a.name , a.marks
--NULLS LAST
;