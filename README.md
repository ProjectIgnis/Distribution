# EDOPro by Project Ignis
All assets for the game, except card images.

## Configuration
`config/system.conf` handles most of the configurations available in the game.
Configurations listed as "boolean" accept either 0 for 'disabled' or 1 for 'enabled'.

Name | Description and usage 
------------ | -------------
use_d3d |  directx's usage / boolean
use_vsync |  vsync's usage for more accurate fps capping according to the refresh rate of the monitor, if set, the max_fps option will be ignored / boolean
max_fps | limits the framerate  / integer, 0=unlimited, 60=default
fullscreen | enables full screen mode / boolean
antialias | makes sharp/pixelated edges softer, but requires more performance (more details in Customization) / integer
errorlog | how script errors are displayed / integer, 0=disabled, 1=in game message, 2=writes to error.log file, 3=both in game messages and error.log
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
skin | current skin or `none`
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

**antialias:** set in the `sytem.conf` file, specifies if the device should use fullscreen anti aliasing.
Makes sharp/pixelated edges softer, but requires more performance.
Also, 2D elements might look blurred with this switched on. Rendering results depend on the hardware available, and the program might look different on different hardware with this
The value is the maximal antialiasing factor requested for the device. The creation method will automatically try smaller values if no window can be created with the given value.
Default value: 0 - disabled.

Change up your **textures**, **sounds** and/or **skin** folder!

### Background and other visual elements:
Editable by changing the contents of the **textures** folder. PNG and JPEG are supported but do not change the file extensions: if a picture is *.jpg* you can only replace it for another *.jpg* file.
* bg.jpg: background used during a duel
* bg_deck.jpg: background used while in Deck Edit
* bg_menu.jpg: background used in the other screens
* cover.jpg: the back of your cards
* cover2.jpg: the back of your opponent's cards
For the above, PNG files with the same name will be preferentially loaded first; JPG extension support is only kept for legacy purposes and is discouraged.

### Skins:
Editable by addings subfolders to **skin**, in the main Ygopro folder.
For each folder, provide an unique `skin.xml` file, with the changes you want.
Set the `<skin = >` line in `system.conf` to the corresponding folder name or `none`.

### Audio:
See README in `sound`.

## Updates
`config/configs.json` 

Forbidden/Limited lists now will be read from a `lflists` folder inside of any repository connected.
### Parameters:

#### repos (array)
* url: required, the complete url of the repository to check for updates.
* repo_path: optional, the subdirectory in the client's directory where the contents will be saved. If not provided, the folder will be created in the expansions folder and will have the repository's name.
* data_path: optional, the folder where the databases and the strings will be loaded from in the repository. If not provided, it will load from the main folder of the repository.
* script_path: optional, the folder where the scripts will be loaded from in the repository. If not provided, it will load from the script folder of the repository.
* pics_path: optional, the folder where the pics will be loaded from in the repository. If not provided, it will load from the pics folder of the repository.
* should_update: true/false, optional, if the client will download the contents of the repository. If the repository is missing, it will still be downloaded only for the first time. If not provided, it will be set to true.
* should_read: true/false, if set to false the game will ignore that repository. If not provided, it will be set to true.

#### pics (urls)
* url: the complete url of the repository to check for updates. The url should have a `{}` on it, that will be replaced by the client with the card's id.
* type: pic/field, if it's either a repository card pictures or if it is for field's art.

## Changes from YGOPro Percy 1.034 Links Beta to EDOPro by Project Ignis

TEMPORARY:
	*cdb entries for official cards merged into the main cdb:
	fixmisc, fixot, fixstr, fixsetcode, official and prerelease, except cards with Beta IDs.
	Removed Dark Magician 46986420

New TCG/OCG and anime cards by:
	-Eerie Code
	-andre
	-edo9300
	-pyrQ
	-AlphaKretin
	-Naim
	-Cybercatman
	-Logical Nonsense
	-Larry126
	-Aht
	-Hel

OCGCORE: updated from 1.034 standard to edo9300's 5.1


1-Updated mandatory trigger effects handling.
	
2-Replaced old replay recording system:
	*current system is now unaffected by script changes from when the replay was recorded to when it is played.
	*kept compatibility with the old replay system.
	
3-Added support for "Flash Charge Dragon":
	*updated old scripts of cards with effects that Summon or put themselves on the opponent's field.
	
4-Updated handling for live updates:
	*repositories can now be connected, disconnected, enabled or disabled via json file, in the main folder.
	*different repositories now display their Update Logs separately.

5-Updated many strings called with dialogue boxes and activation prompts used by the client. 
	*Update incorrect strings called in the Damage Step

6-Updated music and sounds options:
	*added "chants" support.
	*more details available in the txt file in the "sounds" folder.
	*music and sound volume controls separated

7-Updated skins handling.
	*more details available in the "skin.xml" file in the default skin folder.
	
8-Added option to set maximum FPS in the configuration file.

9-Added back automatic download of arts for Field Spell cards.

10-Changed "Show anime cards" option to "Show unofficial cards", as other types of cards are present.

11-"Watch Replay" menu now reads subdirectories in the `replay` folder.

12-"Puzzle Mode" menu now reads subdirectories in the `puzzle folder`

13-"single" folder renamed to "puzzle"
	*updated puzzles that were unsolvable to use pre-errata cards.

14-Puzzles can now display a message while in the puzzle selection screen, in the "Puzzle Mode" menu:
	*messages are added with the following syntax:
	--[[message
	insert the text here
	]]

15-Added a "Puzzle Creator" puzzle.

16-Banlists now are kept in the `/lflists` directory:
	*multiple banlists files are supported.
	*banlists in live repositories are loaded from a `/lflists` in that repository.

17-Banlists now can be done by whitelisting:
	*adding `$whitelist` to a list will automatically ban all the entries not set in that list

18-Aliasing is now disabled in deck edit.

19-Added support for GOAT Format:
	*added 2005.4 Forbidden/Limited List, credits to EerieCode, Tungnon and Naim for preparing the file.

20-Updated status of the following core bugs:
	*fixed a bug with "Number 67: Pair-a-Dice Smasher" where it wans't changing result of dice to outside dice allowed values.
	*changed AssumeProperty to allow cards having more than 1 property (Race, ATK, ...) assumed at a time.
	*fixed interaction of "Chaos Hunter" and "Macro Cosmos". (remind to check all the script to remove unecessary things).
	*fixed "Formud Skipper" and "Zombie World" interactions.
	*fixed Absolute Machine Angel Ritual vs Necrovalley interaction.
	*fixed "Super Polymerization" vs "Chain Material" interaction.
	*fixed problems with accumulated Additional Normal Summon effects.
	
21-Added suport to load other files from within a script (Duel.LoadScript)

22-Fixed the dimensions of "field.png", the picture used for MR1 and MR2 duels. Credits to GK#3620, on Discord.

23-Added shortcut for in game fullscreen toggle [F11]

24-Added wildchar support.
	@string: returns all cards that have "string" in their name only, ignoring the card text. Example: @Hero
	$string: returns all cards that belong to the "string"  archetype. Example: $Heroic
	string1+string2: returns all cards that have "string1" or "string2" in their name/text. Example: Trickstar+Bounzer
You can also combine those functions.
Example: $blue-eyes+$buster blader returns all cards that belong to eiher the "Blue-Eyes" archetype or the ""Buster Blader" archetype

25-Added asynchronous loading system for card images.

25-The last banlist used is now remembered after leaving deck edit, a duel, or the client.

26-macOS
	*Cmd+Q quits the application. "Quit" menu item added to app menu.
	*Cmd+N opens a new instance. "New Window" menu item added to app and dock menus.
	*Ctrl+Cmd+F toggles fullscreen windowed mode. If there's no system bind for F11 that will work as well. "Toggle Full Screen" menu item added to app and dock menus. This is remembered on app restart like on Windows and Linux.
		Known bug: invoking the binary from the Terminal directly (./EDOPro.app/Contents/MacOS/EDOPro) will never start the game in fullscreen on macOS Mojave, but no user should be starting the game this way anyway.
	*Shift+Right Click to add to side deck in Deck Edit now works like on Windows and Linux

27-Added `Duel.LinkSummon`, which removes the workarounds used for the "Unchained" monsters.

28-Removed complex handling of Continuous Traps for when it is possible to activate the card AND its effect in the same chain link

29-The following functions have been renamed:
	Card.IsLinkState -> Card.IsLinked
	Card.IsExtraLinkState -> Card.IsExtraLinked (this one also no longer requires the workarounds that were once used)
	Card.IsAttackable -> Card.CanAttack
	Card.IsChainAttackable -> Card.CanChainAttack

30-Added Discord Integration via Rich Presence
	*Features:
		*Your status will be set to "Playing Ygopro", with the elapsed time included.
		Actions that will have description:
			-Dueling
			-In menu
			-Playing a Puzzle
			-Watching a Replay
			-Editing a deck
		*You can invite people to join your room. To do it: host a room, then in the Discord PC application you can create an invite in the input text bar.
		*Similarly, you can join a room through the invite created. If Ygopro/Edopro is closed, clicking in the invite will launch the application
		
31-Added a basic hand test mode accessible in deck edit to play out a combo via a puzzle.

32-Scripts now load from one subdirectory level in the script folder only.

33-Prereleases are supported. Use the 0x100 OT bit.
	*Prereleases appear by default in deck edit and can be filtered specifically for
	*Prereleases can be permitted in duels in addition to "OCG/TCG" mode.
		Setting the Allowed Card list to TCG allows only cards that are released in TCG.
		Setting the Allowed Card list to OCG allows only cards that are released in OCG.
		Setting the Allowed Card list to TCG/OCG allows only cards that are released both in TCG and OCG but not pre-releases.
		Setting the Allowed Card list to Pre-release allows only cards that are released both in TCG and OCG.
		Setting the Allowed Card list to Anything goes allows any cards that are released both in TCG and OCG.
	
	*All card scopes are now listed in card search with the exception of "OCG/TCG", using sysstrings
	
	
34-Localhost AI added with up to four bots per duel in the first four player slots.
	*Uses custom WindBot Ignite
	*Bots incompatible with the current Master Rule are not displayed

35-Added support for "Mischief of the Time Goddess"
