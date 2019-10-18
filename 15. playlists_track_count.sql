--playlists_track_count.sql:

--Provide a query that shows the total number of 
--tracks in each playlist. The Playlist name should be 
--include on the resulant table.

select count(pt.TrackId) as TotalTracks,
	p.Name as PlaylistName
from Playlist p
	inner join PlaylistTrack pt
	on p.PlaylistId = pt.PlaylistId
	group by p.Name