local util = AdvancedFilters.util

local afPrefix = "|cFF0000[AdvancedFilters%s]|r"
local afPrefixNormal    = string.format(afPrefix, "")
local afPrefixError     = string.format(afPrefix, " ERROR")

local strings = {
    --SHARED
    None = util.Localize(SI_ARMORTYPE0),
    All = util.Localize(SI_ITEMFILTERTYPE0),
    Trophy = util.Localize(SI_ITEMTYPE5),
    TreasureMaps = util.Localize(SI_SPECIALIZEDITEMTYPE100),
    SurveyReport = util.Localize(SI_SPECIALIZEDITEMTYPE101),
    KeyFragment = util.Localize(SI_SPECIALIZEDITEMTYPE102),
    MuseumPiece = util.Localize(SI_SPECIALIZEDITEMTYPE103),
    RecipeFragment = util.Localize(SI_SPECIALIZEDITEMTYPE104),
    Scroll = util.Localize(SI_SPECIALIZEDITEMTYPE105),
    CollectibleFragment = util.Localize(SI_SPECIALIZEDITEMTYPE109),
    Key = util.Localize(SI_SPECIALIZEDITEMTYPE107),
    MaterialUpgrader = util.Localize(SI_SPECIALIZEDITEMTYPE106),
    RuneboxFragment = util.Localize(SI_SPECIALIZEDITEMTYPE108),
    Toy = util.Localize(SI_SPECIALIZEDITEMTYPE111),
    UpgradeFragment = util.Localize(SI_SPECIALIZEDITEMTYPE110),
    Fish = util.Localize(SI_ITEMTYPE54),
    RareFish = util.Localize(SI_SPECIALIZEDITEMTYPE80),
    Treasure = util.Localize(SI_SPECIALIZEDITEMTYPE2550),

    --WEAPON
    OneHand = util.Localize(SI_GAMEPADWEAPONCATEGORY1),
    TwoHand = util.Localize(SI_GAMEPADWEAPONCATEGORY2),
    Bow = util.Localize(SI_WEAPONTYPE8),
    DestructionStaff = util.Localize(SI_GAMEPADWEAPONCATEGORY4),
    HealStaff = util.Localize(SI_WEAPONTYPE9),

    Axe = util.Localize(SI_WEAPONTYPE1),
    Sword = util.Localize(SI_WEAPONTYPE3),
    Hammer = util.Localize(SI_WEAPONTYPE2),
    TwoHandAxe = "2H "..util.Localize(SI_WEAPONTYPE1),
    TwoHandSword = "2H "..util.Localize(SI_WEAPONTYPE3),
    TwoHandHammer = "2H "..util.Localize(SI_WEAPONTYPE2),
    Dagger = util.Localize(SI_WEAPONTYPE11),
    Fire = util.Localize(SI_WEAPONTYPE12),
    Frost = util.Localize(SI_WEAPONTYPE13),
    Lightning = util.Localize(SI_WEAPONTYPE15),

    --ARMOR
    Heavy = util.Localize(SI_ARMORTYPE3),
    Medium = util.Localize(SI_ARMORTYPE2),
    LightArmor = util.Localize(SI_ARMORTYPE1),
    Clothing = util.Localize(SI_VISUALARMORTYPE5),
    Shield = util.Localize(SI_WEAPONTYPE14),
    Jewelry = util.Localize(SI_GAMEPADITEMCATEGORY38),

    Head = util.Localize(SI_EQUIPSLOT0), --"Head",
    Chest = util.Localize(SI_EQUIPTYPE3), --"Chest",
    Shoulders = util.Localize(SI_EQUIPTYPE4), --"Shoulders",
    Hand = util.Localize(SI_EQUIPTYPE13), --"Hand",
    Waist = util.Localize(SI_EQUIPTYPE8), --"Waist",
    Legs = util.Localize(SI_EQUIPTYPE9), --"Legs",
    Feet = util.Localize(SI_EQUIPTYPE10), --"Feet",
    Ring = util.Localize(SI_EQUIPTYPE12), --"Ring",
    Neck = util.Localize(SI_EQUIPSLOT1), --"Neck",

    --Jewelry
    Arcane  = util.Localize(SI_ITEMTRAITTYPE22),
    Bloodthirsty  = util.Localize(SI_ITEMTRAITTYPE31),
    Harmony  = util.Localize(SI_ITEMTRAITTYPE29),
    Healthy  = util.Localize(SI_ITEMTRAITTYPE21),
    Infused  = util.Localize(SI_ITEMTRAITTYPE33),
    Intricate  = util.Localize(SI_ITEMTRAITTYPE27),
    Ornate  = util.Localize(SI_ITEMTRAITTYPE24),
    Robust  = util.Localize(SI_ITEMTRAITTYPE23),
    Swift  = util.Localize(SI_ITEMTRAITTYPE28),
    Triune = util.Localize(SI_ITEMTRAITTYPE30),
    Protective = util.Localize(SI_ITEMTRAITTYPE32),

    --Companion traits
    Aggressive = util.Localize(SI_ITEMTRAITTYPE47),
    Augmented = util.Localize(SI_ITEMTRAITTYPE49),
    Bolstered = util.Localize(SI_ITEMTRAITTYPE50),
    Focused = util.Localize(SI_ITEMTRAITTYPE45),
    Prolific = util.Localize(SI_ITEMTRAITTYPE44),
    Quickened = util.Localize(SI_ITEMTRAITTYPE43),
    Shattering = util.Localize(SI_ITEMTRAITTYPE46),
    Soothing = util.Localize(SI_ITEMTRAITTYPE48),
    Vigorous = util.Localize(SI_ITEMTRAITTYPE51),

    --CONSUMABLES
    Crown = util.Localize(SI_ITEMTYPE57),
    Food = util.Localize(SI_ITEMTYPE4),
    Drink = util.Localize(SI_ITEMTYPE12),
    Recipe = util.Localize(SI_ITEMTYPE29),
    Potion = util.Localize(SI_ITEMTYPE7),
    Poison = util.Localize(SI_ITEMTYPE30),
    Motif = util.Localize(SI_ITEMTYPE8),
    Writ = util.Localize(SI_ITEMTYPE60),
    Container = util.Localize(SI_ITEMTYPE18),
    Repair = util.Localize(SI_STORE_MODE_REPAIR),

    --MATERIALS
    Blacksmithing = util.Localize(SI_GAMEPADITEMCATEGORY4), --"Blacksmithing",
    Clothier = util.Localize(SI_GAMEPADITEMCATEGORY7), --"Clothier",
    Woodworking = util.Localize(SI_GAMEPADITEMCATEGORY33), --"Woodworking",
    Alchemy = util.Localize(SI_ITEMFILTERTYPE16), --"Alchemy",
    Enchanting = util.Localize(SI_GAMEPADITEMCATEGORY11), --"Enchanting",
    Provisioning = util.Localize(SI_GAMEPADITEMCATEGORY19), --"Provisioning",
    Style = util.Localize(SI_ITEMTYPE44),
    WeaponTrait = util.Localize(SI_ITEMTYPE46),
    ArmorTrait = util.Localize(SI_ITEMTYPE45),
    AllTraits = util.Localize(SI_ITEMFILTERTYPE20),
    FurnishingMat = util.Localize(SI_ITEMTYPE62),

    Reagent = util.Localize(SI_ITEMTYPE31),
    Water = util.Localize(SI_ITEMTYPE33),
    Oil = util.Localize(SI_ITEMTYPE58),
    Aspect = util.Localize(SI_ENCHANTINGRUNECLASSIFICATION1),
    Essence = util.Localize(SI_ENCHANTINGRUNECLASSIFICATION2),
    Potency = util.Localize(SI_ENCHANTINGRUNECLASSIFICATION3),
    FoodIngredient = zo_strformat("<<1>> - <<2>>", GetString("SI_ITEMTYPE", ITEMTYPE_INGREDIENT), GetString("SI_ITEMTYPE", ITEMTYPE_FOOD)),
    DrinkIngredient = zo_strformat("<<1>> - <<2>>", GetString("SI_ITEMTYPE", ITEMTYPE_INGREDIENT), GetString("SI_ITEMTYPE", ITEMTYPE_DRINK)),
    OldIngredient = zo_strformat("<<1>> - <<2>>", GetString("SI_ITEMTYPE", ITEMTYPE_INGREDIENT), GetString("SI_ITEMTYPE", ITEMTYPE_NONE)),
    RareIngredient = util.Localize(SI_SPECIALIZEDITEMTYPE48),

    --FURNISHINGS
    CraftingStation = util.Localize(SI_SPECIALIZEDITEMTYPE213),
    Light = util.Localize(SI_SPECIALIZEDITEMTYPE211),
    Ornamental = util.Localize(SI_SPECIALIZEDITEMTYPE210),
    Seating = util.Localize(SI_SPECIALIZEDITEMTYPE212),
    TargetDummy = util.Localize(SI_SPECIALIZEDITEMTYPE214),
    Furnishings = util.Localize(SI_ITEMFILTERTYPE21),

    --MISCELLANEOUS
    Runes = util.Localize(SI_WEAPONMODELTYPE8),
    Glyphs = util.Localize(SI_GAMEPADITEMCATEGORY13),
    ArmorGlyph = util.Localize(SI_ITEMTYPE21),
    JewelryGlyph = util.Localize(SI_ITEMTYPE26),
    WeaponGlyph = util.Localize(SI_ITEMTYPE20),

    SoulGem = util.Localize(SI_ITEMTYPE19),
    Siege = util.Localize(SI_ITEMTYPE6),
    Bait = util.Localize(SI_GAMEPADITEMCATEGORY3), --Bait",
    Tool = util.Localize(SI_ITEMTYPE9),
    Fence = util.Localize(SI_INVENTORY_STOLEN_ITEM_TOOLTIP),
    Trash = util.Localize(SI_ITEMTYPE48),

    --Vanity = "Vanity",
    Costume = util.Localize(SI_ITEMTYPE13),
    Disguise = util.Localize(SI_ITEMTYPE14),
    Tabard = util.Localize(SI_ITEMTYPE15),

    --JUNK
    Weapon = util.Localize(SI_ITEMFILTERTYPE1),
    Armor = util.Localize(SI_ITEM_FORMAT_STR_ARMOR), -- Armor
    Apparel = util.Localize(SI_ITEMFILTERTYPE2),
    Consumable = util.Localize(SI_ITEMFILTERTYPE3),
    Materials = util.Localize(SI_ITEMFILTERTYPE4),
    Miscellaneous = util.Localize(SI_ITEMFILTERTYPE5),

    --DROPDOWN CONTEXT MENU
    ResetToAll = "Reset to \'All\'",
    InvertDropdownFilter = "Invert filter: %s",

    --CRAFT BAG
    --BLACKSMITHING
    RawMaterialSmithing = util.Localize(SI_ITEMTYPE17),
    RefinedMaterialSmithing = util.Localize(SI_ITEMTYPE36),
    Temper = util.Localize(SI_ITEMTYPE41),
    RawTemper = util.Localize(SI_ITEMTYPE17),

    --Clothier
    RawMaterialClothier = util.Localize(SI_ITEMTYPE17),
    RefinedMaterialClothier = util.Localize(SI_ITEMTYPE36),

    --Woodworking
    RawMaterialWoodworking = util.Localize(SI_ITEMTYPE17),
    RefinedMaterialWoodworking = util.Localize(SI_ITEMTYPE36),

    --Jewelry Crafting
    JewelryCrafting = util.Localize(SI_ITEMFILTERTYPE24),
    Plating = util.Localize(SI_ITEMTYPE65),
    RawPlating = util.Localize(SI_ITEMTYPE67),
    JewelryAllTrait = util.Localize(SI_ITEMTYPE66),
    JewelryRawTrait = util.Localize(SI_ITEMTYPE68),
    JewelryRefinedTrait = util.Localize(SI_ITEMTYPE66),
    RefinedMaterialJewelry = util.Localize(SI_ITEMTYPE64),
    RawMaterialJewelry = util.Localize(SI_ITEMTYPE63),

    RawMaterialStyle = util.Localize(SI_ITEMTYPE17),

    --CLOTHING
    Resin = util.Localize(SI_ITEMTYPE42),

    --WOODWORKING
    Tannin = util.Localize(SI_ITEMTYPE43),

    --Transmutation
    Retrait = util.Localize(SI_RETRAIT_STATION_ITEM_TO_RETRAIT_HEADER),

    --Recall stones
    RecallStone = util.Localize(SI_ITEMTYPE69),

    --Crafted
    Crafted = util.Localize(SI_ITEM_FORMAT_STR_CRAFTED),

    --Scribing
    Scribing = util.Localize(SI_SKILLS_MENU_SCRIBING_LIBRARY),
    ScribingGrimoire = util.Localize(SI_ITEMTYPE72),
    ScribingScript = util.Localize(SI_ITEMTYPE73),
    ScribingInk = util.Localize(SI_ITEMTYPE74),

    --LAM settings menu
    lamDescription = "Show additional filter buttons in the inventories to seperate item types",
    lamHideItemCount = "Hide item count",
    lamHideItemCountTT = "Hide the item count information, shown in \"(...)\", at the bottom line of the inventories",
    lamHideItemCountColor = "Color of item count",
    lamHideItemCountColorTT = "Set the color of the item counter at the inventories bottom line",
    lamHideSubFilterLabel = "Hide subfilter label",
    lamHideSubFilterLabelTT = "Hide the subfilter's description label at the top line of the inventories (left to the subfilters buttons).",
    lamGrayOutSubFiltersWithNoItems = "Disable subfilters with no items",
    lamGrayOutSubFiltersWithNoItemsTT = "Disable the subfilter buttons where no items are available.",
    lamShowIconsInFilterDropdowns = "Show icons in dropdown box",
    lamShowIconsInFilterDropdownsTT = "Show icons for the filter entries in the filter dropdown boxes",
    lamShowSubMenuHeaderlinesInFilterDropdowns = "Show submenu headlines in dropdown box",
    lamShowSubMenuHeaderlinesInFilterDropdownsTT = "Show the headerlines of each submenu filter button in the filter dropdown boxes",
    lamRememberFilterDropdownsLastSelection = "Remember last filter dropdown selection",
    lamRememberFilterDropdownsLastSelectionTT = "Remenber the last filter dropdown box at each subfilter and filterpanel (inventory, mail, crafting table, ...) and re-apply this filter in the dropdown entry if you return to this filterpanel and subfilter.\nThis will NOT be saved if you logout/do a reload of the UI!",
    lamShowDropdownSelectedReminderAnimation = "Last filter dropdown selection glow",
    lamShowDropdownSelectedReminderAnimationTT = "Glow the dropdown box as you change to a subfilter bar, where the dropdown box filter is selected and is not showing the \'".. util.Localize(SI_ITEMFILTERTYPE0) .. "\' entry",
    lamShowDropdownLastSelectedEntries = "Show filter dropdown selection history",
    lamShowDropdownLastSelectedEntriesTT = "Right click the filter dropdown box to show a list of the last 10 selected dropdown entries below the standard context menu entries. Click an history entry to select it again (if the current subfilterbar's dropdown box provides this entry as the history is created cross-subfilterbars)!",
    lamHideCharBoundAtBankDeposit = "Hide char bound items at bank",
    lamHideCharBoundAtBankDepositTT = "Hide character bound items at the bank deposit tab",
    lamShowFilterDropdownMenuOnRightMouse   = "|t150.000000%:150.000000%:EsoUI/Art/Miscellaneous/icon_RMB.dds|t: Show dropdown box filters at button",
    lamShowFilterDropdownMenuOnRightMouseTT = "Show the same filters, which the dropdown box filters would show if you open it at the current subfilter button.\n\n|t100.000000%:100.000000%:EsoUI/Art/Miscellaneous/icon_RMB.dds|t: Show normal plugin filters menu\nSHIFT key + |t100.000000%:100.000000%:EsoUI/Art/Miscellaneous/icon_RMB.dds|t: Show right click plugin filters menu",
    lamDropdownVisibleRows = "Dropdown filter: Visible main rows",
    lamDropdownVisibleRowsTT = "Number of visible rows in the dropdown filters",
    lamDropdownVisibleSubmenuRows = "Dropdown filter: Visible submenu rows",
    lamDropdownVisibleSubmenuRowsTT = "Number of visible submenu rows in the dropdown filters",

    lamHeaderVisual = "Visual",
    lamHeaderFilterCategory = "Filter categories",
    lamHeaderSubfilter = "Subfilter buttons",
    lamHeaderDropdownFilterbox = "Dropdown filter box",
    lamDebugOutput = "Debug",
    lamDebugOutputTT = "Shows some debug messages into the chat/DebugLogViewer UI.",
    lamDebugSpamOutput = "Debug Spam",
    lamDebugSpamOutputTT = "Attention: This will spam your chat/DebugLogViewer UI with a lot of messages from AdvancedFilters. Only enable this if you were told to do so!",
    lamDebugSpamExcludeRefreshSubfilterBar = "Exclude: \'RefreshSubfilterBar\'",
    lamDebugSpamExcludeDropdownBoxFilters = "Exclude: \'Dropdownbox filters\'",

    --Error messages
    errorCheckChatPlease    = afPrefixError .. " Please read the chat error message!",
    errorLibraryMissing     = afPrefixError .. " Needed library \'%s\' is not loaded. This addon will not work properly!",
    errorWhatToDo1          = "!> Please answer the following 4 questions and send the answers (and if given: the variables shown in the lines, starting with ->, after the questions) to the addon's comments of AdvancedFilters @www.esoui.com:\nhttps://bit.ly/2lSbb2A",
    errorWhatToDo2          = "1) What did you do?\n2)Where did you do it?\n3)Did you test if the error happenes with only the addon AdvancedFilters and libraries activated (please test this!)?\n4)If error happens with other addons active: Which other addons were you using as the error happened, and are you able to say which of these causes the error?",

    --Errors because of other addons
    errorOtherAddonsMulticraft = afPrefixError .. "Other addon breaks \'" .. afPrefixNormal .. "\' -> PLEASE DISABLE THIS ADDON: \'MultiCraft\'!",
    errorOtherAddonsMulticraftLong = "PLEASE DISABLE THE ADDON \'MultiCraft\'! " .. afPrefixNormal .. " cannot work if this addon is enabled. \'Multicraft\' has been replaced by ZOs own multi crafting UI so you do not need it anymore!"
}

strings.Vanity = strings.Disguise

--QuickSlots
strings.BodyMarking = "Body"
strings.JewelryPiercing  = strings.Jewelry
strings.HeadMarking = strings.Head
strings.Facial = "Facial"
strings.Hair = "Hair"
strings.Hat = "Hat"
strings.Skin = "Skin"
strings.Polymorph = "Polymorph"
strings.Personality = "Personality"

local light = " (" .. util.Localize(SI_ARMORTYPE1) .. ")"
local medium = " (" .. util.Localize(SI_ARMORTYPE2) .. ")"
strings.Head_Light = strings.Head .. light
strings.Chest_Light = strings.Chest .. light
strings.Shoulders_Light = strings.Shoulders .. light
strings.Hand_Light = strings.Hand .. light
strings.Waist_Light = strings.Waist .. light
strings.Legs_Light = strings.Legs .. light
strings.Feet_Light = strings.Feet .. light
strings.Head_Medium = strings.Head .. medium
strings.Chest_Medium = strings.Chest .. medium
strings.Shoulders_Medium = strings.Shoulders .. medium
strings.Hand_Medium = strings.Hand .. medium
strings.Waist_Medium = strings.Waist .. medium
strings.Legs_Medium = strings.Legs .. medium
strings.Feet_Medium = strings.Feet .. medium
local ringStr = " (" .. strings.Ring .. ")"
strings.Arcane_Ring = strings.Arcane .. ringStr
strings.Bloodthirsty_Ring = strings.Bloodthirsty .. ringStr
strings.Harmony_Ring = strings.Harmony .. ringStr
strings.Healthy_Ring = strings.Healthy .. ringStr
strings.Infused_Ring = strings.Infused .. ringStr
strings.Intricate_Ring = strings.Intricate .. ringStr
strings.Ornate_Ring = strings.Ornate .. ringStr
strings.Robust_Ring = strings.Robust .. ringStr
strings.Swift_Ring = strings.Swift .. ringStr
strings.Triune_Ring = strings.Triune .. ringStr
strings.Protective_Ring = strings.Protective .. ringStr
strings.All_Ring = strings.All .. ringStr
strings.None_Ring = strings.None .. ringStr
--Companion
strings.Aggressive_Ring = strings.Aggressive ..ringStr
strings.Augmented_Ring = strings.Augmented ..ringStr
strings.Bolstered_Ring = strings.Bolstered ..ringStr
strings.Focused_Ring = strings.Focused ..ringStr
strings.Prolific_Ring = strings.Prolific ..ringStr
strings.Quickened_Ring = strings.Quickened ..ringStr
strings.Shattering_Ring = strings.Shattering ..ringStr
strings.Soothing_Ring = strings.Soothing ..ringStr
strings.Vigorous_Ring = strings.Vigorous ..ringStr

local neckStr = " (" .. strings.Neck .. ")"
strings.Arcane_Neck = strings.Arcane .. neckStr
strings.Bloodthirsty_Neck = strings.Bloodthirsty .. neckStr
strings.Harmony_Neck = strings.Harmony .. neckStr
strings.Healthy_Neck = strings.Healthy .. neckStr
strings.Infused_Neck = strings.Infused .. neckStr
strings.Intricate_Neck = strings.Intricate .. neckStr
strings.Ornate_Neck = strings.Ornate .. neckStr
strings.Robust_Neck = strings.Robust .. neckStr
strings.Swift_Neck = strings.Swift .. neckStr
strings.Triune_Neck = strings.Triune .. neckStr
strings.Protective_Neck = strings.Protective .. neckStr
strings.All_Neck = strings.All .. neckStr
strings.None_Neck = strings.None .. neckStr
--Companion
strings.Aggressive_Neck = strings.Aggressive ..neckStr
strings.Augmented_Neck = strings.Augmented ..neckStr
strings.Bolstered_Neck = strings.Bolstered ..neckStr
strings.Focused_Neck = strings.Focused ..neckStr
strings.Prolific_Neck = strings.Prolific ..neckStr
strings.Quickened_Neck = strings.Quickened ..neckStr
strings.Shattering_Neck = strings.Shattering ..neckStr
strings.Soothing_Neck = strings.Soothing ..neckStr
strings.Vigorous_Neck = strings.Vigorous ..neckStr

--AdvancedFilters Prefix
strings.AFPREFIX        = afPrefix
strings.AFPREFIXNORMAL  = afPrefixNormal
strings.AFPREFIXERROR   = afPrefixError

--Provide the EN texts globally and update the texts for the usage of the addon
AdvancedFilters.ENstrings = strings
AdvancedFilters.strings = strings