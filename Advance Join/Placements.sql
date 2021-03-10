-- https://www.hackerrank.com/challenges/placements/problem

SELECT A.NAME 
FROM STUDENTS A JOIN FRIENDS B
ON A.ID = B.ID
JOIN PACKAGES C
ON A.ID = C.ID 
JOIN PACKAGES D
ON B.FRIEND_ID = D.ID
WHERE D.SALARY>C.SALARY
ORDER BY D.SALARY
;