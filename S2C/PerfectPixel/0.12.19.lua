--English (base) translations for the addon PerfectPixel	-->This file will always be loaded. Other language files will be loaded afterwards (like de.lua if you are using the German game client)
local stringsEn = {
	--[LAM settings]
	PP_LAM_ACTIVATE									= "Activate",
	PP_LAM_COLOR									= "Color",
	PP_LAM_EDGE_COLOR								= "Edge color",
	PP_LAM_LIST_BG									= "List background",
	--Window & list style
	PP_LAM_WINDOW_STYLE 							= "Window style",
	PP_LAM_LIST_STYLE 								= "List style",
	PP_LAM_LIST_STYLE_BACKDROP 						= "Backdrop",
	PP_LAM_LIST_STYLE_EDGE 							= "Edge",
	PP_LAM_LIST_STYLE_LIST 							= "List",
	PP_LAM_LIST_STYLE_INSETS 						= "Insets",
	PP_LAM_LIST_STYLE_TILE_LAYING  					= "Tile laying",
	PP_LAM_LIST_STYLE_TILE_SIZE  					= "Tile size",
	PP_LAM_LIST_STYLE_COLOR  						= "Color",
	PP_LAM_LIST_STYLE_HIGHLIGHT_COLOR				= "Highlight color",
	PP_LAM_LIST_STYLE_SELECTED_COLOR				= "Selected color",
	PP_LAM_LIST_STYLE_THICKNESS						= "Thickness",
	PP_LAM_LIST_STYLE_FILE_WIDTH					= "File width",
	PP_LAM_LIST_STYLE_FILE_HEIGHT					= "File height",
	PP_LAM_LIST_STYLE_STRETCH_TEXTURE_EDGE			= "Stretch texture edge",
	PP_LAM_LIST_STYLE_FADE_DISTANCE					= "Fade distance",
	PP_LAM_LIST_STYLE_UNIFORM_CONTROL_HEIGHT		= "Row height",
	PP_LAM_LIST_STYLE_CONTROL_HEIGHT				= "Control height",
	--Other
	PP_LAM_OTHERS									= "Others",
	PP_LAM_DONOTINTERRUPT							= "Do not interrupt interactive actions.",
	PP_LAM_BLUR_BG									= "Blur background",
	-- PP_LAM_FADE_SCENE_DURATION						= "Fade scene duration (ms)",
	--Reticle
	PP_LAM_RETICLE									= "Reticle",
	PP_LAM_RETICLE_HIDE_STEALTH						= "Hide \"" .. GetString(SI_STEALTH_HIDDEN) .. "\" Text",
	--Tabs
	PP_LAM_TABS										= "Tabs",
	PP_LAM_TABS_HIDE_MENU_BAR_LABEL					= "Hide Menu Bar Label",
	PP_LAM_TABS_HIDE_TOP_BAR_BG						= "Hide Top Bar Background",
	--Tooltips
	PP_LAM_TOOLTIPS									= "Tooltips",
	PP_LAM_COMPARATIVE_TOOLTIPS						= "Comparative Tooltips - show onHold",
	PP_LAM_COMPARATIVE_TOOLTIPS_TT					= "Comparative Tooltips will be shown only when you hold the assigned button. Assign a button in the control menu!",
	PP_LAM_COMPARATIVE_TOOLTIPS_BIND				= "Comparative Tooltips",
	--Compass
	PP_LAM_COMPASS									= "Compass",
	PP_LAM_COMPASS_QUEST							= "Quest area",
	PP_LAM_COMPASS_COMBAT							= "Combat indicator",
	--[LAM Scenes]
	--Inventory Scene
	PP_LAM_SCENE_INV								= "Inventory Scene",
	PP_LAM_SCENE_INV_NO_SPIN						= "Do not rotate the camera.",
	PP_LAM_SCENE_INV_NO_SPIN_TT						= "Disable if you experience problems with preview features.",
	--SkillsScene
	PP_LAM_SCENE_SKILLS								= "Skills Scene",
	PP_LAM_SCENE_SKILLS_SKILLS_TREE_UNWRAPPED		= "Unwrapped skills tree",
	PP_LAM_SCENE_SKILLS_SKILLS_TREE_BG				= "Skills tree background",
	--Journal Scene
	PP_LAM_SCENE_JOURNAL							= "Journal Scene",
	PP_LAM_SCENE_JOURNAL_QUEST_LARGE_LIST			= "Large quest list",
	--World map
	PP_LAM_SCENE_WORLDMAP							= "World Map",
	PP_LAM_SCENE_WORLDMAP_LARGE						= "Large Map",
	--GameMenuInGameScene
	PP_LAM_SCENE_GAME_MENU							= "Main Menu Scene",
	PP_LAM_SCENE_GAME_MENU_ADDONS					= "AddOns",
	--Performance Meter
	PP_LAM_SCENE_PERFORMANCE_METER					= "Performance Meter",
	--CraftStations
	PP_LAM_CRAFT_STATIONS_PROVISIONER_SHOWTOOLTIP	= "Show Tooltip",
	PP_LAM_TRANSPARENCY								= "Transparency",
	--Keybindstrip
	PP_LAM_KEYBINDSTRIP								= "Keybind strip",
	--Chat
	PP_LAM_SCENE_CHAT								= GetString(SI_CHAT_TAB_GENERAL),
}

--Provide the English strings as addon global values
PP.stringsEn = stringsEn

--Create the strings so they are available via function GetString(stringId) ingame
for stringId, stringValue in pairs(stringsEn) do
	ZO_CreateStringId(stringId, stringValue)
	SafeAddVersion(stringId, 1)
end