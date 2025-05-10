-- Total Revenue
SELECT SUM(Total) AS total_revenue 
FROM invoice;

-- Countries that generate most revenue
SELECT BillingCountry, ROUND(SUM(Total),0) AS total_revenue 
FROM invoice
GROUP BY BillingCountry 
ORDER BY total_revenue DESC 
LIMIT 3;

-- Monthly revenue trend
SELECT DATE_FORMAT(InvoiceDate, '%Y-%m') AS month, ROUND(SUM(Total),0) AS total_revenue
FROM invoice 
GROUP BY month 
ORDER BY month;
