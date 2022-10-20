-- [Section 1] CASE

# SELECT 내에 CASE를 사용해 CategoryId 1은 '구분1', CategoryI 2는 '구분2', 그 외는 '기타'로 구분하여 'Case_test' alias로 출력하기
SELECT CASE
           WHEN CategoryId = 1 THEN '구분1'
           WHEN CategoryId = 2 THEN '구분2'
           ELSE '기타'
           END AS 'Case_test', CategoryId
FROM Products;

# SELECT 내에 CASE를 사용해 SupplierID와 CategoryID 1은 '구분1', SupplierID 또는 CategoryI 2는 '구분2', 그 외는 '기타'로 구분하여 'Case_test' alias로 출력하기
SELECT CASE
           WHEN SupplierID = 1 AND CategoryID = 1 THEN '구분1'
           WHEN SupplierID = 2 OR CategoryID = 2 THEN '구분2'
           ELSE '기타'
           END AS 'Case_test', SupplierID, CategoryID
FROM Products;

# SELECT 내에 CASE를 사용해 CategoryId 1은 '구분1', CategoryI 2는 '구분2', 그 외는 '기타'로 구분하여 'Case_test' alias로 GROUP BY하여 Price 평균값 출력하기
SELECT CASE 
           WHEN CategoryID = 1 THEN '구분1'
           WHEN CategoryID = 2 THEN '구분2'
           ELSE '기타'
           END AS 'Case_test', AVG(Price)
FROM Products
GROUP BY Case_test;

# Pivot Table - CASE WHEN을 사용해 SupplierID별 Price 총합 출력하기
SELECT SUM(CASE WHEN SupplierID = 1 THEN Price ELSE NULL END) AS 'SupplierID1_avg'
     , SUM(CASE WHEN SupplierID = 2 THEN Price ELSE NULL END) AS 'SupplierID2_avg'
     , SUM(CASE WHEN SupplierID = 3 THEN Price ELSE NULL END) AS 'SupplierID3_avg'
FROM Products;

-- [Section 2] HakerRank / LeetCode

/* Type of Triangle -
Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. 
Output one of the following statements for each record in the table:
Equilateral: It's a triangle with 3 sides of equal length.
Isosceles: It's a triangle with 2 sides of equal length.
Scalene: It's a triangle with 3 sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle. */
SELECT CASE
           WHEN A = B AND A = C THEN 'Equilateral'
           WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
           WHEN A = B OR A = C OR B = C THEN 'Isosceles'
           ELSE 'Scalene'
           END
FROM TRIANGLES;

/* Reformat Department Table -
Write an SQL query to reformat the table such that there is a department id column and a revenue column for each month.
Return the result table in any order. */
SELECT id
     , SUM(CASE WHEN month = 'Jan' THEN revenue ELSE NULL END) AS Jan_Revenue
     , SUM(CASE WHEN month = 'Feb' THEN revenue ELSE NULL END) AS Feb_Revenue
     , SUM(CASE WHEN month = 'Mar' THEN revenue ELSE NULL END) AS Mar_Revenue
     , SUM(CASE WHEN month = 'Apr' THEN revenue ELSE NULL END) AS Apr_Revenue
     , SUM(CASE WHEN month = 'May' THEN revenue ELSE NULL END) AS May_Revenue
     , SUM(CASE WHEN month = 'Jun' THEN revenue ELSE NULL END) AS Jun_Revenue
     , SUM(CASE WHEN month = 'Jul' THEN revenue ELSE NULL END) AS Jul_Revenue
     , SUM(CASE WHEN month = 'Aug' THEN revenue ELSE NULL END) AS Aug_Revenue
     , SUM(CASE WHEN month = 'Sep' THEN revenue ELSE NULL END) AS Sep_Revenue
     , SUM(CASE WHEN month = 'Oct' THEN revenue ELSE NULL END) AS Oct_Revenue
     , SUM(CASE WHEN month = 'Nov' THEN revenue ELSE NULL END) AS Nov_Revenue
     , SUM(CASE WHEN month = 'Dec' THEN revenue ELSE NULL END) AS Dec_Revenue
FROM Department
GROUP BY id;
