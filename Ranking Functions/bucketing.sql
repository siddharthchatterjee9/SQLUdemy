---- BUCKETING ----
SELECT Marks, 
ROW_NUMBER()
OVER (ORDER BY Marks) AS 'ROW NUMBER',
RANK() OVER (ORDER BY Marks) AS 'RANK',
DENSE_RANK() OVER (ORDER BY Marks) AS 'DENSE RANK',
NTILE(5) OVER (ORDER BY Marks) AS 'NTILE'
FROM Persons
WHERE Marks IN (7, 8, 9, 10)