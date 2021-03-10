-- https://www.hackerrank.com/challenges/sql-projects/problem

select start_date , end_date from
(
select start_date , nvl(case when val='s' then lead(end_date) over(partition by 1 order by start_date)
else end_date end,end_date) end_date , val
from
(
select start_date , end_date , val
from
(
select start_date , end_date , 
case 
when start_date-lag_start_date <> 1 and end_date<>lead_start_date then 'i'
when lag_start_date is null or start_date-lag_start_date>1 then 's'
when start_date-lag_start_date = 1 and lead_start_date-start_date<>1 then 'e'
when start_date-lag_start_date = 1 and lead_start_date-start_date=1 then 'm'
end val
from
(
select start_date , end_date  ,
lag(start_date) over(partition by 1 order by start_date) lag_start_date ,
lead(start_date) over(partition by 1 order by start_date) lead_start_date
from Projects
order by start_date
)
) where val in ('s','e','i')
order by start_date
)
order by start_date
)
where val in ('s','i')
order by end_date-start_date , start_date
;