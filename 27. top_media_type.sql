--top_media_type.sql:

--Provide a query that shows the most purchased Media Type.

select top 1 m.[Name],
		count(t.MediaTypeId) as MostPopular
	from MediaType m
	inner join Track t on m.MediaTypeId = t.MediaTypeId
	inner join InvoiceLine il on il.TrackId = il.TrackId
	group by m.Name
	order by MostPopular desc
