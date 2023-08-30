SELECT
    t.TrackId,
    t.Name AS TrackName,
    SUM(il.Quantity) AS TotalQuantity
FROM
    Invoice i
JOIN
    InvoiceLine il ON i.InvoiceId = il.InvoiceId
JOIN
    Track t ON il.TrackId = t.TrackId
WHERE
    i.InvoiceDate BETWEEN '2013-01-01' AND '2013-12-31'
GROUP BY
    t.TrackId, TrackName
ORDER BY
    TotalQuantity DESC
