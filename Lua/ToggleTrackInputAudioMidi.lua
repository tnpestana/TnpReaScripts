selected_tracks = reaper.CountSelectedTracks(0)
for i = 0, selected_tracks - 1 do
	track = reaper.GetSelectedTrack(0, i)
	if reaper.GetMediaTrackInfo_Value(track, "I_RECINPUT") == 4096 then
		reaper.SetMediaTrackInfo_Value(track, "I_RECINPUT", 1024)
	else
		reaper.SetMediaTrackInfo_Value(track, "I_RECINPUT", 4096)
	end
end
