local mkstr = ZO_CreateStringId
local SI = BMU.SI

-----------------------------------------------------------------------------
-- INTERFACE
-----------------------------------------------------------------------------
mkstr(SI.TELE_UI_TOTAL, "Results:")
mkstr(SI.TELE_UI_GOLD, "Saved Gold:")
mkstr(SI.TELE_UI_GOLD_ABBR, "k")
mkstr(SI.TELE_UI_GOLD_ABBR2, "m")
mkstr(SI.TELE_UI_TOTAL_PORTS, "Total Ports:")
---------
--------- Buttons
mkstr(SI.TELE_UI_BTN_REFRESH_ALL, "Refresh result list")
mkstr(SI.TELE_UI_BTN_UNLOCK_WS, "Automatic discovery of current zone wayshrines")
mkstr(SI.TELE_UI_BTN_FIX_WINDOW, "Fix / Unfix window")
mkstr(SI.TELE_UI_BTN_TOGGLE_ZONE_GUIDE, "Swap to BeamMeUp")
mkstr(SI.TELE_UI_BTN_TOGGLE_BMU, "Swap to Zone Guide")
mkstr(SI.TELE_UI_BTN_PORT_TO_OWN_HOUSE, "Own houses")
mkstr(SI.TELE_UI_BTN_ANCHOR_ON_MAP, "Undock / Dock on map")
mkstr(SI.TELE_UI_BTN_GUILD_BMU, "BeamMeUp Guilds & Partner Guilds")
mkstr(SI.TELE_UI_BTN_GUILD_HOUSE_BMU, "Visit BeamMeUp guild house")
mkstr(SI.TELE_UI_BTN_PTF_INTEGRATION, "\"Port to Friend's House\" Integration")
mkstr(SI.TELE_UI_BTN_DUNGEON_FINDER, "Arenas / Trials / Dungeons")
mkstr(SI.TELE_UI_BTN_TOOLTIP_CONTEXT_MENU, "\n|c777777(right-click for more options)")
---------
--------- List
mkstr(SI.TELE_UI_UNRELATED_ITEMS, "Maps in other Zones")
mkstr(SI.TELE_UI_UNRELATED_QUESTS, "Quests in other Zones")
mkstr(SI.TELE_UI_SAME_INSTANCE, "Same Instance")
mkstr(SI.TELE_UI_DIFFERENT_INSTANCE, "Different Instance")
mkstr(SI.TELE_UI_GROUP_EVENT, "Group Event")
---------
--------- Menu
mkstr(SI.TELE_UI_FAVORITE_PLAYER, "Player Favorite")
mkstr(SI.TELE_UI_FAVORITE_ZONE, "Zone Favorite")
mkstr(SI.TELE_UI_VOTE_TO_LEADER, "Vote to Leader")
mkstr(SI.TELE_UI_RESET_COUNTER_ZONE, "Reset Counter")
mkstr(SI.TELE_UI_INVITE_BMU_GUILD, "Invite to BeamMeUp guild")
mkstr(SI.TELE_UI_SHOW_QUEST_MARKER_ON_MAP, "Show Quest Marker")
mkstr(SI.TELE_UI_RENAME_HOUSE_NICKNAME, "Rename House nickname")
mkstr(SI.TELE_UI_TOGGLE_HOUSE_NICKNAME, "Show nicknames")
mkstr(SI.TELE_UI_VIEW_MAP_ITEM, "View Map Item")
mkstr(SI.TELE_UI_TOGGLE_ARENAS, "Solo Arenas")
mkstr(SI.TELE_UI_TOGGLE_GROUP_ARENAS, "Group Arenas")
mkstr(SI.TELE_UI_TOGGLE_TRIALS, "Trials")
mkstr(SI.TELE_UI_TOGGLE_ENDLESS_DUNGEONS, "Endless Dungeons")
mkstr(SI.TELE_UI_TOGGLE_GROUP_DUNGEONS, "Group Dungeons")
mkstr(SI.TELE_UI_TOGGLE_SORT_ACRONYM, "Sort by Acronym")
mkstr(SI.TELE_UI_DAYS_LEFT, "%d days left")
mkstr(SI.TELE_UI_TOGGLE_UPDATE_NAME, "Show update name")
mkstr(SI.TELE_UI_UNLOCK_WAYSHRINES, "Automatic discovery of wayshrines")
mkstr(SI.TELE_UI_TOOGLE_ZONE_NAME, "Show zone name")
mkstr(SI.TELE_UI_TOGGLE_SORT_RELEASE, "Sort by release")
mkstr(SI.TELE_UI_TOGGLE_ACRONYM, "Show acronym")
mkstr(SI.TELE_UI_TOOGLE_DUNGEON_NAME, "Show instance name")



-----------------------------------------------------------------------------
-- CHAT OUTPUTS
-----------------------------------------------------------------------------
mkstr(SI.TELE_CHAT_FAVORITE_UNSET, "Favorite slot is unset")
mkstr(SI.TELE_CHAT_FAVORITE_PLAYER_NO_FAST_TRAVEL, "The player is offline or hidden by set filters")
mkstr(SI.TELE_CHAT_NO_FAST_TRAVEL, "No fast travel option found")
mkstr(SI.TELE_CHAT_NOT_IN_GROUP, "You are not in a group")
mkstr(SI.TELE_CHAT_PORT_TO_OWN_PRIMARY_HOUSE_FAILED, "No Primary Residence set!")
mkstr(SI.TELE_CHAT_GROUP_LEADER_YOURSELF, "You are the group leader")
mkstr(SI.TELE_CHAT_UNLOCK_WS_DISCOVERED_TOTAL, "Total wayshrines discovered in the zone:")
mkstr(SI.TELE_CHAT_UNLOCK_WS_NEED_DISCOVERED, "The following wayshrines still need to be physically visited:")
mkstr(SI.TELE_CHAT_SHARING_FOLLOW_LINK, "Following the link ...")
mkstr(SI.TELE_CHAT_AUTO_UNLOCK_CANCELED, "Automatic discovery canceled by user.")
mkstr(SI.TELE_CHAT_AUTO_UNLOCK_SKIP, "Fast Travel error: Skip current player.")



-----------------------------------------------------------------------------
-- SETTINGS
-----------------------------------------------------------------------------
mkstr(SI.TELE_SETTINGS_SHOW_ON_MAP_OPEN, "Open BeamMeUp when the map is opened")
mkstr(SI.TELE_SETTINGS_SHOW_ON_MAP_OPEN_TOOLTIP, "When you open the map, BeamMeUp will automatically open as well, otherwise you'll see a button on the map top left and also a swap button in the map completion window.")
mkstr(SI.TELE_SETTINGS_ZONE_ONCE_ONLY, "Show every Zone once only")
mkstr(SI.TELE_SETTINGS_ZONE_ONCE_ONLY_TOOLTIP, "Show only one listing for each zone.")
mkstr(SI.TELE_SETTINGS_AUTO_PORT_FREQ, "Frequency of unlocking wayshrines (ms)")
mkstr(SI.TELE_SETTINGS_AUTO_PORT_FREQ_TOOLTIP, "Adjust the frequency of the automatic wayshrine unlocking. For slow computers or to prevent possible kicks from the game, a higher value can help.")
mkstr(SI.TELE_SETTINGS_AUTO_REFRESH, "Refresh & Reset on opening")
mkstr(SI.TELE_SETTINGS_AUTO_REFRESH_TOOLTIP, "Refresh result list each time you open BeamMeUp. Input fields are cleared.")
mkstr(SI.TELE_SETTINGS_HEADER_BLACKLISTING, "Blacklisting")
mkstr(SI.TELE_SETTINGS_HIDE_OTHERS, "Hide various inaccessible Zones")
mkstr(SI.TELE_SETTINGS_HIDE_OTHERS_TOOLTIP, "Hide zones like Maelstrom Arena, Outlaw Refuges and solo zones.")
mkstr(SI.TELE_SETTINGS_HIDE_PVP, "Hide PVP Zones")
mkstr(SI.TELE_SETTINGS_HIDE_PVP_TOOLTIP, "Hide zones like Cyrodiil, Imperial City and Battlegrounds.")
mkstr(SI.TELE_SETTINGS_HIDE_CLOSED_DUNGEONS, "Hide Group Dungeons and Trials")
mkstr(SI.TELE_SETTINGS_HIDE_CLOSED_DUNGEONS_TOOLTIP, "Hide all 4 men Group Dungeons, 12 men Trials and Group Dungeons in Craglorn. Group members in these zones will still be displayed!")
mkstr(SI.TELE_SETTINGS_HIDE_HOUSES, "Hide Houses")
mkstr(SI.TELE_SETTINGS_HIDE_HOUSES_TOOLTIP, "Hide all Houses.")
mkstr(SI.TELE_SETTINGS_WINDOW_STAY, "Keep BeamMeUp open")
mkstr(SI.TELE_SETTINGS_WINDOW_STAY_TOOLTIP, "When you open BeamMeUp without the map, it will stay even if you move or open other windows. If you use this option, it is recommended to disable the option 'Close BeamMeUp with map'.")
mkstr(SI.TELE_SETTINGS_ONLY_MAPS, "Show only Regions / Overland zones")
mkstr(SI.TELE_SETTINGS_ONLY_MAPS_TOOLTIP, "Show only the main regions like Deshaan or Summerset.")
mkstr(SI.TELE_SETTINGS_AUTO_REFRESH_FREQ, "Refresh interval (s)")
mkstr(SI.TELE_SETTINGS_AUTO_REFRESH_FREQ_TOOLTIP, "When BeamMeUp is open, an automatic refresh of the result list is performed every x seconds. Set the value to 0 to disable the automatic refresh.")
mkstr(SI.TELE_SETTINGS_FOCUS_ON_MAP_OPEN, "Focus the zone search box")
mkstr(SI.TELE_SETTINGS_FOCUS_ON_MAP_OPEN_TOOLTIP, "Focus the zone search box when BeamMeUp is opened together with the map.")
mkstr(SI.TELE_SETTINGS_HIDE_DELVES, "Hide Delves")
mkstr(SI.TELE_SETTINGS_HIDE_DELVES_TOOLTIP, "Hide all Delves.")
mkstr(SI.TELE_SETTINGS_HIDE_PUBLIC_DUNGEONS, "Hide Public Dungeons")
mkstr(SI.TELE_SETTINGS_HIDE_PUBLIC_DUNGEONS_TOOLTIP, "Hide all Public Dungeons.")
mkstr(SI.TELE_SETTINGS_FORMAT_ZONE_NAME, "Hide articles of zone names")
mkstr(SI.TELE_SETTINGS_FORMAT_ZONE_NAME_TOOLTIP, "Hide the articles of zone names to ensure a better sorting to find zones faster.")
mkstr(SI.TELE_SETTINGS_NUMBER_LINES, "Number of lines / listings")
mkstr(SI.TELE_SETTINGS_NUMBER_LINES_TOOLTIP, "By setting the number of visible lines / listings you can control the total height of the Addon.")
mkstr(SI.TELE_SETTINGS_HEADER_ADVANCED, "Extra Features")
mkstr(SI.TELE_SETTINGS_HEADER_UI, "General")
mkstr(SI.TELE_SETTINGS_HEADER_RECORDS, "Listings")
mkstr(SI.TELE_SETTINGS_CLOSE_ON_PORTING, "Auto close map and BeamMeUp")
mkstr(SI.TELE_SETTINGS_CLOSE_ON_PORTING_TOOLTIP, "Close map and BeamMeUp after the port process is started.")
mkstr(SI.TELE_SETTINGS_SHOW_NUMBER_PLAYERS, "Show number of players per map")
mkstr(SI.TELE_SETTINGS_SHOW_NUMBER_PLAYERS_TOOLTIP, "Display the number of players per map, you can port to. You can click on the number to see all these players.")
mkstr(SI.TELE_SETTINGS_CHAT_BUTTON_OFFSET, "Offset of the button in the chatbox")
mkstr(SI.TELE_SETTINGS_CHAT_BUTTON_OFFSET_TOOLTIP, "Increase the horizontal offset of the button in the header of the chatbox to avoid visual conflicts with other Addon icons.")
mkstr(SI.TELE_SETTINGS_SEARCH_CHARACTERNAMES, "Also search for character names")
mkstr(SI.TELE_SETTINGS_SEARCH_CHARACTERNAMES_TOOLTIP, "Also search for character names when searching for players.")
mkstr(SI.TELE_SETTINGS_SORTING, "Sorting")
mkstr(SI.TELE_SETTINGS_SORTING_TOOLTIP, "Choose one of the possible sorts of the list.")
mkstr(SI.TELE_SETTINGS_SECOND_SEARCH_LANGUAGE, "Second Search Language")
mkstr(SI.TELE_SETTINGS_SECOND_SEARCH_LANGUAGE_TOOLTIP, "You can search by zone names in your client language and this second language at the same time. The tooltip of the zone name displays also the name in the second language.")
mkstr(SI.TELE_SETTINGS_NOTIFICATION_PLAYER_FAVORITE_ONLINE, "Notification Player Favorite Online")
mkstr(SI.TELE_SETTINGS_NOTIFICATION_PLAYER_FAVORITE_ONLINE_TOOLTIP, "You receive a notification (center screen message) when a player favorite comes online.")
mkstr(SI.TELE_SETTINGS_HIDE_ON_MAP_CLOSE, "Close BeamMeUp when the map is closed")
mkstr(SI.TELE_SETTINGS_HIDE_ON_MAP_CLOSE_TOOLTIP, "When you close the map, BeamMeUp also closes.")
mkstr(SI.TELE_SETTINGS_MAP_DOCK_OFFSET_HORIZONTAL, "Offset of the Map Dock Position - Horizontal")
mkstr(SI.TELE_SETTINGS_MAP_DOCK_OFFSET_HORIZONTAL_TOOLTIP, "Here you can customize the horizontal offset of the docking on the map.")
mkstr(SI.TELE_SETTINGS_MAP_DOCK_OFFSET_VERTICAL, "Offset of the Map Dock Position - Vertical")
mkstr(SI.TELE_SETTINGS_MAP_DOCK_OFFSET_VERTICAL_TOOLTIP, "Here you can customize the vertical offset of the docking on the map.")
mkstr(SI.TELE_SETTINGS_RESET_ALL_COUNTERS, "Reset all Zone Counters")
mkstr(SI.TELE_SETTINGS_RESET_ALL_COUNTERS_TOOLTIP, "All zone counters are reset. Therefore, the sorting by most used is reset.")
mkstr(SI.TELE_SETTINGS_OFFLINE_NOTE, "Offline Reminder")
mkstr(SI.TELE_SETTINGS_OFFLINE_NOTE_TOOLTIP, "If you are set to offline for a while and you whisper or travel to someone, you will get a short screen message as reminder. As long as you are set to offline you cannot receive any whisper messages and no one can travel to you (but sharing is caring).")
mkstr(SI.TELE_SETTINGS_SCALE, "UI Scaling")
mkstr(SI.TELE_SETTINGS_SCALE_TOOLTIP, "Scale factor for the complete UI/window of BeamMeUp. A reload is necessary to apply changes.")
mkstr(SI.TELE_SETTINGS_RESET_UI, "Reset UI")
mkstr(SI.TELE_SETTINGS_RESET_UI_TOOLTIP, "Reset BeamMeUp UI by setting the following options back to default: Scaling, Button Offset, Map Dock Offsets and window positions. The complete UI will be reloaded.")
mkstr(SI.TELE_SETTINGS_SURVEY_MAP_NOTIFICATION, "Survey Map Notification")
mkstr(SI.TELE_SETTINGS_SURVEY_MAP_NOTIFICATION_TOOLTIP, "If you mine a survey map and there are still some identical maps (same location) in your inventory, a notification (center screen message) will inform you.")
mkstr(SI.TELE_SETTINGS_HEADER_PRIO, "Prioritization")
mkstr(SI.TELE_SETTINGS_HEADER_CHAT_COMMANDS, "Chat Commands")
mkstr(SI.TELE_SETTINGS_UNLOCKING_LESS_CHAT_OUTPUT, "Minimize chat output")
mkstr(SI.TELE_SETTINGS_UNLOCKING_LESS_CHAT_OUTPUT_TOOLTIP, "Reduce the number of chat outputs when using the Auto Unlock feature.")
mkstr(SI.TELE_SETTINGS_PRIORITIZATION_DESCRIPTION, "Here you can define which players should preferably be used for fast travel. After leaving or joining a guild, a reload is necessary to be displayed correctly here.")
mkstr(SI.TELE_SETTINGS_SHOW_BUTTON_ON_MAP, "Show additional button on the map")
mkstr(SI.TELE_SETTINGS_SHOW_BUTTON_ON_MAP_TOOLTIP, "Display a text button in the upper left corner of the world map to open BeamMeUp.")
mkstr(SI.TELE_SETTINGS_SURVEY_MAP_NOTIFICATION_SOUND, "Play sound")
mkstr(SI.TELE_SETTINGS_SURVEY_MAP_NOTIFICATION_SOUND_TOOLTIP, "Play a sound when showing the notification.")
mkstr(SI.TELE_SETTINGS_AUTO_CONFIRM_WAYSHRINE_TRAVEL, "Auto confirm wayshrine traveling")
mkstr(SI.TELE_SETTINGS_AUTO_CONFIRM_WAYSHRINE_TRAVEL_TOOLTIP, "Disable the confirmation dialog when you teleport to other wayshrines.")
mkstr(SI.TELE_SETTINGS_CURRENT_ZONE_ALWAYS_TOP, "Show current zone always on top")
mkstr(SI.TELE_SETTINGS_CURRENT_ZONE_ALWAYS_TOP_TOOLTIP, "Show current zone always on top of the list.")
mkstr(SI.TELE_SETTINGS_HIDE_OWN_HOUSES, "Hide OWN Houses")
mkstr(SI.TELE_SETTINGS_HIDE_OWN_HOUSES_TOOLTIP, "Hide your own houses (teleport outside) in the main list.")
mkstr(SI.TELE_SETTINGS_HEADER_STATS, "Statistics")
mkstr(SI.TELE_SETTINGS_MOST_PORTED_ZONES, "Most traveled zones:")
mkstr(SI.TELE_SETTINGS_INSTALLED_SCINCE, "Installed at least since:")
mkstr(SI.TELE_SETTINGS_INFO_CHARACTER_DEPENDING, "This option is linked to your character (not account wide)!")
mkstr(SI.TELE_SETTINGS_SHOW_TELEPORT_ANIMATION, "Teleport animation")
mkstr(SI.TELE_SETTINGS_SHOW_TELEPORT_ANIMATION_TOOLTIP, "Show an additional teleportation animation when starting a fast travel via BeamMeUp. The collectible 'Finvir's Trinket' must be unlocked.")
mkstr(SI.TELE_SETTINGS_SHOW_CHAT_BUTTON, "Button in the chat window")
mkstr(SI.TELE_SETTINGS_SHOW_CHAT_BUTTON_TOOLTIP, "Display a button in the header of the chat window to open BeamMeUp.")
mkstr(SI.TELE_SETTINGS_USE_PAN_AND_ZOOM, "Pan and zoom")
mkstr(SI.TELE_SETTINGS_USE_PAN_AND_ZOOM_TOOLTIP, "Pan and zoom to the destination on the map when you click on group members or specific zones (dungeons, houses etc.).")
mkstr(SI.TELE_SETTINGS_USE_RALLY_POINT, "Map ping")
mkstr(SI.TELE_SETTINGS_USE_RALLY_POINT_TOOLTIP, "Display a map ping (rally point) on the destination on the map when you click on group members or specific zones (dungeons, houses etc.). The library LibMapPing must be installed. Also remember: If you are the group leader, your pings (rally points) are visible for all group members.")
mkstr(SI.TELE_SETTINGS_SHOW_ZONES_WITHOUT_PLAYERS, "Show zones without players or houses")
mkstr(SI.TELE_SETTINGS_SHOW_ZONES_WITHOUT_PLAYERS_TOOLTIP, "Display zones in the main list even if there are no players or houses you can travel to. You still have the option to travel for gold if you have discovered at least one wayshrine in the zone.")
mkstr(SI.TELE_SETTINGS_VIEWED_ZONE_ALWAYS_TOP, "Show displayed zone & subzones always on top")
mkstr(SI.TELE_SETTINGS_VIEWED_ZONE_ALWAYS_TOP_TOOLTIP, "Show currently displayed zone and subzones (opened world map) always on top of the list.")
mkstr(SI.TELE_SETTINGS_DEFAULT_TAB, "Default list")
mkstr(SI.TELE_SETTINGS_DEFAULT_TAB_TOOLTIP, "The list that is displayed by default when opening BeamMeUp.")


-----------------------------------------------------------------------------
-- KEY BINDING
-----------------------------------------------------------------------------
mkstr(SI.TELE_KEYBINDING_TOGGLE_MAIN, "Open BeamMeUp")
mkstr(SI.TELE_KEYBINDING_TOGGLE_MAIN_RELATED_ITEMS, "Treasure & survey maps & leads")
mkstr(SI.TELE_KEYBINDING_REFRESH, "Refresh result list")
mkstr(SI.TELE_KEYBINDING_WAYSHRINE_UNLOCK, "Unlock current zone wayshrines")
mkstr(SI.TELE_KEYBINDING_PRIMARY_RESIDENCE, "Port into Primary Residence")
mkstr(SI.TELE_KEYBINDING_GUILD_HOUSE_BMU, "Visit BeamMeUp Guild House")
mkstr(SI.TELE_KEYBINDING_CURRENT_ZONE, "Port to current zone")
mkstr(SI.TELE_KEYBINDING_PRIMARY_RESIDENCE_OUTSIDE, "Port outside Primary Residence")
mkstr(SI.TELE_KEYBINDING_TOGGLE_MAIN_DUNGEON_FINDER, "Arenas / Trials / Dungeons")
mkstr(SI.TELE_KEYBINDING_TRACKED_QUEST, "Port to focused quest")
mkstr(SI.TELE_KEYBINDING_ANY_ZONE, "Port to any zone")


-----------------------------------------------------------------------------
-- DIALOGS | NOTIFICATIONS
-----------------------------------------------------------------------------
mkstr(SI.TELE_DIALOG_NO_BMU_GUILD_BODY, "We are so sorry, but it seems that there is no BeamMeUp guild on this server yet.\n\nFeel free to contact us via the ESOUI website and start an official BeamMeUp guild on this server.")
mkstr(SI.TELE_DIALOG_INFO_BMU_GUILD_BODY, "Hello and thank you for using BeamMeUp. In 2019, we started several BeamMeUp guilds for the purpose of sharing free fast travel options. Everyone is welcome, no requirements or obligations!\n\nBy confirming this dialog, you will see the official and partner guilds of BeamMeUp in the list. You are welcome to join! You can also display the guilds by clicking on the guild button in the upper left corner.\nYour BeamMeUp Team")
mkstr(SI.TELE_DIALOG_INFO_NEW_FEATURE_FAVORITE_PLAYER_NOTIFICATION, "You receive a notification (center screen message) when a player favorite comes online.\n\nEnable this feature?")
mkstr(SI.TELE_DIALOG_INFO_NEW_FEATURE_SURVEY_MAP_NOTIFICATION, "If you mine a survey map and there are still some identical maps (same location) in your inventory, a notification (center screen message) will inform you.\n\nEnable this feature?")
mkstr(SI.TELE_DIALOG_PTF_INTEGRATION_MISSING_TITLE, "Integration of \"Port to Friend's House\"")
mkstr(SI.TELE_DIALOG_PTF_INTEGRATION_MISSING_BODY, "To use the integration feature, please install the addon \"Port to Friend's House\". You will then see your configured houses and guild halls here in the list.\n\nDo you want to open \"Port to Friend's House\" addon website now?")
-- AUTO UNLOCK: Start Dialog
mkstr(SI.TELE_DIALOG_AUTO_UNLOCK_TITLE, "Start automatic wayshrine discovery?")
mkstr(SI.TELE_DIALOG_AUTO_UNLOCK_BODY, "By confirming, BeamMeUp will start traveling to all available players in the current zone. This way you will automatically jump from wayshrine to wayshrine to discover as much as possible.")
mkstr(SI.TELE_DIALOG_AUTO_UNLOCK_LOOP_OPTION, "Looping over zones ...")
mkstr(SI.TELE_DIALOG_AUTO_UNLOCK_ORDER_OPTION1, "shuffle randomly")
mkstr(SI.TELE_DIALOG_AUTO_UNLOCK_ORDER_OPTION2, "by ratio of undiscovered wayshrines")
mkstr(SI.TELE_DIALOG_AUTO_UNLOCK_ORDER_OPTION3, "by number of players")
mkstr(SI.TELE_DIALOG_AUTO_UNLOCK_ORDER_OPTION4, "by zone name")
mkstr(SI.TELE_DIALOG_AUTO_UNLOCK_CHAT_LOG_OPTION, "Output results in chat")
-- AUTO UNLOCK: Refuse Dialogs
mkstr(SI.TELE_DIALOG_REFUSE_AUTO_UNLOCK_TITLE, "Discovery is not possible")
mkstr(SI.TELE_DIALOG_REFUSE_AUTO_UNLOCK_BODY, "All wayshrines in the zone have already been discovered.")
mkstr(SI.TELE_DIALOG_REFUSE_AUTO_UNLOCK_BODY2, "Wayshrine discovery is not possible in this zone. The feature is only available in overland zones/regions.")
mkstr(SI.TELE_DIALOG_REFUSE_AUTO_UNLOCK_BODY3, "Unfortunately, there are no players in the zone to travel to.")
-- AUTO UNLOCK: Process Dialog
mkstr(SI.TELE_DIALOG_PROCESS_AUTO_UNLOCK_BODY_PART, "Automatic wayshrine discovery is running...")
mkstr(SI.TELE_DIALOG_PROCESS_AUTO_UNLOCK_BODY_PART_DISCOVERY, "Newly discovered wayshrines:")
mkstr(SI.TELE_DIALOG_PROCESS_AUTO_UNLOCK_BODY_PART_XP, "Gained XP:")
mkstr(SI.TELE_DIALOG_PROCESS_AUTO_UNLOCK_BODY_PART_PROGRESS, "Progress:")
mkstr(SI.TELE_DIALOG_PROCESS_AUTO_UNLOCK_BODY_PART_TIMER, "Next jump in:")
-- AUTO UNLOCK: Finish Dialog
mkstr(SI.TELE_DIALOG_FINISH_AUTO_UNLOCK_BODY_PART, "Automatic discovery of wayshrines completed.")
-- AUTO UNLOCK: Timeout Dialog
mkstr(SI.TELE_DIALOG_TIMEOUT_AUTO_UNLOCK_TITLE, "Timeout")
mkstr(SI.TELE_DIALOG_TIMEOUT_AUTO_UNLOCK_BODY, "Sorry, an unknown error has occurred. The automatic discovery was canceled.")
-- AUTO UNLOCK: Loop Finish Dialog
mkstr(SI.TELE_DIALOG_LOOP_FINISH_AUTO_UNLOCK_TITLE, "Automatic discovery finished")
mkstr(SI.TELE_DIALOG_LOOP_FINISH_AUTO_UNLOCK_BODY, "No more zones found to be discovered. Either there are no players in the zones or you have already discovered all wayshrines.")



-----------------------------------------------------------------------------
-- CENTER SCREEN NOTIFICATIONS
-----------------------------------------------------------------------------
mkstr(SI.TELE_CENTERSCREEN_OFFLINE_NOTE_HEAD, "Note: You are still set to offline!")
mkstr(SI.TELE_CENTERSCREEN_OFFLINE_NOTE_BODY, "No one can whisper or travel to you!\n|c8c8c8c(Notification can be disabled in BeamMeUp settings)")
mkstr(SI.TELE_CENTERSCREEN_SURVEY_MAPS, "You have %d of this survey maps left! Come back after respawn!")
mkstr(SI.TELE_CENTERSCREEN_FAVORITE_PLAYER_ONLINE, "is now online!")



-----------------------------------------------------------------------------
-- ITEM NAMES (PART OF IT) - BACKUP
-----------------------------------------------------------------------------
mkstr(SI.CONSTANT_TREASURE_MAP, "treasure map") -- need a part of the item name that is in every treasure map item the same no matter which zone
mkstr(SI.CONSTANT_SURVEY_MAP, "survey:") -- need a part of the item name that is in every survey map item the same no matter which zone and kind of craft