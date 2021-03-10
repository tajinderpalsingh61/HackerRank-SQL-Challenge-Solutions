-- https://www.hackerrank.com/challenges/weather-observation-station-16/problem

select lat_n
from
(
select round(lat_n,4) lat_n , row_number() over(partition by 1 order by lat_n) rn
from station
where  round(lat_n,4)>38.7880
    )
where rn =1
;