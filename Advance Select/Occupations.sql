-- https://www.hackerrank.com/challenges/occupations/problem


select Doctor_name  , Professor_name , Singer_name , Actor_name  from
(select name , occupation , row_number() over(partition by  occupation order by name)  rn
 from occupations)
PIVOT (
    min(name) name
for (occupation) in ('Doctor' as Doctor , 'Professor' as Professor , 'Singer' as Singer , 'Actor' as Actor )
) 
order by 1 , 2, 3, 4
;