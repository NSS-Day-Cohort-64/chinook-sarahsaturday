SELECT
    EmployeeID,
    FirstName || ' ' || LastName AS FullName,
    Title
FROM
    employee
WHERE
    Title LIKE '%Sales%' AND Title LIKE '%Agent%'
