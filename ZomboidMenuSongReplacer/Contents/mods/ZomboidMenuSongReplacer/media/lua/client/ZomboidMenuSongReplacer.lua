-- Define a table to hold information
local introSong = {
	currentSong = 0, -- Information about current song
	tick = 0, -- A counter for ticks
	volume = nil, -- Variable to store the music volume
	track = "Song_Name_Here", -- The name of the song track
	songEmitter = FMODSoundEmitter:new(), -- Object for playing FMOD sounds
	originalSoundManager = getSoundManager() -- Get the original sound manager
}
-- Function called on each menu tick
local function onGameTick()
	introSong.songEmitter:tick() -- Update the song emitter
	introSong.songEmitter:setVolume(introSong.currentSong, 1.0) -- Set the volume of the custom track to maximum
	introSong.originalSoundManager:setMusicVolume(0.0) -- Mute the sound manager
	introSong.tick = introSong.tick + 1 -- Increment the tick counter
	-- Check if it's time to stop the original sound manager and/or repeat the song
	if introSong.tick == 10 or (introSong.tick >= 11 and not introSong.songEmitter:isPlaying(introSong.currentSong)) then
		introSong.originalSoundManager:stop() -- Stop the original sound manager
		introSong.currentSong = introSong.songEmitter:playSound(introSong.track) -- Play the specified track
	end
end
-- Function called on world initialization
local function onWorldInit()
	introSong.songEmitter:stopSoundByName(introSong.track)	-- Stop the intro song
	introSong.tick = 0	-- Reset the tick counter
end
Events.OnFETick.Add(onGameTick) -- Register the onGameTick function to be called on each menu frame update
Events.OnInitWorld.Add(onWorldInit) -- Register the onWorldInit function to be called on world initialization