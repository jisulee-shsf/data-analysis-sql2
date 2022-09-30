-- Q1. Weather Observation Station 3)
/* Query a list of CITY names from STATION for cities that have an even ID number. 
Print the results in any order, but exclude duplicates from the answer. */
SELECT DISTINCT CITY
FROM STATION
WHERE MOD(ID, 2) = 0;

-- Q2. Weather Observation Station 19)
/* Consider P1(a, c) and P2(b, d) to be two points on a 2D plane 
where (a, b) are the respective minimum and maximum values of Northern Latitude (LAT_N) 
and (c, d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.
Query the Euclidean Distance between points P1 and P2 and format your answer to display 4 decimal digits. */
SELECT TRUNCATE(SQRT(POWER(MAX(LAT_N) - MIN(LAT_N), 2) + POWER(MAX(LONG_W) - MIN(LONG_W), 2)), 4)
FROM STATION;

-- Q3. Placements)
/* Write a query to output the names of those students whose best friends got offered a higher salary than them. 
Names must be ordered by the salary amount offered to the best friends. 
It is guaranteed that no two students got same salary offer. */
-- A1. 기존 코드
SELECT Name
FROM Students S
     INNER JOIN Packages P1 ON S.ID = P1.ID
     INNER JOIN Friends F ON P1.ID = F.Friend_ID
     INNER JOIN Packages P2 ON F.Friend_ID = P2.ID
     WHERE P1.Salary < P2.Salary
ORDER BY P2.Salary;

-- A2. 수정 코드
SELECT Name
FROM Friends F
     INNER JOIN Packages P1 ON F.Friend_ID = P1.ID
     INNER JOIN Packages P2 ON F.ID = P2.ID
     INNER JOIN Students S ON P2.ID = S.ID
WHERE P1.Salary > P2.Salary
ORDER BY P1.Salary;

-- Q4. Binary Tree Nodes)
/* Write a query to find the node type of Binary Tree ordered by the value of the node. 
Output one of the following for each node:
Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node. */
-- A1. 기존 코드
SELECT N
     , CASE 
            WHEN P IS NULL THEN 'Root'
            WHEN N NOT IN P THEN 'Leaf'
            ELSE 'Inner'
            END
FROM BST
ORDER BY N;

-- A2. 수정 코드
SELECT DISTINCT B1.N 
              , CASE 
	                 WHEN B1.P IS NULL THEN 'Root'
                     WHEN B2.P IS NULL THEN 'Leaf' 
                     ELSE 'Inner'
                     END
FROM BST B1
     LEFT JOIN BST B2 ON B1.N = B2.P
ORDER BY B1.N;