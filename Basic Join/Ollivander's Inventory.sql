-- https://www.hackerrank.com/challenges/harry-potter-and-wands/problem

select id ,age , coins_needed , power
from
(
select a.id , b.age , a.coins_needed, a.power , row_number() over(partition by power,  age order by a.coins_needed) rn
from wands a join wands_property b
on a.code = b.code 
where b.is_evil = 0 
)
where rn = 1
order by power desc, age desc;