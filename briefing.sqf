// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: briefing.sqf

if (!hasInterface) exitWith {};

_trimName = { _this select [1, count _this - 2] };
_aKeyName = { _arr = actionKeysNamesArray _this; if (count _arr == 0) exitWith {"<UNDEFINED>"}; _arr select 0 };

#define NKEYNAME(DIK) (keyName DIK call _trimName)
#define AKEYNAME(ACT) (ACT call _aKeyName)

waitUntil {!isNull player};

player createDiarySubject ["infos", "Infos and Help"];
player createDiarySubject ["changelog", "Changelog"];
player createDiarySubject ["credits", "Credits"];
player createDiarySubject ["admins", "Admin List"];
player createDiarySubject ["gearlevel", "Gear Level Info"];

player createDiaryRecord ["changelog",
[
"v1.2",
"
<br/>[Updated] Mag Repacker
<br/>[Added] Map Marker Log for Admins (Admin Menu)
<br/>[Added] Silencer for the 4-five
<br/>[Changed] Store Prices
<br/>[Changed] Stomper Prices Upped to $22,500
<br/>[Changed] HvT Value from $75k to $100k
<br/>[Changed] Drug values/resell values increased.
<br/>[Changed] Money Mission Values. (50k,100k,150k,200k)
<br/>[Changed] Territory hold price x10 (Every territory)
<br/>[Changed] Territory Capture at $10,000
<br/>[Changed] Bank Limit to $25,000,000
<br/>[Removed] Group Size Limit
<br/>[Added] Added Final Prestiege Gear Level (Virtual Arsenal)
<br/>[Added] Prestiege Gear Levels 1-4
<br/>[Changed] Gear Level Spawning items
<br/>[Changed] Max Bank Amount by 1mil per gear level
<br/>[Changed] Price of Unarmed Helicopters
<br/>[Changed] Value of Idependent Hack amount to .5%
<br/>[Changed] Value of Hacker Mission from 1.5% to 1%
<br/>[Changed] Gear Level Spawn Items
<br/>[Removed] Bastground to statusbar
<br/>[Fixed] TawVD error
<br/>[Added] Group Size Limit =6
<br/>[Fixed] Gas GL Ammo
<br/>[Changed] Admin List in map menu
<br/>[Added] TAW_VD (Original View Distance UI) 
<br/>[Removed] CHVD (View Distance) Due to Exploiting
<br/>[Changed] Clean up Script to be more aggressive
<br/>[Fixed] Admin List
<br/>[Changed] CoolDown Timer on Airdrops from 15 to 5
<br/>[Fixed] Explosive Placements near Gunstores
<br/>[Fixed] Briefing
<br/>[Added] Boats to AirDrops
<br/>[Removed] Break Lock Alarm Sound
<br/>[Changed] Break Lock Timer
<br/>[Removed] cctv (cause of desync issues)
<br/>[Added] Server Loading Screen  
<br/>[Implemented] v1.2 With New Stuff
<br/>
<br/>[Fixed] server Optimization
<br/>[Updated] Anti-hack
<br/>[Added] Side-specific laser designators and IR grenades
<br/>[Fixed] Bug with MagRepacker
<br/>[Added] Script Injection Protection
<br/>[Added] Supported Mods to Credits
<br/>[Removed] Last Resort
<br/>[Changed] OpFor and Independant Uniforms
<br/>[Fixed] Stores
<br/>[Fixed] Server Optimization 
<br/>[Fixed] Item Descriptions 
<br/>[Fixed] GunStore Logic
<br/>[Added] (Shift + H) Holster Weapon 
<br/>[Added] Allow anyone to fly DLC choppers
<br/>[Added] Gut
<br/>[Removed] Slit Throat
<br/>[Added] Explosives to Vehicles and Buildings
<br/>[Added] Drugs to Town Invasion
<br/>[Added] Drugs to RoadBlocks
<br/>[Added] Drugs to Stores
<br/>[Added] HvD(High Value Drugs)
<br/>[Added] DrugRunner Mission
<br/>[Added] Drugs
<br/>[Changed] Decreased Time for Airdrops
<br/>[Fixed] Wrong Ammo type in Gear Level
<br/>[Added] GL Toxic Gas Grenades
<br/>[Changed] Money Mission Rewards
<br/>[Fix] for exploding vehicles
<br/>[Removed] Thermal limit on scoped and Laser Des
<br/>[Fixed] UAV control Restricted to group
<br/>[Added] Beacon Detector
<br/>[Changed] Weather Effects
<br/>[Changed] Teammate Icon Size
<br/>[Added] Beacon Detector
<br/>[Changed] Settings on Airdrop
<br/>[Added] More Structures
<br/>[Changed] Stores across map 
<br/>[Added] Bank Money to Spectator for admins
<br/>[Changed] Airdrop Prices
<br/>[Changed] Store Prices
<br/>[Added] Limited Thermals
<br/>[Fixed] TeamKiller Glitch
<br/>[Updated] Mission Boxes
<br/>[Added] New Airdrop System
<br/>[Removed] Airdrop 
<br/>[Removed] 3D Markers
<br/>[Fixed] Corpse ejection from non-destroyed vehicles
<br/>[Added] Temp fix for negative wallet glitch
<br/>[Removed] Unused Functions
<br/>[Added] GID structured to map
<br/>[Changed] Mission weight for diving missions
<br/>[Fixed] Briefing
<br/>[Changed] Admin List
<br/>[Added] Masks for Toxic Gas. Shemag=Lesser effect / Pilot helmet=0 effect.
<br/>[Added] Toxic Gas (yellow smoke now kills within radius)
<br/>[Removed] Some Plane and helicopters from stores.
<br/>[Added] Old disabled missions
<br/>[Added] Road Block Mission
<br/>[Added] Sniper Nest Mission
<br/>[Added] HVT Mission (steals from bank accounts of online players)
<br/>[Changed] HUD to Status bar
<br/>[Added] Fast Roping
<br/>[Added] More UAV_Control (group only)
<br/>[Added] Mag Repacker
<br/>[Changed] Texture sizes to lower PBO size
<br/>[Removed] Original Welcome Screen
<br/>[Added] Server Credits as welcome message
<br/>[Added] Sting SMG as starting weapon
<br/>[Removed] Tron Suits from store
<br/>[Changed] Starting Backpack
<br/>[Added] GeoCache Mission 
<br/>[Added] Teleport Player to me for admins
<br/>[Added] Teleport to player for admins
<br/>[Removed] Player Markers from admins 
<br/>[Added] Air Drops
<br/>[Fixed] Player Gear Being removed after restart
<br/>[Updated] Antihack
<br/>[Changed] Only admins can use global voice
<br/>[Added] More UAV_Control (group only)
<br/>[Fixed] Warchest Duping glitch
<br/>[Changed] Made Clean up More aggressive (10min)
<br/>[Changed] Weapon Crate Loadouts. TWS, Nightstalker, OP items moved to them.
<br/>[Added] Vehicles stay locked after restart
<br/>[Added]1.42 patch update
<br/>[Added] ATMs
<br/>[Added] Union Jack vehicle color
<br/>[Added] Skins hidden in gamefiles for MH-9, Mohawk, and Taru
<br/>[Added] Improved admin spectate camera by micovery
<br/>[Added] Earplugs (End key)
<br/>[Changed] Full rewrite of vehicle respawning system
<br/>[Fixed] Player moved to position too early during save restore
<br/>[Fixed] Mission timeout not extending on AI kill
<br/>[Fixed] Admin teamkill unlocking
<br/>[Fixed] Improved FPS fix
<br/>[Fixed] Running animation parachute glitch
<br/>[Fixed] Various other minor bugfixes and optimizations
"
]];

player createDiaryRecord ["credits",
[
"Credits",
"
<br/><font size='16' color='#BBBBBB'>Fractured Developers for Wasteland:</font>
<br/>   * Mokey (Lead Developer)
<br/>	* Ghostyy (Website/A3W Developer)
<br/>	* Lenymo (A3W Developer)
<br/>	* Isaac (A3W Developer)
<br/>
<br/><font size='16' color='#BBBBBB'>Developed by A3Wasteland.com:</font>
<br/>	* AgentRev (TeamPlayerGaming)
<br/>	* JoSchaap (GoT/Tweakers.net)
<br/>	* MercyfulFate
<br/>	* His_Shadow (KoS/KillonSight)
<br/>	* Bewilderbeest (KoS/KillonSight)
<br/>	* Torndeco
<br/>	* Del1te (404Games)
<br/>
<br/><font size='16' color='#BBBBBB'>Original Arma 2 Wasteland missions by:</font>
<br/>	* Tonic
<br/>	* Sa-Matra
<br/>	* MarKeR
<br/>
<br/><font size='16' color='#BBBBBB'>Improved and ported to Arma 3 by 404Games:</font>
<br/>	* Deadbeat
<br/>	* Costlyy
<br/>	* Pulse
<br/>	* Domuk
<br/>
<br/><font size='16' color='#BBBBBB'>Other contributors:</font>
<br/>	* 82ndab-Bravo17 (GitHub)
<br/>	* afroVoodo (Armaholic)
<br/>	* Austerror (GitHub)
<br/>	* AWA (OpenDayZ)
<br/>	* bodybag (Gameaholic.se)
<br/>	* code34 (iniDBI)
<br/>	* Das Attorney (Jump MF)
<br/>	* Ed! (404Games forums)
<br/>	* Farooq (GitHub)
<br/>	* HatchetHarry (GitHub)
<br/>	* Hub (TeamPlayerGaming)
<br/>	* k4n30 (GitHub)
<br/>	* Krunch (GitHub)
<br/>	* madbull (R3F)
<br/>	* Mainfrezzer (Magnon)
<br/>	* meat147 (GitHub)
<br/>	* micovery (GitHub)
<br/>	* Na_Palm (BIS forums)
<br/>	* red281gt (GitHub)
<br/>	* RockHound (BierAG)
<br/>	* s3kShUn61 (GitHub)
<br/>	* Sa-Matra (BIS forums)
<br/>	* Sanjo (GitHub)
<br/>	* SCETheFuzz (GitHub)
<br/>	* Shockwave (A3W forums)
<br/>	* SicSemperTyrannis (iniDB)
<br/>	* SPJESTER (404Games forums)
<br/>	* spunFIN (BIS forums)
<br/>	* Tonic (BIS forums)
<br/>	* wiking.at (A3W forums)
<br/>	* Zenophon (BIS Forums)
<br/>
<br/><font size='16'>Thanks A LOT to everyone involved for the help and inspiration!</font>
"
]];


player createDiaryRecord ["infos",
[
"Hints and Tips",
"
<br/><font size='18'>A3Wasteland</font>
<br/>
<br/>* At the start of the game, spread out and find supplies before worrying about where to establish a meeting place or a base, supplies are important and very valuable.
<br/>
<br/>* When picking a base location, it is best advised to pick a place that is out of the way and not so obvious such as airports, cities, map-bound bases, etc. remember, players randomly spawn in and around towns and could even spawn inside your base should you set it up in a town.
<br/>
<br/>* If you spawn in an area with no vehicles or supplies in the immediate area, DO NOT just click respawn from the pause menu, chances are if you search an area of a few hundred meters, you will find something.
<br/>
<br/>* Always be on the lookout for nightvision. they are located in the ammo crates, and there are pairs scattered throughout vehicles. You can also purchase them from the gunstores. Nighttime without them SUCKS, and if you have them, you can conduct stealth raids on enemy bases under the cover of complete darkness.
<br/>
<br/>* When you set up a base, never leave your supplies unguarded, one guard will suffice, but it is recommended you have at least 2, maybe 3 guards at base at all times.
<br/>
<br/>* There are very aggressive AI characters that spawn with most missions and will protect the mission objectives with deadly force, be aware of them.
"
]];

player createDiaryRecord ["infos",
[
"About Fractured",
"
<br/><font size='16'>Teamspeak and Website</font>
<br/>Teamspeak 3 IP: ts.fractured-gaming.com
<br/>
<br/>Website: http://www.fractured-gaming.com
<br/>
<br/> If you would like to join please Register and Sign up on our website, use the Join Fractured Link.
<br/> If you are on our website, use the Join TS Link to join Teamspeak straight from your browser!
<br/>
<br/><font size='16'>Ban Appeal</font>
<br/> If you would like to appeal a ban please go to our website and use the Ban Appeal Link at the top of our website.
"
]];

player createDiaryRecord ["gearlevel",
[
"Gear Levels",
"
<br/> When you have enough $ for A gear level, Go and apply here http://fractured-gaming.com/application-forms.php?appid=4
<br/> When your application is recieved your gear level will be changed within 48 hours.
<br/> Your Money will then be deducted from your account.
<br/> To revieve a gear level, Fill out a gear level application on the forums to upgrade your gear level.
<br/> There are 10 Levels in total.
<br/> There are 5 Prestiege Levels. (after the 1st 10 levels)
<br/> Prestiege Gear Levels allow you to spawn with either nothing or the bare minimum. 
<br/> Prestiege Gear Levels are $10,000,000 per level and Prestiege level 5 is $25,000,000
<br/> Prestiege Gear Levels are for the hardcore wasteland players with a big payoff at the end.
<br/> The Final Prestiege level allows you to pick weapons from the VR before spawning. 
"
]];

player createDiaryRecord ["gearlevel",
[
"Prestiege Level 5",
"
<br/><font size='16'>Prestiege Level 5</font>
<br/><font size='15'>Cost: $25,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $1000
<br/> Virtural Arsenal With almost every weapon in it.

"
]];

player createDiaryRecord ["gearlevel",
[
"Prestiege Level 4",
"
<br/><font size='16'>Prestiege Level 3</font>
<br/><font size='15'>Cost: $10,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $1000
<br/> Bergen Backpack
<br/> 45 ACP and 4 Magazines
<br/> 2 Grenades

"
]];

player createDiaryRecord ["gearlevel",
[
"Prestiege Level 3",
"
<br/><font size='16'>Prestiege Level 3</font>
<br/><font size='15'>Cost: $10,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $1000
<br/> Bergen Backpack
<br/> 45 ACP and 2 Magazines
<br/> 1 Grenade

"
]];

player createDiaryRecord ["gearlevel",
[
"Prestiege Level 2",
"
<br/><font size='16'>Prestiege Level 2</font>
<br/><font size='15'>Cost: $10,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $1000
<br/> Bergen Backpack
<br/> 45 ACP and 1 Magazine

"
]];

player createDiaryRecord ["gearlevel",
[
"Prestiege Level 1",
"
<br/><font size='16'>Prestiege Level 1</font>
<br/><font size='15'>Cost: $10,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $1000
<br/> Bergen Backpack

"
]];

player createDiaryRecord ["gearlevel",
[
"Gear Level 10",
"
<br/><font size='16'>Gear Level 10</font>
<br/><font size='15'>Cost: $10,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $1000
<br/> An Olive Carryall
<br/> A Plate Carrier GL Rig
<br/> A GPS
<br/> A pair of Binoculars
<br/> 4 Grenades
<br/> A First Aid Kit
<br/> A pair of Red Goggles
<br/> An ECH Light Helmet
<br/> A MK 14 with 5 Standard Mags a RCO and a suppressor instead of a Sting
<br/> A 4-five .45 Pistol with an MRD Sight and suppressor instead of the ACP .45
<br/> An RPG-42 Alamut with 1 Rocket
<br/> You also get extra mags for the 4-five .45
"
]];

player createDiaryRecord ["gearlevel",
[
"Gear Level 9",
"
<br/><font size='16'>Gear Level 9</font>
<br/><font size='15'>Cost: $9,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $1000
<br/> An Olive Carryall
<br/> A Plate Carrier GL Rig
<br/> A GPS
<br/> A pair of Binoculars
<br/> An Extra Grenade
<br/> A First Aid Kit
<br/> A pair of Red Goggles
<br/> An ECH Helmet
<br/> An MX Marksmen rifle with 4 Mags an RCO and a suppressor instead of a Sting
<br/> A 4-five .45 Pistol with an MRD Sight and Suppressor instead of the ACP .45
<br/> An RPG-42 Alamut with 1 Rocket
<br/> You also get extra mags for the 4-five .45
"
]];

player createDiaryRecord ["gearlevel",
[
"Gear Level 8",
"
<br/><font size='16'>Gear Level 8</font>
<br/><font size='15'>Cost: $8,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $800
<br/> An Olive Carryall
<br/> An Olive Tactical Vest
<br/> A GPS
<br/> A pair of Binoculars
<br/> An Extra Grenade
<br/> A First Aid Kit
<br/> A pair of Red Goggles
<br/> An ECH Light Helmet
<br/> An MX Carbine with 2 Mags and a Hologsight instead of a Sting
<br/> A 4-five .45 Pistol with an MRD Sight instead of the ACP .45
<br/> An RPG-42 Alamut with 1 Rocket
<br/> You also get extra mags for the 4-five .45
"
]];

player createDiaryRecord ["gearlevel",
[
"Gear Level 7",
"
<br/><font size='16'>Gear Level 7</font>
<br/><font size='15'>Cost: $7,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $700
<br/> An Olive Carryall
<br/> An Olive Tactical Vest
<br/> A GPS
<br/> A pair of Binoculars
<br/> An Extra Grenade
<br/> A First Aid Kit
<br/> A pair of Red Goggles
<br/> An ECH Helmet
<br/> A TRG-20 with 2 Mags and a Hologsight and Suppressor instead of a Sting
<br/> A 4-five .45 Pistol with an MRD Sight instead of the ACP .45
<br/> An RPG-42 Alamut with 1 Rocket
<br/> You also get extra mags for the 4-five .45
"
]];

player createDiaryRecord ["gearlevel",
[
"Gear Level 6",
"
<br/><font size='16'>Gear Level 6</font>
<br/><font size='15'>Cost: $6,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $600
<br/> An Olive Carryall
<br/> An Olive Tactical Vest
<br/> A GPS
<br/> A pair of Binoculars
<br/> An Extra Grenade
<br/> A First Aid Kit
<br/> A pair of Red Goggles
<br/> An ECH Helmet
<br/> A TRG-20 with 2 Mags and a Hologsight instead of a Sting
<br/> A 4-five .45 Pistol instead of the ACP .45
<br/> An RPG-42 Alamut with 1 Rocket
<br/> You also get extra mags for the 4-five .45
"
]];

player createDiaryRecord ["gearlevel",
[
"Gear Level 5",
"
<br/><font size='16'>Gear Level 5</font>
<br/><font size='15'>Cost: $5,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $500
<br/> An Olive Carryall
<br/> A GPS
<br/> A pair of Binoculars
<br/> An Extra Grenade
<br/> A First Aid Kit
<br/> A pair of Red Goggles
<br/> A TRG-20 with 2 Mags and a Hologsight instead of a Sting
<br/> A 4-five .45 Pistol instead of the ACP .45
<br/> An RPG-42 Alamut with 1 Rocket
<br/> You also get extra mags for the 4-five .45
"
]];

player createDiaryRecord ["gearlevel",
[
"Gear Level 4",
"
<br/><font size='16'>Gear Level 4</font>
<br/><font size='15'>Cost: $4,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $400
<br/> An Olive Carryall
<br/> A GPS
<br/> A pair of Binoculars
<br/> An Extra Grenade
<br/> A First Aid Kit
<br/> A pair of Red Goggles
<br/> A holosight and Suppressor on your Sting
<br/> A 4-five .45 Pistol instead of the ACP .45
<br/> An RPG-42 Alamut with 1 Rocket
<br/> You also get extra mags for the Sting and 4-five .45
"
]];

player createDiaryRecord ["gearlevel",
[
"Gear Level 3",
"
<br/><font size='16'>Gear Level 3</font>
<br/><font size='15'>Cost: 3,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $300
<br/> An Olive Carryall
<br/> A GPS
<br/> A pair of Binoculars
<br/> An Extra Grenade
<br/> A First Aid Kit
<br/> A pair of Red Goggles
<br/> A holosight and Suppressor on your Sting
<br/> A 4-five .45 Pistol instead of the ACP .45
<br/> You also get extra mags for the Sting and 4-five .45
"
]];

player createDiaryRecord ["gearlevel",
[
"Gear Level 2",
"
<br/><font size='16'>Gear Level 2</font>
<br/><font size='15'>Cost: $2,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $200
<br/> An Olive Carryall
<br/> A GPS
<br/> A pair of Binoculars
<br/> An Extra Grenade
<br/> A First Aid Kit
<br/> A pair of Red Goggles
<br/> A holosight on your Sting
<br/> You also get extra mags for both Sting and ACP .45
"
]];

player createDiaryRecord ["gearlevel",
[
"Gear Level 1",
"
<br/><font size='16'>Gear Level 1</font>
<br/><font size='15'>Cost: $1,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $100
<br/> An Olive Carryall
<br/> A GPS
<br/> A pair of Binoculars
<br/> An Extra Grenade
<br/> A First Aid Kit
<br/> You will also get extra mags for both your Sting and ACP .45
"
]];

player createDiaryRecord ["admins",
[
"Admin List",
"
<br/><font color='#00FFEF' size='18'>Super Admins</font>
<br/><font color='#00FFEF' size='12'>All Functions Activated (No Player Markers or Invisiblilty)</font>
<br/> * Mokey
<br/> * Archangel
<br/> * TexasOutlaw
<br/> * Korimer
<br/> * Lenymo
<br/> * Ghostyy
<br/> * OutlawII
<br/> * WOLFITZ
<br/> * GeneralNukes

<br/><font color='#0066FF' size='18'>High Admins</font>
<br/><font color='#00FFEF' size='12'>Teleport, Spectate, Slay Delete Hacked objects</font>
<br/> * LoricatusVulpes
<br/> * GunFighterAlpha
<br/> * Pitoucc
<br/> * Greenmold
<br/> * requiemanarchy
<br/> * ExaMpLez
<br/> * Archer

<br/><font color='#002FFF' size='18'>Low Admins</font>
<br/><font color='#00FFEF' size='12'>Spectate, Slay, Delete Hacked Objects</font>
<br/> * Paladin
<br/> * Harry
<br/> * Llama
<br/> * Isaac

"
]];