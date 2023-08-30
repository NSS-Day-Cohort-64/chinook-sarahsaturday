SELECT
    e.FirstName || ' ' || e.LastName AS TopSalesAgent,
    MAX(s.TotalSales) AS HighestTotalSalesAmount
FROM
    Employee e
JOIN (
    SELECT
        c.SupportRepId AS AgentId,
        SUM(i.Total) AS TotalSales
    FROM
        Customer c
    JOIN
        Invoice i ON c.CustomerId = i.CustomerId
    WHERE
        i.InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31'
    GROUP BY
        c.SupportRepId
) s ON e.EmployeeId = s.AgentId
WHERE
    e.Title = 'Sales Support Agent';

SELECT
    e.FirstName || ' ' || e.LastName AS TopInvoicesAgent,
    MAX(s.TotalInvoices) AS HighestNumberOfSales
FROM
    Employee e
JOIN (
    SELECT
        c.SupportRepId AS AgentId,
        COUNT(i.InvoiceId) AS TotalInvoices
    FROM
        Customer c
    JOIN
        Invoice i ON c.CustomerId = i.CustomerId
    WHERE
        i.InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31'
    GROUP BY
        c.SupportRepId
) s ON e.EmployeeId = s.AgentId
WHERE
    e.Title = 'Sales Support Agent';
