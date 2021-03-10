-- https://www.hackerrank.com/challenges/weather-observation-station-17/problem

select long_w
from
(
select round(long_w,4) long_w , row_number() over(partition by 1 order by lat_n) rn
from station
where  round(lat_n,4)>38.7880
    )
where rn =1
;