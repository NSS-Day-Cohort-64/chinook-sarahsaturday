SELECT
    CustomerID,
    FirstName || ' ' || LastName AS FullName,
    Country
FROM
    customer
WHERE
    Country = 'Brazil'