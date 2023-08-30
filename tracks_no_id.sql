SELECT
    al.Title AS AlbumName,
    mt.Name AS MediaType,
    g.Name AS Genre
FROM
    Track t
JOIN
    Album al ON t.AlbumId = al.AlbumId
JOIN
    MediaType mt ON t.MediaTypeId = mt.MediaTypeId
JOIN
    Genre g ON t.GenreId = g.GenreId;
