#What are the First names and Last names of customers who come from Togo and USA?

SELECT CustomerFirstName, CustomerLastName, CustomerCountry
FROM CustomerTable
WHERE CustomerCountry = 'Togo' OR CustomerCountry = 'USA'