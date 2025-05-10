-- Top 5 customers by spending
SELECT c.FirstName, c.LastName, SUM(i.Total) AS total_spent
FROM customer AS c 
JOIN invoice AS i ON c.CustomerId = i.CustomerId 
GROUP BY c.CustomerId
ORDER BY total_spent DESC 
LIMIT 5;

-- Top countries by number of customers
SELECT Country, COUNT(*) AS num_0f_customers 
FROM customer 
GROUP BY Country 
ORDER BY num_0f_customers DESC
LIMIT 10;
