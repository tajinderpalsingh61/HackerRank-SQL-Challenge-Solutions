-- https://www.hackerrank.com/challenges/weather-observation-station-14/problem

select * from
(
select round(lat_n,4) from station
where  round(lat_n,4)<137.2345
order by 1 desc
)
where rownum=1
;