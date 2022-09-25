-- [Section 1] Aggregate function

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

-- [Section 2] HakerRank

/* Q1. Revising Aggregations - Averages)
Query the average population of all cities in CITY where District is California. */
SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';

/* Q2. Revising Aggregations - The Sum Function)
Query the total population of all cities in CITY where District is California. */
SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';

/* Q3. Revising Aggregations - The Count Function)
Query a count of the number of cities in CITY having a Population larger than. */
SELECT COUNT(*)
FROM CITY
WHERE POPULATION > 100000;

/* Q4. Average Population)
Query the average population for all cities in CITY, rounded down to the nearest integer. */
SELECT FLOOR(AVG(POPULATION))
FROM CITY;

/* Q5. Population Density Difference)
Query the difference between the maximum and minimum populations in CITY. */
SELECT MAX(POPULATION)- MIN(POPULATION)
FROM CITY;

/* Q6. Weather Observation Station 4)
Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table. */
SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION;
