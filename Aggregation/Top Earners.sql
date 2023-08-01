-- https://www.hackerrank.com/challenges/earnings-of-employees/problem

select * from(
    select Total_Earnings , count(0) from
    (
        select months*salary Total_Earnings from employee   
    ) 
    group by Total_Earnings
    order by Total_Earnings desc
)
where rownum=1
;
