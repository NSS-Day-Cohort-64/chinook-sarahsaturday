SELECT
    e.FirstName || ' ' || e.LastName AS EmployeeFullName,
    COUNT(c.CustomerId) AS TotalCustomers
FROM
    Employee e
LEFT JOIN
    Customer c ON e.EmployeeId = c.SupportRepId
GROUP BY
    e.EmployeeId, EmployeeFullName
ORDER BY
    EmployeeFullName;
