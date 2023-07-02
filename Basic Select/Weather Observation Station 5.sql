-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem

SELECT * FROM
(
SELECT 
CITY , LEN_CITY
FROM
(
SELECT CITY , LEN_CITY ,  ROW_NUMBER() OVER(PARTITION BY 1 ORDER BY LEN_CITY DESC ) MAX_LEN ,
ROW_NUMBER() OVER(PARTITION BY 1 ORDER BY LEN_CITY  ) MIN_LEN
FROM
(
SELECT CITY , LENGTH(CITY) LEN_CITY FROM STATION ORDER BY CITY
)
)
WHERE MIN_LEN = 1 OR MAX_LEN =1 
ORDER BY CITY
) WHERE ROWNUM<=2
;


--Solution 2

select CITY, length(CITY)
from
(
  select 
    CITY, 
    row_number() over (order by length(CITY), CITY) as shortest_is_one,
    row_number() over (order by length(CITY) desc, CITY) as longest_is_one
  from STATION
)
where shortest_is_one = 1 or longest_is_one = 1;