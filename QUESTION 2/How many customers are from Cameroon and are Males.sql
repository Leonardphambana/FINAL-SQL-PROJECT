#How many customers are from Cameroon and are Males?

SELECT COUNT(CustomerCode)
FROM Customertable
WHERE CustomerCountry = 'Cameroon' AND CustomerSex = 'Male';
