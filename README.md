# Edopro-build1034
This repository contains the current build of Edopro, with all of its contents, except for pictures for cards.

# Configurations
The configuration file, `system.conf`, found in the main directory, handles most of the configurations available in the game.
Configurations listed as "boolean" accept either 0 for 'disabled' or 1 for 'enabled'.

Name | Description and usage 
------------ | -------------
use_d3d |  directx's usage / boolean
use_vsync |  vsync's usage for more accurate fps capping according to the refresh rate of teh monitor, if set, the max_fps option will be ignored / boolean
max_fps | limits the framerate  / integer, 0=unlimted, 60=default
fullscreen | enables full screen mode / boolean
antialias | makes sharp/pixelated edges softer, but requires more performance (more details in Customization) / integer
errorlog | how script errors are displayed / integer, 0=disabled, 1=in game message, 2=writes to error.log file, 3= both in game messages and error.log
nickname | sets the player name / should be less than 20 characters
gamename | sets the game/room name / should be less than 20 characters
lastdeck | last deck set in Deck Edit OR in duel
textfont | path for the font used for texts and its size / example: *fonts/simhei.ttf 14*
numfont | path for the font used for numbers / example: *fonts/arialbd.ttf*
serverport | port of the last server accessed by the client
lasthost | last IP accessed by the client
automonsterpos | chooses automatically the zones for Monsters / boolean
autospellpos | chooses automatically the zones for Spell/Traps / boolean
randompos | chooses randomly the zones/positions / boolean
autochain | / boolean
waitchain | / boolean
mute_opponent | hides opponent's messages from the chat / boolean
mute_spectators | hides spectators's messages from the chat / boolean
hide_setname  | hides the archetype names for the cards in the card details / boolean
draw_field_spell | applies the art of the current field spell, if any availabe, as the field background / boolean
hide_hint_button | / boolean
quick_animation | animations won't take more than 12 frames to complete (at 60 fps)
show_unoficial | shows the unofficial cards in deck edit, which includes anime, customs, etc / boolean
skin_index | sets the index of the current skin / integer, 0=default
enable_sound | enables sounds effects  / boolean
enable_music | enables background music / boolean
volume | volume of sounds and musics / integer, between 0 and 100


## Shortcuts available in the client

Abbreviation | Corresponding Key
------------ | -------------
LMB | Left Mouse Button
RMB | Right Mouse Button
MMB | Middle Mouse Button

### General:
* ESC: Minimizes the window when full screen
* F11: Toggling Fullscreen Mode
* F12: Captures a screenshot
### Deck Edit:
* RMB: Adds/removes a card from the deck
* MMB: Adds another copy of a card to the deck or side deck
* Shift+RMB or Hold LMB then click RMB: Adds a card to the side deck
### Duel:
* Hold A or Hold LMB: Lets the system stop at every timing.
* Hold S or Hold RMB: Lets the system skip every timing.
* Hold D: Lets the system stop at available timing.
* F1-F4: Shows the cards in your GY, Banished Zone, Extra Deck, Xyz Materials.
* F5-F8: Shows the cards in your opponent's GY, Banished Zone, Extra Deck, Xyz Materials.

## Searching functions
* `string`:
	returns all cards that have `string` in their name OR in the card text.
	Example: `Hero`
* `@string`
	returns all cards that have `string` in their name only, which ignores the card text.
	Example: `@Hero`
* `$string`
	returns all cards that belong to the `string`  archetype.
	Example: `$Heroic`
* `string1+string2`
	returns all cards that have `string1` or `string2` in their name/text.
	Example: `Trickstar+Bounzer`
	
You can also combine those functions. Example: `$blue-eyes+$buster blader` returns all cards that belong to either the `Blue-Eyes` archetype or the `Buster Blader` archetype

	
	
## Customization

Can be done by changing directly the files in your **textures**, **sounds** and/or **skin** folder.
### Background and other visual elements:
Editable by changing the contents of the **textures** folder. Do not change the file types: if a picture is *.jpg* you can only replace it for another *.jpg* file.
* bg.jpg: background used during a duel
* bg_deck.jpg: background used while in Deck Edit
* bg_menu.jpg: background used in the other screens
* cover.jpg: the back of your cards
* cover2.jpg: the back of your opponent's cards
### Skins:
Editable by addings subfolders to **skin**, in the main Ygopro folder.
For each folder, provide an unique *skin.xml* file, with the changes you want.
Set the `<skin_index = >` line in the *system.conf* file to the corresponding folder number. 0 is the default.

### Sounds:
Kept in the **sounds** folder. You can replace the files there for the ones of your choice. Do not change the file types: If you are replacing a *.wav* file, the new one needs to be *.wav*; if it is *.mp3*, use a *.mp3*.
More instructions can be found in the *_how_to_add_songs.txt file*, inside the sounds folder.

**antialias:** set in the `sytem.conf` file, specifies if the device should use fullscreen anti aliasing.
Makes sharp/pixelated edges softer, but requires more performance.
Also, 2D elements might look blurred with this switched on. Rendering results depend on the hardware available, and the program might look different on different hardware with this
The value is the maximal antialiasing factor requested for the device. The creation method will automatically try smaller values if no window can be created with the given value.
Default value: 0 - disabled.

## Update Management
The client uses 2 json files to download and read updates.
* git_repo.json: keeps track of the repositories used to download updates, which includes databases, lflists, scripts and other lua files.
* pics_url.json: keeps track of the repositories used to download pictures, including the arts for Field Spell

### Parameters:

#### git_repo.json
* url: required, the complete url of the repository to check for updates.
* repo_path: optional, the subdirectory in the client's directory where the contents will be saved. If not provided, the folder will be created in the expansions folder and will have the repository's name.
* data_path: optional, the folder where the databases and the strings will be loaded from in the repository. If not provided, it will load from the main folder of the repository.
* script_path: optional, the folder where the scripts will be loaded from in the repository. If not provided, it will load from the script folder of the repository.
* pics_path: optional, the folder where the pics will be loaded from in the repository. If not provided, it will load from the pics folder of the repository.
* should_update: true/false, optional, if the client will download the contents of the repository. If the repository is missing, it will still be downloaded only for the first time. If not provided, it will be set to true.
* should_read: true/false, if set to false the game will ignore that repository. If not provided, it will be set to true.

#### pics_url.json
* url: the complete url of the repository to check for updates. The url should have a `{}` on it, that will be replaced by the client with the card's id.
* type: pic/field, if it's either a repository card pictures or if it is for field's art.
	
### Repositories currently connected:

git_repo.json
```javascript
	{
		"url" : "default",
		"should_update" : false
	},
	{
		"url" : "default_anime",
		"should_update" : false
	},
	{
        "url" : "https://github.com/Gideon9212/Livecustom",
        "repo_path" : "./expansions/Livecustom",
        "data_path" : "",
        "script_path" : "script",
        "pics_path" : "pics",
        "should_update" : false
    }
```
pics_url.json
```javascript
    {
        "url" : "default",
        "type" : "pic"
    },
    {
        "url" : "default",
        "type" : "field"
    },
    {
        "url" : "https://raw.githubusercontent.com/Gideon9212/Livecustom/master/pics/{}.png",
        "type" : "pic"
    },
    {
        "url" : "https://raw.githubusercontent.com/Gideon9212/Livecustom/master/pics/{}.jpg",
        "type" : "pic"
    },
    {
        "url" : "https://raw.githubusercontent.com/Gideon9212/Livecustom/master/pics/field/{}.png",
        "type" : "field"
    }
```	
