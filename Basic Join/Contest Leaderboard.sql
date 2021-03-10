-- https://www.hackerrank.com/challenges/contest-leaderboard/problem

select hacker_id , name , sum(score) score
from
(
select d.hacker_id , d.name ,a.challenge_id , a.score ,
row_number() over(partition by  d.hacker_id ,a.challenge_id order by a.score desc ) rn
from submissions a 
join hackers d on a.hacker_id = d.hacker_id
)
where rn =1
group by hacker_id , name
having sum(score)>0
order by 3 desc , 1 asc
;