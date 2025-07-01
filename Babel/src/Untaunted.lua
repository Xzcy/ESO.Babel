local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["Untaunted"] = function() if not Untaunted then return false end
  local strings = {
    -- Menu --
    SI_UNTAUNTED_LANG = "zh", 	-- "en"
    SI_UNTAUNTED_FONT = "$(MEDIUM_FONT)",
    SI_UNTAUNTED_MENU_AW_NAME = "使用全账户设置", 	-- "Use Accountwide Settings"
    SI_UNTAUNTED_MENU_AW_NAME_TOOLTIP = "启用时，该账号所有角色使用相同设置", 	-- "If chosen all characters on this account will have the same Settings"
    SI_UNTAUNTED_MENU_MOVE_BUTTON = "移动", 	-- "Move"
    SI_UNTAUNTED_MENU_MOVE_BUTTON_TOOLTIP = "移动嘲讽框架", 	-- "Move the taunt frames"
    SI_UNTAUNTED_MENU_WINDOW_WIDTH = "宽度", 	-- "Width"
    SI_UNTAUNTED_MENU_WINDOW_WIDTH_TOOLTIP = "设置嘲讽框架的宽度", 	-- "Sets the width of the taunt frames"
    SI_UNTAUNTED_MENU_WINDOW_HEIGHT = "高度", 	-- "Height"
    SI_UNTAUNTED_MENU_WINDOW_HEIGHT_TOOLTIP = "设置嘲讽框架的高度", 	-- "Sets the height of the taunt frames"
    SI_UNTAUNTED_MENU_GROWTH_DIRECTION = "向上添加", 	-- "Add Frames Upwards"
    SI_UNTAUNTED_MENU_GROWTH_DIRECTION_TOOLTIP = "启用时，新单位将被添加在前一个的上方", 	-- "When selected, new frames are added above the previous ones"
    SI_UNTAUNTED_MENU_MAX_BARS = "最大行数", 	-- "Maximum Rows"
    SI_UNTAUNTED_MENU_MAX_BARS_TOOLTIP = "能显示的最大行数", 	-- "Maximum number of rows to show"
    SI_UNTAUNTED_MENU_BAR_DIRECTION = "颠倒计时条", 	-- "Invert Timer Bar"
    SI_UNTAUNTED_MENU_BAR_DIRECTION_TOOLTIP = "启用时，计时条向右减少", 	-- "When selected, the timer bar gets reduced to the right"
    SI_UNTAUNTED_MENU_SHOWMARKER = "敌方标记", 	-- "Show Enemy Markers"
    SI_UNTAUNTED_MENU_SHOWMARKER_TOOLTIP = "在与你交战的敌人上方显示标记（像小队标记那样）", 	-- "Show markers (like group pins) over enemies you engaged in combat"
    SI_UNTAUNTED_MENU_MARKERSIZE = "敌方标记大小", 	-- "Size of Enemy Markers"
    SI_UNTAUNTED_MENU_MARKERSIZE_TOOLTIP = "与你交战的敌方标记的大小", 	-- "Size of the markers over enemies you are engaged with in combat"
    SI_UNTAUNTED_MENU_TRACKONLYPLAYER = "仅玩家效果", 	-- "Only Player Effects"
    SI_UNTAUNTED_MENU_TRACKONLYPLAYER_TOOLTIP = "启用时，仅追踪玩家效果", 	-- "Select to track only Player Effects"
    SI_UNTAUNTED_MENU_TRACK = "追踪 %s", 	-- e.g. "Track Taunt"
    SI_UNTAUNTED_MENU_TRACK_TOOLTIP = "选择追踪 %s", 	-- e.g. "Select to track Taunt"
    SI_UNTAUNTED_MENU_CUSTOM = "自定义技能", 	-- "Custom Abilities"
    SI_UNTAUNTED_MENU_CUSTOM_TOOLTIP = '允许以英文逗号分隔的形式添加自定义技能ID（如 "12345, 23456, 99999"）', 	-- "Allows you to add custom ability IDs"
    -- Keybinds --
    SI_BINDING_NAME_UNTAUNTED_MARKERSIZE_TOGGLE = "切换敌方标记的大小",
  }

  for stringId, stringValue in pairs(strings) do
    ZO_CreateStringId(stringId, stringValue)
    SafeAddVersion(stringId, 1)
  end

return true end