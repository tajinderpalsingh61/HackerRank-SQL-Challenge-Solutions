-- https://www.hackerrank.com/challenges/draw-the-triangle-2/problem

select rpad('* ',level*2,'* ') from dual
connect by level<=20
order by level;