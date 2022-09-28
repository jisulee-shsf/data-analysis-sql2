-- [Section 1] UNION

-- FULL OUTER JOIN(MySQL 미지원) > LEFT & RIGHT JOIN을 UNION으로 묶어 구현하기
-- Q. 회원이나 주문을 안한 경우(LEFT JOIN)와 주문은 했으나 비회원인 경우(RIGHT JOIN)를 모두 출력하기
SELECT *
FROM Customers a 
     LEFT JOIN Orders b ON a.CustomerID = b.CustomerID
     
UNION
	 
SELECT *
FROM Customers a 
     RIGHT JOIN Orders b ON a.CustomerID = b.CustomerID;
	 
-- [Section 2] HackerRank

/* Q. Symmetric Pairs)
You are given a table, Functions, containing two columns: X and Y.
Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.
Write a query to output all such symmetric pairs in ascending order by the value of X. List the rows such that X1 ≤ Y1. */

SELECT X, Y
FROM Functions
WHERE X = Y
GROUP BY X, Y
HAVING COUNT(*) = 2

UNION

SELECT a.X, a.Y
FROM Functions a
     INNER JOIN Functions b ON a.X = b.Y AND a.Y = b.X
WHERE a.X < a.Y
ORDER BY X;
