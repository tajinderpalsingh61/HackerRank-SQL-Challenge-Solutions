-- https://www.hackerrank.com/challenges/the-pads/problem

select name||'('||substr(occupation,1,1)||')'
from occupations
order by 1;
select 'There are total '||count(0)||' '||lower(occupation)||'s'||'.'
from occupations
group by occupation
order by count(0) , occupation
;