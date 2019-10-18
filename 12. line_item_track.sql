--line_item_track.sql: 

--Provide a query that includes the purchased track name 
--with each invoice line item.

select i.InvoiceLineId as LineId,
	t.[Name] as SongName
from Track t
	inner join InvoiceLine i
	on i.TrackId = t.TrackId
