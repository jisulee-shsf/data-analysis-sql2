####
## 02. 데이터 분석을 위한 중급 SQL
#### ► [01_count_sum_avg_min_max_220925]
- 집계 함수 COUNT / SUM / AVG / MIN / MAX 활용 실습 및 HackerRank 문제풀이 진행
- Averages - https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem
- The Sum Function - https://www.hackerrank.com/challenges/revising-aggregations-sum/problem
- The Count Function - https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem
- Average Population - https://www.hackerrank.com/challenges/average-population/problem
- Population Density Difference - https://www.hackerrank.com/challenges/population-density-difference/problem
- Weather Observation Station 4 - https://www.hackerrank.com/challenges/weather-observation-station-4/problem
####
- ✔︎ SELECT COUNT(Name) - NULL 값이 있을 경우, NULL을 제외한 값 출력
- ✔︎ SELECT COUNT(DISTINCT Name) - 중복 값이 있을 경우, 중복을 제외한 값 출력
- ✔︎ SELECT AVG(Name) - NULL 값이 있을 경우, NULL을 제외한 평균값 출력
- ✔︎ SELECT SUM(Name) / COUNT(*) - NULL을 0으로 처리하여 NULL이 포함된 평균값 출력
##
#### ► [02_group_by_220926]
- GROUP BY 활용 실습 및 HackerRank 문제풀이 진행
- Top Earners - https://www.hackerrank.com/challenges/earnings-of-employees/problem
####
- ✔︎ SELECT 절에 alias 설정할 경우, alias를 사용해 다른 절에서 호출이 가능한 점 확인
##
#### ► [03_case_220926]
- CASE 활용 실습 및 HackerRank & LeetCode 문제풀이 진행
- Type of Triangle - https://www.hackerrank.com/challenges/what-type-of-triangle/problem
- Reformat Department Table - https://leetcode.com/problems/reformat-department-table/
####
- ✔︎ SQL에서 두 개 이상의 조건 나열 시, AND 또는 OR의 연산자를 이용해 연결 필요 / A = B = C 연결 불가
- ✔︎ WHEN 조건 나열 시, 정삼각형은 이등변삼각형 조건에 중첩되므로 '정삼각형 → 이등변삼각형' 순으로 나열 필요
- ✔︎ 두 변의 길이가 같더라도 두 변의 합이 한 변의 합보다 같거나 작을 시 삼각형이 될 수 없으므로 '불가 조건 → 이등변삼각형' 순으로 나열 필요
- ✔︎ CASE를 통한 생성한 pivot table에 GROUP BY 적용 확인
##
#### ► [04_inner_join_220927]
- INNER JOIN 활용 실습 및 HackerRank 문제풀이 진행
- African Cities - https://www.hackerrank.com/challenges/african-cities/problem
- Population Census - https://www.hackerrank.com/challenges/asian-population/problem
- Average Population - https://www.hackerrank.com/challenges/average-population-of-each-continent/problem
####
#### ► [05_left_join_220927]
- LEFT JOIN 활용 실습 및 LeetCode 문제풀이 진행
- Customers Who Never Order - https://leetcode.com/problems/customers-who-never-order/
####
#### ► [06_self_join_220928]
- SELF JOIN 활용 실습 및 LeetCode 문제풀이 진행
- Employees Earning - https://leetcode.com/problems/employees-earning-more-than-their-managers/
- Rising Temperature - https://leetcode.com/problems/rising-temperature/ 
####
- ✔︎ SELF JOIN의 경우, 1개의 table을 중복으로 사용하는 것이므로 alias를 설정해 정보 확인 필요
##
#### ► [07_union_220928]
- 좌우로 데이터를 연결하는 JOIN 외, 상하로 데이터를 연결하는 UNION(DISTINCT) & UNION ALL 실습 및 HackerRank 문제풀이 진행
- Symmetric Pairs - https://www.hackerrank.com/challenges/symmetric-pairs/problem
####
- ✔︎ X와 Y가 같은 symmetric pair(20, 20)와 X와 Y가 다른 symmetric pair(21, 22)를 별도 구한 뒤, UNION 진행
####
