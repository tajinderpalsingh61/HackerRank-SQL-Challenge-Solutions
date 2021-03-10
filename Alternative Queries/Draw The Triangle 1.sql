-- https://www.hackerrank.com/challenges/draw-the-triangle-1/problem

select lpad('* ',level*2,'* ')  from dual 
connect by level<=20
order by level desc
;