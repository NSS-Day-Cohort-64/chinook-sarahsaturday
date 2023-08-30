SELECT
    e.FirstName || ' ' || e.LastName AS TopSalesAgent,
    SUM(i.Total) AS TotalSales
FROM
    Employee e
JOIN
    Customer c ON e.EmployeeId = c.SupportRepId
JOIN
    Invoice i ON c.CustomerId = i.CustomerId
WHERE
    e.Title = 'Sales Support Agent'
GROUP BY
    e.EmployeeId, TopSalesAgent
ORDER BY
    TotalSales DESC
LIMIT 1;
