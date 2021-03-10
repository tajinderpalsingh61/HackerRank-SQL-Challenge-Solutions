-- https://www.hackerrank.com/challenges/weather-observation-station-18/problem

select abs(round((min_lat_n-max_lat_n)+(min_long_w-max_long_w),4))
from
(
SELECT min(lat_n) min_lat_n , max(lat_n) max_lat_n , min(long_w) min_long_w , max(long_w) max_long_w
FROM STATION   
)
    ;