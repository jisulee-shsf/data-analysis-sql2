/* Q1. 181. Employees Earning More Than Their Managers)
Write an SQL query to find the employees who earn more than their managers.
Return the result table in any order. */
SELECT a.name AS Employee
FROM Employee a
     INNER JOIN Employee b ON a.managerId = b.id
WHERE a.salary > b.salary;

/* Q2. 197. Rising Temperature)
Write an SQL query to find all dates' Id with higher temperatures compared to its previous dates (yesterday).
Return the result table in any order. */
SELECT today.id
FROM Weather today
     INNER JOIN Weather yesterday ON DATE_ADD(yesterday.recordDate, INTERVAL 1 DAY) = today.recordDate
WHERE today.temperature > yesterday.temperature;

/*
SELECT today.id AS today_id
     , today.recordDate AS today_recordDate
     , today.temperature AS today_temperature
     , yesterday.id AS yesterday_id
     , yesterday.recordDate AS yesterday_recordDate 
     , yesterday.temperature AS yesterday_temperature
FROM Weather today
     INNER JOIN Weather yesterday ON DATE_ADD(yesterday.recordDate, INTERVAL 1 DAY) = today.recordDate
WHERE today.temperature > yesterday.temperature

["today_id", "today_recordDate", "today_temperature", "yesterday_id", "yesterday_recordDate", "yesterday_temperature"]
[2, "2015-01-02", 25, 1, "2015-01-01", 10]
[4, "2015-01-04", 30, 3, "2015-01-03", 20]
*/
