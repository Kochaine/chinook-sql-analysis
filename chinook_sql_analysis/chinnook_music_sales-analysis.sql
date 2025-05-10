-- Top 5 selling genres
SELECT g.`Name` AS genre, COUNT(*) AS tracksold
FROM invoiceline AS ii
JOIN track AS t ON ii.TrackId = t.TrackId 
JOIN genre AS g ON t.GenreId = g.GenreId 
GROUP BY g.`Name` 
ORDER BY tracksold DESC 
LIMIT 5;

-- Top 7 best-selling artists
SELECT ar.`Name` AS artist, COUNT(*) AS tracksold
FROM invoiceline AS ii 
JOIN track AS t ON ii.TrackId = t.TrackId 
JOIN album AS al ON t.AlbumId = al.AlbumId 
JOIN artist AS ar ON al.ArtistId = ar.ArtistId
GROUP BY ar.`Name`
ORDER BY tracksold DESC 
LIMIT 7;

-- Top 5 most expensive tracks
SELECT `Name` AS TrackName, UnitPrice 
FROM track 
ORDER BY UnitPrice DESC 
LIMIT 5;

-- Tracks by media type
SELECT mt.`Name`, COUNT(t.MediaTypeId) AS numoftracks
FROM mediatype AS mt
JOIN track AS t ON mt.MediaTypeId = t.MediaTypeId 
GROUP BY mt.`Name`
ORDER BY numoftracks;

-- Albums with most tracks
SELECT al.Title AS albumTitle, ar.`Name` AS ArtistName, COUNT(TrackId) AS NumberofTracks 
FROM album AS al 
JOIN artist AS ar ON al.ArtistId = ar.ArtistId 
JOIN track AS t ON al.AlbumId = t.AlbumId 
GROUP BY al.AlbumId 
ORDER BY NumberofTracks DESC;
