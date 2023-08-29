SELECT
    i.Total AS InvoiceTotal,
    c.FirstName || ' ' || c.LastName AS CustomerName,
    c.Country AS CustomerCountry,
    e.FirstName || ' ' || e.LastName AS SalesAgentFullName
FROM
    invoice i
JOIN
    customer c ON i.CustomerId = c.CustomerId
LEFT JOIN
    employee e ON c.SupportRepId = e.EmployeeId;