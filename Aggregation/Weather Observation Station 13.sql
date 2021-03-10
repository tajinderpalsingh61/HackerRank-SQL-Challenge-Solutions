-- https://www.hackerrank.com/challenges/weather-observation-station-13/problem

select round(sum(lat_n),4) from station
where round(lat_n,4)>38.7880
and round(lat_n,4)<137.2345
;