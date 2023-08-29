SELECT
    CustomerId,
    FirstName || ' ' || LastName AS FullName,
    Country
FROM
    customer
WHERE
    Country <> 'USA';
