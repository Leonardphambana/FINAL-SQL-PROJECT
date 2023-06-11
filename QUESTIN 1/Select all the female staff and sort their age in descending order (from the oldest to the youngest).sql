#4.) Select all the female staff and sort their age in descending order (from the oldest to the youngest)

SELECT *
 FROM STAFFTABLE
 WHERE STAFFSEX= 'FEMALE'
 ORDER BY AGE DESC
