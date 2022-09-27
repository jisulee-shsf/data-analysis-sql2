-- [Section 1] OUTER JOIN 

-- Q1-1. Customers & Orders table을 key 컬럼 기준으로 LEFT OUTER JOIN 실행하기
SELECT *
FROM Customers a 
		LEFT OUTER JOIN Orders b ON a.CustomerID = b.CustomerID;
		
-- Q1-2. Customers & Orders table을 key 컬럼 기준으로 LEFT JOIN 실행하기
SELECT *
FROM Customers a 
		LEFT JOIN Orders b ON a.CustomerID = b.CustomerID;

-- Q2. LEFT JOIN을 사용해 구매 내역이 없는 인원 수 출력하기	
SELECT COUNT(*)
FROM Customers a 
		LEFT JOIN Orders b ON a.CustomerID = b.CustomerID
WHERE OrderID IS NULL;

-- [Section 2] LeetCode

/* Q. 183. Customers Who Never ORDER)
Write an SQL query to report all customers who never order anything.
Return the result table in any order. */
SELECT Customers.NAME AS Customers
FROM Customers
        LEFT JOIN Orders ON Customers.id = Orders.customerId
WHERE customerId IS NULL;