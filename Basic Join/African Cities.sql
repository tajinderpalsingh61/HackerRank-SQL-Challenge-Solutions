-- https://www.hackerrank.com/challenges/african-cities/problem

select
a.name 
from city a , country b
where a.countrycode = b.code
and b.continent='Africa'
order by 1
;