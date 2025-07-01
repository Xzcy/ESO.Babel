local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["AdvancedFilters"] = function() if not AdvancedFilters then return false end
  local util = AdvancedFilters.util
  local afPrefix = "|cFF0000[AdvancedFilters%s]|r"
  local afPrefixNormal    = string.format(afPrefix, "")
  local afPrefixError     = string.format(afPrefix, " 错误")
  local Table = {
    TwoHandAxe = "双手 "..util.Localize(SI_WEAPONTYPE1),
    TwoHandSword = "双手 "..util.Localize(SI_WEAPONTYPE3),
    TwoHandHammer = "双手 "..util.Localize(SI_WEAPONTYPE2),
    --DROPDOWN CONTEXT MENU
    ResetToAll = "重置 \'所有\'",
    InvertDropdownFilter = "反向筛选: %s",
    StackableContainer = "可堆叠容器",
    --LAM settings menu
    lamDescription = "在库存中显示额外的筛选按钮，以区分物品类型",
    lamHideItemCount = "隐藏物品计数",
    lamHideItemCountTT = "隐藏物品计数信息，在库存底行以\"(...)\"显示",
    lamHideItemCountColor = "物品计数颜色",
    lamHideItemCountColorTT = "设置库存底行物品计数器的颜色",
    lamHideSubFilterLabel = "隐藏子筛选描述标签",
    lamHideSubFilterLabelTT = "隐藏库存顶行的子筛选描述标签（自筛选按钮左侧）",
    lamGrayOutSubFiltersWithNoItems = "无物品时禁用子筛选",
    lamGrayOutSubFiltersWithNoItemsTT = "当无可用物品时，禁用子筛选按钮",
    lamShowIconsInFilterDropdowns = "在下拉选框中显示图标",
    lamShowIconsInFilterDropdownsTT = "在筛选下拉选框中，显示筛选条目的图标",
    lamShowSubMenuHeaderlinesInFilterDropdowns = "在下拉选框中显示子菜单标题",
    lamShowSubMenuHeaderlinesInFilterDropdownsTT = "在筛选下拉选框中，显示每个子菜单筛选按钮的标题行",
    lamRememberFilterDropdownsLastSelection = "记住最后的筛选下拉选框",
    lamRememberFilterDropdownsLastSelectionTT = "记住每个子筛选和筛选面板（库存，邮件，生产站等）中的最后一个下拉选框，并在返回时重新应用\n当你登出/重新加载UI时，这不会被保存",
    lamShowDropdownSelectedReminderAnimation = "使最后选中的筛选下拉选框发光",
    lamShowDropdownSelectedReminderAnimationTT = "当你切换至子筛选条时，若下拉选框已被选择，且不是显示所有对象，则使下拉选框发光",
    lamShowDropdownLastSelectedEntries = "显示筛选下拉选框历史",
    lamShowDropdownLastSelectedEntriesTT = "右击筛选下拉选框以显示最后10个历史选项，点击并再次选择。",
    lamHideCharBoundAtBankDeposit = "在个人银行中隐藏角色绑定物品",
    lamHideCharBoundAtBankDepositTT = "在向个人银行储存时，隐藏角色绑定物品",
    lamShowFilterDropdownMenuOnRightMouse   = "|t150.000000%:150.000000%:EsoUI/Art/Miscellaneous/icon_RMB.dds|t: 在按钮上显示筛选下拉选框",
    lamShowFilterDropdownMenuOnRightMouseTT = "在当前子筛选按钮打开时，显示相同内容的筛选下拉选框\n\n|t100.000000%:100.000000%:EsoUI/Art/Miscellaneous/icon_RMB.dds|t: 显示正常插件筛选菜单\nSHIFT 键 + |t100.000000%:100.000000%:EsoUI/Art/Miscellaneous/icon_RMB.dds|t: 显示插件右键筛选菜单",
    lamDropdownVisibleRows = "筛选下拉选框：可见行数",
    lamDropdownVisibleRowsTT = "下拉选框中一次最多显示的行数",
    lamDropdownVisibleSubmenuRows = "筛选下拉选框：可见子菜单行数",
    lamDropdownVisibleSubmenuRowsTT = "下拉选框中一次最多显示的子菜单行数",

    lamHeaderVisual = "可视化",
    lamHeaderFilterCategory = "筛选类别",
    lamHeaderSubfilter = "子筛选按钮",
    lamHeaderDropdownFilterbox = "筛选下拉选框",

    BodyMarking = GetString(SI_COLLECTIBLECATEGORYTYPE18),
    Facial = GetString(SI_COLLECTIBLECATEGORYTYPE14),
    Hair = GetString(SI_COLLECTIBLECATEGORYTYPE13),
    Hat = GetString(SI_COLLECTIBLECATEGORYTYPE10),
    Skin = GetString(SI_COLLECTIBLECATEGORYTYPE11),
    Polymorph = GetString(SI_COLLECTIBLECATEGORYTYPE12),
    Personality = GetString(SI_COLLECTIBLECATEGORYTYPE9),
  }
  
  AdvancedFilters.strings = BB.TableCopy(Table, AdvancedFilters.ENstrings)

return true end