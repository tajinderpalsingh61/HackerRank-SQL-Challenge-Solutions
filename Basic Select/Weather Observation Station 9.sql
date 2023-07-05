-- https://www.hackerrank.com/challenges/weather-observation-station-9/problem

select distinct city from station
where substr(lower(nvl(city,'x')),1,1) not in ('a','e','i','o','u') ;

--solution 2

SELECT UNIQUE CITY FROM STATION WHERE UPPER(SUBSTR(CITY,1,1)) NOT IN ('A','E','I','O','U');