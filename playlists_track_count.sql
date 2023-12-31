SELECT
    p.Name AS PlaylistName,
    COUNT(pt.TrackId) AS TotalTracks
FROM
    Playlist p
JOIN
    PlaylistTrack pt ON p.PlaylistId = pt.PlaylistId
GROUP BY
    p.PlaylistId, p.Name
ORDER BY
    PlaylistName;