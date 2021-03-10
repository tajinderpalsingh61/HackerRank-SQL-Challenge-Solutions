-- https://www.hackerrank.com/challenges/the-company/problem

select b.company_code , b.founder ,count(distinct lead_manager_code) , count(distinct senior_manager_code) ,
count(distinct manager_code), count(distinct employee_code)
from employee a join company b
on a.company_code = b.company_code
group by b.company_code , b.founder
order by 1
;