-- hackerrank.com/challenges/weather-observation-station-6/problem

select distinct city from station
where substr(lower(city),1,1) in ('a','e','i','o','u');