function onEndSong()
	if not allowEnd and not seenCutscene then
		startVideo('power-ups-cutscene');
		allowEnd = false;
		return Function_Stop;
	end
	return Function_Continue;
end
