####  
## 02. 데이터 분석을 위한 중급 SQL  
#### ► [01_count_sum_avg_min_max_220925]  
- 집계 함수 COUNT / SUM / AVG / MIN / MAX 활용 실습  
- SELECT COUNT(Name) : NULL 값이 있을 경우, NULL을 제외한 값 출력  
- SELECT COUNT(DISTINCT Name) : 중복 값이 있을 경우, 중복을 제외한 값 출력  
- SELECT AVG(Name) : NULL 값이 있을 경우, NULL을 제외한 평균값 출력  
- SELECT SUM(Name) / COUNT(*) : NULL을 0으로 처리하여 NULL이 포함된 평균값 출력  
- HackerRank 문제 풀이 진행  
- Q1. Averages) https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem  
- Q2. The Sum Function) https://www.hackerrank.com/challenges/revising-aggregations-sum/problem  
- Q3. The Count Function) https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem  
- Q4. Average Population) https://www.hackerrank.com/challenges/average-population/problem  
- Q5. Population Density Difference) https://www.hackerrank.com/challenges/population-density-difference/problem  
- Q6. Weather Observation Station 4) https://www.hackerrank.com/challenges/weather-observation-station-4/problem  
##  
#### ► [02_group_by_220926]  
- GROUP BY 활용 실습 및 HackerRank 문제 풀이 진행   
- Q. Top Earners) https://www.hackerrank.com/challenges/earnings-of-employees/problem  
- ✔︎ SELECT 절에 alias 설정할 경우, alias를 사용해 다른 절에서 호출이 가능한 점 확인  
##  
#### ► [03_case_220926]  
- CASE 활용 실습 및 HackerRank / LeetCode 문제 풀이 진행  
- Q1. Type of Triangle) https://www.hackerrank.com/challenges/what-type-of-triangle/problem  
- ✔︎ SQL에서 두 개 이상의 조건 나열 시, AND 또는 OR의 연산자를 이용해 연결 필요 / A = B = C 연결 불가  
- ✔︎ WHEN 조건 나열 시, 정삼각형은 이등변삼각형 조건에 중첩되므로 '정삼각형 > 이등변삼각형' 순으로 나열 필요  
- ✔︎ 두 변의 길이가 같더라도 두 변의 합이 한 변의 합보다 같거나 작을 시 삼각형이 될 수 없으므로 '불가 조건 > 이등변삼각형' 순으로 나열 필요  
- Q2. 1179. Reformat Department Table) https://leetcode.com/problems/reformat-department-table/  
- ✔︎ CASE를 통한 생성한 pivot table에 GROUP BY 적용 확인  
<img width="718" alt="image" src="https://user-images.githubusercontent.com/109773795/192389358-8c1b9604-59cb-4d1c-89ba-090cefcdc947.png">  

##  
#### ► [04_inner_join_220927]  
- INNER JOIN 활용 실습 및 HackerRank 문제 풀이 진행  
- Q1. African Cities) https://www.hackerrank.com/challenges/african-cities/problem  
- Q2. Population Census) https://www.hackerrank.com/challenges/asian-population/problem  
- Q3. Average Population) https://www.hackerrank.com/challenges/average-population-of-each-continent/problem  
####  
#### ► [05_left_join_220927]  
- LEFT JOIN 활용 실습 및 LeetCode 문제 풀이 진행  
- Q. 183. Customers Who Never Order) https://leetcode.com/problems/customers-who-never-order/  
<img width="180" alt="image" src="https://user-images.githubusercontent.com/109773795/192438504-478244e2-f1ef-4183-8a36-c2d5fa6215c2.png">  

####  
#### ► [06_self_join_220928]  
- SELF JOIN LeetCode 문제 풀이 진행  
- Q1. 181. Employees Earning) https://leetcode.com/problems/employees-earning-more-than-their-managers/  
<img width="614" alt="image" src="https://user-images.githubusercontent.com/109773795/192577367-0c085221-9dc5-4c40-a1df-06bf71348b61.png">  

- Q2. 197. Rising Temperature) https://leetcode.com/problems/rising-temperature/  
- ✔︎ SELF JOIN의 경우, 1개의 table을 중복으로 사용하는 것이므로 alias를 설정해 정보 확인 필요  
<img width="614" alt="image" src="https://user-images.githubusercontent.com/109773795/192577577-85d16595-a9bc-49ad-ad07-5ecd862d1138.png">  

##  
#### ► [07_union_220928]  
- 좌우로 데이터를 연결하는 JOIN 외, 상하로 데이터를 연결하는 UNION(DISTINCT) / UNION ALL 실습 및 HackerRank 문제 풀이 진행  
- Q. Symmetric Pairs) https://www.hackerrank.com/challenges/symmetric-pairs/problem  
- ✔︎ X와 Y가 같은 symmetric pair(20, 20)와 X와 Y가 다른 symmetric pair(21, 22)를 별도 구한 뒤, UNION 진행
####  
