#What is the total profit we made?
SELECT SUM(PROFIT) AS TOTAL_PROFIT
FROM SalesTable;

# 2) What is the total cost we incurred for these 03 countries "Cameroon","USA","Togo"?
SELECT CustomerCountry, SUM(cost) AS TOTAL_COUNTRY_COST
FROM CustomerTable
JOIN SalesTable ON CustomerTable.CustomerCode = SalesTable.CustomerCode
WHERE CustomerCountry = 'Cameroon'or CustomerCountry = 'USA' or customerCountry = 'Togo'
GROUP BY CustomerCountry
ORDER BY TOTAL_COUNTRY_COST DESC;

# 3) What is the total profit we made per country?

SELECT CustomerCountry, SUM(Profit) AS TOTAL_COUNTRY_PROFIT
FROM CustomerTable
JOIN SalesTable ON CustomerTable.CustomerCode = SalesTable.CustomerCode
GROUP BY CustomerCountry
ORDER BY CustomerCountry DESC;

# 4) What is the average profit we made per country?
SELECT CustomerCountry, AVG(Profit) AS AVERAGE_COUNTRY_PROFIT
FROM CustomerTable
JOIN SalesTable ON CustomerTable.CustomerCode = SalesTable.CustomerCode
GROUP BY CustomerCountry
ORDER BY Average_Country_Profit;

# 5) What is the total revenue per Staff?
SELECT  StaffName , SUM(REVENUE) AS Total_Revenue_Per_Staff
FROM SalesTable
JOIN staffTable ON SalesTable.StaffCode = StaffTable.matriculeNo
GROUP BY StaffName
ORDER BY Total_Revenue_Per_Staff DESC; 



# 7) What is the total profit made per country by the following staff "Emelda","Anita","Cynthia"?
SELECT StaffName,CustomerCountry,  SUM(Profit) AS TOTAL_COUNTRY_PROFIT
FROM CustomerTable
JOIN SalesTable ON CustomerTable.CustomerCode = SalesTable.CustomerCode
JOIN staffTable ON SalesTable.StaffCode = StaffTable.matriculeNo
WHERE StaffName = 'Emelda'OR StaffName = 'Anita' OR StaffName= 'Cynthia'
GROUP BY CustomerCountry, StaffName
ORDER BY StaffName DESC




