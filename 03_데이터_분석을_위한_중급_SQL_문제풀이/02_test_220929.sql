/* Japan Population -
Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN. */
SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE = 'JPN';

/* Weather Observation Station -
Query the following two values from the STATION table:
1. The sum of all values in LAT_N rounded to a scale of 2 decimal places.
2. The sum of all values in LONG_W rounded to a scale of 2 decimal places. */ 
SELECT ROUND(SUM(LAT_N), 2) AS lat
     , ROUND(SUM(LONG_W), 2) AS lon
FROM STATION;

/* Weather Observation Station 18 -
Consider P1(a, b) and P2(c, d) to be two points on a 2D plane.
a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
d happens to equal the maximum value in Western Longitude (LONG_W in STATION).
Query the Manhattan Distance between points P1 and P2 and round it to a scale of 4 decimal places.
Manhattan Distance Definition: The distance between two points measured along axes at right angles.
In a plane with p1 at (x1, y1) and p2 at (x2, y2), it is |x1 - x2| + |y1 - y2|. */
SELECT ROUND(ABS(MIN(LAT_N) - MAX(LAT_N)) + ABS(MIN(LONG_W) - MAX(LONG_W)), 4)
FROM STATION;

/* New Companies -
Given the table schemas below, write a query to print the company_code, 
founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. 
Order your output by ascending company_code.
Note:
The tables may contain duplicate records.
The company_code is string, so the sorting should not be numeric. 
For example, if the company_codes are C_1, C_2, and C_10, then the ascending company_codes will be C_1, C_10, and C_2. */
# 기존 코드
SELECT a.company_code
     , a.founder
     , COUNT(b.lead_manager_code)
     , COUNT(c.senior_manager_code)
     , COUNT(d.manager_code)
     , COUNT(e.employee_code)
FROM Company a
INNER JOIN Lead_Manager b ON a.company_code = b.company_code
INNER JOIN Senior_Manager c ON b.company_code = c.company_code
INNER JOIN Manager d ON c.company_code = d.company_code
INNER JOIN Employee e ON d.company_code = e.company_code
GROUP BY a.company_code
ORDER BY company_code DESC;

# 수정 코드
SELECT C.company_code
     , C.founder
     , COUNT(DISTINCT L.lead_manager_code)
     , COUNT(DISTINCT S.senior_manager_code)
     , COUNT(DISTINCT M.manager_code)
     , COUNT(DISTINCT E.employee_code)
FROM Company C
LEFT JOIN Lead_Manager L ON C.company_code = L.company_code
LEFT JOIN Senior_Manager S ON L.lead_manager_code = S.lead_manager_code
LEFT JOIN Manager M ON S.senior_manager_code = M.senior_manager_code
LEFT JOIN Employee E ON M.manager_code = E.manager_code
GROUP BY C.company_code, C.founder
ORDER BY C.company_code;
