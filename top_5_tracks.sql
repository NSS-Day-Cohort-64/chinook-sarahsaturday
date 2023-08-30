SELECT
    t.TrackId,
    t.Name AS TrackName,
    SUM(il.Quantity) AS TotalQuantity
FROM
    InvoiceLine il
JOIN
    Track t ON il.TrackId = t.TrackId
GROUP BY
    t.TrackId, TrackName
ORDER BY
    TotalQuantity DESC
LIMIT 5;
