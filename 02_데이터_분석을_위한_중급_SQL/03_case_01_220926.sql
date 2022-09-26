-- [Section 1] CASE

/* Q1. SELECT 내에 CASE를 사용해 CategoryId 1은 '구분1', CategoryI 2는 '구분2', 그 외는 '기타'로 구분하여 'Case_test' alias로 출력하기 */
SELECT CASE
            WHEN CategoryId = 1 THEN '구분1'
            WHEN CategoryId = 2 THEN '구분2'
            ELSE '기타'
       END AS 'Case_test', CategoryId
FROM Products;

/* Q2. SELECT 내에 CASE를 사용해 SupplierID와 CategoryID 1은 '구분1', SupplierID 또는 CategoryI 2는 '구분2', 그 외는 '기타'로 구분하여 'Case_test' alias로 출력하기 */
SELECT CASE
            WHEN SupplierID = 1 AND CategoryID = 1 THEN '구분1'
            WHEN SupplierID = 2 OR CategoryID = 2 THEN '구분2'
            ELSE '기타'
       END AS 'Case_test', SupplierID, CategoryID
FROM Products;

/* Q3. SELECT 내에 CASE를 사용해 CategoryId 1은 '구분1', CategoryI 2는 '구분2', 그 외는 '기타'로 구분하여 'Case_test' alias로 GROUP BY하여 Price 평균값 출력하기 */
SELECT CASE 
            WHEN CategoryID = 1 THEN '구분1'
            WHEN CategoryID = 2 THEN '구분2'
            ELSE '기타'
       END AS 'Case_test'
     , AVG(Price)
FROM Products
GROUP BY Case_test;

-- [Section 2] HakerRank

/* Q1. Type of Triangle)
Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. 
Output one of the following statements for each record in the table:
Equilateral: It's a triangle with  sides of equal length.
Isosceles: It's a triangle with  sides of equal length.
Scalene: It's a triangle with  sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle. */
SELECT CASE
            WHEN A = B AND A = C THEN 'Equilateral'
            WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
            WHEN A = B OR A = C OR B = C THEN 'Isosceles'
            ELSE 'Scalene'
       END
FROM TRIANGLES;
