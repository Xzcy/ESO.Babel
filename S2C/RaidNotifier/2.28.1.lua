local L = {}

L.Description                            = "Displays on-screen notifications on different events during trials."

--------------------------------
----     General Stuff      ----
--------------------------------
L.Settings_General_Header                           = "General"
-- Settings
L.Settings_General_Notifications_Showcase           = "Notifications showcase"
L.Settings_General_Bufffood_Reminder                = "Buff Food Reminder"
L.Settings_General_Bufffood_Reminder_TT             = "Alerts you when you have no buff food during trials or when it is about to expire (see below)"
L.Settings_General_Bufffood_Reminder_Interval       = "Reminder Interval"
L.Settings_General_Bufffood_Reminder_Interval_TT    = "Interval for the buff food reminder, in seconds, starting at 10 minutes remaining."
L.Settings_General_Vanity_Pets                      = "Turn off vanity pets during trials"
L.Settings_General_Vanity_Pets_TT                   = "Will turn off your vanity pets when you start a trial. Once you finish or exit a trial your pet will be enabled again."
L.Settings_General_No_Assistants                    = "Turn off assistants when combat starts"
L.Settings_General_No_Assistants_TT                 = "Only applies during trials and does NOT prevent them from being summoned."
L.Settings_General_Center_Screen_Announce           = "Announcement Type"
L.Settings_General_Center_Screen_Announce_TT        = "The type of announcement to use.\n\nOnly announcements of custom format can be relocated on the screen."
L.Settings_General_NotificationsScale               = "Notifications Scale"
L.Settings_General_NotificationsScale_TT            = "The scale of the notifications and minor countdowns display"
L.Settings_General_UseDisplayName                   = "Use Dislay Name"
L.Settings_General_UseDisplayName_TT                = "Use a player's display name in the notifications instead of his character name."
L.Settings_General_Unlock_Status_Icon               = "Unlock Status Icon"
L.Settings_General_Unlock_Status_Icon_TT            = "When enabled it will show status icon on the screen that can be moved."
L.Settings_General_Default_Sound                    = "Default Sound"
L.Settings_General_Default_Sound_TT                 = "The default sound to use for a notification."
-- Choices
L.Settings_General_Choices_Off                      = "Off"
L.Settings_General_Choices_Full                     = "Full"
L.Settings_General_Choices_Normal                   = "Normal"
L.Settings_General_Choices_Minimal                  = "Minimal"
L.Settings_General_Choices_Self                     = "Self"
L.Settings_General_Choices_Near                     = "Near"
L.Settings_General_Choices_All                      = "All"
L.Settings_General_Choices_Always                   = "Always"
L.Settings_General_Choices_Other                    = "Other"
L.Settings_General_Choices_Others                   = "Others"
L.Settings_General_Choices_Inverted                 = "Inverted"
L.Settings_General_Choices_Small_Announcement       = "Small (static, obsolete)"
L.Settings_General_Choices_Large_Announcement       = "Large (static, obsolete)"
L.Settings_General_Choices_Major_Announcement       = "Major (static, obsolete)"
L.Settings_General_Choices_1s                       = "1.0s"
L.Settings_General_Choices_500ms                    = "0.5s"
L.Settings_General_Choices_200ms                    = "0.2s"
L.Settings_General_Choices_Custom                   = "Custom"
L.Settings_General_Choices_Custom_Announcement      = "Custom (movable)"
L.Settings_General_Choices_SelfAndTanks             = "Self and tanks"
L.Settings_General_Choices_OnlyChaurusTotem         = "Only Chaurus" -- Specific for Kyne's Aegis
L.Settings_DreadsailReef_Choices_OnlyFireDome       = "Only Fire Dome"
L.Settings_DreadsailReef_Choices_OnlyIceDome        = "Only Ice Dome"
-- Alerts
L.Alerts_General_No_Bufffood                        = "You have no bufffood!"
L.Alerts_General_Bufffood_Minutes                   = "Your '<<1>>' bufffood runs out in |cbd0000<<2>>|r minutes!"
-- Bindings
L.Binding_ToggleUltimateExchange                    = "Toggle Ultimate"


--------------------------------
----    Ultimate Exchange   ----
--------------------------------
L.Settings_Ultimate_Header                           = "Ultimate Exchange (beta)"
L.Settings_Ultimate_Description                      = "This feature allows you to send your ultimate to your teammates so they can see how close you are to casting it. It uses your cost based on whatever cost reduction you might have from sets or passives."
-- Settings
L.Settings_Ultimate_Enabled                          = "Enabled"
L.Settings_Ultimate_Enabled_TT                       = "Enable the sharing and receiving of ultimate values. It is always disabled outside of trials."
L.Settings_Ultimate_Hidden                           = "Hidden"
L.Settings_Ultimate_Hidden_TT                        = "Hides the ultimate window but does not disable the feature itself."
L.Settings_Ultimate_UseColor                         = "Use Color"
L.Settings_Ultimate_UseColor_TT                      = "Gives the ultimate of someone a color based on the thresholds at 80 and 100 percent."
L.Settings_Ultimate_UseDisplayName                   = "Display User Name"
L.Settings_Ultimate_UseDisplayName_TT                = "Display the user name in the ultimate window instead of character name."
L.Settings_Ultimate_ShowHealers                      = "Show Healer"
L.Settings_Ultimate_ShowHealers_TT                   = "Show ultimate for group members with the Healer role."
L.Settings_Ultimate_ShowTanks                        = "Show Tank"
L.Settings_Ultimate_ShowTanks_TT                     = "Show ultimate for group members with the Tank role."
L.Settings_Ultimate_ShowDps                          = "Show Damage"
L.Settings_Ultimate_ShowDps_TT                       = "Show ultimate for group members with the Damage role."
L.Settings_Ultimate_TargetUlti                       = "Ultimate Ability"
L.Settings_Ultimate_TargetUlti_TT                    = "What ultimate ability to use for the percentage value seen by others."
L.Settings_Ultimate_OverrideCost                     = "Override Cost"
L.Settings_Ultimate_OverrideCost_TT                  = "Use this value when sending your ultimate cost to others. Setting it to 0 will disable the override."


--------------------------------
----        Profiles        ----
--------------------------------
L.Settings_Profile_Header                            = "Profiles"
L.Settings_Profile_Description                       = "Setting profiles can be managed here including the option to enable an account wide profile that will apply the same settings to ALL character\"s on this account. Due to the permanency of these options, management must first be enabled using the checkbox at the bottom of the panel."
L.Settings_Profile_UseGlobal                         = "Use Account Wide Profile"
L.Settings_Profile_UseGlobal_Warning                 = "Switching between local and global profiles will reload the interface."
L.Settings_Profile_Copy                              = "Select A Profile To Copy"
L.Settings_Profile_Copy_TT                           = "Select a profile to copy its settings to the currently active profile. The active profile will be for either the logged in character or the account wide profile if enabled. The existing profile settings will be permanently overwritten.\n\nThis cannot be undone!"
L.Settings_Profile_CopyButton                        = "Copy Profile"
L.Settings_Profile_CopyButton_Warning                = "Copying a profile will reload the interface."
L.Settings_Profile_CopyCannotCopy                    = "Unable to copy selected profile. Please try again or select another profile."
L.Settings_Profile_Delete                            = "Select A Profile To Delete"
L.Settings_Profile_Delete_TT                         = "Select a profile to delete its settings from the database. If that character is logged in later, and you are not using the account wide profile, new default settings will be created.\n\nDeleting a profile is permanent!"
L.Settings_Profile_DeleteButton                      = "Delete Profile"
L.Settings_Profile_Guard                             = "Enable Profile Management"


--------------------------------
----       Countdowns       ----
--------------------------------
L.Settings_Countdown_Header                          = "Countdowns"
L.Settings_Countdown_Description                     = "Change the looks and behaviour of our countdowns."
L.Settings_Countdown_TimerScale                      = "Major Timer Scale (obsolete)"
L.Settings_Countdown_TimerScale_TT                   = "The scale of the timer display"
L.Settings_Countdown_TextScale                       = "Major Text Scale (obsolete)"
L.Settings_Countdown_TextScale_TT                    = "The scale of the text display"
L.Settings_Countdown_TimerPrecise                    = "Timer precise"
L.Settings_Countdown_TimerPrecise_TT                    = "Set timer precise for countdown"
L.Settings_Countdown_UseColors                       = "Use Colors"
L.Settings_Countdown_UseColors_TT                    = "When enabled it will use yellow/orange/red colors for the countdown as it reaches zero"


--------------------------------
----          Trials        ----
--------------------------------
L.Settings_Trials_Header                            = "Trials"
L.Settings_Trials_Description                       = "Here you can configure the notifications for each trial. They all have a configurable sound and many of them support not only you but also your teammates."


--------------------------------
----     Hel Ra Citadel     ----
--------------------------------
L.Settings_HelRa_Header                             = "Hel Ra Citadel"
-- Settings
L.Settings_HelRa_Yokeda_Meteor                      = "Yokeda: Meteor"
L.Settings_HelRa_Yokeda_Meteor_TT                   = "Alerts you when the yokeda is about to attack with meteor."
L.Settings_HelRa_Warrior_StoneForm                  = "Warrior: Stone Form"
L.Settings_HelRa_Warrior_StoneForm_TT               = "Alerts you when you and/or others are about to be turned into stone by the Warrior."
L.Settings_HelRa_Warrior_ShieldThrow                = "Warrior: Shield Throw"
L.Settings_HelRa_Warrior_ShieldThrow_TT             = "Alerts you when the warrior is about to throw his shield."
--Alerts
L.Alerts_HelRa_Yokeda_Meteor                        = "Incoming |cFF0000Meteor|r on you. Block!"
L.Alerts_HelRa_Yokeda_Meteor_Other                  = "Incoming |cFF0000Meteor|r on |c595959<<!aC:1>>|r"
L.Alerts_HelRa_Warrior_StoneForm                    = "Incoming |c595959Stone Form|r on you. Don't use synergies!"
L.Alerts_HelRa_Warrior_StoneForm_Other              = "Incoming |c595959Stone Form|r on |cFF0000<<!aC:1>>|r"
L.Alerts_HelRa_Warrior_ShieldThrow                  = "Incoming |cFF0000Shield Throw|r. "


--------------------------------
----   Aetherian Archives   ----
--------------------------------
L.Settings_Archive_Header                           = "Aetherian Archives"
-- Settings
L.Settings_Archive_StormAtro_ImpendingStorm         = "Storm Atro: Impending Storm"
L.Settings_Archive_StormAtro_ImpendingStorm_TT      = "Alerts you when the Storm Atronach is about to do his large lightning AoE."
L.Settings_Archive_StormAtro_LightningStorm         = "Storm Atro: Lightning Storm"
L.Settings_Archive_StormAtro_LightningStorm_TT      = "Alerts you when the Storm Atronach is calling lightning from the sky that you need to shelter from."
L.Settings_Archive_StoneAtro_BoulderStorm           = "Stone Atro: Boulder Storm"
L.Settings_Archive_StoneAtro_BoulderStorm_TT        = "Alerts you when the Stone Atronach starts tossing multiple rocks at people."
L.Settings_Archive_StoneAtro_BigQuake               = "Stone Atro: Big Quake"
L.Settings_Archive_StoneAtro_BigQuake_TT            = "Alerts you when the Stone Atronach starts stomping on the ground."
L.Settings_Archive_Overcharge                       = "Mobs: Overcharge"
L.Settings_Archive_Overcharge_TT                    = "Alerts you when an Overcharger targets you with his Overcharge ability."
L.Settings_Archive_Call_Lightning                   = "Mobs: Call Lightning"
L.Settings_Archive_Call_Lightning_TT                = "Alerts you when an Overcharger targets you with his Call Lightning ability."
-- Alerts
L.Alerts_Archive_StormAtro_ImpendingStorm           = "Incoming |cFF0000Impending Storm|r!"
L.Alerts_Archive_StormAtro_LightningStorm           = "Incoming |cfef92eLightning Storm|r! Go into the light!"
L.Alerts_Archive_StoneAtro_BoulderStorm             = "Incoming |cFF0000Boulder Storm|r! Block to avoid knockback!"
L.Alerts_Archive_StoneAtro_BigQuake                 = "Incoming |cFF0000Big Quake|r!"
L.Alerts_Archive_Overcharge                         = "Incoming |c46edffOvercharge|r on you."
L.Alerts_Archive_Overcharge_Other                   = "Incoming |c46edffOvercharge|r on |cFF0000<<!aC:1>>|r."
L.Alerts_Archive_Call_Lightning                     = "Incoming |c46edffCall Lightning|r on you. Keep moving!"
L.Alerts_Archive_Call_Lightning_Other               = "Incoming |c46edffCall Lightning|r on |cFF0000<<!aC:1>>|r."


--------------------------------
----    Sanctum Ophidia     ----
--------------------------------
L.Settings_Sanctum_Header                           = "Sanctum Ophidia"
-- Settings
L.Settings_Sanctum_Magicka_Detonation               = "Serpent: Magicka Detonation"
L.Settings_Sanctum_Magicka_Detonation_TT            = "Alerts when you got the debuff of the magicka detonation during the serpent fight."
L.Settings_Sanctum_Serpent_Poison                   = "Serpent: Poison Phase"
L.Settings_Sanctum_Serpent_Poison_TT                = "Alerts for the poison phase during the Serpent fight."
L.Settings_Sanctum_Serpent_World_Shaper             = "Serpent: World Shaper (Hard Mode)"
L.Settings_Sanctum_Serpent_World_Shaper_TT          = "Alerts you when the Serpent starts his World Shaper attack, counting down until it is unleashed."
L.Settings_Sanctum_Mantikora_Spear                  = "Mantikora: Spear"
L.Settings_Sanctum_Mantikora_Spear_TT               = "Alerts you when you will get the Mantikora Spear."
L.Settings_Sanctum_Mantikora_Quake                  = "Mantikora: Quake"
L.Settings_Sanctum_Mantikora_Quake_TT               = "Alerts when you get the three set of quakes or runes on the Mantikora."
L.Settings_Sanctum_Troll_Boulder                    = "Mobs: Troll Boulder Toss"
L.Settings_Sanctum_Troll_Boulder_TT                 = "Alerts you when a troll prepares to throw a boulder at you."
L.Settings_Sanctum_Troll_Poison                     = "Mobs: Troll Poison"
L.Settings_Sanctum_Troll_Poison_TT                  = "Alerts you when a troll prepares to throw the spreading poison at you."
L.Settings_Sanctum_Overcharge                       = "Mobs: Overcharge"
L.Settings_Sanctum_Overcharge_TT                    = "Alerts you when an Overcharger targets you with his Overcharge ability."
L.Settings_Sanctum_Call_Lightning                   = "Mobs: Call Lightning"
L.Settings_Sanctum_Call_Lightning_TT                = "Alerts you when an Overcharger targets you with his Call Lightning ability."
-- Alerts
L.Alerts_Sanctum_Serpent_Poison0                    = "Incoming |c39942ePoison Phase|r! Stack together!"
L.Alerts_Sanctum_Serpent_Poison1                    = "Incoming |c39942ePoison Phase|r! Followed by |ccc0000Lamias|r."
L.Alerts_Sanctum_Serpent_Poison2                    = "Incoming |c39942ePoison Phase|r! Followed by |c009933Mantikora|r." --left
L.Alerts_Sanctum_Serpent_Poison3                    = "Incoming |c39942ePoison Phase|r! Followed by |c009933Mantikora|r." --right
L.Alerts_Sanctum_Serpent_Poison4                    = "Incoming |c39942ePoison Phase|r! Followed by |cff33ccShields|r."
L.Alerts_Sanctum_Serpent_Poison5                    = "Final |c39942ePoison Phase|r!"
L.Alerts_Sanctum_Serpent_World_Shaper               = "|c00c832World Shaper|r in"
L.Alerts_Sanctum_Magicka_Detonation                 = "|c234afaMagicka Detonation|r! Burn all your Magicka!"
L.Alerts_Sanctum_Mantikora_Spear                    = "Mantikora |ccde846Spear|r on you! Move out!"
L.Alerts_Sanctum_Mantikora_Spear_Other              = "Mantikora |ccde846Spear|r on <<!aC:1>>! Move out!"
L.Alerts_Sanctum_Mantikora_Quake                    = "Mantikora |ccde846Quake|r under you! Move away!"
L.Alerts_Sanctum_Troll_Poison                       = "Incoming |c66ff33Troll Poison|r. Don't spread it!"
L.Alerts_Sanctum_Troll_Poison_Other                 = "Incoming |c66ff33Troll Poison|r on |cFF0000<<!aC:1>>|r."
L.Alerts_Sanctum_Troll_Boulder                      = "Incoming |c595959Boulder Toss|r. Avoid it!"
L.Alerts_Sanctum_Troll_Boulder_Other                = "Incoming |c595959Boulder Toss|r on |cFF0000<<!aC:1>>|r."
L.Alerts_Sanctum_Overcharge                         = "Incoming |c46edffOvercharge|r on you."
L.Alerts_Sanctum_Overcharge_Other                   = "Incoming |c46edffOvercharge|r on |cFF0000<<!aC:1>>|r."
L.Alerts_Sanctum_Call_Lightning                     = "Incoming |c46edffCall Lightning|r on you. Keep moving!"
L.Alerts_Sanctum_Call_Lightning_Other               = "Incoming |c46edffCall Lightning|r on |cFF0000<<!aC:1>>|r."


--------------------------------
----    Maelstrom Arena     ----
--------------------------------
L.Settings_Maelstrom_Header                         = "Maelstrom Arena"
-- Settings
L.Settings_Maelstrom_Stage7_Poison                  = "Stage 7: Poison"
L.Settings_Maelstrom_Stage7_Poison_TT               = "Alerts you when you got poisoned in Stage 7 (Vault of Umbrage)."
L.Settings_Maelstrom_Stage9_Synergy                 = "Stage 9: Spectral Explosion (Synergy)"
L.Settings_Maelstrom_Stage9_Synergy_TT              = "Alerts you when you got the Synergy in Stage 9 (Theater of Despair) after you picked up 3 (golden) Ghosts."
-- Alerts
L.Alerts_Maelstrom_Stage7_Poison                    = "|c39942ePoisoned|r! Use one of the two areas to purge!"
L.Alerts_Maelstrom_Stage9_Synergy                   = "|c23afe7Spectral Explosion|r ready! Use the synergy!"


--------------------------------
----     Maw of Lorkhaj     ----
--------------------------------
L.Settings_MawLorkhaj_Header                        = "Maw of Lorkhaj"
-- Settings
L.Settings_MawLorkhaj_Zhaj_GripOfLorkhaj            = "Zhaj'hassa: Grip of Lorkhaj"
L.Settings_MawLorkhaj_Zhaj_GripOfLorkhaj_TT         = "Get a warning when the Grip of Lorkhaj debuff starts affecting you."
L.Settings_MawLorkhaj_Zhaj_Glyphs                   = "Zhaj'hassa: Cleansing Platforms (beta)"
L.Settings_MawLorkhaj_Zhaj_Glyphs_TT                = "Displays a window with all of the cleansing platforms with their status and time until they respawn."
L.Settings_MawLorkhaj_Zhaj_Glyphs_Invert            = "       - Inverted View"
L.Settings_MawLorkhaj_Zhaj_Glyphs_Invert_TT         = "Invert cleansing platforms."
L.Settings_MawLorkhaj_Twin_Aspects                  = "False Moon Twins: Aspects"
L.Settings_MawLorkhaj_Twin_Aspects_TT               = "Alerts when you get the Lunar or Shadow aspect at the False Moon Twins.\n\n    Full alerts you when you get an aspect, when you are starting to convert to an aspect and when the conversion is complete.\n    Normal alerts you when you get an aspect and when you are converting.\n    Minimal only alerts you when you are converting."
L.Settings_MawLorkhaj_Twin_Aspects_Status           = "       - Show Status"
L.Settings_MawLorkhaj_Twin_Aspects_Status_TT        = "Shows your current aspect in the status display during the boss fight."
L.Settings_MawLorkhaj_Rakkhat_Unstable_Void         = "Rakkhat: Unstable Void"
L.Settings_MawLorkhaj_Rakkhat_Unstable_Void_TT      = "Alerts when you have the unstable void effect at Rakkhat."
L.Settings_MawLorkhaj_Rakkhat_Unstable_Void_Countdown = "       - Countdown"
L.Settings_MawLorkhaj_Rakkhat_Unstable_Void_Countdown_TT = "When enabled it will show countdown instead of simple notification for unstable void."
L.Settings_MawLorkhaj_Rakkhat_ThreshingWings        = "Rakkhat: Threshing Wings"
L.Settings_MawLorkhaj_Rakkhat_ThreshingWings_TT     = "Alerts when Rakkhat uses his Threshing Wings ability that knocks you back."
L.Settings_MawLorkhaj_Rakkhat_DarknessFalls         = "Rakkhat: Darkness Falls"
L.Settings_MawLorkhaj_Rakkhat_DarknessFalls_TT      = "Alerts when Rakkhat uses his Darkness Falls ability where the ceiling comes crashing down."
L.Settings_MawLorkhaj_Rakkhat_DarkBarrage           = "Rakkhat: Dark Barrage"
L.Settings_MawLorkhaj_Rakkhat_DarkBarrage_TT        = "Alerts when Rakkhat uses his Dark Barrage channel ability on the tank."
L.Settings_MawLorkhaj_Rakkhat_LunarBastion1         = "Rakkhat: Lunar Bastion Gained"
L.Settings_MawLorkhaj_Rakkhat_LunarBastion1_TT      = "Shows when a player gains the blessing from the glowing platform."
L.Settings_MawLorkhaj_Rakkhat_LunarBastion2         = "Rakkhat: Lunar Bastion Lost"
L.Settings_MawLorkhaj_Rakkhat_LunarBastion2_TT      = "Shows when a player loses the blessing from the glowing platform."
L.Settings_MawLorkhaj_Hulk_ArmorWeakened            = "Hulk: Armor Weakened"
L.Settings_MawLorkhaj_Hulk_ArmorWeakened_TT         = "Alerts when Hulk applies stack of Armor Weakened debuff by his Thunderous Smash attack. You should not have more than two stacks or incoming damage will be too high to handle."
L.Settings_MawLorkhaj_ShatteringStrike              = "Mobs: Shattering Strike"
L.Settings_MawLorkhaj_ShatteringStrike_TT           = "Get a warning when Dro-m'Athra Savage is about to cast shattering strike attack."
L.Settings_MawLorkhaj_Shattered                     = "Mobs: Armor Shattered"
L.Settings_MawLorkhaj_Shattered_TT                  = "Get a warning when your armor is shattered."
L.Settings_MawLorkhaj_MarkedForDeath                = "Mobs: Marked for death (Panthers)"
L.Settings_MawLorkhaj_MarkedForDeath_TT             = "Get a warning if you are marked for death by the panthers of a Dro-m'Athra Dreadstalker"
L.Settings_MawLorkhaj_Suneater_Eclipse              = "Mobs: Sun-Eater Eclipse Field (negate)"
L.Settings_MawLorkhaj_Suneater_Eclipse_TT           = "Get a warning if the Eclipse Field targets you."
-- Alerts
L.Alerts_MawLorkhaj_Zhaj_GripOfLorkhaj              = "Warning! |c000055Grip of Lorkhaj!|r Cleanse now!"
L.Alerts_MawLorkhaj_Lunar_Aspect                    = "Received |cFEFF7FLunar|r Aspect!"
L.Alerts_MawLorkhaj_Shadow_Aspect                   = "Received |c000055Shadow|r Aspect!"
L.Alerts_MawLorkhaj_Lunar_Conversion                = "Converting to |cFEFF7FLunar|r Aspect!"
L.Alerts_MawLorkhaj_Shadow_Conversion               = "Converting to |c000055Shadow|r Aspect!"
L.Alerts_MawLorkhaj_Rakkhat_Unstable_Void           = "Warning! |c000055Unstable Void|r below you"
L.Alerts_MawLorkhaj_Rakkhat_Unstable_Void_Other     = "Warning! |c000055Unstable Void|r below |cFF0000<<!aC:1>>|r"
L.Alerts_MawLorkhaj_Rakkhat_ThreshingWings          = "Incoming |cFF0000Threshing Wings|r! Block!"
L.Alerts_MawLorkhaj_Rakkhat_DarknessFalls           = "Incoming |cFF0000Darkness Falls|r!"
L.Alerts_MawLorkhaj_Rakkhat_DarkBarrage             = "Incoming |cFF0000Dark Barrage|r"
L.Alerts_MawLorkhaj_Rakkhat_LunarBastion1           = "You gained |cFEFF7FLunar Bastion|r"
L.Alerts_MawLorkhaj_Rakkhat_LunarBastion1_Other     = "|cFF0000<<!aC:1>>|r gained |cFEFF7FLunar Bastion|r"
L.Alerts_MawLorkhaj_Rakkhat_LunarBastion2           = "You lost |cFEFF7FLunar Bastion|r"
L.Alerts_MawLorkhaj_Rakkhat_LunarBastion2_Other     = "|cFF0000<<!aC:1>>|r lost |cFEFF7FLunar Bastion|r"
L.Alerts_MawLorkhaj_Hulk_ArmorWeakened1             = "You got 1 stack of |c000055Armor Weakened|r debuff."
L.Alerts_MawLorkhaj_Hulk_ArmorWeakened1_Other       = "|cFF0000<<!aC:1>>|r got 1 stack of |c000055Armor Weakened|r debuff."
L.Alerts_MawLorkhaj_Hulk_ArmorWeakened2             = "You got |cFF00002 stacks|r of |c000055Armor Weakened|r debuff!"
L.Alerts_MawLorkhaj_Hulk_ArmorWeakened2_Other       = "|cFF0000<<!aC:1>>|r got |cFF00002 stacks|r of |c000055Armor Weakened|r debuff!"
L.Alerts_MawLorkhaj_Suneater_Eclipse                = "Incoming |cFF0000Eclipse Field|r on you."
L.Alerts_MawLorkhaj_Suneater_Eclipse_Other          = "Incoming |cFF0000Eclipse Field|r on |cFF0000<<!aC:1>>|r!"
L.Alerts_MawLorkhaj_ShatteringStrike                = "Incoming |c000055Shattering Strike|r on you."
L.Alerts_MawLorkhaj_ShatteringStrike_Other          = "Incoming |c000055Shattering Strike|r on |cFF0000<<!aC:1>>|r!"
L.Alerts_MawLorkhaj_Shattered                       = "Your |c595959Armor|r has been |cff0000Shattered|r."
L.Alerts_MawLorkhaj_MarkedForDeath                  = "Warning! |c000055Panthers|r are chasing you!"


--------------------------------
----    Dragonstar Arena    ----
--------------------------------
L.Settings_Dragonstar_Header                        = "Dragonstar Arena"
-- Settings
L.Settings_Dragonstar_General_Taking_Aim            = "General: Taking Aim"
L.Settings_Dragonstar_General_Taking_Aim_TT         = "Alerts you when you are being targeted by the Taking Aim ability."
L.Settings_Dragonstar_General_Crystal_Blast         = "General: Crystal Blast"
L.Settings_Dragonstar_General_Crystal_Blast_TT      = "Alerts you when you are being targeted by the Crystal Blast ability."
L.Settings_Dragonstar_Arena2_Crushing_Shock         = "Arena 2: Crushing Shock"
L.Settings_Dragonstar_Arena2_Crushing_Shock_TT      = "Alerts you when you are being targeted by the Crushing Shock ability in the Ice arena."
L.Settings_Dragonstar_Arena6_Drain_Resource         = "Arena 6: Drain Resource"
L.Settings_Dragonstar_Arena6_Drain_Resource_TT      = "Alerts you when you are being targeted by the Drain Resource poison arrow in the Bosmer arena."
L.Settings_Dragonstar_Arena7_Unstable_Core          = "Arena 7: Unstable Core (Eclipse)"
L.Settings_Dragonstar_Arena7_Unstable_Core_TT       = "Alerts you when an Unstable Core (Eclipse) has been placed on you by the Templar boss in the Sacrifice arena."
L.Settings_Dragonstar_Arena8_Ice_Charge             = "Arena 8: Ice Charge"
L.Settings_Dragonstar_Arena8_Ice_Charge_TT          = "Alerts you when an Ice Centurion is about to launch his ice attack."
L.Settings_Dragonstar_Arena8_Fire_Charge            = "Arena 8: Fire Charge"
L.Settings_Dragonstar_Arena8_Fire_Charge_TT         = "Alerts you when an Fire Centurion is about to launch his fire attack."
-- Alerts
L.Alerts_Dragonstar_General_Taking_Aim              = "|cFF6600Taking Aim|r targeted at you!"
L.Alerts_Dragonstar_General_Crystal_Blast           = "|c990099Crystal Blast|r targeted at you!"
L.Alerts_Dragonstar_Arena2_Crushing_Shock           = "Incoming |c3366EECrushing Shock|r! Block!"
L.Alerts_Dragonstar_Arena6_Drain_Resource           = "Incoming |c00CC00Drain Resource|r! Dodge!"
L.Alerts_Dragonstar_Arena6_Drain_Resource_Other     = "Incoming |c00CC00Drain Resource|r on |cFF0000<<!aC:1>>|r."
L.Alerts_Dragonstar_Arena7_Unstable_Core            = "You have |cDDDD33Unstable Core|r! Break free!"
L.Alerts_Dragonstar_Arena8_Ice_Charge               = "Incoming |c6699FFIce Charge|r on you! Interrupt or dodge!"
L.Alerts_Dragonstar_Arena8_Ice_Charge_Other         = "|c6699FFIce Charge|r is being cast on |cFF0000<<!aC:1>>|r. Interrupt!"
L.Alerts_Dragonstar_Arena8_Fire_Charge              = "Incoming |cFF3113Fire Charge|r on you! Interrupt or dodge!"
L.Alerts_Dragonstar_Arena8_Fire_Charge_Other        = "|c6699FFire Charge|r is being cast on |cFF0000<<!aC:1>>|r. Interrupt!"



--------------------------------
---- Halls Of Fabrication   ----
--------------------------------
L.Settings_HallsFab_Header                          = "Halls Of Fabrication"
-- Settings
L.Settings_HallsFab_Taking_Aim                      = "General: Taking Aim"
L.Settings_HallsFab_Taking_Aim_TT                   = "Alerts you when you are being targeted by the Taking Aim ability."
L.Settings_HallsFab_Taking_Aim_Dynamic              = "       - Countdown"
L.Settings_HallsFab_Taking_Aim_Dynamic_TT           = "When enabled it will show countdown instead of simple notification before Taking Aim attack."
L.Settings_HallsFab_Taking_Aim_Duration             = "       - Countdown Duration"
L.Settings_HallsFab_Taking_Aim_Duration_TT          = "The duration of the countdown in milliseconds."
L.Settings_HallsFab_Draining_Ballista               = "General: Draining Ballista"
L.Settings_HallsFab_Draining_Ballista_TT            = "Alerts you when Sphere need to be bashed."
L.Settings_HallsFab_Conduit_Strike                  = "General: Conduit Strike"
L.Settings_HallsFab_Conduit_Strike_TT               = "Alerts you when Conduit Strike is coming."
L.Settings_HallsFab_Power_Leech                     = "General: Draining Shock"
L.Settings_HallsFab_Power_Leech_TT                  = "Alerts you when you are stunned by Conduit Strike and need to break free."
L.Settings_HallsFab_Venom_Injection                 = "Hunters: Venom Injection"
L.Settings_HallsFab_Venom_Injection_TT              = "Shows a status display for when you are afflicted by Venom Injection during the Hunter bosses."
L.Settings_HallsFab_Conduit_Spawn                   = "Pinnacle: Conduit Spawning"
L.Settings_HallsFab_Conduit_Spawn_TT                = "Alerts you when a conduit is about to spawn at Factotum Pinnacle boss."
L.Settings_HallsFab_Conduit_Drain                   = "Pinnacle: Conduit Draining"
L.Settings_HallsFab_Conduit_Drain_TT                = "Alerts you when a conduit is draining you at Factotum Pinnacle boss."
L.Settings_HallsFab_Scalded_Debuff                  = "Pinnacle: Scalded Debuff"
L.Settings_HallsFab_Scalded_Debuff_TT               = "Displays a small status icon showing the time until it disappears and how big its healing debuff is."
L.Settings_HallsFab_Overcharge_Aura                 = "Committee: Overcharging Aura"
L.Settings_HallsFab_Overcharge_Aura_TT              = "Alerts you when reclaimer start overcharging aura."
L.Settings_HallsFab_Overpower_Auras                 = "Committee: Overpowering Auras"
L.Settings_HallsFab_Overpower_Auras_TT              = "Alerts you when the tanks need to swap the committee bosses"
L.Settings_HallsFab_Overpower_Auras_Duration        = "       - Countdown Duration"
L.Settings_HallsFab_Overpower_Auras_Duration_TT     = "The duration of the countdown in milliseconds."
L.Settings_HallsFab_Overpower_Auras_Dynamic         = "       - Dynamic Countdown"
L.Settings_HallsFab_Overpower_Auras_Dynamic_TT      = "When enabled it will attempt to stop the countdown once the tanks have swapped bosses."
L.Settings_HallsFab_Fabricant_Spawn                 = "Committee: Ruined Fabricant Spawn"
L.Settings_HallsFab_Fabricant_Spawn_TT              = "Alerts you when Ruined Fabricant is spawning."
L.Settings_HallsFab_Catastrophic_Discharge          = "Committee: Catastrophic Discharge"
L.Settings_HallsFab_Catastrophic_Discharge_TT       = "Alerts you when a Ruined Fabricant starts to charge at you."
L.Settings_HallsFab_Reclaim_Achieve                 = "Committee: Reclaim the Ruined Achieve Failed"
L.Settings_HallsFab_Reclaim_Achieve_TT              = "Alerts you when the bomber reaches Reclaimer."
-- Alerts
L.Alerts_HallsFab_Taking_Aim                        = "|cFF6600Taking Aim|r targeted at you!"
L.Alerts_HallsFab_Taking_Aim_Other                  = "|cFF6600Taking Aim|r targeted at |cFF0000<<!aC:1>>|r!"
L.Alerts_HallsFab_Taking_Aim_Simple                 = "|cFF6600Taking Aim|r"
L.Alerts_HallsFab_Conduit_Spawn                     = "A Conduit is about to spawn"
L.Alerts_HallsFab_Conduit_Drain                     = "A Conduit is draining you!"
L.Alerts_HallsFab_Conduit_Drain_Other               = "A Conduit is draining |cFF0000<<!aC:1>>|r!"
L.Alerts_HallsFab_Conduit_Strike                    = "Incoming |cFF0000Conduit Strike|r. Block!"
L.Alerts_HallsFab_Draining_Ballista                 = "|cFFC000Draining Ballista|r targeted at you! Block or interrupt!"
L.Alerts_HallsFab_Draining_Ballista_Other           = "|cFFC000Draining Ballista|r targeted at |cFF0000<<!aC:1>>|r! Interrupt!"
L.Alerts_HallsFab_Power_Leech                       = "|c6600FFPower Leech|r! Break Free!"
L.Alerts_HallsFab_Overcharge_Aura                   = "|c3366EEOvercharging Aura|r at Reclaimer."
L.Alerts_HallsFab_Overpower_Auras                   = "|cFF0000Aura Countdown!|r"
L.Alerts_HallsFab_Catastrophic_Discharge            = "|cFF0000Catastrophic Discharge|r at you! Block!"
L.Alerts_HallsFab_Fabricant_Spawn                   = "|cFFC000Ruined Fabricant Spawn|r"
L.Alerts_HallsFab_Reclaim_Achieve                   = "|cDCD822[Planned Obsolescence]|r Achievement |cFF0000Failed|r"



--------------------------------
----   Asylum Sanctorium    ----
--------------------------------
L.Settings_Asylum_Header                         = "Asylum Sanctorium"
-- Settings
L.Settings_Asylum_Defiling_Blast                 = "Saint Llothis: Defiling Dye Blast"
L.Settings_Asylum_Defiling_Blast_TT              = "Alerts you when Saint Llothis targets you or others with his cone attack."
L.Settings_Asylum_Soul_Stained_Corruption        = "Saint Llothis: Soul Stained Corruption"
L.Settings_Asylum_Soul_Stained_Corruption_TT     = "Alerts you when Saint Llothis targets players with his attack that should be bashed."
L.Settings_Asylum_Teleport_Strike                = "Saint Felms: Teleport Strike"
L.Settings_Asylum_Teleport_Strike_TT             = "Alerts you when Saint Felms is going to teleport at you."
L.Settings_Asylum_Exhaustive_Charges             = "Saint Olms: Exhaustive Charges"
L.Settings_Asylum_Exhaustive_Charges_TT          = "Alerts you when Saint Olms is about to launch his attack that drops three large lightning circles."
L.Settings_Asylum_Storm_The_Heavens              = "Saint Olms: Storm the Heavens"
L.Settings_Asylum_Storm_The_Heavens_TT           = "Alerts you when Saint Olms is about to go into the air and spawns a large amount of smaller lightning circles."
L.Settings_Asylum_Gusts_Of_Steam                 = "Saint Olms: Gusts Of Steam"
L.Settings_Asylum_Gusts_Of_Steam_TT              = "Alerts you when Saint Olms is about to jump back and forth, signaling the next phase of the fight."
L.Settings_Asylum_Gusts_Of_Steam_Slider          = "       - Percentage before jump"
L.Settings_Asylum_Gusts_Of_Steam_Slider_TT       = "Show notification couple percent of boss health faster before he jump."
L.Settings_Asylum_Protector_Spawn                = "Saint Olms: Protector Spawn"
L.Settings_Asylum_Protector_Spawn_TT             = "Alerts you when sphere is about to spawn."
L.Settings_Asylum_Trial_By_Fire                  = "Saint Olms: Trial By Fire"
L.Settings_Asylum_Trial_By_Fire_TT               = "Alerts you when Saint Olms is about to cast fire on execute phase."
-- Alerts
L.Alerts_Asylum_Defiling_Blast                   = "Warning! |c00cc00Defiling Blast|r on you"
L.Alerts_Asylum_Defiling_Blast_Other             = "Warning! |c00cc00Defiling Blast|r on |cFF0000<<!aC:1>>|r"
L.Alerts_Asylum_Soul_Stained_Corruption          = "Incoming |c3366EESoul Stained Corruption|r. Interrupt!"
L.Alerts_Asylum_Teleport_Strike                  = "|cFF3366Teleport Strike|r on you"
L.Alerts_Asylum_Teleport_Strike_Other            = "|cFF3366Teleport Strike|r on |cFF0000<<!aC:1>>|r"
L.Alerts_Asylum_Exhaustive_Charges               = "Incoming |cFF0000Exhaustive Charges|r"
L.Alerts_Asylum_Storm_The_Heavens                = "Incoming |cFF0000Storm The Heavens|r! Kite!"
L.Alerts_Asylum_Gusts_Of_Steam                   = "Incoming |cFF9900Gusts Of Steam|r! Hide!"
L.Alerts_Asylum_Pre_Gusts_Of_Steam               = "|cFF0000<<1>>%|r to |cFF9900jump|r! Prepare to Hide!"
L.Alerts_Asylum_Trial_By_Fire                    = "Incoming |cFF5500Fire|r!"
L.Alerts_Asylum_Protector_Spawn                  = "|c0000FFProtector|r spawning!"
L.Alerts_Asylum_Protector_Active                 = "|c0000FFProtector|r active!"



--------------------------------
------   CLOUDREST         -----
--------------------------------
L.Settings_Cloudrest_Header			            = "Cloudrest"
-- Settings
L.Settings_Cloudrest_Olorime_Spears             = "General: Olorime Spear"
L.Settings_Cloudrest_Olorime_Spears_TT          = "Alerts you when spears are up and someone has to pick it up."
L.Settings_Cloudrest_Shadow_Realm_Cast          = "General: Portal Spawn"
L.Settings_Cloudrest_Shadow_Realm_Cast_TT       = "Alerts you when portal is spawned for group to go in Shadow Real."
L.Settings_Cloudrest_Hoarfrost                  = "Faralielle: Hoarfrost"
L.Settings_Cloudrest_Hoarfrost_TT               = "Alerts you when you have the Hoarfrost debuff on you that needs to be synergised to remove."
L.Settings_Cloudrest_Hoarfrost_Countdown        = "       - Use Countdown"
L.Settings_Cloudrest_Hoarfrost_Countdown_TT     = "Use a countdown to show when you will be able to drop it."
L.Settings_Cloudrest_Hoarfrost_Shed             = "Faralielle: Hoarfrost Drop"
L.Settings_Cloudrest_Hoarfrost_Shed_TT          = "Alerts you when Hoarfrost debuff has been dropped from another player and needs to be picked up."
L.Settings_Cloudrest_Heavy_Attack               = "Mini Boss: Heavy Attack"
L.Settings_Cloudrest_Heavy_Attack_TT            = "Alerts you when Lightening(Shocking Smash), Fire(Scalding Sunder) or Frost(Ravaging Blow) mini boss is casting heavy attack."
L.Settings_Cloudrest_Chilling_Comet             = "Faralielle: Chilling Comet"
L.Settings_Cloudrest_Chilling_Comet_TT          = "Alerts you when Chilling Comet debuff is applied to you that needs to be blocked and not overlapped with another player who has the same debuff before explosion."
L.Settings_Cloudrest_Roaring_Flare              = "Siroria: Roaring Flame"
L.Settings_Cloudrest_Roaring_Flare_TT           = "Alerts when you or any of your team members have the Roaring Flare debuff that requires a minimum of 3 team members in total to stack to negate this debuff."
L.Settings_Cloudrest_Track_Roaring_Flare        = "       - Track Roaring Flare"
L.Settings_Cloudrest_Track_Roaring_Flare_TT     = ""
L.Settings_Cloudrest_Voltaic_Overload           = "Belanaril: Voltaic Overload"
L.Settings_Cloudrest_Voltaic_Overload_TT        = "Alerts you that you are about to get the Voltaic Overload debuff where after you get the debuff, you cannot bar swap for 10 seconds."
L.Settings_Cloudrest_Nocturnals_Favor	        = "Z'Maja: Nocturnal's Favor"
L.Settings_Cloudrest_Nocturnals_Favor_TT        = "Alerts you when Z'Maja has targeted you and will do her Heavy Attack."
L.Settings_Cloudrest_Baneful_Barb               = "Yaghra Monstrosity: Baneful Barb"
L.Settings_Cloudrest_Baneful_Barb_TT            = "Alerts you when Yaghra Monstrisity has targeted you and will do Baneful Barb attack."
L.Settings_Cloudrest_Break_Amulet               = "Z'Maja: Only important mechanics on execute"
L.Settings_Cloudrest_Break_Amulet_TT            = "Disable spheres, tentacle notifications on execute phase"
L.Settings_Cloudrest_Sum_Shadow_Beads           = "Z'Maja: Spheres"
L.Settings_Cloudrest_Sum_Shadow_Beads_TT        = "Alerts when Spheres are about to spawn."
L.Settings_Cloudrest_Tentacle_Spawn             = "Z'Maja: Creeper Spawn"
L.Settings_Cloudrest_Tentacle_Spawn_TT          = "Alerts when Nocturnal Creeper is about to spawn."
L.Settings_Cloudrest_Crushing_Darkness          = "Z'Maja: Crushing Darkness"
L.Settings_Cloudrest_Crushing_Darkness_TT       = "Alerts you when Tether AoE is following you and needs to be kited."
L.Settings_Cloudrest_Malicious_Strike           = "Z'Maja: Malicious Strike"
L.Settings_Cloudrest_Malicious_Strike_TT        = "Alerts when spheres are destroyed and need to block or rolldodge."
L.Settings_Cloudrest_Shadow_Splash              = "Z'Maja: Shadow Splash"
L.Settings_Cloudrest_Shadow_Splash_TT           = "Alerts you when Z'Maja starts channeling this spell. If not interrupted in time, some players will be teleported into the sky and take fall damage."

-- Alerts
L.Alerts_Cloudrest_Olorime_Spears               = "|cffd000Spear|r is up! (<<1>>)"
L.Alerts_Cloudrest_Hoarfrost0                   = "|c00ddffHoarfrost|r on you!"
L.Alerts_Cloudrest_Hoarfrost1                   = "|cff0000Last|r |c00ddffHoarfrost|r on you!"
L.Alerts_Cloudrest_Hoarfrost_Other0             = "|c00ddffHoarfrost|r on |cff0000<<!aC:1>>|r"
L.Alerts_Cloudrest_Hoarfrost_Other1             = "|cff0000Last|r |c00ddffHoarfrost|r on |cff0000<<!aC:1>>|r"
L.Alerts_Cloudrest_Hoarfrost_Countdown0         = "Drop |c00ddffHoarfrost|r in..."
L.Alerts_Cloudrest_Hoarfrost_Countdown1         = "Drop |cff0000Last|r |c00ddffHoarfrost|r in..."
L.Alerts_Cloudrest_Hoarfrost_Syn                = "|cff0000Use synergy|r to drop hoarfrost!"
L.Alerts_Cloudrest_Hoarfrost_Shed               = "|c00ddffHoarfrost|r dropped."
L.Alerts_Cloudrest_Hoarfrost_Shed_Other         = "|c00ddffHoarfrost|r dropped by |cff0000<<!aC:1>>|r"
L.Alerts_Cloudrest_Heavy_Attack                 = "|c0bf29eHeavy Attack|r on you!"
L.Alerts_Cloudrest_Heavy_Attack_Other           = "|c0bf29eHeavy Attack!|r on |cff0000<<!aC:1>>|r"
L.Alerts_Cloudrest_Baneful_Barb                 = "|cff0000Baneful Barb|r. Rolldodge!"
L.Alerts_Cloudrest_Baneful_Barb_Other           = "|cff0000Baneful Barb|r on |cff0000<<!aC:1>>|r"
L.Alerts_Cloudrest_Chilling_Comet               = "|cff0000Chilling Comet|r at you. Block!"
L.Alerts_Cloudrest_Roaring_Flare                = "|cff7700Roaring Flare|r at you"
L.Alerts_Cloudrest_Roaring_Flare_2              = "|cff0000<<!aC:1>>|r |t100%:100%:Esoui/Art/Buttons/large_leftarrow_up.dds|t |cff7700Roaring Flare|r |t100%:100%:Esoui/Art/Buttons/large_rightarrow_up.dds|t |cff0000<<!aC:2>>|r"
L.Alerts_Cloudrest_Roaring_Flare_Other          = "|cff7700Roaring Flare|r at |cff0000<<!aC:1>>|r. Stack on"
L.Alerts_Cloudrest_Voltaic_Current              = "Incoming |c55b4d4Voltaic Overload|r at you in"
L.Alerts_Cloudrest_Voltaic_Overload             = "|c4d61c1Voltaic Overload|r at you! Swap Bar!"
L.Alerts_Cloudrest_Voltaic_Overload_Cd          = "|c4d61c1Voltaic Overload|r. Don't swap!"
L.Alerts_Cloudrest_Shadow_Realm_Cast            = "|cab82ffPortal|r Spawn (<<1>>)"
L.Alerts_Cloudrest_Tentacle_Spawn               = "|c00a86bCreeper|r Spawn"
L.Alerts_Cloudrest_Sum_Shadow_Beads             = "|cab82ffSpheres|r are about to spawn"
L.Alerts_Cloudrest_Nocturnals_Favor             = "|cff0000Nocturnal's Favor|r at you!"
L.Alerts_Cloudrest_Crushing_Darkness            = "|cfc0c66Crushing Darkness|r at you. Kite!"
L.Alerts_Cloudrest_Malicious_Strike             = "|cff0000Malicious Strike|r at you. Block!"
L.Alerts_Cloudrest_Shadow_Splash                = "Z'Maja is casting. |cFF0000Interrupt|r!"

--------------------------------
------   SUNSPIRE          -----
--------------------------------
L.Settings_Sunspire_Header			= "Sunspire"
-- Settings
L.Settings_Sunspire_Chilling_Comet        = "General: Chilling Comet"
L.Settings_Sunspire_Chilling_Comet_TT     = "Alerts you when the Chilling Comet is targeted on you. Move out of the group, block and do not overlap with another player who also has a Chilling Comet. Chilling Comet Targets 2 players at once."
L.Settings_Sunspire_Sweeping_Breath	      = "Nahviintaas: Sweeping Breath"
L.Settings_Sunspire_Sweeping_Breath_TT    = "Alerts you of Nahviintass fire breath. The breath starts from one side of the arena and crosses to the other side while damaging every player inside. Every player must block or dodge roll this attack."
L.Settings_Sunspire_Molten_Meteor         = "Nahviintaas: Molten Meteor"
L.Settings_Sunspire_Molten_Meteor_TT      = "Alerts you when the Molten Meteor is targeted on you. Move to the edge of the arena, block, and do not overlap with another player who also has Molten meteor. Molten Meteor Targets 3 players at once."
L.Settings_Sunspire_Focus_Fire            = "Yolnahkriin: Focus Fire"
L.Settings_Sunspire_Focus_Fire_TT         = "Alerts when a group member is targeted with Focus Fire. Focus Fire requires group members to stack to share the damage. There will be a lingering debuff afterwards, increasing your damage taken by the next focus fire. Due to this debuff, you should stack in two separate groups."
L.Settings_Sunspire_Breath                = "General: Fire/Frost/Searing Breath"
L.Settings_Sunspire_Breath_TT             = "Alerts you when the channelled cone from each boss is on you, dealing heavy damage. "
L.Settings_Sunspire_Cataclism             = "Yolnahkriin: Cataclism"
L.Settings_Sunspire_Cataclism_TT          = "Alerts you when the boss will breathe fire in the middle of the arena. Everyone must move to the edge, and kill the adds."
L.Settings_Sunspire_Frozen_Tomb           = "Lokkestiiz: Frozen Tomb"
L.Settings_Sunspire_Frozen_Tomb_TT        = "Alerts you when Frozen Tomb spawns. A player must walk into the tomb, which will freeze them and deal damage over time. You must then be healed to be released. Requires 3 players to take the tombs due to a debuff, a different person each time."
L.Settings_Sunspire_Thrash                = "Nahviintaas: Thrash"
L.Settings_Sunspire_Thrash_TT             = "Alerts you when boss is about swing his head through the group, knocking everyone back. This must be blocked or dodge rolled."
L.Settings_Sunspire_Mark_For_Death        = "Nahviintaas: Mark For Death"
L.Settings_Sunspire_Mark_For_Death_TT     = "Alerts you when you are marked for death. Dealing heavy damage over time, and completely removing all your resisstances."
L.Settings_Sunspire_Time_Breach           = "Nahviintaas: Time Breach"
L.Settings_Sunspire_Time_Breach_TT        = "Alerts you when portal for time shift is open."
L.Settings_Sunspire_Negate_Field          = "Eternal Servant: Negate Field"
L.Settings_Sunspire_Negate_Field_TT       = "Get a warning if the Negate Field targets you in time shift."
L.Settings_Sunspire_Shock_Bolt            = "Eternal Servant: Shock Bolt"
L.Settings_Sunspire_Shock_Bolt_TT         = "Shock Bolt countdown that inform the group when to stack to unpin another player."
L.Settings_Sunspire_Apocalypse            = "Eternal Servant: Translation Apocalypse"
L.Settings_Sunspire_Apocalypse_TT         = "Alerts you when the eternal servant is channeling his attack to the upstairs group. It gives you a countdown until you can bash the channeling and it shows you a countdown until he completes the channeling attack"


-- Alerts
L.Alerts_Sunspire_Chilling_Comet          = "|c00ddffChilling Comet|r at you. Block!"
L.Alerts_Sunspire_Chilling_Comet_Other    = "|c00ddffChilling Comet|r at |cff0000<<!aC:1>>|r"
L.Alerts_Sunspire_Sweeping_Breath         = "|cff0000Sweeping Breath|r! Block!"
L.Alerts_Sunspire_Molten_Meteor           = "|c00ddffMolten Meteor|r at you! Go out!"
L.Alerts_Sunspire_Molten_Meteor_Other     = "|c00ddffMolten Meteor|r at <<!aC:1>>|r"
L.Alerts_Sunspire_Focus_Fire              = "|cff7700Focus Fire|r at you in"
L.Alerts_Sunspire_Focus_Fire_Other        = "|cff7700Focus Fire|r at |cff0000<<!aC:1>>|r in"
L.Alerts_Sunspire_Atronach_Zap            = "|cff7700Atronach|r spawn in"
L.Alerts_Sunspire_Frost_Atronach          = "|cff7700Frost Atronach|r is up!"
L.Alerts_Sunspire_Breath                  = "|cffff00<<1>>|r at you!"
L.Alerts_Sunspire_Breath_Other            = "|cffff00<<1>>|r at |cff0000<<!aC:2>>|r"
L.Alerts_Sunspire_Cataclism               = "|cff3300Cataclism|r ends in"
L.Alerts_Sunspire_Frozen_Tomb             = "|c00ddffFrozen Tomb|r (<<1>>)"
L.Alerts_Sunspire_Thrash                  = "Incoming |cff0000Thrash|r! Block!"
L.Alerts_Sunspire_Mark_For_Death          = "Mark for Death at you"
L.Alerts_Sunspire_Mark_For_Death_Other    = "Mark for Death at |cff0000<<!aC:1>>|r"
L.Alerts_Sunspire_Time_Breach_Countdown   = "|c81cc00Time Breach|r in "
L.Alerts_Sunspire_Negate_Field            = "|c53c4c9Negate Field|r at you!"
L.Alerts_Sunspire_Negate_Field_Others     = "|c53c4c9Negate Field|r at <<!aC:1>>!"
L.Alerts_Sunspire_Shock_Bolt              = "Incoming |c00ddffShock Bolt|r! Stack to unpin in"
L.Alerts_Sunspire_Apocalypse              = "Incoming |cffff00Translation Apocalypse|r! Bash in"
L.Alerts_Sunspire_Apocalypse_Ends         = "|cffff00Translation Apocalypse|r ends in"


--------------------------------
------   KYNE'S AEGIS      -----
--------------------------------
L.Settings_KynesAegis_Header                        = "Kyne's Aegis"
-- Settings
L.Settings_KynesAegis_Crashing_Wall                 = "General: Crashing Wall"
L.Settings_KynesAegis_Crashing_Wall_TT              = "Alerts you when the Half-Giant Tidebreaker starts his Crashing Wall attack, counting down until it is unleashed. Block or roll dodge it."
L.Settings_KynesAegis_Sanguine_Prison               = "General: Sanguine Prison"
L.Settings_KynesAegis_Sanguine_Prison_TT            = "Alerts you when your ally is trapped in Sanguine Prison casted by Bitter Knight. You need to free your ally by focusing down his prison."
L.Settings_KynesAegis_Blood_Fountain                = "General: Blood Fountain"
L.Settings_KynesAegis_Blood_Fountain_TT             = "Alerts you when Bloodknight starts his Blood Fountain attack, counting down until it is unleashed. It looks like cross-shaped AoE, and need to be avoided as it deals heavy damage."
L.Settings_KynesAegis_Totem                         = "Yandir: Totems spawn"
L.Settings_KynesAegis_Totem_TT                      = "Alerts you when certain totem appeared during the battle with Yandir the Butcher boss.\n\nDragon Totems: always two appears at the same time; each one blows out fire along a straight line in two opposite directions.\nHarpy Totem: spawns a lightning aura that will radiate out.\nGargoyle totem: encases random players into stone.\nChaurus Totem: poisons several people, and this poison should not be spread to others, that's why you should not stack at this phase."
L.Settings_KynesAegis_Yandir_FireShaman_Meteor      = "Yandir HM: Meteors"
L.Settings_KynesAegis_Yandir_FireShaman_Meteor_TT   = "Alerts you when Butcher's Fire Shamans will cast meteors on players."
L.Settings_KynesAegis_Vrol_FireMage_Meteor          = "Vrol: Meteors"
L.Settings_KynesAegis_Vrol_FireMage_Meteor_TT       = "Alerts you when Vrolsworn Fire Mages from the boat will cast meteors on players."
L.Settings_KynesAegis_Ichor_Eruption                = "Falgravn: Ichor Eruption"
L.Settings_KynesAegis_Ichor_Eruption_TT             = "Shows countdown until Falgravn will release his Ichor Eruption."
L.Settings_KynesAegis_Ichor_Eruption_CD_Time        = "       - Countdown time"
L.Settings_KynesAegis_Ichor_Eruption_CD_Time_TT     = "Time before Ichor Eruption when countdown should pop up."

-- Alerts
L.Alerts_KynesAegis_Crashing_Wall                   = "|cd2a100Crashing Wall|r in"
L.Alerts_KynesAegis_Sanguine_Prison_Other           = "|cff0000<<!aC:1>>|r trapped in |cb00000Sanguine Prison|r. Free them!"
L.Alerts_KynesAegis_Blood_Fountain                  = "|cb00000Blood Fountain|r in"
L.Alerts_KynesAegis_Dragon_Totem                    = "Two |cffa500Dragon Totems|r spawned. Avoid the fire!"
L.Alerts_KynesAegis_Harpy_Totem                     = "|c00bfffHarpy Totem|r spawned."
L.Alerts_KynesAegis_Gargoyle_Totem                  = "|cf5f5dcGargoyle Totem|r spawned."
L.Alerts_KynesAegis_Chaurus_Totem                   = "|c39942eChaurus Totem|r spawned. Don't stack!"
L.Alerts_KynesAegis_FireMage_Meteor                 = "|cffa500Meteor|r on you in"
L.Alerts_KynesAegis_FireMage_Meteor_Other           = "Meteors in"
L.Alerts_KynesAegis_Ichor_Eruption                  = "|cb00000Ichor Eruption|r in"


--------------------------------
------   ROCKGROVE         -----
--------------------------------
L.Settings_Rockgrove_Header                        = "Rockgrove"
-- Settings
L.Settings_Rockgrove_Sundering_Strike              = "General: Sundering Strike"
L.Settings_Rockgrove_Sundering_Strike_TT           = "Alerts you when the Sul-Xan Reaper makes Sundering Strike attack. Roll dodge it."
L.Settings_Rockgrove_Astral_Shield                 = "General: Astral Shield"
L.Settings_Rockgrove_Astral_Shield_TT              = "Alerts you when the Sul-Xan Soulweaver casts his Astral Shield."
L.Settings_Rockgrove_Soul_Remnant                  = "General: Soul Remnant (Soulweaver)"
L.Settings_Rockgrove_Soul_Remnant_TT               = "Alerts you when Soul Remnants targets you (as result of breaking Sul-Xan Soulweaver's Astral Shield)."
L.Settings_Rockgrove_Prime_Meteor                  = "General: Prime Meteor"
L.Settings_Rockgrove_Prime_Meteor_TT               = "Shows countdown when meteor appears indicating the time before it explodes. Make sure to kill the meteor in time."
L.Settings_Rockgrove_Hasted_Assault                = "General: Hasted Assault"
L.Settings_Rockgrove_Hasted_Assault_TT             = "Alerts you when the Havocrel Barbarian makes Hasted Assault attack. He teleports from player to player in random order and attacks them. This should be blocked."
L.Settings_Rockgrove_Savage_Blitz                  = "Oaxiltso: Savage Blitz"
L.Settings_Rockgrove_Savage_Blitz_TT               = "Alerts you when the Oaxiltso charges at the furthest player."
L.Settings_Rockgrove_Noxious_Sludge                = "Oaxiltso: Noxious Sludge"
L.Settings_Rockgrove_Noxious_Sludge_TT             = "Alerts you when someone is poisoned by Oaxiltso and has to go cleanse in the pool."
L.Settings_Rockgrove_Cinder_Cleave                 = "Oaxiltso's mini-boss: Cinder Cleave"
L.Settings_Rockgrove_Cinder_Cleave_TT              = "Alerts you when Havocrel Annihilator casts his Cinder Cleave ability on someone during the fight with Oaxiltso."
L.Settings_Rockgrove_Embrace_Of_Death              = "Flame-Herald Bahsei: Embrace of Death"
L.Settings_Rockgrove_Embrace_Of_Death_TT           = "Alerts you when someone got cursed by Flame-Herald Bahsei. That person will explode after 8 seconds, spreading the curse. It's important to keep cursed player separated from the group."
L.Settings_Rockgrove_Embrace_Of_Death_TT_All       = "|cFF0000WARNING!|r If your group will get too much curses your screen may be fully covered in countdowns for a duration of those curses! We're working on ways to improve this notification."
L.Settings_Rockgrove_Bahsei_Cone_Direction         = "Flame-Herald Bahsei HM: Cone direction"
L.Settings_Rockgrove_Bahsei_Cone_Direction_TT      = "Alerts you of the cone direction if the portal opened."
L.Settings_Rockgrove_Bahsei_Portal_Number          = "Flame-Herald Bahsei HM: Portal number (beta)"
L.Settings_Rockgrove_Bahsei_Portal_Number_TT       = "Tells you the number of portal being opened."
L.Settings_Rockgrove_Xalvakka_Unstable_Charge      = "Xalvakka HM: Unstable charge (staying on blob)"
L.Settings_Rockgrove_Xalvakka_Unstable_Charge_TT   = "Alerts you when you're staying on blob. It's not healthy!"

-- Alerts
L.Alerts_Rockgrove_Sundering_Strike                = "Incoming |cCDCDCDSundering Strike|r on you!"
L.Alerts_Rockgrove_Sundering_Strike_Other          = "Incoming |cCDCDCDSundering Strike|r on |cFF0000<<!aC:1>>|r!"
L.Alerts_Rockgrove_Astral_Shield_Cast              = "|cFFFF8FAstral Shield|r has been casted. Prepare to dodge or block!"
L.Alerts_Rockgrove_Soul_Remnant                    = "Incoming |c8FF2FFSoul Remnant|r!"
L.Alerts_Rockgrove_Prime_Meteor                    = "|cFFD600Prime Meteor|r will explode in"
L.Alerts_Rockgrove_Hasted_Assault                  = "Incoming |cFF0000Hasted Assault|r! Block!"
L.Alerts_Rockgrove_Savage_Blitz                    = "Oaxiltso charges at |cFF0000<<!aC:1>>|r!"
L.Alerts_Rockgrove_Noxious_Sludge_Self             = "You're poisoned by |c008C22Noxious Sludge|r! Cleanse in the pool!"
L.Alerts_Rockgrove_Noxious_Sludge_Other1           = "|cFF0000<<!aC:1>>|r is poisoned by |c008C22Noxious Sludge|r."
L.Alerts_Rockgrove_Noxious_Sludge_Other2           = "|cFF0000<<!aC:1>>|r and |cFF0000<<!aC:2>>|r are poisoned by |c008C22Noxious Sludge|r."
L.Alerts_Rockgrove_Cinder_Cleave                   = "|cD74700Cinder Cleave|r on you!"
L.Alerts_Rockgrove_Cinder_Cleave_Other             = "|cD74700Cinder Cleave|r on |cFF0000<<!aC:1>>|r."
L.Alerts_Rockgrove_Embrace_Of_Death                = "You're cursed by |c0A929BEmbrace of Death|r! Stay away! Explosion in"
L.Alerts_Rockgrove_Embrace_Of_Death_Other          = "|cFF0000<<!aC:1>>|r cursed by |c0A929BEmbrace of Death|r! Explosion in"
L.Alerts_Rockgrove_Bahsei_Cone_Direction_Clockwise = "-> Move |cF48020clockwise|r ->"
L.Alerts_Rockgrove_Bahsei_Cone_Direction_CounterCW = "<- Move |c15FFC2counterclockwise|r <-"
L.Alerts_Rockgrove_Bahsei_Portal_Number            = "Portal #<<1>>"
L.Alerts_Rockgrove_Xalvakka_Unstable_Charge        = "Move away from |c008C22blob|r!"


--------------------------------
------   DREADSAIL REEF    -----
--------------------------------
L.Settings_DreadsailReef_Header                    = "Dreadsail Reef"
-- Settings
L.Settings_DreadsailReef_Dome_Type                 = "Lylanar & Turlassil: Fire/Ice Dome filter"
L.Settings_DreadsailReef_Dome_Type_TT              = "You can restrict notifications to some specific Dome."
L.Settings_DreadsailReef_Dome_Activation           = "Lylanar & Turlassil: Fire/Ice Dome activation"
L.Settings_DreadsailReef_Dome_Activation_TT        = "Alerts you when someone gets Fire or Ice Dome."
L.Settings_DreadsailReef_Dome_Stack_Alert          = "Lylanar & Turlassil: Fire/Ice Dome stacks alert"
L.Settings_DreadsailReef_Dome_Stack_Alert_TT       = "Alerts you when someone gets too many stacks from Fire or Ice Dome."
L.Settings_DreadsailReef_Dome_Stack_Threshold      = "Lylanar & Turlassil: Fire/Ice Dome stack threshold"
L.Settings_DreadsailReef_Dome_Stack_Threshold_TT   = "Specify how many stacks should be received by the player to fire the alert."
L.Settings_DreadsailReef_Imminent_Debuffs          = "Lylanar & Turlassil: Imminent Blister/Chill"
L.Settings_DreadsailReef_Imminent_Debuffs_TT       = "Alerts you when tank receives Imminent Blister debuff from Lylanar or Imminent Chill debuff from Turlassil. Tanks should swap in 10 seconds."
L.Settings_DreadsailReef_Brothers_Heavy_Attack     = "Lylanar & Turlassil: Heavy attack"
L.Settings_DreadsailReef_Brothers_Heavy_Attack_TT  = "Alerts you when Lylanar or Turlassil makes their heavy attack (Broiling Hew / Stinging Shear)."
L.Settings_DreadsailReef_ReefGuardian_ReefHeart    = "Reef Guardian: Reef Heart spawn"
L.Settings_DreadsailReef_ReefGuardian_ReefHeart_TT = "Alerts you when Reef Heart appears. You have 60 seconds to kill it or it's a group wipe. There can be several Hearts active at the same time."
L.Settings_DreadsailReef_ReefHeart_Result          = "Reef Guardian: Reef Heart success/failure"
L.Settings_DreadsailReef_ReefHeart_Result_TT       = "Alerts you if you have executed Reef Heart or not."
L.Settings_DreadsailReef_Rapid_Deluge              = "Taleria: Rapid Deluge"
L.Settings_DreadsailReef_Rapid_Deluge_TT           = "Alerts you when you or someone got Rapid Deluge debuff. They'll explode in 6 seconds, and the best option to handle the damage is to be swimming at that time."

-- Alerts
L.Alerts_DreadsailReef_Destructive_Ember           = "<<!aC:1>> activated |cFFA500Fire Dome|r!"
L.Alerts_DreadsailReef_Piercing_Hailstone          = "<<!aC:1>> activated |c20C3D0Ice Dome|r!"
L.Alerts_DreadsailReef_Imminent_Blister            = "You're afflicted by |cF27D0CImminent Blister|r! Swap tanks until"
L.Alerts_DreadsailReef_Imminent_Blister_Other      = "|cFF0000<<!aC:1>>|r afflicted by |cF27D0CImminent Blister|r! Swap tanks until"
L.Alerts_DreadsailReef_Imminent_Chill              = "You're afflicted by |cB4CFFAImminent Chill|r! Swap tanks until"
L.Alerts_DreadsailReef_Imminent_Chill_Other        = "|cFF0000<<!aC:1>>|r afflicted by |cB4CFFAImminent Chill|r! Swap tanks until"
L.Alerts_DreadsailReef_Broiling_Hew                = "Incoming |cCDCDCDBroiling Hew|r on you!"
L.Alerts_DreadsailReef_Broiling_Hew_Other          = "Incoming |cCDCDCDBroiling Hew|r on |cFF0000<<!aC:1>>|r!"
L.Alerts_DreadsailReef_Stinging_Shear              = "Incoming |cCDCDCDStinging Shear|r on you!"
L.Alerts_DreadsailReef_Stinging_Shear_Other        = "Incoming |cCDCDCDStinging Shear|r on |cFF0000<<!aC:1>>|r!"
L.Alerts_DreadsailReef_Fire_Dome_Stack_Alert       = "You have |cFF0000<<1>>|r stacks from |cFFA500Fire Dome|r!"
L.Alerts_DreadsailReef_Fire_Dome_Stack_Alert_Other = "<<!aC:1>> have |cFF0000<<2>>|r stacks from |cFFA500Fire Dome|r!"
L.Alerts_DreadsailReef_Ice_Dome_Stack_Alert        = "You have |cFF0000<<1>>|r stacks from |c20C3D0Ice Dome|r!"
L.Alerts_DreadsailReef_Ice_Dome_Stack_Alert_Other  = "<<!aC:1>> have |cFF0000<<2>>|r stacks from |c20C3D0Ice Dome|r!"
L.Alerts_DreadsailReef_ReefGuardian_ReefHeart      = "Reef Heart #|cFF0000<<1>>|r spawned!"
L.Alerts_DreadsailReef_ReefHeart_Success           = "Reef Heart #|cFF0000<<1>>|r |c7CFC00destroyed|r!"
L.Alerts_DreadsailReef_ReefHeart_Success_Unknown   = "Reef Heart |c7CFC00destroyed|r!"
L.Alerts_DreadsailReef_ReefHeart_Failure           = "Reef Heart #|cFF0000<<1>>|r |cFF0000empowered|r. You're doomed!"
L.Alerts_DreadsailReef_ReefHeart_Failure_Unknown   = "Reef Heart |cFF0000empowered|r. You're doomed!"
L.Alerts_DreadsailReef_Rapid_Deluge                = "You got |c1CA3ECRapid Deluge|r! You should be swimming in"
L.Alerts_DreadsailReef_Rapid_Deluge_Other          = "|cFF0000<<!aC:1>>|r got |c1CA3ECRapid Deluge|r! Swim in"


--------------------------------
----       Debugging        ----
--------------------------------
L.Settings_Debug_Header                  = "Debug"
L.Settings_Debug                         = "Turn debug on"
L.Settings_Debug_TT                      = "Turns on debugging output in chatwindow"
L.Settings_Debug_DevMode                 = "Dev Mode"
L.Settings_Debug_DevMode_TT              = "When this is turned on it enables certain alerts that might not be fully functioning, have mismatching timing or aren't fully tested yet. In general they should not produce UI errors but some sort of 'error catcher' addon is still recommended."
L.Settings_Debug_DevMode_Warning         = "Requires DevMode"

L.Settings_Debug_Tracker_Header          = "Debug Tracker"
L.Settings_Debug_Tracker_Description     = "This is a debug feature meant to track down and output potential mechanics during the course of a trial by printing out info on combat events and effects. Due to the potentially large amount of output there are a few options to help avoid cluttering your chat window."
L.Settings_Debug_Tracker_Enabled         = "Enabled"
L.Settings_Debug_Tracker_SpamControl     = "Spam Control"
L.Settings_Debug_Tracker_SpamControl_TT  = "With this each ability/effect is only printed once per action type. List of known abilities this session can be cleared with \"/rndebug clear\"."
L.Settings_Debug_Tracker_MyEnemyOnly     = "My Enemy Only"
L.Settings_Debug_Tracker_MyEnemyOnly_TT  = "When enabled this will limit ALL output to abilities/effects that are targeted at the player and are NOT coming from the player or the group. Useful for when you are looking for a specific thing and you do not want spam control enabled."



--TODO: get rid of this ugly, bulky localization method
for k, v in pairs(L) do
    local string = "RAIDNOTIFIER_" .. string.upper(k)
    ZO_CreateStringId(string, v)
end

function RaidNotifier:GetLocale()
	return L
end
function RaidNotifier:MissingLocale()
	d("Obviously not missing any english strings....")
end

--if (GetCVar('language.2') == 'de') then
--	local MissingL = {}
--	for k, v in pairs(RaidNotifier:GetLocale()) do
--		if (not L[k]) then
--			table.insert(MissingL, k)
--			L[k] = v
--		end
--	end
--	function RaidNotifier:GetLocale()
--		return L
--	end
--	-- for debugging
--	function RaidNotifier:MissingLocale()
--		df("Missing strings for '%s'", GetCVar('language.2'))
--		d(MissingL)
--	end
--end
