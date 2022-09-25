-- [Section 1] 비교 연산자와 논리 연산자

-- Q1. 비교 연산자를 사용해 CustomerID가 10 미만인 값 추출하기
SELECT * 
FROM Customers
WHERE CustomerID < 20;

-- Q2. 비교 연산자를 사용해 Country가 A로 시작하는 값 추출하기
SELECT * 
FROM Customers
WHERE Country < 'B';

-- Q3. 비교 연산자와 논리 연산자를 사용해 특정 값 추출하기
-- AND : 두 조건을 모두 충족하는 경우 / OR : 두 조건 중, 하나라도 충족하는 경우
SELECT * 
FROM Customers
WHERE CustomerID < 20 AND Country = 'UK';

-- [Section 2] LIKE / IN / BETWEEN / IS NULL

-- Q1. '%' 와일드카드 문자를 사용해 Country가 'K'로 끝나는 값 추출하기
-- 대소문자 구분 없이 값 추출 확인 / e.g. '%K' > UK, Denmark
-- 사용에 따라 %의 위치 변경 가능 / e.g. '%A', '%A%', 'A%'
SELECT *
FROM Customers
WHERE Country LIKE '%K';

-- Q2. '_' 와일드카드 문자를 사용해 'U'로 시작하는 두 글자 값 추출하기
SELECT *
FROM Customers
WHERE Country LIKE 'U_';

-- Q3. '\' 이스케이프 문자를 사용해 두 자릿수의 할인을 받는 퍼센트 값 추출하기
SELECT *
FROM Customers
WHERE Discount LIKE '__\%';

-- Q4. Country가 'Canada' & 'France'인 값 추출하기
-- WHERE Country = 'Canada' OR Country = 'France'; > IN 구문으로 간략히 출력 가능
SELECT *
FROM Customers
WHERE Country IN ('Canada', 'France');

-- Q5. CustomerID가 7이상 10이하인 값 추출하기
-- WHERE CustomerID >= 7 AND CustomerID <= 10; > BETWEEN 구문으로 간략히 출력 가능
SELECT *
FROM Customers
WHERE CustomerID BETWEEN 7 AND 10;

-- Q6. CustomerID가 'NULL'인 값 추출하기
SELECT *
FROM Customers
WHERE CustomerID IS NULL;

-- [Section 3] HackerRank

/* Revising the Select Query I)
Q1. Query all columns for all American cities in the CITY table with populations larger than 100000. 
The CountryCode for America is USA. */
SELECT *
FROM CITY
WHERE COUNTRYCODE = 'USA' AND POPULATION > 100000;

/* Select By ID)
Q2. Query all columns for a city in CITY with the ID 1661. */
SELECT *
FROM CITY
WHERE ID = 1661;

/* Weather Observation Station 6)
Q3. Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. 
Your result cannot contain duplicates. */
-- WHERE CITY IN ('a%', 'e%', 'i%', 'o%', 'u%'); > IN의 경우, CITY 컬럼 값과 괄호 문자열이 정확히 일치하는 경우만 찾는 것을 의미하므로 적용 불가 
SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE 'a%' 
OR CITY LIKE 'e%' 
OR CITY LIKE 'i%'
OR CITY LIKE 'o%'
OR CITY LIKE 'u%';

/* Weather Observation Station 12)
Q4. Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. 
Your result cannot contain duplicates. */
SELECT DISTINCT CITY 
FROM STATION
WHERE CITY NOT LIKE 'a%' 
AND CITY NOT LIKE 'e%' 
AND CITY NOT LIKE 'i%'
AND CITY NOT LIKE 'o%'
AND CITY NOT LIKE 'u%'
AND CITY NOT LIKE '%a'
AND CITY NOT LIKE '%e' 
AND CITY NOT LIKE '%i'
AND CITY NOT LIKE '%o'
AND CITY NOT LIKE '%u';
