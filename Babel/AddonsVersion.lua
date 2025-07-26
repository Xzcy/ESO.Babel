local BB = MABabel

BB.AddonsVersion = {
  --A
  ["AdvancedFilters"] =               "1.6.4.9",          --\lang\en.lua
  ["AlphaGear"] =                     "6.17.0",
  ["ArkadiusTradeTools"] =            "2.0.0",
  ["AutoCategory"] =                  "4.4.7",            --strings.lua
  ["Azurah"] =                        "2.4.47",
  --B
  ["BeamMeUp"] =                      "3.7.1",            --\localization\ZH.lua
  ["BanditsUserInterface"] =          "4.432",            --\lang\en.lua
  ["BuffTheGroup"] =                  "3.5.0",
  --C
  ["CarosSkillPointSaver"] =          "5.6.4",            --\lang\en.lua
  ["CombatMetrics"] =                 "1.7.5",            --\lang\en.lua
  ["CombatMetronome"] =               "1.7.3",            --CMSettings.lua
  ["CraftStoreFixedAndImproved"] =    "2.96",
  ["CrutchAlerts"] =                  "1.16.0",           --ProminentV2.lua, Effects.lua, Settings.lua, Damageable.lua
  --D
  ["DescendantsSupportSetTracker"] =  "1.0.3",
  ["displayleads"] =                  "42.1",
  ["DolgubonsLazySetCrafter"] =       "3.0.6",            --\Lang\en.lua
  ["DolgubonsLazyWritCreator"] =      "4.0.3.4",          --\Languages\default.lua
  ["DressingRoom"] =                  "0.12.1",
  --E
  ["ElmsMarkers"] =                   "3.1.0",
  ["EnglishTooltips"] =               "1.7.1",
  ["EssentialHousingTools"] =         "1774",
  --F
  ["FancyActionBar+"] =               "2.15.0",           --menu.lua
  ["FurnitureCatalogue"] =            "5.0.0",            --\locale\en.lua
  --G
  ["GridList"] =                      "1.3.2",
  ["GroupLootNotifier"] =             "2.17",
  ["GuildDonate"] =                   "1.4.11",
  ["GuildHallButton"] =               "2.3.20",
  --H
  ["HarvensImprovedSkillsWindow"] =   "2.0.13",
  ["HarvestMap"] =                    "3.16.2",           --\Modules\HarvestMap\Localization\default.lua
  ["HodorReflexes"] =                 "2025-07-25",       --\lang\en.lua
  ["HowToCloudrest"] =                "1.2.2",
  --I
  ["ITTSDonationBot"] =               "2.1.1",
  --J
  --K
  --L
  ["LibAddonMenu-2.0"] =              "2.0 r40",
  ["LoreBooks"] =                     "98",               --\Language\ZH\zh.lua
  ["LucentCitadelHelper"] =           "0.6.1",            --LucentCitadelHelperMenu.lua
  --M
  ["MasterMerchant"] =                "3.8.14",           --\i18n\EN.lua
  --N
  --O
  ["OdySupportIcons"] =               "1.13.2",           --FuncAddonOptions.lua
  --P
  ["pChat"] =                         "10.0.6.7",         --\i18n\en.lua
  ["PerfectPixel"] =                  "0.13.26",          --\lang\en.lua
  ["PersonalAssistant"] =             "2025.07.19",       --*\localization\en.lua
  ["Postmaster"] =                    "4.1.8",
  ["PotionMaker"] =                   "5.10.2",
  --Q
  ["QcellDreadsailReefHelper"] =      "2.0.3",
  ["QcellRockgroveHelper"] =          "6.8.2",
  ["QuestMap"] =                      "3.25",             --\lang\Strings-zh.lua
  --R
  ["RaidNotifier"] =                  "2.28.1",
  ["RdKGroupTool"] =                  "2.1.1",            --\Lang\en.lua
  --S
  ["SanitysEdgeHelper"] =             "1.2.6",
  ["SlightlyImprovedExperienceBar"] = "3.0.1",
  ["Srendarr"] =                      "2.5.45",
  ["SynergyToggle"] =                 "1.12.0",
  --T
  ["TamrielTradeCentre"] =            "4.24.743.18382",
  --U
  ["Untaunted"] =                     "1.1.5",
  --V
  ["VotansFisherman"] =               "1.16.2",
  ["VotansKeybinder"] =               "1.4.5",
  ["VotansMapPinColors"] =            "1.2.3",
  ["VotansMiniMap"] =                 "2.1.5",            --\lang\strings.lua
  ["VEQ"] =                           "2025.07.24",       --\Langs\en.lua
  --W
  ["WeaveDelays"] =                   "1.0.1",            --\WeaveDelays.lua
  ["WizardsWardrobe"] =               "1.22.0",           --\lang\en.lua, zones\*.lua
  ["WPamA"] =                         "2.5.2",            --\i18n\EN.lua
  ["WritWorthy"] =                    "7.5.1",            --\lang\en.lua
  --X
  --Y
  --Z
}

--[The Name of Table Sended to LAM] = key in BB.AddonsVersion,
BB.CurrentVersion = {
  ["BuffTheGroupOptions"]                = "BuffTheGroup",
  ["CombatMetronomeGeneralOptions"]      = "CombatMetronome",
  ["CombatMetronomeLATrackerOptions"]    = "CombatMetronome",
  ["CombatMetronomeProgressbarOptions"]  = "CombatMetronome",
  ["CombatMetronomeResourcesOptions"]    = "CombatMetronome",
  ["CombatMetronomeStackTrackerOptions"] = "CombatMetronome",
  ["CrutchAlertsOptions"]                = "CrutchAlerts",
  ["Descendants Support Set Tracker"]    = "DescendantsSupportSetTracker", --Get Version Info From Namespace
  ["ElmsMarkersOptions"]                 = "ElmsMarkers",
  ["FancyActionBar+Menu"]                = "FancyActionBar+",
  ["GridListOptions"]                    = "GridList",
  ["GLN_Menu"]                           = "GroupLootNotifier",
  ["HowToCloudrest_Settings"]            = "HowToCloudrest",
  ["LucentCitadelHelperOptions"]         = "LucentCitadelHelper",
  ["OdySupportIconsOptions"]             = "OdySupportIcons",
  ["QcellDreadsailReefHelperOptions"]    = "QcellDreadsailReefHelper",
  ["QcellRockgroveHelperOptions"]        = "QcellRockgroveHelper",
  ["SanitysEdgeHelperOptions"]           = "SanitysEdgeHelper",
  ["SlightlyImprovedExperienceBar"]      = "SlightlyImprovedExperienceBar",
  ["STS"]                                = "SynergyToggle",
  ["WeaveDelays"]                        = "WeaveDelays",
}