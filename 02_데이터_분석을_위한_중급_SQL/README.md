####  
## 01. 데이터 분석을 위한 중급 SQL  
#### ► [01_count_sum_avg_min_max_220925]  
- 집계 함수 COUNT / SUM / AVG / MIN / MAX 활용 실습  
- SELECT COUNT(Name) : NULL 값이 있을 경우, NULL을 제외한 값 출력  
- SELECT COUNT(DISTINCT Name) : 중복 값이 있을 경우, 중복을 제외한 값 출력  
- SELECT AVG(Name) : NULL 값이 있을 경우, NULL을 제외한 평균값 출력  
- SELECT SUM(Name) / COUNT(*) : NULL을 0으로 처리하여 NULL이 포함된 평균값 출력  
- HackerRank 6문제 풀이 진행  
- Q1. Averages) https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem  
- Q2. The Sum Function) https://www.hackerrank.com/challenges/revising-aggregations-sum/problem  
- Q3. The Count Function) https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem  
- Q4. Average Population) https://www.hackerrank.com/challenges/average-population/problem  
- Q5. Population Density Difference) https://www.hackerrank.com/challenges/population-density-difference/problem  
- Q6. Weather Observation Station 4) https://www.hackerrank.com/challenges/weather-observation-station-4/problem  
##  
#### ► [02_group_by_220926]  
- GROUP BY 활용 실습 및 HackerRank 1문제 풀이 진행   
- Q. Top Earners) https://www.hackerrank.com/challenges/earnings-of-employees/problem  
- ✔︎ SELECT 절에 alias 설정할 경우, alias를 사용해 다른 절에서 호출이 가능한 점 확인  
##  
#### ► [03_case_01_220926]  
- CASE 활용 실습 및 HackerRank 1문제 풀이 진행  
- Q. Type of Triangle) https://www.hackerrank.com/challenges/what-type-of-triangle/problem
- ✔︎ SQL에서 두 개 이상의 조건 나열 시, AND 또는 OR의 연산자를 이용해 연결 필요 / A = B = C 연결 불가
- ✔︎ WHEN 조건 나열 시, 정삼각형은 이등변삼각형 조건에 중첩되므로 '정삼각형 > 이등변삼각형' 순으로 나열 필요 
- ✔︎ 두 변의 길이가 같더라도 두 변의 합이 한 변의 합보다 같거나 작을 시 삼각형이 될 수 없으므로 '불가 조건 > 이등변삼각형' 순으로 나열 필요
####  
