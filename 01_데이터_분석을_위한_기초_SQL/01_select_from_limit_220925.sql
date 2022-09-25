-- [Section 1] SELECT / FROM / LIMIT

-- Q. 'LIMIT'를 사용해 전체 데이터의 상위 10개 값 추출하기
SELECT *
FROM Customers
LIMIT 10;

-- [Section 2] HackerRank

/* Q1. Select All) 
Query all columns (attributes) for every row in the CITY table. */
SELECT * 
FROM CITY;

/* Q2. Weather Observation Station 1) 
Query a list of CITY and STATE from the STATION table. */
SELECT CITY, STATE 
FROM STATION;
