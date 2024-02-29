# Project Zomboid - Custom Menu Music Mod

![Custom Menu Music Mod](https://i.imgur.com/tizPyq0.jpeg)

## Description

This mod allows you to replace the default menu music in Project Zomboid with your own preferred track, whether you want a more immersive ambiance or just a change of pace.

## Installation

1. Download or clone this repository.
2. Place the mod folder into the `Workshop` folder of your Project Zomboid folder. Usually located in `%USERPROFILE%\Zomboid` .
3. Place your track inside `ZomboidMenuSongReplacer\Contents\mods\ZomboidMenuSongReplacer\media\sound` name it `Song_Name_Here.ogg` .
4. (Optional) Customize your track name in `ZomboidMenuSongReplacer\Contents\mods\ZomboidMenuSongReplacer\media\lua\client\ZomboidMenuSongReplacer.lua`.  Shown below in Usage.
5. Launch the game and enable the mod in the mod menu.
6. Once the mod is enabled, and the game is restarted, the menu music will be replaced with your specified track.

## Usage

To change the track filename, simply change the `track` variable in the code to set your preferred song.

```lua
local IntroSong = {
-- ... other settings ...
track = "Song_Name_Here",  -- Replace with your desired music file
-- ... other settings ...
}
```

For a step-by-step guide on how to use this mod, check out Unconid's helpful video tutorial: [Main Menu Mod - Project Zomboid Tutorial
](https://www.youtube.com/watch?v=a7LOA6W-R7A).

## Credits

Originally developed for Unconid's [Project Zomboid Workshop Mod](https://steamcommunity.com/sharedfiles/filedetails/?id=3124189338).
