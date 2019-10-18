--line_item_track_artist.sql:
--Provide a query that includes the purchased track name AND artist name with each invoice line item.

select i.InvoiceId as LineId,
	t.[Name] as SongName,
	t.Composer as Artist
from Track t
	inner join InvoiceLine i
	on t.TrackId = i.TrackId