--top_2013_track.sql: 

--Provide a query that shows the most purchased track of 2013.

select top 1 (il.TrackId),
		sum(il.Quantity) as TopTrack2013
	from InvoiceLine il
	inner join Invoice i on il.InvoiceId = il.InvoiceId
	where i.InvoiceDate between '1/1/2013' and '12/31/2013'
	group by il.TrackId
	order by TopTrack2013 desc