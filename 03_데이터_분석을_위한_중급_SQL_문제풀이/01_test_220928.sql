/* Big Countries -
A country is big if:
- it has an area of at least three million (i.e., 3000000 km2), or
- it has a population of at least twenty-five million (i.e., 25000000).
Write an SQL query to report the name, population, and area of the big countries.
Return the result table in any order. */
SELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000;

/* Not Boring Movies - 
Write an SQL query to report the movies with an odd-numbered ID and a description that is not "boring".
Return the result table ordered by rating in descending order. */
SELECT *
FROM Cinema
WHERE MOD(id, 2) = 1 AND description <> 'boring'
ORDER BY rating DESC;

/* Duplicate Emails -
Write an SQL query to report all the duplicate emails.
Return the result table in any order. */
SELECT email
FROM Person
GROUP BY email
HAVING count(*) >= 2;

/* Combine Two Tables -
Write an SQL query to report the first name, last name, city, and state of each person in the Person table. 
If the address of a personId is not present in the Address table, report null instead.
Return the result table in any order. */
SELECT firstName, lastName, city, state
FROM Person a
LEFT JOIN Address b ON a.personId = b.personId;
