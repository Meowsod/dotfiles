function is_dvd_source(path)
	return string.match(path, "%.[iI][sS][oO]$") or
		string.match(path, "VIDEO_TS")
end

mp.register_event('file-loaded', function()
	local path = mp.get_property("stream-open-filename", "")
	if is_dvd_source(path) then
		mp.set_property('dvd-device', path)
		mp.commandv('loadfile', 'dvd://')
		print("DVD stream detected, using dvd-device.")
	end
end)
