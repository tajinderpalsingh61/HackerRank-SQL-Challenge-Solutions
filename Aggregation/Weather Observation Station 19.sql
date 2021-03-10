-- https://www.hackerrank.com/challenges/weather-observation-station-19/problem

select to_char(sqrt(power(min_lat_n-min_long_w,2)+power(max_lat_n-max_long_w,2)),999.9999)
from
(
SELECT min(lat_n) min_lat_n , max(lat_n) max_lat_n , min(long_w) min_long_w , max(long_w) max_long_w
FROM STATION   
)
    ;