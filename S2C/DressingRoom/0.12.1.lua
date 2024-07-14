ZO_CreateStringId("SI_BINDING_NAME_DRESSINGROOM_TOGGLE", "Show/Hide Window")
for i = 1, 12 do
  ZO_CreateStringId("SI_BINDING_NAME_DRESSINGROOM_SET_"..i, "Use Set "..i)
end

DressingRoom._msg = {
  weaponType = {
    [WEAPONTYPE_AXE] = "Axe",
    [WEAPONTYPE_BOW] = "Bow",
    [WEAPONTYPE_DAGGER] = "Dagger",
    [WEAPONTYPE_FIRE_STAFF] = "Fire Staff",
    [WEAPONTYPE_FROST_STAFF] = "Frost Staff",
    [WEAPONTYPE_HAMMER] = "Hammer",
    [WEAPONTYPE_HEALING_STAFF] = "Healing Staff",
    [WEAPONTYPE_LIGHTNING_STAFF] = "Lightning Staff",
    [WEAPONTYPE_NONE] = "None",
    [WEAPONTYPE_RUNE] = "Rune",
    [WEAPONTYPE_SHIELD] = "Shield",
    [WEAPONTYPE_SWORD] = "Sword",
    [WEAPONTYPE_TWO_HANDED_AXE] = "Battle Axe",
    [WEAPONTYPE_TWO_HANDED_HAMMER] = "Maul",
    [WEAPONTYPE_TWO_HANDED_SWORD] = "Greatsword",
  },
  
  skillBarSaved = "Skill set %d bar %d saved",
  skillBarLoaded = "Skill set %d bar %d loaded",
  skillBarDeleted = "Skill set %d bar %d deleted",
  gearSetSaved = "Gear set %d saved",
  gearSetLoaded = "Gear set %d loaded",
  gearSetDeleted = "Gear set %d deleted",
  noGearSaved = "No gear saved for set %d",

  options = {
    reloadUIWarning = "reload UI required",
    reloadUI = "Reload UI",
    clearEmptyGear = {
      name = "Unequip empty gear slots",
      tooltip = "When loading a gear set with empty slots, unequip previously used items",
    },
    clearEmptySkill = {
      name = "Clear empty skill slots",
      tooltip = "When loading a skill set with empty slots, unequip previously used skills",
    },
    activeBarOnly = {
      name = "Skill set buttons for active bar only",
      tooltip = "Only shows the skill set buttons for the currently active bar",
    },
    fontSize = {
      name = "Font Size",
      tooltip = "Interface font size",
    },
    btnSize = {
      name = "Skill icon size",
      tooltip = "Size of skill icons",
    },
    columnMajorOrder = {
      name = "Sort sets by column first",
      tooltip = "Use column major (vertical) order instead of row major (horizontal) order for sets in the interface",
    },
    openWithSkillsWindow = {
      name = "Show with Skills window",
      tooltip = "Automatically show the interface when opening the Skills window",
    },
    openWithInventoryWindow = {
      name = "Show with Inventory window",
      tooltip = "Automatically show the interface when opening the Inventory window",
    },
    numRows = {
      name = "Number of rows",
      tooltip = "Number of sets in a column of the window",
    },
    numCols = {
      name = "Number of columns",
      tooltip = "Number of sets in a row of the window",
    },
    showChatMessages = {
      name = "Show chat messages",
      tooltip = "Show a message in chat when saving, equipping or deleting a gear set or an action bar",
    },
    singleBarToCurrent = {
      name = "Load single bar sets to active bar",
      tooltip = "Loading a set with a single action bar and no gear will update the active action bar and ignore the empty bar",
    },
    alwaysChangePageOnZoneChanged = {
      name = "Return to default page if there is no zone match",
      tooltip = "If there is no preset with the name of the new zone that you arrived in, return to the default (first) page if the current page was not manually selected",
    },
  },
  
  barBtnText = "Click to load this single skill bar\nShift + Click to save\nCtrl + Click to delete",
  gearBtnText = "Click to dress this gear-set\nShift + Click to save\nCtrl + Click to delete",
  setBtnText = "Click to dress this gear-set and load both skill bars",
}

