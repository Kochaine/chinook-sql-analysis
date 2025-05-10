-- Which employee manages the most customers
SELECT e.LastName, e.FirstName, COUNT(c.CustomerId) AS numofcustomers
FROM employee AS e 
JOIN customer AS c ON e.EmployeeId = c.SupportRepId 
GROUP BY e.EmployeeId 
ORDER BY numofcustomers DESC;
