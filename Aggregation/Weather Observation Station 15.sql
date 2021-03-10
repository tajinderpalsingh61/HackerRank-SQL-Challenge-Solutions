-- https://www.hackerrank.com/challenges/weather-observation-station-15/problem

select long_w
from
(
select round(long_w,4) long_w , row_number() over(partition by 1 order by lat_n desc) rn
from station
where  round(lat_n,4)<137.2345
    )
where rn =1
;