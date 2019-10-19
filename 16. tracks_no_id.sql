--tracks_no_id.sql:

--Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

select t.[Name],
	a.Title as AlbumName,
	m.[Name] as MediaType,
	g.[Name] as Genre
from Track t
	inner join Album a
	on a.AlbumId = t.AlbumId
	inner join MediaType m
	on t.MediaTypeId = m.MediaTypeId
	inner join Genre g
	on g.GenreId = t.GenreId