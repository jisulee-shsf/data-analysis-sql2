/* Population Density Difference -
Query the difference between the maximum and minimum populations in CITY. */
SELECT MAX(POPULATION) - MIN(POPULATION)
FROM CITY;

/* Weather Observation Station 11 -
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. 
Your result cannot contain duplicates. */
# 기존 코드
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE 'a%' 
OR CITY NOT LIKE 'e%' 
OR CITY NOT LIKE 'i%' 
OR CITY NOT LIKE 'o%' 
OR CITY NOT LIKE 'u%' 
OR CITY NOT LIKE '%a' 
OR CITY NOT LIKE '%e' 
OR CITY NOT LIKE '%i' 
OR CITY NOT LIKE '%o' 
OR CITY NOT LIKE '%u';

# 수정 코드
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE 'a%'
AND CITY NOT LIKE 'e%' 
AND CITY NOT LIKE 'i%' 
AND CITY NOT LIKE 'o%' 
AND CITY NOT LIKE 'u%' 
OR CITY NOT LIKE '%a' 
AND CITY NOT LIKE '%e' 
AND CITY NOT LIKE '%i' 
AND CITY NOT LIKE '%o' 
AND CITY NOT LIKE '%u';

# 수정 코드
SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(CITY, 1) NOT IN ('A', 'E', 'I', 'O', 'U') 
OR RIGHT(CITY, 1) NOT IN ('a', 'e', 'i', 'o', 'u');

/* Weather Observation Station 13 -
Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345. 
Truncate your answer to 4 decimal places. */
SELECT TRUNCATE(SUM(LAT_N), 4) 
FROM STATION
WHERE LAT_N > 38.7880 AND LAT_N < 137.2345;

/* Top Competitors -
Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! 
Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. 
Order your output in descending order by the total number of challenges in which the hacker earned a full score. 
If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id. */
SELECT S.hacker_id
     , H.name
FROM Submissions S
INNER JOIN Hackers H ON S.hacker_id = H.hacker_id
INNER JOIN Challenges C ON S.challenge_id = C.challenge_id
INNER JOIN Difficulty D ON C.difficulty_level = D.difficulty_level
WHERE S.score = D.score
GROUP BY S.hacker_id, H.name
HAVING COUNT(DISTINCT S.submission_id) >= 2
ORDER BY COUNT(DISTINCT S.submission_id) DESC, S.hacker_id;
