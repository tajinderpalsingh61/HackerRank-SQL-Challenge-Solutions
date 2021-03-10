-- https://www.hackerrank.com/challenges/average-population-of-each-continent/problem

select b.continent ,
floor(avg(a.population)) 
from city a join country b
on a.countrycode = b.code
group by b.continent
order by 1
;