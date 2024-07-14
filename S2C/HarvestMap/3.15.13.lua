
Harvest.defaultLocalizedStrings = {
	-- top level description
	esouidescription = "For the addon description and FAQ visit the addon's page on esoui.com",
	openesoui = "Open ESOUI",
	exchangedescription2 = "You can download the most recent HarvestMap data (positions of resources) by installing the HarvestMap-Data add-on. For more information, see the addon description on ESOUI.",
	
	notifications = "Notifications and Warnings",
	notificationstooltip = "Displays notifications and warnings in the top right corner of the screen.",
	moduleerrorload = "The addon <<1>> is disabled.\nNo data available for this area.",
	moduleerrorsave = "The addon <<1>> is disabled.\nThe location of the node was not saved.",
	
	-- outdated data settings
	outdateddata = "Outdated Data Settings",
	outdateddatainfo = "These data related settings are shared between all accounts and characters on this computer.",
	timedifference = "Keep only recent data",
	timedifferencetooltip = "HarvestMap will only keep data from the last X days.\nThis prevents displaying old data which may already be outdated.\nSet to 0 to keep any data regardless of its age.",
	applywarning = "Once old data has been removed, it can not be restored!",
	
	-- account wide settings
	account = "Account-wide Settings",
	accounttooltip = "All the settings below will be the same for all of your characters.",
	accountwarning = "Changing this setting will reload the user interface.",
	
	-- map pin settings
	mapheader = "Map Pin Settings",
	mappins = "Display pins on main map",
	minimappins = "Display pins on mini map",
	minimappinstooltip = "Supported minimaps: Votan, Fyrakin and AUI.",
	level = "Display map pins above POI pins.",
	hasdrawdistance = "Display only nearby map pins",
	hasdrawdistancetooltip = "When enabled, HarvestMap will only create map pins for harvest locations that are close to the player.\nThis setting only affects the main map. On minimaps this option is automatically enabled!",
	hasdrawdistancewarning = "This setting only affects the ingame map. On minimaps this option is automatically enabled!",
	drawdistance = "Map pin distance",
	drawdistancetooltip = "The distance threshold for which map pins are drawn. This setting does also affect minimaps!",
	drawdistancewarning = "This setting does also affect minimaps!",
	
	visiblepintypes = "Visible pin types",
	custom_profile = "Custom",
	same_as_map = "Same as on the map",
	
	-- compass settings
	compassheader = "Compass Settings",
	compass = "Display pins on compass",
	compassdistance = "Max pin distance",
	compassdistancetooltip = "The maximum distance for pins in meters that appear on the compass.",
	
	-- 3d pin settings
	worldpinsheader = "3D Pin Settings",
	worldpins = "Display pins in 3D world",
	worlddistance = "Max 3D pin distance",
	worlddistancetooltip = "The maximum distance for harvest locations in meters. When a location is further away, no 3D pin is displayed.",
	worldpinwidth = "3D pin width",
	worldpinwidthtooltip = "The width of the 3D pins in centimeters.",
	worldpinheight = "3D pin height",
	worldpinheighttooltip = "The height of the 3D pins in centimeters.",
	worldpinsdepth = "Use depth-buffer for 3D pins",
	worldpinsdepthtooltip = "When disabled, the 3D pins will be visible through through walls and other objects.",
	worldpinsdepthwarning = "Because of a bug in ESO, this option does not work, when a Sub-Sampling quality of medium or low is selected in the game's video options.",
	
	
	-- respawn timer settings
	visitednodes = "Visited Nodes and Farming Helper",
	rangemultiplier = "Visited node range",
	rangemultipliertooltip = "Nodes within X meters are considered as visited by the farming helper and the hide timer.",
	usehiddentime = "Hide recently visited nodes",
	usehiddentimetooltip = "Pins will be hidden if you visited their location recently.",
	hiddentime = "Hide Duration",
	hiddentimetooltip = "Recently visited nodes will be hidden for X minutes.",
	hiddenonharvest = "Hide nodes only after harvesting",
	hiddenonharvesttooltip = "Enable this option to hide pins only, when you harvested them. When the option is disabled, pins will be hidden if you visit them.",
	
	-- spawn filter
	spawnfilter = "Spawned Resource Filters",
	nodedetectionmissing = "These options can only be enabled, if the 'NodeDetection' library is enabled.",
	spawnfilterdescription = [[When enabled, HarvestMap will hide pins for resources that have not respawned yet.
For example if another player already harvested the resource, then the pin will be hidden until the resource is available again.
This option works only for harvestable crafting material. HarvestMap can not detect spawned containers such as chests, heavy sacks, or psijic portals.
The filter does not work if another addon hides or rescales the compass.]],
	spawnfilter_map = "Use filter on main map",
	spawnfilter_minimap = "Use filter on minimap",
	spawnfilter_compass = "Use filter for compass pins",
	spawnfilter_world = "Use filter for 3D pins",
	spawnfilter_pintype = "Enable filter for pin types:",
	
	-- pin type options
	pinoptions = "Pin Type Options",
	pinsize = "Pin size",
	pinsizetooltip = "Set the size of the pins on the map.",
	pincolor = "Pin color",
	pincolortooltip = "Set the color of the pins on map and compass.",
	savepin = "Save locations",
	savetooltip = "Enable to save the locations of this resource when you discover them.",
	pintexture = "Pin icon",
	
	-- pin type names
	pintype1 = "Smithing and Jewelry",
	pintype2 = "Clothing",
	pintype3 = "Runes and Psijic Portals",
	pintype4 = "Mushrooms",
	pintype13 = "Herbs/Flowers",
	pintype14 = "Water herbs",
	pintype5 = "Wood",
	pintype6 = "Chests",
	pintype7 = "Solvents",
	pintype8 = "Fishing spots",
	pintype9 = "Heavy Sacks",
	pintype10 = "Thieves Troves",
	pintype11 = "Justice Containers",
	pintype12 = "Hidden Stashes",
	pintype15 = "Giant Clams",
	-- pin type 16, 17 used to be jewlry and psijic portals 
	-- but the locations are the same as smithing and runes
	pintype18 = "Unknown node",
	pintype19 = "Crimson Nirnroot",
	
	-- extra map filter buttons
	deletepinfilter = "Delete HarvestMap pins",
	filterheatmap = "Heatmap mode",
	
	-- localization for the farming helper
	goldperminute = "Gold per minute:",
	farmresult = "HarvestFarm Result",
	farmnotour = "HarvestFarm was not able to calculate a good farming route with the given minimum route length.",
	farmerror = "HarvestFarm Error",
	farmnoresources = "No resources found.\nThere are no resources on this map or you don't have any resource types selected.",
	farmsuccess = "HarvestFarm calculated a farming tour with <<1>> nodes per kilometer.\n\nClick on one of the tour's pins to set the tour's starting point.",
	farmdescription = "HarvestFarm will calculate a tour with a very high resource per time ratio.\nAfter generating a tour, click on one of the selected resources to set the tour's starting point.",
	farmminlength = "Minimum length",
	farmminlengthdescription = "The longer the tour, the higher the chance that the resources have respawned when you start the next cycle.\nHowever a shorter tour will have a better resource per time ratio.\n(Minimum length is given in kilometers.)",
	tourpin = "Next target of your tour",
	calculatetour = "Calculate Tour",
	showtourinterface = "Show Tour Interface",
	canceltour = "Cancel Tour",
	reverttour = "Revert Tour Direction",
	resourcetypes = "Resource Types",
	skiptarget = "Skip current target",
	removetarget = "Remove current target",
	nodesperminute = "Nodes per minute",
	distancetotarget = "Distance to the next resource",
	showarrow = "Display direction",
	removetour = "Remove Tour",
	undo = "Undo last change",
	tourname = "Tour name: ",
	defaultname = "Unnamed tour",
	savedtours = "Saved tours for this map:",
	notourformap = "There is no saved tour for this map.",
	load = "Load",
	delete = "Delete",
	saveexiststitle = "Please Confirm",
	saveexists = "There is already a tour with the name <<1>> for this map. Do you want to overwrite it?",
	savenotour = "There is no tour that could be saved.",
	loaderror = "The tour could not be loaded.",
	removepintype = "Do you want to remove <<1>> from the tour?",
	removepintypetitle = "Confirm Removal",
	
	-- extra harvestmap menu
	farmmenu = "Farming Tour Editor",
	editordescription = [[In this menu, you can create and edit tours.
If there is currently no other tour active, you can create a tour by clicking onto the map pins.
If there is a tour active, you can edit the tour by replacing sub-sections:
- First click on a pin of your (red) tour.
- Then, click on the pins that you want to add to your tour. (A green tour will appear)
- Finally, click on a pin of your red tour again.
The green tour will now be inserted into the red tour.]],
	editorstats = [[Number of nodes: <<1>>
Length: <<2>> m
Nodes per kilometer: <<3>>]],

	-- filter profiles
	filterprofilebutton = "Open Filter Profile Menu",
	filtertitle = "Filter Profile Menu",
	filtermap = "Filter Profile for Map Pins",
	filtercompass = "Filter Profile for Compass Pins",
	filterworld = "Filter Profile for 3D Pins",
	unnamedfilterprofile = "Unnamed Profile",
	defaultprofilename = "Default Filter Profile",
	
	-- SI names to fit with ZOS api
	SI_BINDING_NAME_SKIP_TARGET = "Skip Target",
	SI_BINDING_NAME_TOGGLE_WORLDPINS = "Toggle 3D pins",
	SI_BINDING_NAME_TOGGLE_MAPPINS = "Toggle map pins",
	SI_BINDING_NAME_TOGGLE_MINIMAPPINS = "Toggle minimap pins",
	SI_BINDING_NAME_HARVEST_SHOW_PANEL = "Open HarvestMap Tour Editor",
	SI_BINDING_NAME_HARVEST_SHOW_FILTER = "Open HarvestMap Filter Menu",
	HARVESTFARM_GENERATOR = "Generate new tour",
	HARVESTFARM_EDITOR = "Edit tour",
	HARVESTFARM_SAVE = "Save/Load tour",
}

-- these are the names of interactable objects that are displayed when the reticle/cursor hovers over them
-- this table assigns each such object a pin type
local interactableName2PinTypeId = {
	["heavy sack"] = Harvest.HEAVYSACK,
	-- special nodes in cold harbor with the same loot as heavy sacks
	["heavy crate"] = Harvest.HEAVYSACK,
	["Thieves Trove"] = Harvest.TROVE,
	["loose panel"] = Harvest.STASH,
	["loose tile"] = Harvest.STASH,
	["loose stone"] = Harvest.STASH,
	["Psijic Portal"] = Harvest.PSIJIC,
	["giant clam"] = Harvest.CLAM,
}
-- convert to lower case. zos sometimes changes capitalization so it's safer to just do all the logic in lower case
-- add english lower case names to the table because not all terms are translated when playing with unofficial fan translations
Harvest.interactableName2PinTypeId = Harvest.interactableName2PinTypeId or {}
local globalList = Harvest.interactableName2PinTypeId
for name, pinTypeId in pairs(interactableName2PinTypeId) do
	globalList[zo_strlower(name)] = pinTypeId
end


local default = Harvest.defaultLocalizedStrings
local current = Harvest.localizedStrings or {}

function Harvest.GetLocalization(tag)
	-- return the localization for the given tag,
	-- if the localization is missing, use the english string instead
	-- if the english string is missing, something went wrong.
	-- return the tag so that at least some string is returned to prevent the addon from crashing
	return (current[ tag ] or default[ tag ]) or tag
end

local UIStrings = {"SI_BINDING_NAME_HARVEST_SHOW_FILTER", "SI_BINDING_NAME_SKIP_TARGET", "SI_BINDING_NAME_TOGGLE_WORLDPINS", "SI_BINDING_NAME_TOGGLE_MAPPINS", "SI_BINDING_NAME_TOGGLE_MINIMAPPINS", "SI_BINDING_NAME_HARVEST_SHOW_PANEL",
		"HARVESTFARM_GENERATOR","HARVESTFARM_EDITOR","HARVESTFARM_SAVE"}
for _, str in pairs(UIStrings) do
	ZO_CreateStringId(str, Harvest.GetLocalization(str))
end

