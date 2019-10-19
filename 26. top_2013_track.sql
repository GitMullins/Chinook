--top_2013_track.sql: 

--Provide a query that shows the most purchased track of 2013.

select distinct top 3 t.Composer,
		sum(il.Quantity) as TracksSold
	from InvoiceLine il
	inner join Track t on il.TrackId = t.TrackId
	group by il.TrackId, t.Composer
	order by TracksSold desc