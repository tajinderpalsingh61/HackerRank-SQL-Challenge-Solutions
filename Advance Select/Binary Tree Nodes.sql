-- https://www.hackerrank.com/challenges/binary-search-tree-1/problem

select n , case when n =  CONNECT_BY_ROOT n then 'Root'
when  CONNECT_BY_ISLEAF = 1 then 'Leaf'
when n <> CONNECT_BY_ROOT n  and CONNECT_BY_ISLEAF<>1 then 'Inner'
 end AS root_n from  BST
START WITH p IS NULL
connect by p = prior n
order by n
;