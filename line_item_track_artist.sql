SELECT
    il.InvoiceLineId,
    t.Name AS TrackName,
    ar.Name AS ArtistName
FROM
    InvoiceLine il
JOIN
    Track t ON il.TrackId = t.TrackId
JOIN
    Album al ON t.AlbumId = al.AlbumId
JOIN
    Artist ar ON al.ArtistId = ar.ArtistId
ORDER BY
    il.InvoiceLineId;