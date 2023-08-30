SELECT
    e.FirstName || ' ' || e.LastName AS EmployeeFullName,
    SUM(i.Total) AS TotalSalesInDollars
FROM
    Employee e
JOIN
    Customer c ON e.EmployeeId = c.SupportRepId
JOIN
    Invoice i ON c.CustomerId = i.CustomerId
WHERE
    e.Title = 'Sales Support Agent'
GROUP BY
    e.EmployeeId, EmployeeFullName
ORDER BY
    EmployeeFullName;


SELECT
    e.FirstName || ' ' || e.LastName AS EmployeeFullName,
    COUNT(DISTINCT i.InvoiceId) AS TotalNumberOfSales
FROM
    Employee e
JOIN
    Customer c ON e.EmployeeId = c.SupportRepId
JOIN
    Invoice i ON c.CustomerId = i.CustomerId
WHERE
    e.Title = 'Sales Support Agent'
GROUP BY
    e.EmployeeId, EmployeeFullName
ORDER BY
    EmployeeFullName;