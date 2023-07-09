-- https://www.hackerrank.com/challenges/average-population/problem

select floor(avg(population)) from city;

--solution 2

select round(avg(population)) from city;