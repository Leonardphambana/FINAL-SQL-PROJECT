#How many customers are from Cameroon?

#SELECT * FROM company_ltd.customertable;


SELECT COUNT(CustomerCode) AS CUSTOMERS_FROM_CAMEROON
FROM customertable
WHERE CustomerCountry = 'Cameroon'
