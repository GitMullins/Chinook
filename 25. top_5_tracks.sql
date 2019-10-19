--top_5_tracks.sql:

--Provide a query that shows the top 5 most purchased songs.

select top 5 (il.TrackId),
			t.[Name] as TrackName,
		sum(il.Quantity) as Top5
	from InvoiceLine il
	inner join Invoice i on il.InvoiceId = il.InvoiceId
	inner join Track t on il.TrackId = t.TrackId
	group by il.TrackId, t.[Name]
	order by Top5 desc
