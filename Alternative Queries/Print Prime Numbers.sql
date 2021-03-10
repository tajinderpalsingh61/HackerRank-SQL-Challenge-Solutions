-- https://www.hackerrank.com/challenges/print-prime-numbers/problem

with data as 
(select level as no  , round(sqrt(level)) sqrt_no from dual
connect by level<=1000
)
select LISTAGG(a_no, '&') WITHIN GROUP (ORDER BY a_no)  from
(
select a_no , 
--sum(case when mod(a_no,b_no) >0  then 1 else 0 end) rem_1_cnt ,
sum(case when mod(a_no,b_no) = 0 and b_no<>1 then 1 else 0 end) rem_0_cnt
from
(
select a.no a_no,  a.sqrt_no , b.no b_no from data a join data b on b.no<=a.sqrt_no
)
group by a_no
)
where rem_0_cnt=0
and a_no<>1
order by 1
;