-- Q1. NULL 값을 제외한 Price 컬럼의 수 출력하기
SELECT COUNT(Price)
FROM Products;

-- Q2. 중복을 제거한 SupplierId 수 출력하기
SELECT COUNT(DISTINCT SupplierId)
FROM Products;

-- Q3-1. NULL 값을 제외한 Price의 평균값 출력하기
SELECT AVG(Price)
FROM Products;

-- Q3-2. NULL 값을 포함한 Price의 평균값 출력하기
SELECT SUM(Price) / COUNT(*)
FROM Products;

-- Q4 Price의 최솟값과 최댓값 출력하기
SELECT MIN(Price), Max(Price)
FROM Products;

-- Q5 Price의 컬럼 수 / 총 합 / NULL을 포함한 평균값 / 최솟값 및 최댓값 출력하기
SELECT COUNT(Price), SUM(Price), AVG(Price), MIN(Price), MAX(Price)
FROM Products;