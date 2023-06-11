#What is the Average age of Peter and Nina?

SELECT AVG(age) AS average_age
FROM Stafftable
WHERE staffname IN ('Peter', 'Nina')
        