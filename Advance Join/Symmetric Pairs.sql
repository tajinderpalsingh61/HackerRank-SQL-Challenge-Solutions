-- https://www.hackerrank.com/challenges/symmetric-pairs/problem

SELECT UNIQUE  A.X X_A ,A.Y Y_A 
--, B.X X_B, B.Y Y_B
FROM Functions A JOIN Functions B
ON A.ROWID<>B.ROWID
AND A.X=B.Y
AND A.Y = B.X
AND A.X<=B.X
--AND A.ROWID<B.ROWID
ORDER BY 1
;