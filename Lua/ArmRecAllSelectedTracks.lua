selected_tracks = reaper.CountSelectedTracks(0)
for i = 0, selected_tracks - 1 do
	track = reaper.GetSelectedTrack(0, i)
	if reaper.GetMediaTrackInfo_Value(track, "I_RECARM") == 0 then
		reaper.SetMediaTrackInfo_Value(track, "I_RECARM", 1)
	end
end