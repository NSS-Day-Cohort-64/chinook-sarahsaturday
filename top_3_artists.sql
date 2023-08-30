SELECT
    ar.ArtistId,
    ar.Name AS ArtistName,
    SUM(il.Quantity) AS TotalQuantity
FROM
    InvoiceLine il
JOIN
    Track t ON il.TrackId = t.TrackId
JOIN
    Album al ON t.AlbumId = al.AlbumId
JOIN
    Artist ar ON al.ArtistId = ar.ArtistId
GROUP BY
    ar.ArtistId, ArtistName
ORDER BY
    TotalQuantity DESC
LIMIT 3;
