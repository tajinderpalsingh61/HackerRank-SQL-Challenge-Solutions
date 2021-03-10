-- https://www.hackerrank.com/challenges/what-type-of-triangle/problem

select 
--a , b, c , 
case 
when a+b<=c then 'Not A Triangle'
when a=b and b=c then 'Equilateral'
when a=b or a=c  or b=c then 'Isosceles'
when a<>b and b<>c then 'Scalene'
end
from triangles
--order by 1
;