-- https://www.hackerrank.com/challenges/interviews/problem

select d.contest_id ,  d.hacker_id , d.name 
, sum(total_submissions) , sum(total_accepted_submissions) , sum(total_views) , sum(total_unique_views)
--, total_submissions , total_accepted_submissions , total_views , total_unique_views
from
(select nvl(a.challenge_id,b.challenge_id) challenge_id, 
 total_submissions , total_accepted_submissions,
 total_views , total_unique_views
from (select challenge_id , nvl(sum(total_views),0) total_views , nvl(sum(total_unique_views),0) total_unique_views 
      from 
      view_stats
     group by challenge_id
     ) a full outer join (select challenge_id , 
nvl(sum(total_submissions),0) total_submissions , nvl(sum(total_accepted_submissions),0) total_accepted_submissions
                          from submission_stats
group by challenge_id) b
on a.challenge_id = b.challenge_id
 ) a join challenges b
on a.challenge_id = b.challenge_id
join Colleges c
on b.college_id = c.college_id
join contests d
on c.contest_id = d.contest_id
group by  d.contest_id , d.hacker_id , d.name 
order by 1;