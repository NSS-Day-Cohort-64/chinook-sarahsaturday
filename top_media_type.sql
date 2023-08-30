SELECT
    mt.MediaTypeId,
    mt.Name AS MediaTypeName,
    SUM(il.Quantity) AS TotalQuantity
FROM
    InvoiceLine il
JOIN
    Track t ON il.TrackId = t.TrackId
JOIN
    MediaType mt ON t.MediaTypeId = mt.MediaTypeId
GROUP BY
    mt.MediaTypeId, MediaTypeName
ORDER BY
    TotalQuantity DESC
LIMIT 1;
