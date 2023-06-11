#What is the average age of customers per country?

SELECT CustomerCountry, AVG(AGE) AS AVERAGE_AGE
FROM CustomerTable
GROUP BY CustomerCountry