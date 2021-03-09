-- https://www.hackerrank.com/challenges/weather-observation-station-12/problem

select distinct city from station
where (substr(lower(nvl(city,'x')),1,1) not in ('a','e','i','o','u')
and 
 substr(lower(nvl(city,'x')),-1,1) not in ('a','e','i','o','u')      
)       
;