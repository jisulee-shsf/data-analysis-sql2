####
## 03. 데이터 분석을 위한 중급 SQL 문제풀이
#### ► [01_test_220928]
- [O] Big Countries - https://leetcode.com/problems/big-countries/
- ✔︎ 'at least'는 해당 수치를 최소한 포함함을 의미 / it has an area of at least three million → area >= 3000000
####
- [O] Not Boring Movies - https://leetcode.com/problems/not-boring-movies/
- ✔︎ 'odd-numbered ID' 홀수 여부는 MOD()함수를 통해 값을 2로 나누어 나머지가 1인 경우로 판별
####
- [O] Duplicate Emails - https://leetcode.com/problems/duplicate-emails/
- ✔︎ table 내에 duplicate 값을 찾는 경우, GROUP BY 후 집계 함수를 활용해 COUNT가 1 초과 혹은 2 이상인 값을 확인
####
- [O] Combine Two Tables - https://leetcode.com/problems/combine-two-tables/
- ✔︎ INNER JOIN은 두 table에 모든 값이 있는 경우(무결)를 가정하여 사용 / LEFT JOIN은 왼쪽과 달리, 오른쪽 table에 일부 값이 없는 경우 사용
##
#### ► [02_test_220929]
- [O] Japan Population - https://www.hackerrank.com/challenges/japan-population/problem
####
- [O] Weather Observation Station 2 - https://www.hackerrank.com/challenges/weather-observation-station-2/problem
- ✔︎ 소수점 이후 n자릿수로 올림하는 ROUND(컬럼 or 값, n) 함수 사용 / TRUNCATE(컬럼 or 값, n), CEIL(컬럼 or 값), FLOOR(컬럼 or 값) 참고
####
- [O] Weather Observation Station 18 - https://www.hackerrank.com/challenges/weather-observation-station-18/problem
####
- [✘] New Companies - https://www.hackerrank.com/challenges/the-company/problem
- ✔︎ output code 값이 int가 아닌 str이므로, 'total number of sth'의 집계 함수는 SUM이 아닌 COUNT 사용
- ✔︎ note 안내에 따라, table 내에 duplicate record가 있을 수 있으므로 COUNT DISTINCT를 적용해 중복 정보 제거
- ✔︎ Manager table 내에 값이 없는 경우(SM2 > X)가 있으므로, INNER JOIN이 아닌 LEFT JOIN 사용
- ✔︎ GROUP BY의 SELECT 절에는 그룹을 묶는 기준 컬럼과 다른 컬럼의 집계 함수만 기재 가능
- ✔︎ company_code와 1:1 관계의 founder는 GROUP BY 연산에 사용되진 않으나, output 출력을 위한 정보이므로 SELECT 절에 기재
##
#### ► [03_test_220929]
- [O] Population Density Difference - https://www.hackerrank.com/challenges/population-density-difference/problem
####
- [O] Weather Observation Station 11 - https://www.hackerrank.com/challenges/weather-observation-station-11/problem
- ✔︎ 'LEFT(컬럼, 1) & RIGHT(컬럼, 1) NOT IN (모음 리스트)'을 사용해 문자열 시작과 끝의 모음 시작 여부 판별
####
- [O] Weather Observation Station 13 - https://www.hackerrank.com/challenges/weather-observation-station-13/problem
- ✔︎ 'greater than' & 'less than'은 각각 초과 & 미만을 의미 / LAT_N > 38.7880 AND LAT_N < 137.2345
####
- [✘] Top Competitors - https://www.hackerrank.com/challenges/full-score/problem
- ✔︎ submission table이 기준이므로, 제출되지 않은 challenge가 없음을 고려해 LEFT JOIN이 아닌 INNER JOIN 사용
- ✔︎ sample 안내에 따라, WHERE 절의 full score 기준은 score를 초과하는 것이 아닌 동일한 경우(WHERE S.score = D.score)임을 확인
- ✔︎ hacker_id와 1:1 관계의 name은 GROUP BY 연산에 사용되진 않으나, output 출력을 위한 정보이므로 SELECT 절에 기재
## 
#### ► [04_test_220930]
- [O] Weather Observation Station 3 - https://www.hackerrank.com/challenges/weather-observation-station-3/problem
- ✔︎ 'even ID number' 짝수 여부는 MOD()함수를 통해 값을 2로 나누어 나머지가 0인 경우로 판별
####
- [O] Weather Observation Station 19 - https://www.hackerrank.com/challenges/weather-observation-station-19/problem
- ✔︎ POW & POWER(컬럼 or 값, n) n제곱 반환 / SQRT(컬럼 or 값) 제곱근 반환 / TRUNCATE(컬럼 or 값, n) 소수점 이후 n자릿수 외 버림 함수 사용
####
- [✘] Placements - https://www.hackerrank.com/challenges/placements/problem
- ✔︎ JOIN 기준 컬럼에 따라 output이 바뀔 수 있음에 주의 / 'P1.ID = F.Friend_ID' 기준 JOIN 시, P1 ID에 Friend_ID 순서가 맞춰져 오답 출력
- ✔︎ JOIN table를 복수로 사용할 경우, alias를 상이하게 설정해 사용 가능
####
- [✘] Binary Tree Nodes - https://www.hackerrank.com/challenges/binary-search-tree-1/problem
- ✔︎ 2개 이상의 컬럼 내에 중복 여부를 확인해야 할 경우, 동일한 JOIN 컬럼 값이 없을 경우 NULL로 대체하는 LEFT JOIN으로 확인 가능
- ✔︎ Root - 부모 node가 없을 경우 / Leaf - 자식 node가 없을 경우 = 부모 node가 아닐 경우(부모 node 컬럼에 없을 경우) / Inner - 기타
- ✔︎ LEFT JOIN 시, B1 table의 자식 node가 동일한 B2 table의 부모 node 컬럼에 없으면 Leaf로 판단 / LEFT JOIN BST B2 ON B1.N = B2.P
####
