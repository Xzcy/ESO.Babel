local Icon = WPamA.Consts.IconsW
local OpenWindowText = GetString(SI_ENTER_CODE_CONFIRM_BUTTON) -- "Open Window"
WPamA.i18n = {
  Lng = "EN",
-- DateTime settings
  DateTimePart = {dd = 1, mm = 0, yy = 2, },
  DateFrmt = 2, -- 1 default:m.d.yyy ; 2:yyyy-mm-dd; 3:dd.mm.yyyy; 4:yyyy/mm/dd; 5:dd.mm.yy; 6:mm/dd; 7:dd.mm
  DateFrmtList = {"ESO Default","yyyy-mm-dd","dd.mm.yyyy","yyyy/mm/dd","dd.mm.yy","mm/dd","dd.mm"},
  DayMarker = "d",
  MetricPrefix = {"K","M","G","T","P","E"},
  CharsOrderList = {"ESO Default","Names","Alliance, Names","Max level, Names","Min level, Names","Alliance, Max level","Alliance, Min level"},
-- Marker (substring) in active quest step text for detect DONE stage
  DoneM = {
    [1] = "Return to",
    [2] = "Talk to",
  },
-- Keybinding string
  KeyBindShowStr  = "Show/hide addon window",
  KeyBindChgWStr  = "Open next window",
  KeyBindChgTStr  = "Open next window tab",
  KeyBindChgAStr  = "Open next addon tab",
  KeyFavRadMenu   = "Radial menu of favorite tabs",
  KeyBindCharStr  = "Show character Pledges",
  KeyBindClndStr  = "Show calendar of Pledges",
  KeyBindPostTd   = "Post today Pledges to chat (EN)",
  KeyBindPostTdCL = "Post today Pledges to chat (local language)",
  KeyBindWindow0  = OpenWindowText .. ": " .. "Group Dungeons",
  KeyBindWindow1  = OpenWindowText .. ": " .. "Trials",
  KeyBindWindow2  = OpenWindowText .. ": " .. GetString(SI_ZONECOMPLETIONTYPE9), -- "World Bosses"
  KeyBindWindow3  = OpenWindowText .. ": " .. "Skills",
  KeyBindWindow4  = OpenWindowText .. ": " .. GetString(SI_BINDING_NAME_TOGGLE_INVENTORY), -- "Inventory"
  KeyBindWindow5  = OpenWindowText .. ": " .. GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKCATEGORIES1), -- "PvP"
  KeyBindWindow6  = OpenWindowText .. ": " .. GetString(SI_MAPFILTER14), -- "Companions"
  KeyBindWindow7  = OpenWindowText .. ": " .. GetString(SI_JOURNAL_MENU_ACHIEVEMENTS) ..
                    ", " .. GetString(SI_COLLECTIONS_MENU_ROOT_TITLE), -- "Achievements, Collections"
  KeyBindWindow8  = OpenWindowText .. ": " .. GetString(SI_QUEST_JOURNAL_GENERAL_CATEGORY), -- "Miscellaneous"
  KeyBindRGLA     = "Show/hide RGLA (Raid Group Leader Assistant)",
  KeyBindRGLASrt  = "RGLA: Start",
  KeyBindRGLAStp  = "RGLA: Stop",
  KeyBindRGLAPst  = "RGLA: Post to chat",
  KeyBindRGLAShr  = "RGLA: Share quest",
  KeyBindLFGP     = "Enable/disable GFP (Group Finder for Pledges)",
  KeyBindLFGPMode = "GFP mode selection - 3/4/5/6 keys",
-- Caption
  Wind = {
    [0] = {
      Capt = "Group Dungeons",
      Tab = {
        [1] = {N="Pledges", W=65,},
        [2] = {N="Calendar", W=72,},
        [3] = {N="Random activity", W=124,},
        [4] = {N=GetString(SI_ENDLESS_DUNGEON_LEADERBOARDS_CATEGORIES_HEADER), W=181,}, -- Infinite Archive
      },
    },
    [1] = {
      Capt = "Trials",
      Tab = {
        [1] = {N="AA, HRC, SO, MOL, CR, SS", W=192,},
        [2] = {N="HOF, AS, KA, RG, DSR, SE", W=192,},
        [3] = {N="LC", W=192,},
      },
    },
    [2] = {
      Capt = GetString(SI_ZONECOMPLETIONTYPE9), -- "World Bosses"
      Tab = {
        [1] = {N="|t24:24:esoui/art/treeicons/tutorial_idexicon_wrothgar_up.dds|t", W=28, S=true, A="Wrothgar",},
        [2] = {N="|t24:24:esoui/art/treeicons/tutorial_idexicon_morrowind_up.dds|t", W=28, S=true, A="Vvardenfell",},
        [3] = {N="|t24:24:esoui/art/treeicons/tutorial_idexicon_darkbrotherhood_up.dds|t", W=28, S=true, A="Gold Coast",},
        [4] = {N="|t24:24:esoui/art/treeicons/tutorial_idexicon_summerset_up.dds|t", W=28, S=true, A="Summerset",},
        [5] = {N="|t24:24:esoui/art/treeicons/tutorial_idexicon_elsweyr_up.dds|t", W=28, S=true, A="Northern Elsweyr",},
        [6] = {N="|t24:24:esoui/art/treeicons/tutorial_indexicon_greymoor_up.dds|t", W=28, S=true, A="Western Skyrim",},
        [7] = {N="|t24:24:esoui/art/treeicons/tutorial_idexicon_blackwood_up.dds|t", W=28, S=true, A="Blackwood",},
        [8] = {N="|t24:24:esoui/art/treeicons/tutorial_idexicon_highisle_up.dds|t", W=28, S=true, A="High Isle",},
        [9] = {N="|t24:24:esoui/art/treeicons/tutorial_idexicon_necrom_up.dds|t", W=28, S=true, A="Apocrypha",},
      },
    },
    [3] = {
      Capt = "Skills",
      Tab = {
        [1] = {N="Class & AvA", W=95,},
        [2] = {N="Craft", W=41,},
        [3] = {N="Guild", W=43,},
        [4] = {N="World", W=50,},
        [5] = {N="|t24:24:esoui/art/treeicons/tutorial_idexicon_mounts_up.dds|t", W=28, S=true, A=GetString(SI_STATS_RIDING_SKILL),},
        [6] = {N="|t24:24:esoui/art/treeicons/tutorial_idexicon_darkbrotherhood_up.dds|t", W=28, S=true, A="Shadowy Supplier",},
        [7] = {N="|t22:22:esoui/art/champion/champion_points_stamina_icon.dds|t" ..
                 "|t22:22:esoui/art/champion/champion_points_magicka_icon.dds|t" ..
                 "|t22:22:esoui/art/champion/champion_points_health_icon.dds|t", W=70, S=true, A=GetString(SI_STAT_GAMEPAD_CHAMPION_POINTS_LABEL),},
      },
    },
    [4] = {
      Capt = GetString(SI_BINDING_NAME_TOGGLE_INVENTORY),
      Tab = {
        [1] = {N="Currency", W=74,},
        [2] = {N="Items", W=46,},
        [3] = {N="|t24:24:esoui/art/icons/store_experiencescroll_001.dds|t", W=28, S=true, A="Experience Scrolls",},
        [4] = {N="|t24:24:esoui/art/icons/crafting_runecrafter_potion_sp_001.dds|t", W=28, S=true, A="Transmutation Geodes",},
        [5] = {N="|t24:24:esoui/art/treeicons/tutorial_idexicon_items_up.dds|t", W=28, S=true,
               A=GetString(SI_GAMEPAD_PLAYER_INVENTORY_CAPACITY_FOOTER_LABEL),},
        [6] = {N="|t24:24:esoui/art/icons/quest_scroll_001.dds|t", W=28, S=true,
               A=GetString(SI_SPECIALIZEDITEMTYPE100) .. ", " .. GetString(SI_SPECIALIZEDITEMTYPE101),},
        [7] = {N="|t24:24:esoui/art/worldmap/map_indexicon_key_up.dds|t", W=28, S=true, A="Keys",},
      },
    },
    [5] = {
      Capt = GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKCATEGORIES1),
      Tab = {
        [1] = {N=GetString(SI_CAMPAIGNRULESETTYPE1), W=61,},
        [2] = {N=GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKSUBCATEGORIES5), W=112,},
        [3] = {N=GetString(SI_DAILY_LOGIN_REWARDS_TILE_HEADER), W=112,},
        [4] = {N="Rewards & Signs", W=132,},
--        [5] = {N=GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKSUBCATEGORIES4), W=100,},
      },
    },
    [6] = {
      Capt = GetString(SI_MAPFILTER14), -- "Companions"
      Tab = {
        [1] = {N=GetString(SI_COMPANION_OVERVIEW_RAPPORT), W=84,},
        [2] = {N="|t24:24:esoui/art/progression/progression_indexicon_class_up.dds|t" ..
                 "|t24:24:esoui/art/icons/progression_tabicon_fightersguild_up.dds|t" ..
                 "|t24:24:esoui/art/tutorial/progression_tabicon_armorheavy_up.dds|t", W=70, S=true,
               A="Skills: class, guild, armor",},
        [3] = {N="|t24:24:esoui/art/progression/icon_2handed.dds|t" ..
                 "|t24:24:esoui/art/progression/icon_bows.dds|t" ..
                 "|t24:24:esoui/art/progression/icon_healstaff.dds|t", W=70, S=true,
               A="Skills: weapon",},
        [4] = {N="|t24:24:esoui/art/tutorial/progression_tabicon_armormedium_up.dds|t" ..
                 "|t24:24:esoui/art/tutorial/progression_tabicon_armorheavy_up.dds|t" ..
                 "|t24:24:esoui/art/tutorial/progression_tabicon_armorlight_up.dds|t", W=70, S=true,
               A=GetString(SI_ARMORY_EQUIPMENT_LABEL) .. ": " .. GetString(SI_EQUIPSLOTVISUALCATEGORY2),},
        [5] = {N="|t24:24:esoui/art/tradinghouse/tradinghouse_apparel_accessories_necklace_up.dds|t" ..
                 "|t24:24:esoui/art/progression/icon_2handed.dds|t" ..
                 "|t24:24:esoui/art/tradinghouse/tradinghouse_apparel_accessories_ring_up.dds|t", W=70, S=true,
               A=GetString(SI_ARMORY_EQUIPMENT_LABEL) .. ": " .. GetString(SI_EQUIPSLOTVISUALCATEGORY1) .. ", " ..
                 GetString(SI_EQUIPSLOTVISUALCATEGORY3),},
      },
    },
    [7] = {
      Capt = GetString(SI_JOURNAL_MENU_ACHIEVEMENTS) .. ", " .. GetString(SI_COLLECTIONS_MENU_ROOT_TITLE),
      Tab = {
        [1] = {N="Seasonal Festivals", W=146,},
        [2] = {N=GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKSUBCATEGORIES803), W=70,},
      },
    },
    [8] = {
      Capt = GetString(SI_QUEST_JOURNAL_GENERAL_CATEGORY), -- "Miscellaneous"
      Tab = {
        [1] = {N=GetString(SI_ACTIVITY_FINDER_CATEGORY_TIMED_ACTIVITIES), W=102,},
        [2] = {N="Writs", W=48,},
        [3] = {N="|t24:24:esoui/art/tutorial/achievements_indexicon_darkanchors_up.dds|t", W=28, S=true,
               A=GetString(SI_ZONECOMPLETIONTYPE8),}, -- World Events
        [4] = {N="|t28:28:esoui/art/help/help_tabicon_overview_up.dds|t", W=28, S=true,
               A=GetString(SI_CUSTOMER_SERVICE_OVERVIEW),}, -- Overview
      },
    },
  },
  ModeSettings = {
    [25] = {
      HdT = {
        [1] = "Total",
        [2] = "In use",
        [3] = "Free",
      },
    },
--------
    [42] = {
      HdT = {
        [1] = GetString(SI_COLLECTIBLERESTRICTIONTYPE1), -- Race
        [2] = GetString(SI_COLLECTIBLERESTRICTIONTYPE3), -- Class
        [3] = "SP", [4] = "Last login", [5] = "Played time",
      },
    },
--------
  }, -- ModeSettings
  SelModeWin = {x = 220, y = 2, dy = 24,},
-- Labels
  TotalRow = {[1] = "BANK",[2] = "TOTAL",},
  HdrLvl = "Lvl",
  HdrName = "Name",
  HdrClnd = "Calendar",
  HdrMaj = "Maj",
  HdrGlirion = "Glirion",
  HdrUrgarlag = "Urgarlag",
  HdrLFGReward = "Purple reward",
  HdrLFGRnd  = "Dungeon",
  HdrLFGBG   = "Battlegrounds",
  HdrLFGTrib = GetString(SI_ACTIVITY_FINDER_CATEGORY_TRIBUTE),
  HdrAvAReward = GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKSUBCATEGORIES705),
  SendInvTo = "Sending invite to <<1>>",
  ShareSubstr = "share",
  EndeavorTypeNames = { [1] = "Daily endeavors", [2] = "Weekly endeavors", },
  NoWorldEventsHere = "There are no world events here",
  WECalculating = "Calculating",
  WEDistance = "Distance",
-- Pledge Quest Givers NPC names
  PledgeQGivers = {
    [1] = "Maj al-Ragath",
    [2] = "Glirion the Redbeard",
    [3] = "Urgarlag Chief-bane",
  },
-- Shadowy-Supplier NPC name
  ShadowySupplier = {
    ["Remains-Silent"] = true,
  },
  ComeBackLater = "Come back later",
-- Replace text for long companion equipment names
  CompanionEquipRepl = {
    CompTitle = "Companion's ",
   --- Trait names replacement ---
    ["No Trait"]   = {[4] = "no"},
    ["Aggressive"] = {[3] = "Aggress.", [4] = "Aggr"},
    ["Augmented"]  = {[3] = "Augment.", [4] = "Augm"},
    ["Bolstered"]  = {[4] = "Bolst"},
    ["Focused"]    = {[4] = "Focus"},
    ["Quickened"]  = {[3] = "Quicken.", [4] = "Quick"},
    ["Prolific"]   = {[3] = "Prolif.", [4] = "Prol"},
    ["Shattering"] = {[3] = "Shatter.", [4] = "Shat"},
    ["Soothing"]   = {[4] = "Sooth"},
    ["Vigorous"]   = {[4] = "Vigor"},
   --- Item names replacement ---
    ["Restoration Staff"] = {[1] = "Restor. Staff"},
   --- Item types replacement ---
    [SI_EQUIPTYPE5] = {[4] = "1H"}, -- "One-Handed"
    [SI_EQUIPTYPE6] = {[4] = "2H"}, -- "Two-Handed"
  },
-- Addon Options Menu
--> 1
  OptGeneralHdr = "General settings",
  OptCharsOrder = "Characters Order",
  OptCharsOrderF = "The choice of the order in which characters are displayed in the addon window. UI reload required. Characters are sorted only at the start of the addon and in the future the order does not change.",
  OptAlwaysMaxWinX  = "Fixed width of the main window",
  OptAlwaysMaxWinXF = "If enabled, the main window of the addon will always be the same width for all modes. If disabled, the width of the main window will vary depending on the mode.",
  OptLocation = "Show location instead of dungeon name",
  OptENDungeon = "Show the names of dungeons in English", 
  OptDontShowNone  = "Show blank instead of \"none\"",
  OptDontShowReady = "Show blank instead of \"Ready\"",
  OptTitleToolTip = "Show tooltips for the windows titles",
  OptLargeCalend  = "Show a two-week calendar of the Pledges",
  OptLargeCalendF = "If enabled, show the calendar of the Pledges for 15 days, otherwise for 8 days.",
  OptDateFrmt  = "The format of the date",
  OptDateFrmtF = "Select the format to display dates in the calendar window",
  OptShowTime  = "Also show time after date",
  OptLFGRndAvl  = "The format of short time periods",
  OptLFGRndAvlF = "Select the format of short time periods (less than 24 hours), such as daily reward for random activities, Shadowy Supplier, Riding skill, etc.",
  OptTrialAvl  = "The format of long time periods",
  OptTrialAvlF = "Select the format of long time periods (more than 24 hours), such as the weekly reward for Trials, etc.",
  OptTimerList = {"countdown timer","date & time (MM/DD hh:mi)","date & time (DD.MM hh:mi)"},
  OptRndDungDelay = "Waiting time for the daily reward",
  OptRndDungDelayF = "The time delay (in seconds) of waiting for information from the game server about the daily reward for the completed Random Dungeon activity. The default setting (5 sec) can be changed only when the addon shows \"???\" instead of a countdown timer after relogin or reload UI.",
  OptShowMonsterSetTT = "Show tooltip for the Monster Sets",
  OptShowMonsterSetTTF = "Show tooltip for the Monster Sets in \"Undaunted Pledges\" and \"Calendar of Pledges\" modes",
  OptMouseModeUI = "Show mouse pointer",
  OptMouseModeUIF = "Show mouse pointer while addon window is open",
  OptCharNamesMenu = "Characters names",
  OptCharNameColor = "Show the names in an Alliance color",
  OptCharNameAlign = "Names alignment",
  OptNamesAlignList = {"left", "center", "right"},
  OptCorrLongNames = "Correct the display of long names by",
  OptNamesCorrList = {"do nothing", "font size", "cutting the middle", "text mask"},
  OptNamesCorrRepl = {"Find this text in the name", "and replace with this text"},
  OptCompanionRapport = "Show companions rapport as...",
  OptCompanionRprtList = {"number", "text"},
  OptCompanionRprtMax = "Also show maximum value",
  OptCompanionEquip = "Show companions equipment as...",
  OptCompanionEquipList = {"item name", "item type", "item trait", "type and trait"},
  OptEndeavorRewardMode = "Show endeavor rewards as...",
  OptEndeavorRewardList = {"single", "current", "maximum"},
  OptEndeavorChatMsg  = "Show endeavor progress in chat",
  OptEndeavorChatMsgF = "Show information in the chat window when endeavor progress changes",
  OptEndeavorChatChnl = "Chat channel for progress notifications",
  OptEndeavorChatChnlF = "Chat channel to show information about the endeavor progress",
--> 2
  OptModeSetHdr = "Option and Mode settings",
  OptAutoActionsHdr = "Automation of daily activities",
  OptAutoTakeUpPledges = "Automatically take up the Pledges",
  OptAutoTakeUpPledgesF = "Automatically take up the pledge quests during a conversation with the Undaunted NPCs",
  OptAutoTakeDBSupplies = "Auto-receive the Dark Brotherhood supplies",
  OptAutoTakeDBSuppliesF = "Automatically receive beneficial items (supplies) during a conversation with the Shadowy Supplier",
  OptAutoTakeDBList = {"account-wide", "depends on Character"},
  OptChoiceDBSupplies = "What type of supplies to receive...",
  OptDBSuppliesList = {"do nothing", "poisons / potions", "less noticeable", "equipment"},
  OptLFGPHdr = "Group Finder for Pledges",
  OptLFGPOnOff = "Allow to use Group Finder for Pledges",
  OptLFGPMode = "Also set the group mode to...",
  OptLFGPModeList = {"always 3 keys","always 4 keys","always 5 keys","always 6 keys","depends on Character"},
  OptLFGPIgnPledge = "Ignore \"pledge completed\" checkmark",
  OptLFGPAlert = "Notify at screen",
  OptLFGPChat = "Notify to chat",
--> 3
  OptRGLAHdr = "RGLA settings",
  OptRGLAQAutoShare = "Allow auto-sharing of the quest",
  OptRGLAQAlert = "Notify at screen",
  OptRGLAQChat = "Notify to chat",
  OptRGLABossKilled = "RGLA stop once the boss is killed",
--> 4
  CharsOnOffHdr = "Show / Hide characters",
  CharsOnOffNote = "Note: Your current character will always ignore this setting. Information about the current character will always be displayed in all modes.",
  OptCharOnOffTtip = "Show / Hide character \"<<1>>\"",
--> 5
  ModesOnOffHdr = "Show / Hide window modes",
  ModesOnOffNote = "Note: This settings only affect the sequential switching window modes. You can hide any window modes, but at least one (any) window mode will be stay non-hidden. Also you can directly select the desired window mode from the context menu.",
  OptWindOnOffTtip = "Show / Hide window \n\"<<1>>\"",
  OptModeOnOffTtip = "Show / Hide window mode\n\"<<1>>\"",
--> 6
  CustomModeKbdHdr  = "Custom key binding settings",
  CustomModeKbdNote = "Note: This settings are account-wide.\nCustomizing the mode call keys allows you to assign keys to call modes of your choice.",
  OptCustomModeKbd  = GetString(SI_COLLECTIBLECATEGORYTYPE29) .. " <<1>> ...", -- Customized Action
--> 7
--  ResetCharNote = "",
  ResetChar = "Reset characters",
  ResetCharF = "Reset characters list",
  ResetCharWarn = "All the data about the characters will be deleted! Are you sure?",
-- LFGP texts
  LFGPSrchCanceled = "Searching a group is canceled",
  LFGPSrchStarted  = "Searching a group is started",
  LFGPAlrdyStarted = "Another activity has already started",
  LFGPQueueFailed  = "Creating the queue has failed",
  LFGP_ErrLeader   = "You are not a group leader!",
  LFGP_ErrOverland = "You must be in Overland world!",
  LFGP_ErrGroupRole= "You must have a group role!",
-- RGLA texts
  RGLABossKilled = "The boss was killed. RGLA is stopped.",
  RGLALeaderChanged = "The group leader was changed. RGLA is stopped.",
  RGLAShare = "Share",
  RGLAStop = "Stop",
  RGLAPost = "Post",
  RGLAStart = "Start",
  RGLAStarted = "Started",
  RGLALangTxt = "To the channel",
-- RGLA Errors
  RGLA_ErrLeader = "You are not a group leader!",
  RGLA_ErrAI = "Addon AutoInvite is not found or not activated!",
  RGLA_ErrBoss = "The boss already killed. RGLA can not be started.",
  RGLA_ErrQuestBeg = "You are don't have daily quest for ",
  RGLA_ErrQuestEnd = " World Bosses!",
  RGLA_ErrLocBeg = "You are not in ", 
  RGLA_ErrLocEnd = " right now!", 
  RGLA_Loc = {
    [ 0] = "Wrothgar",
    [ 1] = "Vvardenfell",
    [ 2] = "Gold Coast",
    [ 3] = "Summerset",
    [ 4] = "Northern Elsweyr",
    [ 5] = "Western Skyrim",
    [ 6] = "Greymoor Caverns",
    [ 7] = "Blackwood",
    [ 8] = "High Isle",
    [ 9] = "Telvanni Peninsula",
    [10] = "Apocrypha",
  },
-- Dungeons Status
  DungStDone = "DONE",
  DungStNA = "N/A",
-- Wrothgar Boss Status
  WWBStNone = "none",
  WWBStDone = "DONE",
  WWBStCur  = "CUR",
-- Trials Status
  TrialStNone = "none",
  TrialStActv = "ACT",
-- LFG Random Dungeon Status
  LFGRewardReady = "Ready",
  LFGRewardNA = "N/A",
-- Shadowy Supplier
  ShSuplUnkn = "?",
  ShSuplReady = "Ready",
  ShSuplNA = "N/A",
-- Login Status
  LoginToday = "Today",
  Login1DayAgo = "Yesterday",
}
WPamA.i18n.ToolTip = {
  [-1] = "",
  [ 0] = Icon.LMB .. " Close window",
  [ 1] = Icon.LMB .. " Show Options window",
  [ 2] = Icon.LMB .. " Change window\n" .. Icon.RMB .. " Select window",
  [ 3] = Icon.LMB .. Icon.RMB .. " Post today pledges to chat",
  [ 4] = "Your current progress in completing Pledges",
  [ 5] = "A calendar of current and future pledges",
  [ 6] = "Your current progress in completing daily quests",
  [ 7] = "Undaunted keys, lockpicks, grand soulgems and others...",
  [ 8] = "Your characters are Enlightened",
  [ 9] = "Your characters are not Enlightened",
  [10] = Icon.LMB .. " " .. WPamA.i18n.KeyBindLFGP .. "\n" .. Icon.RMB .. " " .. WPamA.i18n.KeyBindLFGPMode,
  [11] = "Transmute Crystals",
--
  [12] = "Your current progress in World skills.",
  [13] = GetString(SI_STABLE_STABLES_TAB),
  [14] = GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKCATEGORIES1),
  [15] = "Seasonal Festivals",
  [16] = "Your current progress in Guild skills.",
  [17] = "Your current progress in Class & AvA skills.",
  [18] = "Your current progress in Craft skills.",
  [19] = "The availability of weekly trials rewards",
  [20] = "Daily Rewards Tracker for Random Dungeon and Battlegrounds",
-- WB Wrothgar
  [21] = "Unfinished Dolmen\n - Zandadunoz the Reborn",
  [22] = "Nyzchaleft Falls\n - Nyzchaleft the Dwarven Centurion",
  [23] = "King-Chief's Throne\n - King-Chief Edu",
  [24] = "The Mad Ogre's Altar\n - Mad Urkazbur",
  [25] = "Poacher's Encampment\n - Old Snagara",
  [26] = "The Accursed Nursery\n - Corintthac the Abomination",
--
  [27] = "Achievement countdown",
  [29] = "Current GFP mode",
  [30] = "Purple reward is available",
-- 31-39 Class skills + Guild skills
  [31] = "Class skills: 1st line",
  [32] = "Class skills: 2nd line",
  [33] = "Class skills: 3rd line",
  [34] = "Fighters Guild",
  [35] = "Mages Guild",
  [36] = "Undaunted",
  [37] = "Thieves Guild",
  [38] = "Dark Brotherhood",
  [39] = "Psijic Order",
-- 41-47 Craft skills
-- 48-50 AvA skills
  [51] = "Hel Ra Citadel",
  [52] = "Aetherian Archive",
  [53] = "Sanctum Ophidia",
  [54] = "Maw of Lorkhaj",
  [55] = "Halls of Fabrication",
  [56] = "Asylum Sanctorium",
  [57] = "Cloudrest",
  [58] = "Sunspire",
  [59] = "Kyne's Aegis",
--
  [60] = GetString(SI_LEVEL_UP_REWARDS_SKILL_POINT_TOOLTIP_HEADER),
  [61] = "Gold",
  [62] = "Writ Vouchers",
  [63] = "Alliance Points",
  [64] = "Tel Var Stones",
--65-69 Item name
-- WB Vvardenfell
  [71] = "Missir-Dadalit Egg Mine\n - The Queen's Consort",
  [72] = "Salothan's Counsil\n - Salothan",
  [73] = "Nilthog's Hollow\n - Nilthog the Unbroken",
  [74] = "Sulipund Grange\n - Wuyuvus the Hunger",
  [75] = "Dubdil Alar Tower\n - Mehz the Cozener",
  [76] = "Shipwreck Cove\n - Kimbrudhil the Songbird",
-- WB Gold Coast
  [77] = "Kvatch Arena",
  [78] = "Tribune's Folly\n - Limenauruus",
-- WB Summerset
  [81] = "The Queen's Hatchery\n - Queen of the Reef",
  [82] = "Keelsplitter's Nest\n - Keelsplitter",
  [83] = "Indrik Frolic\n - Caanerin",
  [84] = "Welenkin Cove\n - B'Korgen",
  [85] = "Graveld's Hideaway\n - Graveld",
  [86] = "Gryphon Run\n - Haeliata and Nagravia",
-- Inventory
  [87] = "Information about filling the inventory",
  [88] = "Total places in the inventory",
  [89] = "Used places in the inventory",
  [90] = "Free places in the inventory",
-- WB Northern Elsweyr
  [91] = "The Bone Pit\n - Na'ruzz the Boneweaver",
  [92] = "Scar's Edge\n - Thannar the Graveprowler",
  [93] = "Red Hands Run\n - Akumjhargo and Zav'i",
  [94] = "Hill of Shattered Swords\n - Sword Master Vhysradue",
  [95] = "Talon Gulch\n - Wily Kee'va",
  [96] = "Nightmare Plateau\n - Zalsheem",
-- Inventory Upgrades
  [97] = GetString(SI_INTERACT_OPTION_BUY_BAG_SPACE),
  [98] = GetString(SI_GAMEPAD_STABLE_TRAIN) .. " - " .. GetString(SI_RIDINGTRAINTYPE2),
  [99] = GetString(SI_COLLECTIBLECATEGORYTYPE3) .. " - " .. GetString(SI_BINDING_NAME_TOGGLE_INVENTORY),
-- AvA Activity
  [100] = GetString(SI_CAMPAIGN_BROWSER_TOOLTIP_HOME_CAMPAIGN),
  [101] = GetString(SI_CAMPAIGN_SCORING_END_OF_CAMPAIGN_REWARD_TIER),
  [102] = GetString(SI_GAMEPAD_CAMPAIGN_SCORING_DURATION_REMAINING),
  [103] = GetString(SI_STATS_ALLIANCE_RANK),
  [104] = GetString(SI_LOOT_HISTORY_LEADERBOARD_SCORE) .. ".\n" .. GetString(SI_LEADERBOARDS_RANK_HELP_TOOLTIP),
  [105] = GetString(SI_DAILY_LOGIN_REWARDS_TILE_HEADER) .. " (AvA)",
--
  [106] = GetString(SI_ACTIVITY_FINDER_CATEGORY_TIMED_ACTIVITIES),
  [107] = "Shadowy Supplier",
  [108] = "Shadowy Supplier cooldown timer",
  [109] = "Rapport with Companions",
  [110] = GetString(SI_STAT_GAMEPAD_CHAMPION_POINTS_LABEL),
  [111] = GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKSUBCATEGORIES212),
-- World Events
  [112] = "", -- an overridden string
  [113] = "", -- an overridden string
  [114] = "", -- an overridden string
  [115] = "|t24:24:esoui/art/progression/progression_tabicon_weapons_active.dds|t" ..
          "- How much time has passed since the active event was detected.\n" ..
          "|t28:28:esoui/art/progression/progression_crafting_delevel_up.dds|t" ..
          "- How much time has passed since the event was completed.",
  [116] = "How much time the event has been active.\n(how long did it take for players to complete the event)",
  [117] = "Estimated time until the world event is activated.\n" ..
          "At least 2 completed events are needed to calculate the time.\n" ..
          "The more events that are completed, the more accurate the time calculation will be.",
  [118] = "HP % - The health level of the event boss.\n" ..
          "|t28:28:esoui/art/progression/progression_crafting_delevel_up.dds|t" ..
          "- How much time has passed since the event was completed.",
  [119] = "The distance in meters to the event boss.\nActual information about the boss can only be obtained within 300 meters of the boss.",
  [120] = "Estimated time until the world event is activated.\n" ..
          "Depends on the number and activity of players in the location.",
-- WB Western Skyrim
  [121] = "Ysmgar's Beach\n - Sea Giant",
  [122] = "Hordrek's Hunting Grounds\n - Werewolf Hunting Party",
  [123] = "Circle of Champions",
  [124] = "Shademother's Haven\n - Shademother",
-- WB Blackreach: Greymoor Caverns
  [125] = "Vampire Feeding Grounds\n - Feeding Grounds",
  [126] = "Colossus Charging Station\n - Dwarven Colossus",
-- Endless Dungeon progress
  [158] = "Daily quest\n" ..
          Icon.Lock .. " - introductory quest is not completed\n" ..
          Icon.Quest .. " - quest is available\n" ..
          Icon.ChkM .. " - quest completed",
  [159] = "Best progression reached\n(for all dungeon runs with the addon active)",
--160-190 Item name
-- Trials
  [191] = "Rockgrove",
  [192] = "Dreadsail Reef",
  [193] = "Sanity's Edge",
  [194] = "Lucent Citadel",
-- WB Blackwood
  [201] = "Old Deathwart's Pond\n - Old Deathwart",
  [202] = "Xeemhok's Lagoon\n - Xeemhok the Trophy-Taker",
  [203] = "Sul-Xan Ritual Site\n - Yaxhat Deathmaker, Nukhujeema, Shuvh-Mok, Veesha the Swamp Mystic",
  [204] = "The Shattered Xanmeer\n - Ghemvas the Harbinger",
  [205] = "Shardius's Excavation\n - Bhrum",
  [206] = "Toad-Tongue War Camp\n - War Chief Zathmoz",
-- Crafting Writs
  [207] = GetQuestName(WPamA.DailyWrits.QuestIDs[1][1]),
  [208] = GetQuestName(WPamA.DailyWrits.QuestIDs[2][1]),
  [209] = GetQuestName(WPamA.DailyWrits.QuestIDs[3][1]),
  [210] = GetQuestName(WPamA.DailyWrits.QuestIDs[4][1]),
  [211] = GetQuestName(WPamA.DailyWrits.QuestIDs[5][1]),
  [212] = GetQuestName(WPamA.DailyWrits.QuestIDs[6][1]),
  [213] = GetQuestName(WPamA.DailyWrits.QuestIDs[7][1]),
--214-229 Companion Skills
  [214] = "Class skills",
  [215] = "", -- an overridden string
  [216] = "", -- an overridden string
  [217] = "", -- an overridden string
  [218] = GetString(SI_EQUIPMENTFILTERTYPE1),
  [219] = GetString(SI_EQUIPMENTFILTERTYPE2),
  [220] = GetString(SI_EQUIPMENTFILTERTYPE3),
  [221] = GetString(SI_WEAPONCONFIGTYPE3),
  [222] = GetString(SI_WEAPONCONFIGTYPE1),
  [223] = GetString(SI_WEAPONCONFIGTYPE2),
  [224] = GetString(SI_WEAPONCONFIGTYPE4),
  [225] = GetString(SI_WEAPONCONFIGTYPE5),
  [226] = GetString(SI_WEAPONCONFIGTYPE6),
--227-240 Companion Equips
  [227] = GetString(SI_EQUIPSLOT0),
  [228] = GetString(SI_EQUIPSLOT3),
  [229] = GetString(SI_EQUIPSLOT2),
  [230] = GetString(SI_EQUIPSLOT16),
  [231] = GetString(SI_EQUIPSLOT6),
  [232] = GetString(SI_EQUIPSLOT8),
  [233] = GetString(SI_EQUIPSLOT9),
  [234] = GetString(SI_EQUIPSLOT4),
  [235] = GetString(SI_EQUIPSLOT5),
  [236] = GetString(SI_EQUIPSLOT1),
  [237] = GetString(SI_EQUIPSLOT11),
  [238] = GetString(SI_EQUIPSLOT12),
--239
--240
-- WB High Isle
  [241] = "Serpent Bog\n - Serpent Caller Vinsha",
  [242] = "Y'ffre's Cauldron\n - The Sable Knight",
  [243] = "Dark Stone Hollow\n - The Ascendant Executioner, The Ascendant Harrower",
  [244] = "Faun Falls\n - Glemyos Wildhorn",
  [245] = "Amenos Basin\n - Skerard the Theurge, Rosara the Theurge",
  [246] = "Mornard Falls\n - Hadolid Matron, Hadolid Consort",
--247-249 Books Category (Init by WPamA:InitLoreBookMode)
-- Hireling mail and crafting profession certification
  [250] = "\n" .. Icon.Mail .. " - Hirelings mail is available (need to log in the game or change location)" ..
          "\n" .. Icon.NoCert .. " - Crafting profession certification is not completed",
-- WB Necrom
  [251] = "Nightmare Den\n - The Walking Nightmare",
  [252] = "Clamorclap Bowl\n - Corlys the Chainmaker",
  [253] = "Deepreave Quag\n - Vro-Kuul-Sha",
  [254] = "Chthon Plaza\n - Valkynaz Dek",
  [255] = "Libram Cathedral\n - The Prime Cataloger",
  [256] = "Runemaster's Acropolis\n - Runemaster Xiomara",
}
--
WPamA.i18n.ToolTip[215] = WPamA.i18n.ToolTip[34]
WPamA.i18n.ToolTip[216] = WPamA.i18n.ToolTip[35]
WPamA.i18n.ToolTip[217] = WPamA.i18n.ToolTip[36]
--
WPamA.i18n.RGLAMsg = {
  [1] = "Z: LFM ...",
  [2] = "Z: LFM short",
  [3] = "Z: Start after 1 min",
  [4] = "G: Start after 1 min",
  [5] = "G: Start",
  [6] = "Z: Boss is down",
  [7] = "G: You already done it",
  [8] = "About addon",
}
-- In Dungeons structure:
-- Q - Quest name which indicates the dungeon
-- N - Short name of the dungeon displayed by the addon
WPamA.i18n.Dungeons = {
-- Virtual dungeon
  [1] = { -- None
    N = "none",
  },
  [2] = { -- Unknown
    N = "Unknown",
  },
-- First location dungeons
  [3] = { -- AD, Auridon, Banished Cells I
    N = "Banished Cells I",
  },
  [4] = { -- EP, Stonefalls, Fungal Grotto I
    N = "Fungal Grotto I",
  },
  [5] = { -- DC, Glenumbra, Spindleclutch I
    N = "Spindleclutch I",
  },
  [6] = { -- AD, Auridon, Banished Cells II
    N = "Banished Cells II",
  },
  [7] = { -- EP, Stonefalls, Fungal Grotto II
    N = "Fungal Grotto II",
  },
  [8] = { -- DC, Glenumbra, Spindleclutch II
    N = "Spindleclutch II",
  },
-- Second location dungeons
  [9] = { -- AD, Grahtwood, Elden Hollow I
    N = "Elden Hollow I",
  },
  [10] = { -- EP, Deshaan, Darkshade Caverns I
    N = "Darkshade Caverns I",
  },
  [11] = { -- DC, Stormhaven, Wayrest Sewers I
    N = "Wayrest Sewers I",
  },
  [12] = { -- AD, Grahtwood, Elden Hollow II
    N = "Elden Hollow II",
  },
  [13] = { -- EP, Deshaan, Darkshade Caverns II
    N = "Darkshade Caverns II",
  },
  [14] = { -- DC, Stormhaven, Wayrest Sewers II
    N = "Wayrest Sewers II",
  },
-- 3 location dungeons
  [15] = { -- AD, Greenshade, City of Ash I
    N = "City of Ash I",
  },
  [16] = { -- EP, Shadowfen, Arx Corinium
    N = "Arx Corinium",
  },
  [17] = { -- DC, Rivenspire, Crypt of Hearts I
    N = "Crypt of Hearts I",
  },
  [18] = { -- AD, Greenshade, City of Ash II
    N = "City of Ash II",
  },
  [19] = { -- DC, Rivenspire, Crypt of Hearts II
    N = "Crypt of Hearts II",
  },
-- 4 location dungeons
  [20] = { -- AD, Malabal Tor, Tempest Island
    N = "Tempest Island",
  },
  [21] = { -- EP, Eastmarch, Direfrost Keep
    N = "Direfrost Keep",
  },
  [22] = { -- DC, Alik`r Desert, Volenfell
    N = "Volenfell",
  },
-- 5 location dungeons
  [23] = { -- AD, Reaper`s March, Selene`s Web
    N = "Selene`s Web",
  },
  [24] = { -- EP, The Rift, Blessed Crucible
    N = "Blessed Crucible",
  },
  [25] = { -- DC, Bangkorai, Blackheart Haven 
    N = "Blackheart Haven",
  },
-- 6 location dungeons
  [26] = { -- Any, Coldharbour, Vaults of Madness
    N = "Vaults of Madness",
  },
-- 7 location dungeons
  [27] = { -- Any, Imperial City, IC Prison
    N = "IC Prison",
  },
  [28] = { -- Any, Imperial City, WG Tower
    N = "WG Tower",
  },
-- Shadows of the Hist DLC dungeons
  [29] = { -- EP, Shadowfen, Ruins of Mazzatun
    N = "Ruins of Mazzatun",
  },
  [30] = { -- EP, Shadowfen, Cradle of Shadows
    N = "Cradle of Shadows",
  },
-- Horns of the Reach DLC dungeons
  [31] = { -- Any, Craglorn, Bloodroot Forge
    N = "Bloodroot Forge",
  },
  [32] = { -- Any, Craglorn, Falkreath Hold
    N = "Falkreath Hold",
  },
-- Dragon Bones DLC dungeons
  [33] = { -- DC, Bangkorai, Fang Lair
    N = "Fang Lair",
  },
  [34] = { -- DC, Stormhaven, Scalecaller Peak
    N = "Scalecaller Peak",
  },
-- Wolfhunter DLC dungeons
  [35] = { -- AD, Reaper`s March, Moon Hunter Keep
    N = "Moon Hunter Keep",
  },
  [36] = { -- AD, Greenshade, March of Sacrifices
    N = "March of Sacrifices",
  },
-- Wrathstone DLC dungeons
  [37] = { -- EP, Eastmarch, Frostvault
    N = "Frostvault",
  },
  [38] = { -- Any, Gold Coast, Depths of Malatar
    N = "Depths of Malatar",
  },
-- Scalebreaker DLC dungeons
  [39] = { -- Any, Elsweyr, Moongrave Fane
    N = "Moongrave Fane",
  },
  [40] = { -- AD, Grahtwood, Lair of Maarselok
    N = "Lair of Maarselok",
  },
-- Harrowstorm DLC dungeons
  [41] = { -- Any, Wrothgar, Icereach
    N = "Icereach",
  },
  [42] = { -- DC, Bangkorai, Unhallowed Grave
    N = "Unhallowed Grave",
  },
-- Stonethorn DLC dungeons
  [43] = { -- Any, Blackreach, Stone Garden
    N = "Stone Garden",
  },
  [44] = { -- Any, Western Skyrim, Castle Thorn
    N = "Castle Thorn",
  },
-- Flames of Ambition DLC dungeons
  [45] = { -- Any, Gold Coast, Black Drake Villa
    N = "Black Drake Villa",
  },
  [46] = { -- EP, Deshaan, The Cauldron
    N = "The Cauldron",
  },
-- Waking Flame DLC dungeons
  [47] = { -- DC, Glenumbra, Red Petal Bastion
    N = "Red Petal Bastion",
  },
  [48] = { -- Any, Blackwood, The Dread Cellar
    N = "The Dread Cellar",
  },
-- Ascending Tide DLC dungeons
  [49] = { -- Any, Summerset, Coral Aerie
    N = "Coral Aerie",
  },
  [50] = { -- DC, Rivenspire, Shipwright's Regret
    N = "Shipwright's Regret",
  },
-- Lost Depths DLC dungeons
  [51] = { -- Any, High Isle, Earthen Root Enclave
    N = "Earthen Root Enclave",
  },
  [52] = { -- Any, High Isle, Graven Deep
    N = "Graven Deep",
  },
-- Scribes of Fate DLC dungeons
  [53] = { -- EP -> Stonefalls - Bal Sunnar
    N = "Bal Sunnar",
  },
  [54] = { -- EP -> The Rift - Scrivener's Hall
    N = "Scrivener's Hall",
  },
-- Scions of Ithelia DLC dungeons
  [55] = { -- Any -> The Reach - Oathsworn Pit
    N = "Oathsworn Pit",
  },
  [56] = { -- Any -> Wrothgar - Bedlam Veil
    N = "Bedlam Veil",
  },
}
WPamA.i18n.DailyBoss = {
-- Wrothgar
  [1]  = {C = "Defeat Zandadunoz the Reborn",}, -- ZANDA
  [2]  = {C = "Defeat Nyzchaleft",}, -- NYZ
  [3]  = {C = "Defeat King-Chief Edu",}, -- EDU
  [4]  = {C = "Defeat Mad Urkazbur",}, -- OGRE
  [5]  = {C = "Stop the Poachers",}, -- POA
  [6]  = {C = "Defeat Corintthac the Abomination",}, -- CORI
-- Vvardenfell
  [7]  = {C = "Defeat The Queen's Consort",}, -- QUEEN
  [8]  = {C = "Defeat Orator Salothan",}, -- SAL
  [9]  = {C = "Defeat Nilthog the Unbroken",}, -- NIL
  [10] = {C = "Defeat Wuyuvus",}, -- WUY
  [11] = {C = "Stop Dubdil Alar's Experiment",}, -- DUB 
  [12] = {C = "Defeat Kimbrudhil the Songbird",}, -- SIREN
-- Gold Coast
  [13] = {C = "Conquer the Kvatch Arena",}, -- ARENA
  [14] = {C = "Clear the Excavation Site",}, -- MINO
-- Summerset
  [15] = {C = "Kill Queen of the Reef",}, -- QUEEN
  [16] = {C = "Kill Keelsplitter",}, -- KEEL
  [17] = {C = "Kill Caanerin",}, -- CAAN
  [18] = {C = "Kill B'Korgen",}, -- KORG 
  [19] = {C = "Kill Graveld",}, -- GRAV
  [20] = {C = "Kill Haeliata and Nagravia",}, -- GRYPH 
-- Northern Elsweyr
  [21] = {C = "Kill Na'ruzz the Boneweaver",}, -- NARUZ
  [22] = {C = "Kill Thannar the Graveprowler",}, -- THAN
  [23] = {C = "Kill Akumjhargo and Zav'i",}, -- ZAVI
  [24] = {C = "Kill Sword Master Vhysradue",}, -- VHYS
  [25] = {C = "Kill Wily Kee'va",}, -- KEEVA
  [26] = {C = "Kill Zalsheem",}, -- ZAL
-- Western Skyrim
  [27] = {C = "Kill Ysmgar",}, -- YSM
  [28] = {C = "Kill the Werewolves",}, -- WWOLF
  [29] = {C = "Kill Skreg the Undefeatable",}, -- SKREG
  [30] = {C = "Kill Shademother",}, -- SHADE
-- Blackreach: Greymoor Caverns
  [31] = {C = "Purge the Vampire Feeding Grounds",}, -- VAMP
  [32] = {C = "Kill Dismantler the Dwarven Colossus",}, -- DISM
-- Blackwood
  [33] = {C = "Defeat Old Deathwart",}, -- FROG
  [34] = {C = "Defeat Xeemhok the Trophy-Taker",}, -- XEEM
  [35] = {C = "Defeat the Sul-Xan Ritualists",}, -- SUL
  [36] = {C = "Defeat Ghemvas the Harbinger",}, -- RUIN
  [37] = {C = "Defeat Bhrum-Koska",}, -- BULL
  [38] = {C = "Defeat War Chief Zathmoz",}, -- ZATH
-- High Isle
  [39] = {C = "Kill Serpent Caller Vinsha",}, -- VIN
  [40] = {C = "Destroy the Sable Knight",}, -- SAB
  [41] = {C = "Kill the Ascendant Order Fanatics",}, -- SHAD
  [42] = {C = "Kill Glemyos Wildhorn",}, -- WILD
  [43] = {C = "Kill the Eldertide Theurges",}, -- ELD
  [44] = {C = "Kill the Hadolid Matron",}, -- HAD
-- Necrom
  [45] = {C = "Defeat the Walking Nightmare",}, -- WNM
  [46] = {C = "Defeat Corlys the Chainmaker",}, -- CORL
  [47] = {C = "Defeat Vro-Kuul-Sha",}, -- VRO
  [48] = {C = "Defeat Valkynaz Dek",}, -- DEK
  [49] = {C = "Defeat the Prime Cataloger",}, -- CATL
  [50] = {C = "Defeat Runemaster Xiomara",}, -- XIOM
}
WPamA.i18n.DayOfWeek = {
  [0] = "Sun",
  [1] = "Mon",
  [2] = "Tue",
  [3] = "Wed",
  [4] = "Thu",
  [5] = "Fri",
  [6] = "Sat",
}
WPamA.i18n.Chat = {
  Today = "Today Pledges: (from <<2>> <<1>>): ",
  Anyday = "Pledges: (from <<2>> <<1>>): ",
  Loot  = " (can loot <<1>> )",
  Addon = " (Addon <<1>> v<<X:2>>)",
  Dlmtr = "; ",
}
WPamA.i18n.RGLA = {
  CZ = "/z",
  CL = "/g1",
  CP = "/p",
  F1 = "<<1>> LFM <<2>> can share quest.",
  F2 = " For auto-invite and auto-share type <<1>>",
  F3 = " For auto-invite type <<1>>",
--F4 = "",
  F5 = " ( <<1>> ).",
  F6 = "<<1>> LFM \"<<2>>\", auto-invite, auto-share",
  F7 = "<<1>> LFM \"<<2>>\", auto-invite",
  F8 = "<<1>> <<2>> start after 1 min",
  F9 = "/p START <<1>>",
  F10 = "<<1>> <<2>> is down",
  F11 = "/p Quest is auto-shared. Maybe you already have a quest to another boss or today you have already done it.",
  F12 = "Addon <<1>> v<<2>> from ESOUI.COM: The tracker for Pledges, Trials and World Bosses daily, auto-invite and auto-sharing.",
}
-- The message in chat should always be English. This part should be only in English localization.
WPamA.EN = {
  RGLA = {},
  Chat = {},
  DayOfWeek = {},
  DungeonsName = {},
  PledgeQGivers = {}, -- Pledge Quest Givers NPC names
}
for n, v in pairs(WPamA.i18n.Chat) do
  WPamA.EN.Chat[n] = v
end
for n, v in pairs(WPamA.i18n.RGLA) do
  WPamA.EN.RGLA[n] = v
end
for i = 1, 3 do
  WPamA.EN.PledgeQGivers[i] = WPamA.i18n.PledgeQGivers[i]
end
for i=0,6 do
  WPamA.EN.DayOfWeek[i] = WPamA.i18n.DayOfWeek[i]
end
for n, v in pairs(WPamA.i18n.Dungeons) do
  WPamA.EN.DungeonsName[n] = v.N
end
