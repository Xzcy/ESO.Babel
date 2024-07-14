-- Notes to Translators:
--   - You will have to create a copy of this file and change it's name to your language. Then translate stuff in that file.
--     List of languages and resulting file names:
--       German: ui_de.lua
--       French: ui_fr.lua
--       Russian: ui_ru.lua
--       Japanese: ui_jp.lua
--       Spanish: ui_es.lua
--       Portuguese: ui_br.lua
--       Polish: ui_pl.lua
--   - /n is newline. It might not work/diplay correctly in all entries. Tooltips should be safe.
--   - %s %d are substitution commands that Addon will replace with dynamic values. They need to stay in translation!
--   - |c ... |r is for coloring text. They need to stay in translation!
--   - Tables/Lists marked "LOOP" are displayed via for loop.  Meaning you can add/remove lines if advantageous for translation
--     If you need to add lines for one not marked loop try /n for newline inside the string
--     If you hit a wall with /n. Let me know. Some additional ones could be changed to LOOP implementation
--   - A lot of UI Elements are fixed width and rather narrow. I know might make translating hard. Please try to fit. 
--     Worst come worst. I might be able to make dimensions as part of the language files. But this would be quite some work I fear. Please try to fit.
--   - Working iterative might be time consuming (Translate some values. Save. /reloadui in game). But safer. 
--     Changing a hundred things. Then /reloadui and nothing works anymore. And trying to figure out which of the 100 changes was the culprit is not pleasant. 


RDL.ZONENAME_ALLZONES = "All Zones"
RDL.ZONENAME_BGS = "Battlegrounds"

RDL.KEYBINDINGTEXT = "Toggle Display Leads Window"

-- UI Filter Elements (Dropdowns) 	

RDL.DropdownTooltips = {
	major = "Complex Filter Criteria",
	zone = "Filter by Zone",
	settype = "Filter by Set or Type of Antiquity",
}

RDL.DropdownData = {
	ChoicesMajor  = { "Can Find", "Can Scry", "Missing Codex Entries", "Never dug out", "Actionable Leads", "All Leads", "Group Dungeons", "Latest DLC",},
  
	TooltipsMajor  = {
		"Exludes found but not scried Leads as well as non-repeatable ones already found once",
		"Only shows Leads which have been found but not scried yet",
		"Only shows Antiquities which have missing Codex Entries",
		"Only shows Antiquities which have not been dug out yet",
		"Shows all Leads except finished non-repeatables",
		"Shows all Leads including finished non-repeatables",
		"Shows only Leads coming from 4 Man dungeons",
		"Shows only new Leads from latest DLC",
	},
	
	ChoicesZone = {RDL.ZONENAME_ALLZONES, "Current Zone", "Latest DLC", "Exclude minor DLC", },
	TooltipsZone = { 
		"Shows Leads from all Zones",
		"Only shows Leads pertaining to current Zone",
		"Shows only new Leads from latest DLC",
		"Only shows Leads pertaining to Base Zones and Chapters",
	},
	TooltipsZoneGenerated = "Show only Leads pertaining to %s",
	ChoicesSetType  = { "Everything", "Hide Obvious", "Multipart Antiquities",},
	TooltipsSetType   = {
		"Shows Leads for all Types and Sets",
		"Hides the Antique Maps, Free Treasure Leads, as well as Motif Chapters\nExcept if in 'Can Scry' Major mode. Then only hides built-in Green Treasure",
		"Shows only Leads for multipart Antiquities",
	},
	TooltipsSetTypeGenerated = "Show only lead of type/set %s",
}

-- Alerts Label

RDL.LABEL_ALERTS_UD_MISSING = "|c%sAlerts : %d 7D; %d 1D; %d 1H; ?? UD|r"

RDL.LABEL_ALERTS = "|c%sAlerts : %d 7D; %d 1D; %d 1H; %d UD|r"

-- LOOP
RDL.TOOLTIP_ALERTS_UD_MISSING = {
	"UndauntedDaily Addon missing! Can't",
	"compute if Dailies have Leads for you",
}

RDL.TOOLTIP_ALERTS_1HOUR = "Leads expiring in < 1 hour : %d"
RDL.TOOLTIP_ALERTS_1DAY = " Leads expiring in < 1 day : %d"
RDL.TOOLTIP_ALERTS_7DAYS = " Leads expiring in < 7 day : %d"
RDL.TOOLTIP_ALERTS_UD_NONEFOUND = "No Undaunted Dailies have Leads for you"
RDL.TOOLTIP_ALERTS_UD_SCRYFIRST = " (You already have this Lead, Scry/Excavate it first)"

RDL.LABEL_URL_INITIAL = "No Leads discovered so far"
RDL.LABEL_URL_LEADFOUND = "|c3A92FFReport latest Lead with ID %d|r"

-- LOOP
RDL.TOOLTIP_URL = {
	"To streamline reporting new locations: ",
	"If you find a Lead this Addon will:",
	" - post Lead ID Info into this Box",
	" - post existing Location into Field to the right",
	"   (if I thought Location Info was complete it will post ",
	"    a plea instead to doublecheck your info really is new)",
	" - If you found the Lead elsewhere please:",
	"   - remove what is in EditField",
	"   - describe your Location",
	"   - Click this Field here",
	"Addon will then:",
	" - transmogrify info into an URL",
	" - open URL in browser after you consent to ZOS Popup",
}

RDL.EDITBOX_INITIAL = "If you find NEW Location: Replace what will appear here; Click Label on left to send to browser"
RDL.EDITBOX_LOCATION_DATA_COMPLETE = "Location Info considered complete. Please only Submit if your find is not already covered by existing description"
RDL.EDITBOX_NO_LEAD_FOUND_OR_SELECTED = "Find a lead first, or Click Row of Lead you would like to report"
RDL.EDITBOX_NOT_EDITED = "To submit new find: Replace what is in this Editbox with your new Location first. Then click Label to the left."
RDL.EDITBOX_LOCDATA_EMPTY = "You need to enter your new Location into this Editbox. Then click Label to the left."
RDL.EDITBOX_THANKS = "Thank you for submitting new Location data"

RDL.SORTHEADER_NAMES = { "Lead", "Zone", "Location", "Diff", "Lore", "Dug", "Set", "Expiration", }
RDL.SORTHEADER_TOOLTIP = {
	"Name of the Antiquity",
	"Zone where Lead can be found/scried",
	"Short Location Description\n(D) = Delve\n(PD) = Public Dungeon\n(GD) = Group Dungeon\n(WB) = World Boss",
	"Actually Rarity of Lead. Except when Difficulty is 5.",
	"How many Lore/Codex Entries are still missing",
	"How many times has the antiquity been dug out already",
	"Name of the Set that will be rewarded if multipart Antiquity\n. Or type of Reward if single Lead Antiquity",
	"Time until Lead expires.\n For some Leads expiraton time does not go down for the first couple of days.",
}

-- LOOP
RDL.TOOLTIP_LEAD_HOWUPDATE = {
	"If you know about additional Location:",
	"Click Row to activate Location Data Update for this Lead.",
	"Replace Editbox content with your Location then click Label to the left of it"
}

-- LOOP
RDL.TOOLTIP_INKLING = {
	"Original Location Data provided by @inklings (Discord, Twitch)",
	"Thanks a lot for letting me use it",
}

RDL.TOOLTIP_MAPPINS = "Included in Hoft's MapPins Addon"



