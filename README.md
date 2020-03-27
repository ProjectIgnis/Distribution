# EDOPro by Project Ignis
All assets for the game, except card images.

## System requirements

Supported platforms:
- Windows 7 or later, 32-bit or 64-bit
- macOS 10.11 or later
- 64-bit GNU/Linux with X11 and glibc 2.27+ (e.g. Debian 10+, Ubuntu 18.04+, Fedora, CentOS 8+, rolling release distros)

DirectX 9 or OpenGL 4+ supporting graphics driver required.
1 GB free disk space recommended for asset updates and images.

## Configuration
`config/system.conf` handles most of the configurations available in the game.
Only options not directly configurable in-game are listed here.
Configurations listed as "boolean" accept either 0 for 'disabled' or 1 for 'enabled'.


| Name | Description and usage | Usage |
|------------ | -------------| --------|
|use_d3d |  directx's usage | boolean|
|antialias | makes sharp/pixelated edges softer, but requires more performance  (more details in Customization) | integer|
|textfont | path for the font used for texts and its size | example: *fonts/simhei.ttf 14*|
|numfont | path for the font used for numbers | example: *fonts/arialbd.ttf*|

## Shortcuts available in the client

### General:
* ESC: Minimizes the window if not typing
* F11: Toggles fullscreen
* F12: Captures a screenshot
* CTRL+O: Opens the additional settings window
* R: Reloads fonts if not typing
* CTRL+R: Reloads current skin
* CTRL+1: Switch to card info tab
* CTRL+2: Switch to duel log tab
* CTRL+3: Switch to chat log tab
* CTRL+4: Switch to settings tab
* CTRL+5: Switch to repositories tab
### Deck Edit:
* Right Mouse Button: Adds/removes a card from the deck
* Middle Mouse Button: Adds another copy of a card to the deck or side deck
* Shift+Right Mouse Button or Hold Left Mouse Button then click Right Mouse Button: Adds a card to the side deck
### Duel:
* Hold A or Hold Left Mouse Button: Lets the system stop at every timing.
* Hold S or Hold Right Mouse Button: Lets the system skip every timing.
* Hold D: Lets the system stop at available timing.
* F1 to F4: Shows the cards in your GY, Banished Zone, Extra Deck, Xyz Materials.
* F5 to F8: Shows the cards in your opponent's GY, Banished Zone, Extra Deck, Xyz Materials.
### macOS:
Note that system hotkeys may intercept some of the above keyboard shortcuts.
These app shortcuts are also available in the app and dock menus:
* Cmd+N opens a new instance with audio muted
* Cmd+Q quits the game
* Ctrl+Cmd+F toggles fullscreen

## Searching functions
* `string`:
	returns all cards that have `string` in their name OR in the card text.
	Example: `Hero`
* `@string`
	returns all cards that belong to the `string`  archetype.
	Example: `@Hero`
* `$string`
	returns all cards that have `string` in their name only, which ignores the card text.
	Example: `$Heroic`
* `string1||string2`
	returns all cards that have `string1` OR `string2` in their name/text.
	Example: `Trickstar||Bounzer`
* `!!string`:
	negative lookup (NOT)
* `string1*string2`
	replaces any character in any amount. Example: `Eyes*Dragon` will return cards Blue-Eyes White Dragon, Red-Eyes B. Dragon, Galaxy-Eyes Photon Dragon, etc.

These can be combined functions. Example: `@blue-eyes||$eyes of blue` returns all cards that belong to either the `Blue-Eyes` archetype or have `Eyes of Blue` in their names.

## Customization

**antialias:** set in the `system.conf` file, specifies if the device should use fullscreen anti aliasing.
Makes sharp/pixelated edges softer, but requires more performance.
Also, 2D elements might look blurred with this switched on. Rendering results depend on the hardware available, and the program might look different on different hardware with this
The value is the maximal antialiasing factor requested for the device. The creation method will automatically try smaller values if no window can be created with the given value.
Default value: 0 - disabled.

Change up your **textures**, **sounds** and/or **skin** folder!

### Background and other visual elements:
See README in `textures`.

### Skins:
Editable by adding subfolders to **skin**. For each folder, provide a unique `skin.xml` file, with the changes you want.
You can switch skins in the settings (CTRL+O). For instructions on the supported fields and what they change, see README in `skin`.

### Audio:
See README in `sound`.

## Updates
`config/configs.json` handles the servers the client is connected to, which include repositories for updates, servers for duels and pictures.

### Parameters:

#### repos (array)
* url: required, the complete url of the repository to check for updates.
* repo_path: optional, the subdirectory in the client's directory where the contents will be saved. If not provided, the folder will be created in the expansions folder and will have the repository's name.
* has_core: optional.
* core_path: optional, used if has_core is true.
* data_path: optional, the folder where the databases and the strings will be loaded from in the repository. If not provided, it will load from the main folder of the repository.
* script_path: optional, the folder where the scripts will be loaded from in the repository. If not provided, it will load from the script folder of the repository.
* pics_path: optional, the folder where the pics will be loaded from in the repository. If not provided, it will load from the pics folder of the repository.
* lflist_path: optional, the path for lflists, if the repository contains any.
* should_update: true/false, optional, if the client will download the contents of the repository. If the repository is missing, it will still be downloaded only for the first time. If not provided, it will be set to true.
* should_read: true/false, if set to false the game will ignore that repository. If not provided, it will be set to true.

#### pics (urls)
* url: the complete url of the repository to check for updates. The url should have a `{}` on it, that will be replaced by the client with the card's id.
* type: pic/field, if it's either a repository for card pictures or if it is for field spell's art.

#### servers (IPs)
* name
* adress
* duelport
* roomaddress
* rommlistport


## Changes from YGOPro Percy 1.034 Links Beta to EDOPro by Project Ignis

### TEMPORARY:
* Removed Dark Magician 46986420

#### New TCG/OCG and anime cards by:

* aht
* AlphaKretin
* andré
* Cybercatman
* edo9300
* Eerie Code
* Hatter
* Hel
* Larry126
* Logical Nonsense
* Naim
* pyrQ

### Client

* Localhost AI added with up to four bots per duel in the first four player slots.
	* Uses custom WindBot Ignite.
	* 27 AI decks.
	* Bots incompatible with the Master Rule used in the room are not displayed.
	* Decks used by Windbot do not necessarily match the current banlist: they follow the OCG banlist available when they were implemented.
		* To avoid warning regarding banned cards, the "Don't Check the Deck" option is suggested.
	* To duel the bot: LAN + AI ->  Host -> OK -> Local AI -> Add AI Player
	* List of decks Windbot has access to:
		* Altergeist
		* Blue-Eyes
		* Blue-Eyes Ritual
		* Burn
		* Chain Burn
		* Cyberse
		* Dark Magician
		* Dragunity
		* Dragun of Red-Eyes
		* Frog
		* Gren Maju Stun
		* Horus
		* Lightsworn Shaddoll Dino
		* Normal Monster Mash
		* Normal Monster Mash II
		* Orcust
		* Qliphort
		* R5NK
		* Rainbow
		* Rose Scrap Synchro
		* Salamangreat
		* Sky Striker
		* Toadally Awesome
		* Trickstar
		* Yosenju
		* ZEXAL Weapon
		* Zoodiac
	* Known bugs:
		* The AI is not smart, misplaying a lot, which include but is not limited to negating its own monsters, targetting the same cards with removal effects, attacking monsters with higher ATK, etc.
		* Some actions that require selection, like Advanced Ritual Art, might cause the AI to hang on forever.

* Added a basic hand test mode accessible in deck edit, in the `Test Hand` button, to play out a combo via a puzzle.
	* Includes a "Restart" option.
	* While you are using this mode, the duel never ends, not even by reducing the opponent's LP to 0.

* Added Discord Integration via Rich Presence
	* Features:
		* Your status will be set to "Playing Ygopro", with the elapsed time included.
		* Actions that will be displayed in our Discord status:
			* Dueling
			* In menu
			* Playing a Puzzle
			* Watching a Replay
			* Editing a deck
		* You can invite people to join your room. To do it: host a room, then in the Discord PC application you can create an invite in the input text bar.
		* Similarly, you can join a room through the invite created. If Ygopro/Edopro is closed, clicking in the invite will launch the application.

* Replaced old replay recording system:
	* current system is now unaffected by script changes from when the replay was recorded to when it is played.
	* kept compatibility with the old replay system.
		* old replay mode plays the replay while running the scripts. Use this if you are debugging a card.
	* replays are still subjected to changes in the database entry for a card: if the ID/passcode of a card in the played replay was changed, the replay will still be played without errors, but no description and details for that card will be displayed. If you don't have a picture with that old ID/passcode, it will not be displayed.

* Added the option to export the decks used in a replay.
	* decks will be stored in the default deck folder and will be named after the players in the replay.

* Updated handling for live updates:
	* repositories can now be connected, disconnected, enabled or disabled via json file, `/config/configs.json`.
	* different repositories now display their Update Logs separately.
		* the update log now only shows the changes applied after the current instance of the game was initialized.
			* use the "Show Full History" option to see old entries in the log.

* Added an option to rename a deck in Deck Edit, without the user needing to edit the file directly
	* added a mechanism to prevent the usage of characters not allowed in file names.

* Added a "Quick Animation" option

* Added option to set maximum FPS in the configuration file.

* Added back automatic download of arts for Field Spell cards.

* Added the following new settings:
	* independent volume controls for music and sound effects.
	* hide/show archetype names.
	* hide passcodes and scopes. Passcodes are the unique number each card has. Scopes are the region where the card is available and/or its origin.
	* Draw Field Spell arts on the field.
	* show FPS.
	* enable fullscreen.
	* fit the background.
	* accurate resize for backgrounds.
	* scale
		* the "Apply and restart" button only applies the change and closes the game at the moment. You will have to start it again.
	* skin selection, via dropdown menu.
		* reload skin, that applies the changes to the current skin file without a restart.

* Added shortcut for in game fullscreen toggle [F11]

* Added shortcut for in game acess to the additional settings [CTRL + O]

* Updated music and sounds options:
	* added "chants" support.
	* more details available in the txt file in the "sounds" folder.
	* music and sound volume controls separated

* Updated skins handling.
	* 10 sample skins and a template are provided.
	* skins can now be applied with the game running, without restarting.
	* skins will also support a `textures` folder to make those items more customizable.
	* more details available in the README in your `skin` folder. 

* Changed "Show anime cards" option to "Show unofficial cards", as other types of cards are present.

* "single" folder renamed to "puzzle"
	* updated puzzles that were unsolvable to use pre-errata cards.

* Puzzles can now display a message while in the puzzle selection screen, in the "Puzzle Mode" menu:
	* messages are added with the following syntax:
	```lua
		--[[message
		insert the text here
		]]
	```
* Puzzles now have a "Restart" option.

* Puzzles now can generate a replay.

* Added a "Puzzle Creator" puzzle.
	* Use this to generate a puzzle by declaring a card and a location to place it. When finished, the resulting puzzle is exported.

* "Puzzle Mode" menu now reads subdirectories in the `puzzle` folder.

* "Watch Replay" menu now reads subdirectories in the `replay` folder.

* Forbidden/Limited lists  now are kept in the `/lflists` directory:
	* multiple files are supported, each containing any number of lists.
	* Forbidden/Limited lists now will be read from a `lflists` folder inside of any repository connected.

* Forbidden/Limited lists now can be done by whitelisting:
	* adding `$whitelist` to a list will automatically ban all the entries not set in that list

* Aliasing is now disabled in deck edit.

* Added support for **GOAT Format**:
	* added 2005.4 Forbidden/Limited List, credits to EerieCode, Tungnon and Naim for preparing the file.

* Fixed the dimensions of `field.png`, the picture used for MR1 and MR2 duels. Credits to GK#3620, on Discord.

* Added asynchronous loading system for card images.

* The last banlist used is now remembered after leaving deck edit, a duel, or the client.

* macOS
	* Shift+Right Click to add to side deck in Deck Edit now works like on Windows and Linux
	* Known bug: invoking the binary from the Terminal directly (./EDOPro.app/Contents/MacOS/EDOPro) will never start the game in fullscreen, but no user should be starting the game this way anyway.
	* Known bug: Cmd+Right in an edit box results in game crash

* Scripts now load from one subdirectory level in the script folder only.

* Prereleases are supported. Use the 0x100 OT bit.
	* Prereleases appear by default in deck edit and can be specifically filtered for
	* Prereleases can be permitted in duels in addition to "OCG/TCG" mode.
		* Setting the Allowed Card list to TCG allows only cards that are released in TCG.
		* Setting the Allowed Card list to OCG allows only cards that are released in OCG.
		* Setting the Allowed Card list to TCG/OCG allows only cards that are released both in TCG and OCG but not pre-releases.
		* Setting the Allowed Card list to Pre-release allows only cards that are released both in TCG and OCG.
		* Setting the Allowed Card list to Anything goes allows any cards that are released in either TCG or OCG.
	* All card scopes are now listed in card search with the exception of "OCG/TCG", using sysstrings

* Updated many strings called with dialogue boxes and activation prompts used by the client.
	* Update incorrect strings called in the Damage Step
	* All the strings used in the client are now controlled by the `strings.conf` file, being editable, which allows translations for all these elements.

* Added support for translation for system strings.
	* inside the `config/languages` folder, add a folder for your language and add a `strings.conf` file there, with the strings translated to your desired language.
	* Credits for the current translations:
		french: Hel
		italian: edo9300
		portuguese: Naim
		spanish: Dyxel and Icematoro
		thai: Tungnon

* Added support for TCG Speed Duel Skills
	* To use a Skill during a duel, add it to the deck first.
		* When the duel starts, the Skill is removed.
		* For Skills that require a specific activation timing you will get a prompt, for others you use the resolution circle above the area where the Skill is displayed.
	* At the moment, Skills are not limited to Speed Duels.
	* Only TCG Skills are available. Duel Link Skills and Skills from Yu-Gi-Oh! VRAINS are not planned at the moment.
	* Important:
		* Do not use Skills in a Tag Duel. Skills in this duel mode are not supported due to core limitations.
		* Do not add more than 1 Skill in the Main Deck, as there is no handling for it.

* Added support for Link Spells ("Judgment Arrows")

* Added support for an arbitrary number of cards in a deck (main, side, extra.)
	* requires editing the deck file, might be tied with the server.
	* the deck displayed in Deck Edit will no longer display a maximum of 60 cards in the main deck if the deck file contains more than that.


### Core, Scripts and functions and other

#### OCGCORE: updated from 1.034 standard to edo9300's 6.0

* Updated mandatory trigger effects handling.

* Added support for **Flash Charge Dragon**:
	* updated old scripts of cards with effects that Summon or put themselves on the opponent's field.

* Added support for **Mischief of the Time Goddess**

* Added `Duel.LinkSummon`, which removes the workarounds used for the "Unchained" monsters.

* Removed complex handling of Continuous Traps for when it is possible to activate the card AND its effect in the same chain link

* The following functions have been renamed:
	* `Card.IsLinkState` -> `Card.IsLinked`
	* `Card.IsExtraLinkState` -> `Card.IsExtraLinked` (this one also no longer requires the workarounds that were once used)
	* `Card.IsAttackable` -> `Card.CanAttack`
	* `Card.IsChainAttackable` -> `Card.CanChainAttack`

* Added suport to load other files from within a script (Duel.LoadScript)

* Updated status of the following bugs:
	* fixed a bug with "Number 67: Pair-a-Dice Smasher" where it wasn't changing result of dice to outside dice allowed values.
	* changed AssumeProperty to allow cards having more than 1 property (Race, ATK, ...) assumed at a time.
	* fixed interaction of "Chaos Hunter" and "Macro Cosmos".
	* fixed "Formud Skipper" and "Zombie World" interactions.
	* fixed "Absolute Machine Angel Ritual" vs "Necrovalley" interaction.
	* fixed "Super Polymerization" vs "Chain Material" interaction.
	* fixed problems with accumulated Additional Normal Summon effects, like "Gem-Knight Seraphinite" and "Knightmare Goblin"
	* fixed a bug where "Vampire Sucker" would not be able to tribute more than 1 monster controlled by the opponent.
	* fixed a bug where "Servant of the Endymion" would be able to activate the effect once again even if "Ash Blossom & Joyous Spring" negated it.
	* fixed the bugs with incorrect interactions of "Fantastic Striborg" with "Degenerate Circuit" and "Macro Cosmos"
	* due to updates in segoc rules, the bug where two "Mythical Instutuion" could activate the effect in the same chain was fixed.
	* due to the changes on how mandatory trigger effects were handled, the bug with using the effect of "Heavymetalfoes Electrumite" while the player controlled 2 and 1 of those was negated was fixed.
	* fixed the incorrect damage evaluation for "Trickstar Lycoris" and "Trickstar Light Stage" vs "Preparation of rites" and similar cards.
	* fixed a bug related with being unable to get some properties with triggering location:
		* main interaction is "Doomking Balerdroch" vs an "Orcust" monster activating its effect in the GY while "Zombie World" was in play.
	* fixed a bug with "Parthian Shot" and its interaction with "Timelord" or "Gladiator Beast" monsters.
	* fixed an incorrect evaluation for the ATK of monster equipped with "Megamorph" and "Sword of Toxic Solitude" to match rulings.
	* fixed an incorrect evaluation for the ATK of "The Wicked Avatar" copied by "Fake Hero" and/or "Phantom of Chaos".
	* fixed "Witchcrafter Genie" being able to target a Continuous Spell to apply the effects, even if the card did not have an applicable effect.
	* fixed a bug where "Evenly Matched" would be negated by "Necrovalley" if any of the cards to be banished left the field before the resolution. Same with "Topologic Trisbaena"
	* fixed the interaction of "Gilford the Legend" with "Necrovalley".
	* updated cards that should be detected by "Dark Sacrifice".
	* fixed the bug with "Dark Sanctuary" being unable to special summon the Spirit Message card if it was activated in a higher chain link, e.g. Metaverse.
	* fixed the bug where it would be possible to stack the destruction replacement effects of "Six Samurai" monsters on the field with those with a similar effect in the GY.
	* fixed the incorrect interaction of "Ghost Belle & Haunted Mansion" with "The Prime Monarch".
	* fixed the incorrect interaction of "Ash Blossom & Joyous Spring" with "Magical Hats".
	* fixed the bug where "Absolute King Jack Back" would not be able to use the effect if "Set Rotation" was used.
	* fixed bugs with "Cynet Codec" and "Union Hangar" where they would not allow the user to target different monsters if they were summoned in the same chain, but in different chain links.
	* fixed the bugs of cards that negate the activation of a monster effect, then apply something else, if the monster left the field. Examples: Sollemn Strike, Debunk, Invoked Mechaba.
	* fixed the bug of "Abyss Playhouse - Fantastic Theater" negating the incorrect Chain Link if multiple monster effects were activated in the chain.
	* fixed the bug with "Gogogo Aristeria & Dexia" not triggering if "Utopic Unomatopoeia" was used as one of the materials.	
	* fixed the bug with "Droll & Lock Bird" triggering in the incorrect timing in the presence of "Mystic Mine".	
	* fixed the bug with "There Can Be Only One" vs a returning monster that would interact with its effect.	
	* fixed the bug with "Daigusto Sphereez" and the damage inflicted if "Fragile Double-Edge Sword" was equipped.	
	* fixed the incorrect ATK evaluation fo "Gren Maju Da Eiza" vs "Black Rose Dragon".
