# Show the first 5 oldest customers and arrange the list in decreasing order of Age (Oldest to youngest)

SELECT *
FROM CustomerTable
ORDER BY AGE DESC
LIMIT 5;