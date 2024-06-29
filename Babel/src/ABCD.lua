local BB = MABabel

--Advanced Filters
--1.6.4.5
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
  AdvancedFilters.strings = ZO_ShallowTableCopy(Table, AdvancedFilters.ENstrings)
return true end

--Arkadius' Trade Tools
--2.0.0
BB.AddonList["ArkadiusTradeTools"] = function() if not ArkadiusTradeTools then return false end
  --Setting
  local ToolString = {
    --- Settings menu entries ---
    ATT_STR_GENERAL                                 = "通用",
    ATT_STR_SHOW_WINDOW_ON_MAIL                     = "在邮箱中显示界面",
    ATT_STR_SHOW_WINDOW_ON_GUILDSTORE               = "在公会商店中显示界面",
    ATT_STR_SHOW_WINDOW_ON_CRAFTINGSTATION          = "在生产站中显示界面",
    ATT_STR_SHOW_NOTIFICATIONS                      = "显示通知",
    ATT_STR_SHOW_NOTIFICATIONS_DURING_COMBAT        = "在战斗中显示通知",
    ATT_STR_HIGHLIGHT_OWN_NAME_BY_COLOR             = "用颜色高亮自身名字",
    ATT_STR_HIGHLIGHT_OWN_GUILDNAMES_BY_CHAT_COLOR  = "用聊天栏颜色高亮自身的公会名",
    ATT_STR_FORCE_TRADITIONAL_TRADER_WEEK           = "传统交易周（周日-周日）",
    ATT_STR_FORCE_TRADITIONAL_TRADER_WEEK_WARNING   = "在更改筛选或重载UI前，不更新窗口数据",
    ATT_STR_COLOR                                   = "颜色",
    ATT_STR_EXTENDED                                = "扩展",
    ATT_STR_SCAN_DURING_COMBAT                      = "在战斗中扫描事件",
    ATT_STR_SCAN_LONG_INTERVAL                      = "间隔 1 (秒)",
    ATT_STR_SCAN_SHORT_INTERVAL                     = "间隔 2 (毫秒)",
    ATT_STR_DONATE                                  = "捐助",
    ATT_STR_DONATE_TOOLTIP                          = "您喜欢这个插件并想表示支持吗？请向 @Aldanga 捐款 :-)",
    ATT_STR_GUILDSTATUS_TEXT                        = "更新状态",
    ATT_STR_GUILDSTATUS_TOOLTIP_LINE1               = "公会需要更新",
    ATT_STR_GUILDSTATUS_TOOLTIP_LINE2               = "公会正在更新",
    ATT_STR_GUILDSTATUS_TOOLTIP_LINE3               = "公会已更新",
    ATT_STR_GUILDSTATUS_TOOLTIP_LINE4               = "未加入公会",
    ATT_STR_BUTTON_CLOSE_TOOLTIP                    = "关闭窗口",
    ATT_STR_BUTTON_DRAWTIER_TOOLTIP                 = "在其他UI元素上方或下方显示窗口",
    ATT_STR_BUTTON_FORCE_REFRESH_TOOLTIP            = "从LibHistoire刷新数据",
    ATT_STR_KEYBIND_TOGGLE_MAIN_WINDOW              = "显示或隐藏主界面",
  }
  ZO_ShallowTableCopy(ToolString, ArkadiusTradeTools.Localization)
  --Statistics
  local StatisticsString = {
    ATT_STR_STATISTICS               = "统计",
    ATT_STR_TODAY                    = "今天",
    ATT_STR_YESTERDAY                = "昨天",
    ATT_STR_TWO_DAYS_AGO             = "两天前",
    ATT_STR_THIS_WEEK                = "本周",
    ATT_STR_LAST_WEEK                = "上周",
    ATT_STR_PRIOR_WEEK               = "上上周",
    ATT_STR_7_DAYS                   = "7 天",
    ATT_STR_10_DAYS                  = "10 天",
    ATT_STR_14_DAYS                  = "14 天",
    ATT_STR_30_DAYS                  = "30 天",
    ATT_STR_FILTER_TEXT_TOOLTIP      = "检索用户名或公会名",
    ATT_STR_FILTER_SUBSTRING_TOOLTIP = "在精确搜索和关键词搜索间切换。两种方式都忽略大小写",
  }
  ZO_ShallowTableCopy(StatisticsString, (ArkadiusTradeTools.Modules.Statistics or {}).Localization)
  --Sale
  local SaleString = {
    ATT_STR_SALES                                      = "销售",
    ATT_STR_TODAY                                      = "今天",
    ATT_STR_YESTERDAY                                  = "昨天",
    ATT_STR_TWO_DAYS_AGO                               = "两天前",
    ATT_STR_THIS_WEEK                                  = "本周",
    ATT_STR_LAST_WEEK                                  = "上周",
    ATT_STR_PRIOR_WEEK                                 = "上上周",
    ATT_STR_7_DAYS                                     = "7 天",
    ATT_STR_10_DAYS                                    = "10 天",
    ATT_STR_14_DAYS                                    = "14 天",
    ATT_STR_30_DAYS                                    = "30 天",
    ATT_STR_NO_PRICE                                   = "无价格",
    ATT_STR_AVERAGE_PRICE                              = "平均价格",
    ATT_STR_TOTAL                                      = "共计",
    ATT_STR_OTHER_QUALITIES                            = "其他品质",
    ATT_STR_NOTHING_FOUND                              = "<无>",
    ATT_STR_STATS_TO_CHAT                              = "向聊天栏输出统计",
    ATT_STR_OPEN_POPUP_TOOLTIP                         = "打开悬浮窗",
    ATT_FMTSTR_STATS_ITEM                              = "[ATT价格] %s: %s (%s 销售 / %s 物品 / %s 天数)",
    ATT_FMTSTR_STATS_NO_QUANTITY                       = "[ATT价格] %s: %s (%s 销售 / %s 天数)",
    ATT_FMTSTR_STATS_MASTER_WRIT                       = "[ATT价格] %s: %s (%s 销售 / %s 委托卷 / %s 每委托卷 / %s 天数)",
    ATT_FMTSTR_STATS_NO_SALES                          = "[ATT价格] %s: 在过去 %s 天中无销售记录",
    ATT_FMTSTR_TOOLTIP_STATS_ITEM                      = "%s 销售, %s 物品",
    ATT_FMTSTR_TOOLTIP_STATS_MASTER_WRIT               = "%s 销售, %s 令状委托卷",
    ATT_FMTSTR_TOOLTIP_PRICE_ITEM                      = "%s",
    ATT_FMTSTR_TOOLTIP_PRICE_MASTER_WRIT               = "%s (%s 每令状委托卷)",
    ATT_FMTSTR_TOOLTIP_NO_SALES                        = "无数据",
    ATT_FMTSTR_ANNOUNCE_SALE                           = "你卖出了 %sx %s 价格: %s 时间: %s",
    ATT_STR_ENABLE_GUILD_ROSTER_EXTENSIONS             = "启用公会名单扩展",
    ATT_STR_ENABLE_TRADING_HOUSE_EXTENSIONS            = "启用公会商店拓展",
    ATT_STR_ENABLE_TOOLTIP_EXTENSIONS                  = "启用弹窗扩展",
    ATT_STR_ENABLE_TOOLTIP_EXTENSIONS_GRAPH            = "显示图表",
    ATT_STR_ENABLE_TOOLTIP_EXTENSIONS_CRAFTING         = "显示制造价格",
    ATT_STR_ENABLE_TOOLTIP_EXTENSIONS_CRAFTING_TOOLTIP = "仅支持部分大师令状",
    ATT_STR_ENABLE_INVENTORY_PRICES                    = "在库存中启用价格",
    ATT_STR_ENABLE_INVENTORY_PRICES_WARNING            = "首次打开时可能导致跳帧",
    ATT_STR_KEEP_SALES_FOR_DAYS                        = "将销售保留 x 天",
    ATT_STR_BASE_PROFIT_MARGIN_CALC_ON                 = "利润率依据",
    ATT_STR_DEFAULT_DEAL_LEVEL                         = "默认交易级别",
    ATT_STR_DEFAULT_DEAL_LEVEL_TOOLTIP                 = "当某个物品无交易数据时，设置默认交易级别",
    ATT_STR_DEAL_LEVEL_1                               = "坏",
    ATT_STR_DEAL_LEVEL_2                               = "可",
    ATT_STR_DEAL_LEVEL_3                               = "好",
    ATT_STR_DEAL_LEVEL_4                               = "棒",
    ATT_STR_DEAL_LEVEL_5                               = "妙",
    ATT_STR_DEAL_LEVEL_6                               = "震撼人心!",
    ATT_STR_ENABLE_TRADING_HOUSE_AUTO_PRICING          = '启用公会交易列表自动定价',
    ATT_STR_ENABLE_TRADING_HOUSE_AUTO_PRICING_TOOLTIP  = '仅默认用户界面',
    ATT_STR_FILTER_TEXT_TOOLTIP                        = "对用户、公会或物品名称、物品特质（如精准）或物品品质（如传奇）进行文本搜索",
    ATT_STR_FILTER_SUBSTRING_TOOLTIP                   = "在精确搜索和关键词搜索间切换。两种方式都忽略大小写",
    ATT_STR_FILTER_COLUMN_TOOLTIP                      = "在文本搜索中排除/包含此列",
  }
  SaleString["en"] = {
    ATT_STR_STATS_TO_CHAT                   = SaleString["ATT_STR_STATS_TO_CHAT"],
    ATT_FMTSTR_STATS_ITEM                   = SaleString["ATT_FMTSTR_STATS_ITEM"],
    ATT_FMTSTR_STATS_NO_QUANTITY            = SaleString["ATT_FMTSTR_STATS_NO_QUANTITY"],
    ATT_FMTSTR_STATS_MASTER_WRIT            = SaleString["ATT_FMTSTR_STATS_MASTER_WRIT"],
    ATT_FMTSTR_STATS_NO_SALES               = SaleString["ATT_FMTSTR_STATS_NO_SALES"],
  }
  ZO_ShallowTableCopy(SaleString, (ArkadiusTradeTools.Modules.Sales or {}).Localization)
  --Purchase
  local PurchaseString = {
    ATT_STR_PURCHASES                = "购买",
    ATT_STR_TODAY                    = "今天",
    ATT_STR_YESTERDAY                = "昨天",
    ATT_STR_TWO_DAYS_AGO             = "两天前",
    ATT_STR_THIS_WEEK                = "本周",
    ATT_STR_LAST_WEEK                = "上周",
    ATT_STR_PRIOR_WEEK               = "上上周",
    ATT_STR_7_DAYS                   = "7 天",
    ATT_STR_10_DAYS                  = "10 天",
    ATT_STR_14_DAYS                  = "14 天",
    ATT_STR_30_DAYS                  = "30 天",
    ATT_STR_KEEP_PURCHASES_FOR_DAYS  = "保留购置 x 天",
    ATT_STR_FILTER_TEXT_TOOLTIP      = "文本检索用户、公会或物品名",
    ATT_STR_FILTER_SUBSTRING_TOOLTIP = "在精确搜索和关键词搜索间切换。两种方式都忽略大小写",
    ATT_STR_FILTER_COLUMN_TOOLTIP    = "在文本搜索中排除/包含此列",
  }
  ZO_ShallowTableCopy(PurchaseString, (ArkadiusTradeTools.Modules.Purchases or {}).Localization)
  --Export
  local ExportString = {
    ATT_STR_EXPORTS                  = "导出",
    ATT_STR_EXPORT                   = "导出",
    ATT_STR_TODAY                    = "今天",
    ATT_STR_YESTERDAY                = "昨天",
    ATT_STR_TWO_DAYS_AGO             = "两天前",
    ATT_STR_THIS_WEEK                = "本周",
    ATT_STR_LAST_WEEK                = "上周",
    ATT_STR_PRIOR_WEEK               = "上上周",
    ATT_STR_7_DAYS                   = "7 天",
    ATT_STR_10_DAYS                  = "10 天",
    ATT_STR_14_DAYS                  = "14 天",
    ATT_STR_30_DAYS                  = "30 天",
    ATT_STR_KEEP_EXPORTS_FOR_DAYS    = "保留输出 n 天",
    ATT_STR_FILTER_TEXT_TOOLTIP      = "文本检索用户、公会或物品名",
    ATT_STR_FILTER_SUBSTRING_TOOLTIP = "在精确搜索和关键词搜索间切换。两种方式都忽略大小写",
    ATT_STR_FILTER_COLUMN_TOOLTIP    = "在文本搜索中排除/包含此列",
    ATT_STR_EXPORT_RELOAD_WARNING    = "输出已保存。请重新加载UI以写入硬盘",
    ATT_STR_INCLUDE_ONLY_MEMBERS     = "仅包含成员"
  }
  ZO_ShallowTableCopy(ExportString, (ArkadiusTradeTools.Modules.Exports or {}).Localization)
  
  --Special Setting(Fixed the font of timestamp)
  local OldFun1 = ArkadiusTradeToolsSortFilterList.Initialize
  ArkadiusTradeToolsSortFilterList.Initialize = function(...)
    local Result = OldFun1(...)
    local Table = select(1, ...)
      --Sale Tab
      local OldFun2 = Table.SetupSaleRow
      Table.SetupSaleRow = function(...)
        local Result = OldFun2(...)
          local Control = select(2, ...)
          Control:GetNamedChild("TimeStamp"):SetFont("$(MEDIUM_FONT)|14")
        return Result
      end
      --Export Tab
      local OldFun3 = Table.SetupExportRow
      Table.SetupExportRow = function(...)
        local Result = OldFun3(...)
          local Control = select(2, ...)
          Control:GetNamedChild("StartTimeStamp"):SetFont("$(MEDIUM_FONT)|14")
          Control:GetNamedChild("EndTimeStamp"):SetFont("$(MEDIUM_FONT)|14")
          Control:GetNamedChild("CreatedTimeStamp"):SetFont("$(MEDIUM_FONT)|14")
        return Result
      end
      --Purchase Tab
      local OldFun4 = Table.SetupPurchaseRow
      Table.SetupPurchaseRow = function(...)
        local Result = OldFun4(...)
          local Control = select(2, ...)
          Control:GetNamedChild("TimeStamp"):SetFont("$(MEDIUM_FONT)|14")
        return Result
      end
    return Result
  end
  --
  ZO_PostHookHandler(ArkadiusTradeToolsWindow, "OnEffectivelyShown",
    function()
      for i = 1, 4 do
        local control = WINDOW_MANAGER:GetControlByName("ArkadiusTradeToolsWindowTabWindowButton"..i)
        if control then
          control:GetNamedChild("Text"):SetFont("$(MEDIUM_FONT)|14")
        end
      end
    end
  )
  ZO_PostHookHandler(ZO_GuildRosterHeaders, "OnEffectivelyShown",
    function()
      if ZO_GuildRosterHeadersATT_PurchasesName then
        ZO_GuildRosterHeadersATT_PurchasesName:SetText("购买")
      end
      if ZO_GuildRosterHeadersATT_SalesName then
        ZO_GuildRosterHeadersATT_SalesName:SetText("销售")
      end
    end
  )
  --
  BB.SetAfterPart(
    function()
      local Font = "$(MEDIUM_FONT)|14"
      local Controls = {
        --Sales
        "ArkadiusTradeToolsSalesFrameHeadersSellerNameName",
        "ArkadiusTradeToolsSalesFrameHeadersBuyerNameName",
        "ArkadiusTradeToolsSalesFrameHeadersGuildNameName",
        "ArkadiusTradeToolsSalesFrameHeadersItemLinkName",
        "ArkadiusTradeToolsSalesFrameHeadersTimeStampName",
        "ArkadiusTradeToolsSalesFrameHeadersUnitPriceName",
        "ArkadiusTradeToolsSalesFrameHeadersPriceName",
        --Purchases
        "ArkadiusTradeToolsPurchasesFrameHeadersBuyerNameName",
        "ArkadiusTradeToolsPurchasesFrameHeadersSellerNameName",
        "ArkadiusTradeToolsPurchasesFrameHeadersGuildNameName",
        "ArkadiusTradeToolsPurchasesFrameHeadersItemLinkName",
        "ArkadiusTradeToolsPurchasesFrameHeadersTimeStampName",
        "ArkadiusTradeToolsPurchasesFrameHeadersUnitPriceName",
        "ArkadiusTradeToolsPurchasesFrameHeadersPriceName",
        --Statistics
        "ArkadiusTradeToolsStatisticsFrameHeadersDisplayNameName",
        "ArkadiusTradeToolsStatisticsFrameHeadersGuildNameName",
        "ArkadiusTradeToolsStatisticsFrameHeadersSalesVolumeName",
        "ArkadiusTradeToolsStatisticsFrameHeadersTaxesName",
        "ArkadiusTradeToolsStatisticsFrameHeadersInternalSalesVolumePercentageName",
        "ArkadiusTradeToolsStatisticsFrameHeadersItemCountName",
        --Exports
        "ArkadiusTradeToolsExportsFrameHeadersGuildNameName",
        "ArkadiusTradeToolsExportsFrameHeadersStartTimeStampName",
        "ArkadiusTradeToolsExportsFrameHeadersEndTimeStampName",
        "ArkadiusTradeToolsExportsFrameHeadersCreatedTimeStampName",
      }
      local Strings = {
        "卖家", "买家", "公会", "物品", "时间", "单价", "总价",
        "买家", "卖家", "公会", "物品", "时间", "单价", "总价",
        "玩家", "公会", "总计", "税收", "内销占比", "物品数",
        "公会", "开始时间", "结束时间", "创建时间",
      }
      for i = 1, #Controls do
        local control = WINDOW_MANAGER:GetControlByName(Controls[i])
        if control then
          control:SetText(Strings[i])
          control:SetFont(Font)
        end
      end
    end
  )
return true end

--Auto Category
--3.6.7
BB.AddonList["AutoCategory"] = function() if not AutoCategory then return false end
  AutoCategory_localization_strings["zh"] = {
    SI_AC_BAGTYPE_SHOWNAME_BACKPACK = "随身背包",
    SI_AC_BAGTYPE_SHOWNAME_BANK = "银行",
    SI_AC_BAGTYPE_SHOWNAME_GUILDBANK = "公会银行",
    SI_AC_BAGTYPE_SHOWNAME_CRAFTBAG = "材料背包",
    SI_AC_BAGTYPE_SHOWNAME_CRAFTSTATION = "工作台",
    SI_AC_BAGTYPE_SHOWNAME_HOUSEBANK = "住宅储藏箱",
    SI_AC_BAGTYPE_TOOLTIP_BACKPACK = "随身背包",
    SI_AC_BAGTYPE_TOOLTIP_BANK = "银行",
    SI_AC_BAGTYPE_TOOLTIP_GUILDBANK = "公会银行",
    SI_AC_BAGTYPE_TOOLTIP_CRAFTBAG = "材料背包",
    SI_AC_BAGTYPE_TOOLTIP_CRAFTSTATION = "工作台", 
    SI_AC_BAGTYPE_TOOLTIP_HOUSEBANK = "住宅储藏箱", 

    SI_AC_ALIGNMENT_LEFT = "左对齐",
    SI_AC_ALIGNMENT_CENTER = "居中",
    SI_AC_ALIGNMENT_RIGHT = "右对齐",

    SI_AC_DEFAULT_NAME_EMPTY_TAG = "<空>",
    SI_AC_DEFAULT_NAME_CATEGORY_OTHER = "其他",
    SI_AC_DEFAULT_NAME_NEW_CATEGORY = "新分类",

    SI_AC_WARNING_CATEGORY_MISSING = "这个分类不存在，请确认同名的分类是否存在。",
    SI_AC_WARNING_CATEGORY_NAME_EMPTY = "分类名称不能为空。",
    SI_AC_WARNING_CATEGORY_NAME_DUPLICATED = "名称 '%s' 重复了，您可以尝试使用 '%s'。",
    SI_AC_WARNING_NEED_RELOAD_UI = "需要重载界面",

    SI_AC_MENU_BS_CHECKBOX_ACCOUNT_WIDE_SETTING = "账号设置",
    SI_AC_MENU_BS_CHECKBOX_ACCOUNT_WIDE_SETTING_TOOLTIP = "使用账号设置取代角色设置",

    SI_AC_MENU_SUBMENU_BAG_SETTING = "|c0066FF[背包设定]|r",
    SI_AC_MENU_BS_DROPDOWN_BAG = "选择背包",
    SI_AC_MENU_BS_DROPDOWN_BAG_TOOLTIP = "选择一个背包来修改其所拥有的分类",
    SI_AC_MENU_BS_CHECKBOX_UNGROUPED_CATEGORY_HIDDEN = "隐藏未分类物品",
    SI_AC_MENU_BS_CHECKBOX_UNGROUPED_CATEGORY_HIDDEN_TOOLTIP = "启用时，未被分类的物品将在包中被隐藏",

    SI_AC_MENU_BS_DROPDOWN_CATEGORIES = "选择分类",
    SI_AC_MENU_BS_SLIDER_CATEGORY_PRIORITY = "分类优先级",
    SI_AC_MENU_BS_SLIDER_CATEGORY_PRIORITY_TOOLTIP = "分类优先级决定了它在背包中的顺序，更高的优先级意味着更靠前的位置",
    SI_AC_MENU_BS_BUTTON_EDIT = "编辑分类",
    SI_AC_MENU_BS_BUTTON_EDIT_TOOLTIP = "在分类设置中编辑这个分类",
    SI_AC_MENU_BS_BUTTON_REMOVE = "移除分类",
    SI_AC_MENU_BS_BUTTON_REMOVE_TOOLTIP = "将选定的分类从背包中移除",

    SI_AC_MENU_BS_CHECKBOX_CATEGORY_HIDDEN = "隐藏分类",
    SI_AC_MENU_BS_CHECKBOX_CATEGORY_HIDDEN_TOOLTIP = "该分类及分类下的物品将在包中被隐藏",

    SI_AC_MENU_HEADER_ADD_CATEGORY = "添加分类",
    SI_AC_MENU_AC_DROPDOWN_TAG = "选择标签",
    SI_AC_MENU_AC_DROPDOWN_CATEGORY = "选择分类",
    SI_AC_MENU_AC_BUTTON_EDIT = "编辑分类",
    SI_AC_MENU_AC_BUTTON_EDIT_TOOLTIP = "在分类设置中编辑这个分类",
    SI_AC_MENU_AC_BUTTON_ADD = "添加分类",
    SI_AC_MENU_AC_BUTTON_ADD_TOOLTIP = "将选定的分类添加到背包中",
    SI_AC_MENU_AC_BUTTON_NEED_HELP = "需要帮助?",

    SI_AC_MENU_HEADER_IMPORT_BAG_SETTING = "导入背包配置",
    SI_AC_MENU_IBS_DROPDOWN_IMPORT_FROM_BAG = "从背包导入",
    SI_AC_MENU_IBS_DROPDOWN_IMPORT_FROM_BAG_TOOLTIP = "请选择一个背包来导入配置。",
    SI_AC_MENU_IBS_BUTTON_IMPORT = "导入",
    SI_AC_MENU_IBS_BUTTON_IMPORT_TOOLTIP = "导入会覆盖当前背包的配置。",

    SI_AC_MENU_HEADER_UNIFY_BAG_SETTINGS = "统一使用当前背包配置",
    SI_AC_MENU_UBS_BUTTON_EXPORT_TO_ALL_BAGS = "导出到所有的背包",
    SI_AC_MENU_UBS_BUTTON_EXPORT_TO_ALL_BAGS_TOOLTIP = "将会用当前背包的配置替换所有的背包!",

    SI_AC_MENU_SUBMENU_CATEGORY_SETTING = "|c0066FF[分类设置]|r",
    SI_AC_MENU_CS_DROPDOWN_TAG = "选择标签",
    SI_AC_MENU_CS_DROPDOWN_TAG_TOOLTIP = "为分类添加标签以方便搜索",
    SI_AC_MENU_CS_DROPDOWN_CATEGORY = "选择分类",

    SI_AC_MENU_HEADER_EDIT_CATEGORY = "编辑分类",
    SI_AC_MENU_EC_BUTTON_PREDEFINED = "|cFF0000预定设置，只读|r",
    SI_AC_MENU_EC_EDITBOX_NAME = "分类名称",
    SI_AC_MENU_EC_EDITBOX_NAME_TOOLTIP = "分类名称无法重复.",
    SI_AC_MENU_EC_EDITBOX_TAG = "标签",
    SI_AC_MENU_EC_EDITBOX_TAG_TOOLTIP = "分类只有在对应的标签中可见。 如果标签为空则会使用标签：<空>",
    SI_AC_MENU_EC_EDITBOX_DESCRIPTION = "分类描述",
    SI_AC_MENU_EC_EDITBOX_DESCRIPTION_TOOLTIP = "用于说明分类的作用",
    SI_AC_MENU_EC_EDITBOX_RULE = "规则",
    SI_AC_MENU_EC_EDITBOX_RULE_TOOLTIP = "规则将被用于给物品分类",
    SI_AC_MENU_EC_BUTTON_LEARN_RULES = "学习规则",
    SI_AC_MENU_EC_BUTTON_LEARN_RULES_TOOLTIP = "学习规则",
    SI_AC_MENU_EC_BUTTON_NEW_CATEGORY = "创建分类",
    SI_AC_MENU_EC_BUTTON_NEW_CATEGORY_TOOLTIP = "用选定的标签创建一个新的分类",
    SI_AC_MENU_EC_BUTTON_CHECK_RULE = "可行性检查",
    SI_AC_MENU_EC_BUTTON_CHECK_RESULT_GOOD = "|c2DC50E可行|r",
    SI_AC_MENU_EC_BUTTON_CHECK_RESULT_ERROR = "|cFF0000错误|r",
    SI_AC_MENU_EC_BUTTON_CHECK_RESULT_WARNING = "|cEECA00警告 - 未识别:|r",
    SI_AC_MENU_EC_BUTTON_CHECK_RULE_TOOLTIP = "如果有错误请检查书写规则",
    SI_AC_MENU_EC_BUTTON_COPY_CATEGORY = "复制分类",
    SI_AC_MENU_EC_BUTTON_COPY_CATEGORY_TOOLTIP = "复制一个选中的分类",
    SI_AC_MENU_EC_BUTTON_DELETE_CATEGORY = "删除分类",
    SI_AC_MENU_EC_BUTTON_DELETE_CATEGORY_TOOLTIP = "删除选中的分类",

    SI_AC_MENU_SUBMENU_APPEARANCE_SETTING = "|c0066FF[表现设置]|r",
    SI_AC_MENU_AS_DESCRIPTION_REFRESH_TIP = "修改分类组的名称样式，不需要重新加载界面，只需要切换一下标签页即可刷新。*只在键盘模式下有用*",
    SI_AC_MENU_EC_DROPDOWN_CATEGORY_TEXT_FONT = "字体",
    SI_AC_MENU_EC_DROPDOWN_CATEGORY_TEXT_STYLE = "字体样式",
    SI_AC_MENU_EC_DROPDOWN_CATEGORY_TEXT_ALIGNMENT = "水平对齐",
    SI_AC_MENU_EC_DROPDOWN_CATEGORY_TEXT_FONT_SIZE = "字号",
    SI_AC_MENU_EC_DROPDOWN_CATEGORY_TEXT_COLOR = "字体颜色",
    SI_AC_MENU_EC_DROPDOWN_HIDDEN_CATEGORY_TEXT_COLOR = "隐藏分类字体颜色",
    SI_AC_MENU_EC_EDITBOX_CATEGORY_UNGROUPED_TITLE = "未分组分类名称",
    SI_AC_MENU_EC_EDITBOX_CATEGORY_UNGROUPED_TITLE_TOOLTIP = "如果物品没有匹配的分类，将会放到这个分类里",
    SI_AC_MENU_EC_SLIDER_CATEGORY_HEADER_HEIGHT = "分类标题高度",
    SI_AC_MENU_EC_BUTTON_RELOAD_UI = "重载界面",
    SI_AC_MENU_SUBMENU_GENERAL_SETTING = "|c0066FF[通用设定]|r",
    SI_AC_MENU_GS_CHECKBOX_SHOW_MESSAGE_WHEN_TOGGLE = "切换时显示提醒消息",
    SI_AC_MENU_GS_CHECKBOX_SHOW_MESSAGE_WHEN_TOGGLE_TOOLTIP = "切换插件功能时可以在聊天框中显示一条提醒消息。",
    SI_AC_MENU_GS_CHECKBOX_SHOW_CATEGORY_ITEM_COUNT = "显示分类物品计数",
    SI_AC_MENU_GS_CHECKBOX_SHOW_CATEGORY_ITEM_COUNT_TOOLTIP = "在分类名后增加该类别下的物品计数", 
    SI_AC_MENU_GS_CHECKBOX_SHOW_CATEGORY_COLLAPSE_ICON = "显示分类折叠图标",
    SI_AC_MENU_GS_CHECKBOX_SHOW_CATEGORY_COLLAPSE_ICON_TOOLTIP = "显示折叠/展开分类的图标",
    SI_AC_MENU_GS_CHECKBOX_SAVE_CATEGORY_COLLAPSE_STATUS = "保存分类折叠状态",
    SI_AC_MENU_GS_CHECKBOX_SAVE_CATEGORY_COLLAPSE_STATUS_TOOLTIP = "在登出后，保存物品分类的折叠和展开状态",
    SI_AC_MENU_GS_CHECKBOX_SHOW_CATEGORY_SET_TITLE = "自动套装分类时，显示 '套装(名称)'",
    SI_AC_MENU_GS_CHECKBOX_SHOW_CATEGORY_SET_TITLE_TOOLTIP = "在套装分类时，显示 '套装(名称)' 而非'名称'",

    SI_AC_MENU_SUBMENU_IMPORT_EXPORT = "|c0066FF[导入 & 导出]|r",
    SI_AC_MENU_HEADER_ACCOUNT_WIDE_SETTING = "全账号配置",

    SI_AC_MENU_SUBMENU_GAMEPAD_SETTING = "|c0066FF[手柄模式设置]|r",
    SI_AC_MENU_GMS_DESCRIPTION_TIP = "仅在手柄模式下生效",
    SI_AC_MENU_GMS_CHECKBOX_ENABLE_GAMEPAD = "启用库存支持",
    SI_AC_MENU_GMS_CHECKBOX_ENABLE_GAMEPAD_TOOLTIP = "分类将被应用于手柄模式库存",
    SI_AC_MENU_GMS_CHECKBOX_EXTENDED_GAMEPAD_SUPPLIES = "启用扩展的物资类别",
    SI_AC_MENU_GMS_CHECKBOX_EXTENDED_GAMEPAD_SUPPLIES_TOOLTIP = "物资类别将包含库存所有物品。材料、家具和快捷栏物品类别将被隐藏",

    SI_AC_DEFAULT_TAG_GEARS= "装备",
    SI_AC_DEFAULT_TAG_GENERAL_ITEMS= "通用物品",
    SI_AC_DEFAULT_TAG_MATERIALS= "材料",

    SI_AC_DEFAULT_CATEGORY_ARMOR= "护甲",
    SI_AC_DEFAULT_CATEGORY_BOE= "BoE装备",
    SI_AC_DEFAULT_CATEGORY_BOE_DESC= "可以出售的BoE装备",
    SI_AC_DEFAULT_CATEGORY_BOP_TRADEABLE= "BoP装备",
    SI_AC_DEFAULT_CATEGORY_BOP_TRADEABLE_DESC= "可以限时交易的BoP装备",
    SI_AC_DEFAULT_CATEGORY_DECONSTRUCT= "分解",
    SI_AC_DEFAULT_CATEGORY_DECONSTRUCT_DESC= "",
    SI_AC_DEFAULT_CATEGORY_EQUIPPING= "装备中",
    SI_AC_DEFAULT_CATEGORY_EQUIPPING_DESC= "正在装备着的装备(仅游戏手柄模式)",
    SI_AC_DEFAULT_CATEGORY_LOW_LEVEL= "低等级",
    SI_AC_DEFAULT_CATEGORY_LOW_LEVEL_DESC= "正在装备着的装备(仅游戏手柄模式)",
    SI_AC_DEFAULT_CATEGORY_NECKLACE= "项链",
    SI_AC_DEFAULT_CATEGORY_NECKLACE_DESC= "",
    SI_AC_DEFAULT_CATEGORY_RESEARCHABLE= "可研究",
    SI_AC_DEFAULT_CATEGORY_RESEARCHABLE_DESC= "装备可用于研究使用，只保留最低等级且品质最低的。",
    SI_AC_DEFAULT_CATEGORY_RING= "戒指",
    SI_AC_DEFAULT_CATEGORY_RING_DESC= "",
    SI_AC_DEFAULT_CATEGORY_SET= "套装",
    SI_AC_DEFAULT_CATEGORY_SET_DESC= "自动分类的套装装备",
    SI_AC_DEFAULT_CATEGORY_WEAPON= "武器",
    SI_AC_DEFAULT_CATEGORY_WEAPON_DESC= "",

    SI_AC_DEFAULT_CATEGORY_CONSUMABLES= "消耗品",
    SI_AC_DEFAULT_CATEGORY_CONSUMABLES_DESC= "食物，饮料，药水",
    SI_AC_DEFAULT_CATEGORY_CONTAINER= "容器",
    SI_AC_DEFAULT_CATEGORY_CONTAINER_DESC= "",
    SI_AC_DEFAULT_CATEGORY_FURNISHING= "家具",
    SI_AC_DEFAULT_CATEGORY_FURNISHING_DESC= "",
    SI_AC_DEFAULT_CATEGORY_GLYPHS_AND_GEMS= "符文&宝石",
    SI_AC_DEFAULT_CATEGORY_GLYPHS_AND_GEMS_DESC= "",
    SI_AC_DEFAULT_CATEGORY_NEW= "新物品",
    SI_AC_DEFAULT_CATEGORY_NEW_DESC= "最近刚刚得到的新物品",
    SI_AC_DEFAULT_CATEGORY_POISON= "毒药",
    SI_AC_DEFAULT_CATEGORY_POISON_DESC= "",
    SI_AC_DEFAULT_CATEGORY_QUICKSLOTS= "快捷栏",
    SI_AC_DEFAULT_CATEGORY_QUICKSLOTS_DESC= "装备在快捷栏里的物品",
    SI_AC_DEFAULT_CATEGORY_RECIPES_AND_MOTIFS= "配方&书籍",
    SI_AC_DEFAULT_CATEGORY_RECIPES_AND_MOTIFS_DESC= "所有配方、书籍和书籍碎片。",
    SI_AC_DEFAULT_CATEGORY_SELLING= "出售",
    SI_AC_DEFAULT_CATEGORY_SELLING_DESC= "",
    SI_AC_DEFAULT_CATEGORY_STOLEN= "偷取的",
    SI_AC_DEFAULT_CATEGORY_STOLEN_DESC= "",
    SI_AC_DEFAULT_CATEGORY_TREASURE_MAPS= "藏宝图",
    SI_AC_DEFAULT_CATEGORY_TREASURE_MAPS_DESC= "包括藏宝图和调查报告",
    
    SI_AC_DEFAULT_CATEGORY_ALCHEMY= "炼金",
    SI_AC_DEFAULT_CATEGORY_ALCHEMY_DESC= "",
    SI_AC_DEFAULT_CATEGORY_BLACKSMITHING= "锻造",
    SI_AC_DEFAULT_CATEGORY_BLACKSMITHING_DESC= "",
    SI_AC_DEFAULT_CATEGORY_CLOTHING= "裁缝",
    SI_AC_DEFAULT_CATEGORY_CLOTHING_DESC= "",
    SI_AC_DEFAULT_CATEGORY_ENCHANTING= "附魔",
    SI_AC_DEFAULT_CATEGORY_ENCHANTING_DESC= "",
    SI_AC_DEFAULT_CATEGORY_JEWELRYCRAFTING= "珠宝",
    SI_AC_DEFAULT_CATEGORY_JEWELRYCRAFTING_DESC= "",
    SI_AC_DEFAULT_CATEGORY_PROVISIONING= "烹饪",
    SI_AC_DEFAULT_CATEGORY_PROVISIONING_DESC= "",
    SI_AC_DEFAULT_CATEGORY_TRAIT_OR_STYLE_GEMS= "特性/样式宝石",
    SI_AC_DEFAULT_CATEGORY_TRAIT_OR_STYLE_GEMS_DESC= "",
    SI_AC_DEFAULT_CATEGORY_WOODWORKING= "木工",
    SI_AC_DEFAULT_CATEGORY_WOODWORKING_DESC= "",

    SI_BINDING_NAME_TOGGLE_AUTO_CATEGORY= "切换 Auto Category",
    SI_MESSAGE_TOGGLE_AUTO_CATEGORY_ON="Auto Category: 开启",
    SI_MESSAGE_TOGGLE_AUTO_CATEGORY_OFF="Auto Category: 关闭",
    SI_CONTEXT_MENU_EXPAND = "展开",
    SI_CONTEXT_MENU_COLLAPSE = "折叠",
    SI_CONTEXT_MENU_EXPAND_ALL = "展开所有",
    SI_CONTEXT_MENU_COLLAPSE_ALL = "折叠所有",
  }
  --Special Setting
  AutoCategory.LoadLanguage(AutoCategory_localization_strings, "en")
return true end

--BeamMeUp
--3.5.5
BB.AddonList["BeamMeUp"] = function() if not BMU then return false end
  local mkstr = ZO_CreateStringId
  local SI = BMU.SI
  -----------------------------------------------------------------------------
  -- INTERFACE
  -----------------------------------------------------------------------------
  mkstr(SI.TELE_UI_TOTAL, "可用传送:")
  mkstr(SI.TELE_UI_GOLD, "节省金币:")
  mkstr(SI.TELE_UI_GOLD_ABBR, "k")
  mkstr(SI.TELE_UI_GOLD_ABBR2, "m")
  mkstr(SI.TELE_UI_TOTAL_PORTS, "共传送:")
  ---------
  --------- Buttons
  mkstr(SI.TELE_UI_BTN_REFRESH_ALL, "刷新列表")
  mkstr(SI.TELE_UI_BTN_UNLOCK_WS, "自动发现当前地图指路祭坛（基于列表玩家）")
  mkstr(SI.TELE_UI_BTN_FIX_WINDOW, "锁定/解锁窗口")
  mkstr(SI.TELE_UI_BTN_TOGGLE_ZONE_GUIDE, "切换到BeamMeUp")
  mkstr(SI.TELE_UI_BTN_TOGGLE_BMU, "切换到区域指南")
  mkstr(SI.TELE_UI_BTN_PORT_TO_OWN_HOUSE, "拥有的房屋")
  mkstr(SI.TELE_UI_BTN_ANCHOR_ON_MAP, "是/否显示在在地图上")
  mkstr(SI.TELE_UI_BTN_GUILD_BMU, "公会")
  mkstr(SI.TELE_UI_BTN_GUILD_HOUSE_BMU, "访问BeamMeUp公会大厅")
  mkstr(SI.TELE_UI_BTN_PTF_INTEGRATION, "\"传送到朋友的房子\" 集成")
  mkstr(SI.TELE_UI_BTN_DUNGEON_FINDER, "竞技场/试炼/副本")
  mkstr(SI.TELE_UI_BTN_TOOLTIP_CONTEXT_MENU, "\n|c777777(右键点击查看更多选项))")
  ---------
  --------- List
  mkstr(SI.TELE_UI_UNRELATED_ITEMS, "其他区域地图")
  mkstr(SI.TELE_UI_UNRELATED_QUESTS, "其他区域任务")
  mkstr(SI.TELE_UI_SAME_INSTANCE, "相同情况")
  mkstr(SI.TELE_UI_DIFFERENT_INSTANCE, "不同情况")
  mkstr(SI.TELE_UI_GROUP_EVENT, "组队事件")
  ---------
  --------- Menu
  mkstr(SI.TELE_UI_FAVORITE_PLAYER, "已关注玩家")
  mkstr(SI.TELE_UI_FAVORITE_ZONE, "区域收藏夹")
  mkstr(SI.TELE_UI_VOTE_TO_LEADER, "投票队长")
  mkstr(SI.TELE_UI_RESET_COUNTER_ZONE, "重置计数器")
  mkstr(SI.TELE_UI_INVITE_BMU_GUILD, "邀请到BeamMeUp公会")
  mkstr(SI.TELE_UI_SHOW_QUEST_MARKER_ON_MAP, "显示任务标记")
  mkstr(SI.TELE_UI_RENAME_HOUSE_NICKNAME, "重命名房子昵称")
  mkstr(SI.TELE_UI_TOGGLE_HOUSE_NICKNAME, "显示昵称")
  mkstr(SI.TELE_UI_VIEW_MAP_ITEM, "查看地图物品")
  mkstr(SI.TELE_UI_TOGGLE_ARENAS, "单人竞技场")
  mkstr(SI.TELE_UI_TOGGLE_GROUP_ARENAS, "组队竞技场")
  mkstr(SI.TELE_UI_TOGGLE_TRIALS, "试炼")
  mkstr(SI.TELE_UI_TOGGLE_ENDLESS_DUNGEONS, "无尽档案塔")
  mkstr(SI.TELE_UI_TOGGLE_GROUP_DUNGEONS, "组队地下城")
  mkstr(SI.TELE_UI_TOGGLE_SORT_ACRONYM, "以首字母排序")
  mkstr(SI.TELE_UI_DAYS_LEFT, "%d 天剩余")
  mkstr(SI.TELE_UI_TOGGLE_UPDATE_NAME, "显示DLC名称")
  mkstr(SI.TELE_UI_UNLOCK_WAYSHRINES, "自动发现指路祭坛")
  mkstr(SI.TELE_UI_TOOGLE_ZONE_NAME, "显示区域名称")
  mkstr(SI.TELE_UI_TOGGLE_SORT_RELEASE, "按发布时间排序")
  mkstr(SI.TELE_UI_TOGGLE_ACRONYM, "显示缩写")
  mkstr(SI.TELE_UI_TOOGLE_DUNGEON_NAME, "显示副本名")
  -----------------------------------------------------------------------------
  -- CHAT OUTPUTS
  -----------------------------------------------------------------------------
  mkstr(SI.TELE_CHAT_FAVORITE_UNSET, "收藏槽未设置")
  mkstr(SI.TELE_CHAT_FAVORITE_PLAYER_NO_FAST_TRAVEL, "此玩家已下线或被筛选器设置隐藏")
  mkstr(SI.TELE_CHAT_NO_FAST_TRAVEL, "没有找到快速旅行选项")
  mkstr(SI.TELE_CHAT_NOT_IN_GROUP, "您不在队伍中")
  mkstr(SI.TELE_CHAT_PORT_TO_OWN_PRIMARY_HOUSE_FAILED, "没有设置主要房屋!")
  mkstr(SI.TELE_CHAT_GROUP_LEADER_YOURSELF, "您是队长")
  mkstr(SI.TELE_CHAT_UNLOCK_WS_DISCOVERED_TOTAL, "区域中已发现的指路祭坛总数:")
  mkstr(SI.TELE_CHAT_UNLOCK_WS_NEED_DISCOVERED, "以下指路祭坛还需要实际到访:")
  mkstr(SI.TELE_CHAT_SHARING_FOLLOW_LINK, "跟随链接 ...")
  mkstr(SI.TELE_CHAT_AUTO_UNLOCK_CANCELED, "用户取消自动发现")
  mkstr(SI.TELE_CHAT_AUTO_UNLOCK_SKIP, "快速旅行失败：跳过当前玩家。")
  -----------------------------------------------------------------------------
  -- SETTINGS
  -----------------------------------------------------------------------------
  mkstr(SI.TELE_SETTINGS_SHOW_ON_MAP_OPEN, "打开地图时打开BeamMeUp")
  mkstr(SI.TELE_SETTINGS_SHOW_ON_MAP_OPEN_TOOLTIP, "当您打开地图时, BeamMeUp也将自动打开, 否则的话您将在地图左上部看见一个按钮, 地图完成度窗口中也会有一个切换按钮。")
  mkstr(SI.TELE_SETTINGS_ZONE_ONCE_ONLY, "每个区域只显示一次")
  mkstr(SI.TELE_SETTINGS_ZONE_ONCE_ONLY_TOOLTIP, "每个区域只显示一个清单.")
  mkstr(SI.TELE_SETTINGS_AUTO_PORT_FREQ, "解锁指路祭坛的频率 (ms)")
  mkstr(SI.TELE_SETTINGS_AUTO_PORT_FREQ_TOOLTIP, "调整自动解锁指路祭坛的频率。对于配置比较差的电脑或者只是为了防掉线, 更高的频率会有所帮助。")
  mkstr(SI.TELE_SETTINGS_AUTO_REFRESH, "打开时刷新并重置")
  mkstr(SI.TELE_SETTINGS_AUTO_REFRESH_TOOLTIP, "每次打开BeamMeUp时自动刷新结果列表。清空输入框.")
  mkstr(SI.TELE_SETTINGS_HEADER_BLACKLISTING, "黑名单")
  mkstr(SI.TELE_SETTINGS_HIDE_OTHERS, "隐藏难以进入的区域")
  mkstr(SI.TELE_SETTINGS_HIDE_OTHERS_TOOLTIP, "隐藏例如大漩涡竞技场，法外之地和单人区域之类的区域。")
  mkstr(SI.TELE_SETTINGS_HIDE_PVP, "隐藏PVP区域")
  mkstr(SI.TELE_SETTINGS_HIDE_PVP_TOOLTIP, "隐藏例如悉罗帝尔, 帝都和角斗场等区域。")
  mkstr(SI.TELE_SETTINGS_HIDE_CLOSED_DUNGEONS, "隐藏组队副本和试炼")
  mkstr(SI.TELE_SETTINGS_HIDE_CLOSED_DUNGEONS_TOOLTIP, "隐藏所有4人组队副本, 12人试炼和荒崖的组队副本。这些区域内的队伍成员将仍然被显示!")
  mkstr(SI.TELE_SETTINGS_HIDE_HOUSES, "隐藏房屋")
  mkstr(SI.TELE_SETTINGS_HIDE_HOUSES_TOOLTIP, "隐藏所有房屋。")
  mkstr(SI.TELE_SETTINGS_WINDOW_STAY, "保持BeamMeUp打开")
  mkstr(SI.TELE_SETTINGS_WINDOW_STAY_TOOLTIP, "当您不打开地图状态下打开BeamMeUp, 即便您移动或打开其他窗口他仍将保留。如您使用此选项, 建议关闭'关地图同时关闭BeamMeUp'选项。")
  mkstr(SI.TELE_SETTINGS_ONLY_MAPS, "只在区域/世界区域显示")
  mkstr(SI.TELE_SETTINGS_ONLY_MAPS_TOOLTIP, "只在如迪莎安或夏暮岛之类的主要区域显示。")
  mkstr(SI.TELE_SETTINGS_AUTO_REFRESH_FREQ, "刷新间隔 (秒)")
  mkstr(SI.TELE_SETTINGS_AUTO_REFRESH_FREQ_TOOLTIP, "当打开BeamMeUp时, 列表会每 x 秒钟自动刷新一次。 0 为禁用。")
  mkstr(SI.TELE_SETTINGS_FOCUS_ON_MAP_OPEN, "定位到区域查找框")
  mkstr(SI.TELE_SETTINGS_FOCUS_ON_MAP_OPEN_TOOLTIP, "当BeamMeUp与地图同时打开时，定位光标到区域查找框。")
  mkstr(SI.TELE_SETTINGS_HIDE_DELVES, "隐藏洞穴")
  mkstr(SI.TELE_SETTINGS_HIDE_DELVES_TOOLTIP, "隐藏所有洞穴。")
  mkstr(SI.TELE_SETTINGS_HIDE_PUBLIC_DUNGEONS, "隐藏公共地下城")
  mkstr(SI.TELE_SETTINGS_HIDE_PUBLIC_DUNGEONS_TOOLTIP, "隐藏所有公共地下城。")
  mkstr(SI.TELE_SETTINGS_FORMAT_ZONE_NAME, "隐藏区域名称冠词")
  mkstr(SI.TELE_SETTINGS_FORMAT_ZONE_NAME_TOOLTIP, "隐藏区域名称里的冠词以确保更好的排序，更快地找到区域。(中文此选项无效)")
  mkstr(SI.TELE_SETTINGS_NUMBER_LINES, "行/列表数量")
  mkstr(SI.TELE_SETTINGS_NUMBER_LINES_TOOLTIP, "通过设置可见的行/列表数量，您可以控制插件的总体高度。")
  mkstr(SI.TELE_SETTINGS_HEADER_ADVANCED, "额外功能")
  mkstr(SI.TELE_SETTINGS_HEADER_UI, "通用")
  mkstr(SI.TELE_SETTINGS_HEADER_RECORDS, "列表")
  mkstr(SI.TELE_SETTINGS_CLOSE_ON_PORTING, "自动关闭地图和BeamMeUp")
  mkstr(SI.TELE_SETTINGS_CLOSE_ON_PORTING_TOOLTIP, "传送开始后关闭地图和BeamMeUp。")
  mkstr(SI.TELE_SETTINGS_SHOW_NUMBER_PLAYERS, "显示目标地图的玩家数量")
  mkstr(SI.TELE_SETTINGS_SHOW_NUMBER_PLAYERS_TOOLTIP, "显示目标地图您可传送的玩家数量。您可以点击数字以查看这些玩家。")
  mkstr(SI.TELE_SETTINGS_CHAT_BUTTON_OFFSET, "聊天窗口中按钮偏移")
  mkstr(SI.TELE_SETTINGS_CHAT_BUTTON_OFFSET_TOOLTIP, "增加聊天窗口头部按钮的水平偏移量，以避免与其他插件图标的视觉冲突。")
  mkstr(SI.TELE_SETTINGS_SEARCH_CHARACTERNAMES, "同时搜索角色名")
  mkstr(SI.TELE_SETTINGS_SEARCH_CHARACTERNAMES_TOOLTIP, "当搜索玩家时同时搜索角色名。")
  mkstr(SI.TELE_SETTINGS_SORTING, "排序")
  mkstr(SI.TELE_SETTINGS_SORTING_TOOLTIP, "设置列表的排序方式。")
  mkstr(SI.TELE_SETTINGS_SECOND_SEARCH_LANGUAGE, "第二语言搜索")
  mkstr(SI.TELE_SETTINGS_SECOND_SEARCH_LANGUAGE_TOOLTIP, "您可以同时以当前客户端语言以及此第二语言搜索区域名。区域名的提示框也显示其在第二语言中的名称。")
  mkstr(SI.TELE_SETTINGS_NOTIFICATION_PLAYER_FAVORITE_ONLINE, "关注玩家上线通知")
  mkstr(SI.TELE_SETTINGS_NOTIFICATION_PLAYER_FAVORITE_ONLINE_TOOLTIP, "当一个被关注的玩家上线时，您可收到一则通知 (屏幕中央信息)。")
  mkstr(SI.TELE_SETTINGS_HIDE_ON_MAP_CLOSE, "关地图同时关闭BeamMeUp")
  mkstr(SI.TELE_SETTINGS_HIDE_ON_MAP_CLOSE_TOOLTIP, "关闭地图时, BeamMeUp也同时关闭。")
  mkstr(SI.TELE_SETTINGS_MAP_DOCK_OFFSET_HORIZONTAL, "地图锚点水平位置")
  mkstr(SI.TELE_SETTINGS_MAP_DOCK_OFFSET_HORIZONTAL_TOOLTIP, "自定义地图锚点的水平位置。")
  mkstr(SI.TELE_SETTINGS_MAP_DOCK_OFFSET_VERTICAL, "地图锚点垂直位置")
  mkstr(SI.TELE_SETTINGS_MAP_DOCK_OFFSET_VERTICAL_TOOLTIP, "自定义地图锚点的垂直位置。")
  mkstr(SI.TELE_SETTINGS_RESET_ALL_COUNTERS, "重置区域计数器")
  mkstr(SI.TELE_SETTINGS_RESET_ALL_COUNTERS_TOOLTIP, "所有区域计数器被重置。常用列表也会被重置。")
  mkstr(SI.TELE_SETTINGS_OFFLINE_NOTE, "下线通知")
  mkstr(SI.TELE_SETTINGS_OFFLINE_NOTE_TOOLTIP, "当您设置为下线一段时间，并私信或传送到某人, 您将在聊天窗获得一条通知以提醒你。只要你仍设置为下线状态，你将无法接收任何私信信息，同时别人无法传送到你。（但分享就是关心哦）")
  mkstr(SI.TELE_SETTINGS_SCALE, "UI尺寸")
  mkstr(SI.TELE_SETTINGS_SCALE_TOOLTIP, "调整BeamMeUp的UI缩放。需要重新加载以应用更改。")
  mkstr(SI.TELE_SETTINGS_RESET_UI, "重置UI")
  mkstr(SI.TELE_SETTINGS_RESET_UI_TOOLTIP, "重置为插件默认设置，包括: 尺寸, 按钮偏移, 地图锚点位置和窗口位置，所有内容将重置。")
  mkstr(SI.TELE_SETTINGS_SURVEY_MAP_NOTIFICATION, "调查报告地图通知")
  mkstr(SI.TELE_SETTINGS_SURVEY_MAP_NOTIFICATION_TOOLTIP, "当完成调查报告图纸后，如果包裹内存在相同地点的图纸 ，插件将会在屏幕中间提醒你。")
  mkstr(SI.TELE_SETTINGS_HEADER_PRIO, "优先级")
  mkstr(SI.TELE_SETTINGS_HEADER_CHAT_COMMANDS, "聊天命令")
  mkstr(SI.TELE_SETTINGS_UNLOCKING_LESS_CHAT_OUTPUT, "最小化聊天输出")
  mkstr(SI.TELE_SETTINGS_UNLOCKING_LESS_CHAT_OUTPUT_TOOLTIP, "当使用自动解锁功能时减少聊天输出的数量。")
  mkstr(SI.TELE_SETTINGS_PRIORITIZATION_DESCRIPTION, "在这里你可以定义哪些玩家优先被用于快速旅行。如果公会状态改变（加入/退出），需要重新加载才能生效。")
  mkstr(SI.TELE_SETTINGS_SHOW_BUTTON_ON_MAP, "在地图上显示额外的按钮")
  mkstr(SI.TELE_SETTINGS_SHOW_BUTTON_ON_MAP_TOOLTIP, "在世界地图的左上角显示一个文本按钮来打开BeamMeUp。")
  mkstr(SI.TELE_SETTINGS_SURVEY_MAP_NOTIFICATION_SOUND, "播放声音")
  mkstr(SI.TELE_SETTINGS_SURVEY_MAP_NOTIFICATION_SOUND_TOOLTIP, "显示通知时播放声音。")
  mkstr(SI.TELE_SETTINGS_AUTO_CONFIRM_WAYSHRINE_TRAVEL, "自动确认指路祭坛快速旅行")
  mkstr(SI.TELE_SETTINGS_AUTO_CONFIRM_WAYSHRINE_TRAVEL_TOOLTIP, "当你传送到其他指路祭坛时不显示确认框。")
  mkstr(SI.TELE_SETTINGS_CURRENT_ZONE_ALWAYS_TOP, "当前地区置顶")
  mkstr(SI.TELE_SETTINGS_CURRENT_ZONE_ALWAYS_TOP_TOOLTIP, "将当前地区置于列表顶端。")
  mkstr(SI.TELE_SETTINGS_HIDE_OWN_HOUSES, "隐藏自己的房子")
  mkstr(SI.TELE_SETTINGS_HIDE_OWN_HOUSES_TOOLTIP, "在主列表中隐藏你自己的房子(传送外部)。")
  mkstr(SI.TELE_SETTINGS_HEADER_STATS, "统计")
  mkstr(SI.TELE_SETTINGS_MOST_PORTED_ZONES, "最常去区域:")
  mkstr(SI.TELE_SETTINGS_INSTALLED_SCINCE, "至少从此时已安装:")
  mkstr(SI.TELE_SETTINGS_INFO_CHARACTER_DEPENDING, "此功能关联到您的角色 (非账号全局设置)!")
  mkstr(SI.TELE_SETTINGS_SHOW_TELEPORT_ANIMATION, "传送动画")
  mkstr(SI.TELE_SETTINGS_SHOW_TELEPORT_ANIMATION_TOOLTIP, "通过BeamMeUp快速旅行时显示额外的传送特效。（需要解锁收藏品'芬维尔的装饰品）'。")
  mkstr(SI.TELE_SETTINGS_SHOW_CHAT_BUTTON, "聊天窗口中的按钮")
  mkstr(SI.TELE_SETTINGS_SHOW_CHAT_BUTTON_TOOLTIP, "在聊天窗口的标题栏显示一个按钮来打开BeamMeUp。")
  mkstr(SI.TELE_SETTINGS_USE_PAN_AND_ZOOM, "自动缩放")
  mkstr(SI.TELE_SETTINGS_USE_PAN_AND_ZOOM_TOOLTIP, "当您点击队伍成员或特殊区域（例如副本、房屋）时，在地图上自动缩放到目的地。")
  mkstr(SI.TELE_SETTINGS_USE_RALLY_POINT, "集合点")
  mkstr(SI.TELE_SETTINGS_USE_RALLY_POINT_TOOLTIP, "当您点击队伍成员或特殊区域（例如副本、房屋）时，在地图中的目的地上显示一个集合点 。需要LibMapPing库支持。注意: 如果您是队伍队长，你的集合点将对队伍成员可见。")
  mkstr(SI.TELE_SETTINGS_SHOW_ZONES_WITHOUT_PLAYERS, "显示无玩家或房屋的区域")
  mkstr(SI.TELE_SETTINGS_SHOW_ZONES_WITHOUT_PLAYERS_TOOLTIP, "即使地图没有玩家或者房屋，也会在主列表中显示。你可以使用金币来传送到已发现的神龛。")
  mkstr(SI.TELE_SETTINGS_VIEWED_ZONE_ALWAYS_TOP, "将当前区域和子区域置顶")
  mkstr(SI.TELE_SETTINGS_VIEWED_ZONE_ALWAYS_TOP_TOOLTIP, "将目前所在区域和子区域（打开世界地图时）显示在列表的最上方")
  mkstr(SI.TELE_SETTINGS_DEFAULT_TAB, "默认列表")
  mkstr(SI.TELE_SETTINGS_DEFAULT_TAB_TOOLTIP, "打开BeamMeUp时显示默认列表.")
  -----------------------------------------------------------------------------
  -- KEY BINDING
  -----------------------------------------------------------------------------
  mkstr(SI.TELE_KEYBINDING_TOGGLE_MAIN, "打开BeamMeUp")
  mkstr(SI.TELE_KEYBINDING_TOGGLE_MAIN_RELATED_ITEMS, "藏宝图&调查报告&线索")
  mkstr(SI.TELE_KEYBINDING_REFRESH, "刷新结果列表")
  mkstr(SI.TELE_KEYBINDING_WAYSHRINE_UNLOCK, "解锁当前区域的指路祭坛")
  mkstr(SI.TELE_KEYBINDING_PRIMARY_RESIDENCE, "传送到您的主房屋")
  mkstr(SI.TELE_KEYBINDING_GUILD_HOUSE_BMU, "访问BeamMeUp公会大厅")
  mkstr(SI.TELE_KEYBINDING_CURRENT_ZONE, "传送到当前区域")
  mkstr(SI.TELE_KEYBINDING_PRIMARY_RESIDENCE_OUTSIDE, "传送主房屋外部")
  mkstr(SI.TELE_KEYBINDING_TOGGLE_MAIN_DUNGEON_FINDER, "竞技场/试炼/副本")
  mkstr(SI.TELE_KEYBINDING_TRACKED_QUEST, "传送到聚焦任务")
  mkstr(SI.TELE_KEYBINDING_ANY_ZONE, "传送至任意区域")
  -----------------------------------------------------------------------------
  -- DIALOGS | NOTIFICATIONS
  -----------------------------------------------------------------------------
  mkstr(SI.TELE_DIALOG_NO_BMU_GUILD_BODY, "我们很抱歉, 此服务器目前还没有BeamMeUp公会。\n\n通过ESOUI网站您可轻松联系我们并在此服务器中创建一个官方BeamMeUp公会。")
  mkstr(SI.TELE_DIALOG_INFO_BMU_GUILD_BODY, "您好，感谢您使用BeamMeUp。2019年, 我们建立了几个公会以分享免费的快速旅行选项。我们欢迎所有人, 没有其他附加条件!\n\n确认此对话框, 您将在列表中看到官方和合作公会，欢迎你加入! 您也可以通过点击左上角的公会按钮来找到公会\n您的BeamMeUp团队")
  mkstr(SI.TELE_DIALOG_INFO_NEW_FEATURE_FAVORITE_PLAYER_NOTIFICATION, "当关注玩家上线时， 屏幕中央会显示通知。\n\n是否开启?")
  mkstr(SI.TELE_DIALOG_INFO_NEW_FEATURE_SURVEY_MAP_NOTIFICATION, "当完成调查报告图纸后，如果包裹内存在相同地点的图纸 ，插件将会在屏幕中间提醒你。。\n\n是否开启?")
  mkstr(SI.TELE_DIALOG_PTF_INTEGRATION_MISSING_TITLE, "集成\"传送到朋友房子\"")
  mkstr(SI.TELE_DIALOG_PTF_INTEGRATION_MISSING_BODY, "要使用此集成功能, 请安装\"Port to Friend's House\"插件。然后你会在列表中看到你配置好的房子和公会大厅。\n\n现在打开插件\"Port to Friend's House\"网站吗?")
  -- AUTO UNLOCK: Start Dialog
  mkstr(SI.TELE_DIALOG_AUTO_UNLOCK_TITLE, "开始自动解锁指路祭坛吗?")
  mkstr(SI.TELE_DIALOG_AUTO_UNLOCK_BODY, "确认后, BeamMeUp将开始自动传送当前区域中所有可传送的玩家。通过这种方法，您将自动在各个指路祭坛间传送以解锁尽可能多的指路祭坛。")
  mkstr(SI.TELE_DIALOG_AUTO_UNLOCK_LOOP_OPTION, "区域循环中…")
  mkstr(SI.TELE_DIALOG_AUTO_UNLOCK_ORDER_OPTION1, "随机传送")
  mkstr(SI.TELE_DIALOG_AUTO_UNLOCK_ORDER_OPTION2, "按未发现数量")
  mkstr(SI.TELE_DIALOG_AUTO_UNLOCK_ORDER_OPTION3, "按玩家数量")
  mkstr(SI.TELE_DIALOG_AUTO_UNLOCK_ORDER_OPTION4, "按区域名称")
  mkstr(SI.TELE_DIALOG_AUTO_UNLOCK_CHAT_LOG_OPTION, "在聊天框中输出结果")
  -- AUTO UNLOCK: Refuse Dialogs
  mkstr(SI.TELE_DIALOG_REFUSE_AUTO_UNLOCK_TITLE, "无法解锁")
  mkstr(SI.TELE_DIALOG_REFUSE_AUTO_UNLOCK_BODY, "区域中的指路祭坛已经全部解锁")
  mkstr(SI.TELE_DIALOG_REFUSE_AUTO_UNLOCK_BODY2, "此区域无法解锁指路祭坛。此功能仅在世界区域或主要区域可用。")
  mkstr(SI.TELE_DIALOG_REFUSE_AUTO_UNLOCK_BODY3, "区域内没有可传送的玩家。")
  -- AUTO UNLOCK: Process Dialog
  mkstr(SI.TELE_DIALOG_PROCESS_AUTO_UNLOCK_BODY_PART, "自动发现神龛中…")
  mkstr(SI.TELE_DIALOG_PROCESS_AUTO_UNLOCK_BODY_PART_DISCOVERY, "新发现神龛：")
  mkstr(SI.TELE_DIALOG_PROCESS_AUTO_UNLOCK_BODY_PART_XP, "获取经验：")
  mkstr(SI.TELE_DIALOG_PROCESS_AUTO_UNLOCK_BODY_PART_PROGRESS, "进度：")
  mkstr(SI.TELE_DIALOG_PROCESS_AUTO_UNLOCK_BODY_PART_TIMER, "下个神龛位于：")
  -- AUTO UNLOCK: Finish Dialog
  mkstr(SI.TELE_DIALOG_FINISH_AUTO_UNLOCK_BODY_PART, "自动发现神龛完成。")
  -- AUTO UNLOCK: Timeout Dialog
  mkstr(SI.TELE_DIALOG_TIMEOUT_AUTO_UNLOCK_TITLE, "超时")
  mkstr(SI.TELE_DIALOG_TIMEOUT_AUTO_UNLOCK_BODY, "未知错误，自动发现已取消。")
  -- AUTO UNLOCK: Loop Finish Dialog
  mkstr(SI.TELE_DIALOG_LOOP_FINISH_AUTO_UNLOCK_TITLE, "自动发现已完成")
  mkstr(SI.TELE_DIALOG_LOOP_FINISH_AUTO_UNLOCK_BODY, "未发现更多区域。因为区域没有玩家或已完成。")
  -----------------------------------------------------------------------------
  -- CENTER SCREEN NOTIFICATIONS
  -----------------------------------------------------------------------------
  mkstr(SI.TELE_CENTERSCREEN_OFFLINE_NOTE_HEAD, "提示: 您现在处于下线状态!")
  mkstr(SI.TELE_CENTERSCREEN_OFFLINE_NOTE_BODY, "别人无法私信或传送到你!\n|c8c8c8c(本通知可以在BeamMeUp插件设置中禁用)")
  mkstr(SI.TELE_CENTERSCREEN_SURVEY_MAPS, "此调查报告还有 %d 份剩余! 传送到其他地方以刷新!")
  mkstr(SI.TELE_CENTERSCREEN_FAVORITE_PLAYER_ONLINE, "已上线!")
  -----------------------------------------------------------------------------
  -- ITEM NAMES (PART OF IT) - BACKUP
  -----------------------------------------------------------------------------
  mkstr(SI.CONSTANT_TREASURE_MAP, "藏宝图") -- need a part of the item name that is in every treasure map item the same no matter which zone
  mkstr(SI.CONSTANT_SURVEY_MAP, "调查：") -- need a part of the item name that is in every survey map item the same no matter which zone and kind of craft
return true end

--BUI
--4.413
BB.AddonList["BanditsUserInterface"] = function() if not BUI then return false end
  local on,off	="开启","关闭"
  local lmb,rmb,mmb='|t16:16:/BanditsUserInterface/textures/lmb.dds|t','|t16:16:/BanditsUserInterface/textures/rmb.dds|t','|t16:16:/BanditsUserInterface/textures/mmb.dds|t'
  local AlignValues	={[8]="左",[128]="中",[2]="右"}
  local default="默认: "
  local TauntTimerValues	={"进程条","条和数字","只有数字","禁用"}
  local ReticleResistValues	={"当前值","详细信息","禁用"}
  local CastBarValues	={"任何技能","施放时间技能","禁用"}

  --KEYBINDINGS
  ZO_CreateStringId("SI_BINDING_NAME_BUI_DISMISS_ALL", "解散所有宠物")
  ZO_CreateStringId("SI_BINDING_NAME_DISPLAY_DAMAGE_REPORT_WINDOW",	"显示伤害报告")
  ZO_CreateStringId("SI_BINDING_NAME_POST_DAMAGE_RESULTS_TO_CHAT",	"贴出伤害结果")
  ZO_CreateStringId("SI_BINDING_NAME_RESET_FIGHT",			"重置当前战斗")
  ZO_CreateStringId("SI_BINDING_NAME_SHOW_LOG",				"展示日志")
  ZO_CreateStringId("SI_BINDING_NAME_TOGGLE_MINIMAP",			"小地图 开/关")
  ZO_CreateStringId("SI_BINDING_NAME_TOGGLE_COMPASS",			"罗盘 开/关")
  ZO_CreateStringId("SI_BINDING_NAME_REGROUPER_REINVITE",		"再次邀请组队")
  ZO_CreateStringId("SI_BINDING_NAME_REGROUPER_REGROUP",		"再次组队")
  
  --QuickSlots
  ZO_CreateStringId("SI_BINDING_NAME_BUI_QUICKSLOT_NEXT",		"快捷槽下一个")
  ZO_CreateStringId("SI_BINDING_NAME_BUI_QUICKSLOT_PREV",		"快捷槽上一个")
  for i	=1,8 do ZO_CreateStringId("SI_BINDING_NAME_BUI_QUICKSLOT_"..i,	"快捷槽 "..i) end
  for i	=1,6 do ZO_CreateStringId("SI_BINDING_NAME_BUI_CUSTOMSLOT_"..i,	"自定义槽 "..i) end
  
  --Automation
  ZO_CreateStringId("SI_KEYBIND_STRIP_FILLET_FISH","切片所有鱼肉")
  ZO_CreateStringId("SI_KEYBIND_STRIP_OPEN_CONTAINERS","打开所有容器")
  ZO_CreateStringId("SI_BINDING_NAME_SIEGECAMERATOGGLE", "切换攻城武器视角")

  BUI.Localization.zh={
    --TOOLTIPS
    MiniMeterDPSToolTip=	lmb	.." 显示伤害报告\n"
              ..	rmb	.." 贴出伤害结果\n"
              ..	mmb	.." 重置当前战斗",
    MiniMeterHPSToolTip=	lmb	.." 显示治疗助手",
    MiniMeterGDPSToolTip1=	lmb	.." 显示队伍报告",
    MiniMeterGDPSToolTip2=	rmb	.." 贴出队伍DPS",
    GroupSectionDpsToolTip=	lmb	.." 显示队伍dps\n"
              ..	rmb	.." 贴出队伍dps",
    GroupSectionRergouperToolTip=	lmb	.." 重新组队\n"
              ..	rmb	.." 保存队伍列表\n"
              ..	mmb	.." 贴出队伍列表",
    GroupSectionResetup	=lmb	..' 重置组队框架',
    GroupSectionDisband	=lmb	..' 解散队伍',
    HelperToolTip=
      "测试长度: 1 分钟\n"
      .."\n"
      .."需要:\n"
      .."保证所列buff在自己身上\n"
      .."保证所列debuff在假人身上\n"
      .."对假人使用所列技能\n"
      .."\n"
      .."开始测试: 使用轻击",

    --UI texts
    MiniMap_Label	="小地图",
    PF_Label	="玩家框架",
    TF_Label	="目标框架",
    GF_Label	="组队框架",
    RF_Label	="团队框架",
    BF_Label	="Boss框架",
    NotP_Label	="主要提醒",
    NotS_Label	="次要提醒",
    Dead	="死亡",
    Offline	="掉线",
    PBuffsLabel	="玩家Buff",
    CBuffsLabel	="自定义Buff",
    SBuffsLabel	="系统技能冷却",
    PasBuffsLabel	="P\na\ns\ns\ni\nv\ne",
    TBuffsLabel	="目标Buff",
    GroupDPS	="队伍DPS",
    Apply		="应用",
    Delete	="删除",
    Save		="保存",

    --Damage Report UI
    DReport	="伤害报告",
    RTracker	="循环追踪",
    HReport	="治疗报告",
    PReport	="获得资源",
    IReport	="受到伤害",
    NoDamage	="没有数据可报告!",
    AllTargets	="所有目标",
    Ability	="技能",
    Crit	="暴击",
    Average	="平均",
    Max	="最大",
    Hit	="暴击/攻击",
    Damage	="伤害",
    Healing	="治疗",
    Power	="资源",
    DPS	="DPS",
    HPS	="HPS",
    NoDPSToReport	="无队伍DPS可报告!",
    NoDamageToReport	="无伤害或治疗可报告!",
    ReportDesc	="|t22:27:/esoui/art/chatwindow/chat_notification_up.dds|t 贴出dps到聊天窗口\n|t22:22:/esoui/art/tutorial/smithing_rightarrow_up.dds|t 包括目标buff\n|t22:22:/esoui/art/buttons/pointsplus_up.dds|t 包括目标伤害\n  |c33BB33v|r  被玩家施放",
    ReportEinfo	="装备信息",
    ReportPBHeader	="玩家buff持续时间",
    ReportTBHeader	="目标buff持续时间",
    ReportBuffHeader	="Buff",
    ReportTimeHeader	="时间 ",
    ReportTargetName	="目标名称",
    ReportTotalDamage	="总伤害",
    ReportCount	="计数",
    ReportTotal	="总共",
    Boss	="Boss",

    --Notifications
    GroupNeedOrbs	="你的队伍需要宝珠!",
    TankNeedShard	="坦克需要碎片!",
    Horn	="号角!",
    Colossus	="巨像!",
    GroupMemberDead	="死亡了!",
    GroupMemberLeave	="离开了队伍",
    You	="你 ",
    Food	="需要补充食物",
    Resurrecting	=" 被复活",

    --Buffs dialog
    BuffsAddFail	="尝试添加buff: 错误的buff名称或id。",
    BuffsAdd	="你确定想要添加\n<<1>> 到 <<2>> 吗？",
    BuffsAdded	="<<1>> 被添加到 <<2>>",
    BuffsRemove	="你确定想要\n从 <<2>> 移除 <<1>> 吗？",

    --Warnings
    ReloadUiWarn	="改变此选项的结果将在重载界面后可见。",
    ReloadUiWarn1	="此选项需要重载界面",
    ReloadUiWarn2	="某些改变将在重载界面后生效",
    ReloadUiWarn4	="开启此选项将立即重载界面",
    ReloadUiWarn5	="关闭此选项将立即重载界面",
    PerformanceWarn	="此选项可能会降低游戏性能",
    
    --Reset
    Reset	="重置插件选项",
    ResetDesc	="将整个插件重置为原始设置。",
    ResetPositions	="重置框架",
    ResetPositionsDesc	="重置界面元素的位置。",
    FramesReset	="重置",
    FramesResetDesc	="将玩家, 目标和组队框架重置为原始设置。",
    CurvedReset	="重置",
    CurvedResetDesc	="将弯曲框架重置为原始设置。",
    ColorsReset	="重置",
    ColorsResetDesc	="将字体, 颜色和其他重置为原始设置。",
    StatsReset	="重置",
    StatsResetDesc	="将伤害统计组件重置为原始设置。",
    BuffsReset	="Buff重置",
    BuffsResetDesc	="将增益重置为原始设置。",
    ActionsReset	="重置",
    ActionsResetDesc	="重置为原始设置。",
    MinimapReset	="小地图重置",
    MinimapResetDesc	="将小地图重置为原始设置。",
    
    --Delete
    DeleteMailConfirm ="确认摧毁邮件附带的物品和货币么？",

    --Headers
    MiscHeader	="基本选项",
    MiscHeader1	="其他选项",
    PlayerHeader	="玩家框架",
    CurvedHeader	="弯曲框架",
    GroupHeader	="组队框架",
    StatShareHeader	="组队状态",
    TargetHeader	="目标框架",
    ActionsHeader	="技能计时器",
    BuffsHeader	="增益",
    MinimapHeader	="小地图",
    ReticleHeader	="十字标",
    NotificationsHeader	="提醒",
    NotificationsCombatHeader	="战斗提醒",
    ColorsHeader	="框架设置",
    ActionSlotsHeader	="技能栏",
    QuickSlotsHeader	="快捷栏",
    GroupRolesHeader	="组队角色",
    StatHeader	="伤害统计",
    ZoomHeader	="缩放选项",
    PinColorsHeader	="图标颜色",
    AdvancedHeader	="高级选项",
    AttributeColors	="属性颜色",

    --CustomBar
    CustomBarHeader	="自定义条",
    CustomBar		="自定义条开启",
    LeaderCommands	="队长命令",
    CustomCommands	="自定义命令",
    TextureFilename	="纹理文件名",
    SlashCommand	="输入命令",

    --SidePanel
    PanelHeader	="侧面板",
    PanelEnable	="侧面板开启",
    PanelAllowOther	="允许其他插件使用面板",
    PanelSettings	="Bandits UI 设置",
    PanelStatistics	="战斗统计",
    PanelShare		="状态和DPS分享开关",
    PanelHealerHelper	="治疗者助手",
    PanelGearManager	="装备管理器",
    PanelMinimap	="小地图切换",
    PanelCompass	="3D罗盘",
    PanelLeaderArrow	="队长箭头",
    PanelDismissPets	="解散战斗宠物",
    PanelSubSampling	="二次抽样质量开关",
    PanelVanishPlayers	="虎人模式",
    PanelVanishPlayersDesc	="虎人模式。\n消失掉其他玩家模型。在进入位置之前激活此设置 (例如银行或暗锚).\n再次可见: 禁用然后重新进入位置。",
    PanelWidgets	="管理小工具",
    PanelVeteranDifficulty	="地牢难度",
    PanelLFG_Role	="组队角色",
    PanelBanker	="银行家",
    PanelTrader	="商人",
    PanelSmuggler	="销赃者",
    PanelArmorer	="军械助手",
    PanelRagpicker	="分解助手",
    PanelEvent	="当前事件增益",
    PanelWPamA	="WPamA插件按钮",
    PanelTeleporter	="传送点",
    PanelTeleporterDesc="聊天标签选择器已安装后可使用。",

    --Minimap
    Minimap	="开启小地图",
    MinimapDesc	=default..(BUI.MiniMap.Defaults.MiniMap and on or off),
    MiniMapDimensions	="小地图尺寸",
    MiniMapDimensionsDesc	=default..BUI.MiniMap.Defaults.MiniMapDimensions,
    PinScale	="小地图图标尺寸",
    PinScaleDesc	=default..BUI.MiniMap.Defaults.PinScale.."%",
    MinimapTitle	="位置标题",
    MinimapTitleDesc	=default..(BUI.MiniMap.Defaults.MiniMapTitle and on or off),

    ZoomZone	="区域",
    ZoomZoneDesc	=default..BUI.MiniMap.Defaults.ZoomZone.."%",
    ZoomSubZone	="子区域",
    ZoomSubZoneDesc	=default..BUI.MiniMap.Defaults.ZoomSubZone.."%",
    ZoomDungeon	="地牢",
    ZoomDungeonDesc	=default..BUI.MiniMap.Defaults.ZoomDungeon.."%",
    ZoomCyrodiil	="西罗帝尔",
    ZoomCyrodiilDesc	=default..BUI.MiniMap.Defaults.ZoomCyrodiil.."%",
    ZoomImperialsewer	="帝都下水道",
    ZoomImperialsewerDesc	=default..BUI.MiniMap.Defaults.ZoomImperialsewer.."%",
    ZoomImperialCity	="帝都",
    ZoomImperialCityDesc	=default..BUI.MiniMap.Defaults.ZoomImperialCity.."%",
    ZoomMountRatio	="骑乘比例",
    ZoomMountRatioDesc	="骑乘时的缩放比例\n"..default..BUI.MiniMap.Defaults.ZoomMountRatio.."%",
    ZoomGlobal	="默认地图缩放",
    ZoomGlobalDesc	="为游戏地图定义初始缩放\n"..default..BUI.MiniMap.Defaults.ZoomGlobal.."%",

    --Reticle
    LeaderArrow	="1. 组队队长箭头",
    LeaderArrowDesc	="队长方向和距离箭头\n"..default..(BUI.Defaults.LeaderArrow and on or off),
    InCombatReticle	="2. 十字标战斗提示",
    InCombatReticleDesc	="红色-进入/白色-离开 战斗时。黄色-战斗锁定状态.\n"..default..(BUI.Defaults.InCombatReticle and on or off),
    PreferredTarget	="3. 优先目标锁定",
    PreferredTargetDesc	="当瞄准被设为优先的目标时，十字标改变\n"..default..(BUI.Defaults.PreferredTarget and on or off),
    ReticleDpS	="4. 十字标附近显示当前DpS",
    ReticleDpSDesc	="(仅当开启了\"迷你仪表\"功能时可用)\n"..default..(BUI.Defaults.ReticleDpS and on or off),
    ReticleInvul	="5. 免疫信息",
    ReticleInvulDesc	=default..(BUI.Defaults.ReticleInvul and on or off),
    CrusherTimer	="6. 坦克: 粉碎者计时器",
    CrusherTimerDesc	="(只在目标增益开启时可用)\n"..default..(BUI.Defaults.CrusherTimer and on or off),
    TauntTimer	="7. 坦克: 嘲讽计时器",
    TauntTimerValues	=TauntTimerValues,
    TauntTimerDesc	="(只在目标增益开启时可用)\n"..default..TauntTimerValues[BUI.Defaults.TauntTimer],
    TauntTimerSource	="7. 仅玩家嘲讽",
    TauntTimerSourceDesc=default..(BUI.Defaults.TauntTimerSource and on or off),
    ReticleResist	="8. 目标抗性",
    ReticleResistValues	=ReticleResistValues,
    ReticleResistDesc	="在十字标附近展示目标抗性(只在目标增益开启时可用)。\n"..default..ReticleResistValues[BUI.Defaults.ReticleResist],
    CastBar	="9. 施放条",
    CastBarValues	=CastBarValues,
    CastBarDesc	="(只在 \"技能计时器\"开启时可用)\n"..default..CastBarValues[BUI.Defaults.CastBar],
    SwapIndicator	="10. 切手指示器",
    SwapIndicatorDesc	="(只在 \"技能计时器\"开启时可用)\n"..default..CastBarValues[BUI.Defaults.CastBar],
    ImpactAnimation	="11. 有效击中动画",
    ImpactAnimationDesc	="有效击中时光标动画\n"..default..(BUI.Defaults.ImpactAnimation and on or off),
    ReticleMode	="12. 十字标模式",
    ReticleBoost	="13. 加速指示器",
    ReticleBoostDesc	="(必须开启玩家增益)\n"..default..(BUI.Defaults.ReticleBoost and on or off),
    BlockIndicator	="14. 格挡指示器",

    --ActionSlots
    ActionSlots	="技能栏",
    ActionSlotsDesc	=default..(BUI.Defaults.ActionSlots and on or off),

    --QuickSlots
    QuickSlots	="快捷栏",
    QuickSlotsDesc	=default..(BUI.Defaults.QuickSlots and on or off),
    QuickSlotsShow	="快捷栏数字",
    QuickSlotsShowDesc	="即使快捷栏数字被放置成两行。\n"..default..BUI.Defaults.QuickSlotsShow,
    QuickSlotsInventory	="物品槽",
    QuickSlotsInventoryDesc	="物品栏快捷槽面板。\n"..default..(BUI.Defaults.QuickSlotsInventory and on or off),

    --Notifications
    NotificationsGroup	="组队提醒",
    NotificationsGroupDesc	='"治疗者死亡", "队伍需要宝珠", "坦克需要碎片", "使用号角", etc.\n'..default..(BUI.Defaults.NotificationsGroup and on or off),
    OnScreenPriorDeath	="只在坦克和治疗者死亡时提醒",
    OnScreenPriorDeathDesc	='只在坦克和治疗者死亡时提醒。\n'..default..(BUI.Defaults.OnScreenPriorDeath and on or off),
    NotificationsWorld	="战斗提醒 (世界)",
    NotificationsWorldDesc	='在开放世界和地牢中的战斗提醒: "升天击", "流星", "瞄准射击", "中毒", etc.\n'..default..(BUI.Defaults.NotificationsWorld and on or off),
    NotificationsTrial	="战斗提醒 (试炼)",
    NotificationsTrialDesc	="在试炼中的战斗提醒\n"..default..(BUI.Defaults.NotificationsTrial and on or off),
    NotificationFood		="食物增益提醒",
    NotificationFoodDesc	=default..(BUI.Defaults.NotificationFood and on or off),
    EffectVisualisation	="效果可视化",
    EffectVisualisationDesc	='屏幕边缘变色 中毒变绿, 冰冻变蓝, 超载变亮, \"有害标记\"变紫, 流血变棕, 燃烧变红\n'..default..(BUI.Defaults.EffectVisualisation and on or off),
    NotificationsSize	="字体大小",
    NotificationsSizeDesc	=default..BUI.Defaults.NotificationsSize,
    NotificationsTimer	="延迟",
    NotificationsTimerDesc	=default..BUI.Defaults.NotificationsTimer,
    NotificationSound_1	="主要提醒声音",
    NotificationSound_2	="次要提醒声音",

    --Misc options
    ChangeLanguage	="改变语言（目前由Babel集成汉化，无需修改）",
    ChangeLanguageDesc	="[默认: en]",
    ChangeLanguageWarn	="修改此选项将立即重载界面!",
    Theme	="主题",
    Move	="移动框架",
    MoveDesc	="修改界面元素位置.",
    PlayerStatSection	="玩家信息",
    PlayerStatSectionDesc	="添加: 穿透, 暴击伤害增益, 格挡消耗, 格挡缓和信息到玩家属性区域",
    PvPmode	="PvP模式",
    PvPmodeDesc	="在PVP区域中时自动禁用战斗统计, 战斗提醒和状态分享等功能",
    PvPmodeAnnouncement="PVP模式公告",
    PvPmodeAnnouncementDesc="在PVP模式中显示聊天栏公告",
    ChampionHelper	="勇士系统助手",
    ChampionHelperDesc	="在勇士系统界面记住技能和应用记住的勇士系统配置\n"..default..(BUI.Defaults.ChampionHelper and on or off),
    DisableHelpAnnounce ="禁用启动时公告",
    DisableHelpAnnounceDesc ="启用手柄和无障碍模式警示公告",
    GamepadHelpAnnouncement ="BUI不完全支持你目前所处的手柄模式",
    AccessibilityHelpAnnouncement ="你目前处于无障碍模式，这可能导致BUI和其他插件出错",

    --Player frame
    PlayerFrame	="玩家框架",
    PlayerFrameDesc	="玩家框架风格",
    PlayerFrameWarn	="关闭时选择默认框架将立即重载界面!",
    DefaultPlayerFrames	="开启默认框架",
    DefaultPlayerFramesDesc	=default..(BUI.Defaults.DefaultPlayerFrames and on or off),
    DefaultPlayerFramesWarn	="开启此选项将立即重载界面!",
    RepositionFrames	="复位默认框架",
    RepositionFramesDesc	=default..(BUI.Defaults.RepositionFrames and on or off),
    RepositionFramesWarn	="禁用此选项将立即重载界面!",
    FramesTexture	="框架纹理",
    FramesTextureDesc	=default..BUI.Defaults.FramesTexture,
    FramesBorder	="框架边界",
    FramesBorderDesc	=default..BUI.Defaults.FramesBorder,
    PrimaryStat		="初始状态",
    PrimaryStatDesc	=default..BUI.Defaults.PrimaryStat,
    FrameHorisontal	="水平",
    FrameHorisontalDesc	="设置玩家框架水平或垂直.\n"..default..(BUI.Defaults.FrameHorisontal and "水平" or "垂直"),
    FramePercents	="展示百分比",
    FramePercentsDesc	=default..(BUI.Defaults.FramePercents and on or off),
    FrameShowMax	="展示最大生命值",
    FrameShowMaxDesc	="在玩家, 目标和组队框架中显示最大生命值\n"..default..(BUI.Defaults.FrameShowMax and on or off),
    DecimalValues	="小数值",
    DecimalValuesDesc	=default..(BUI.Defaults.DecimalValues and on or off),
    FrameWidth	="单位框架宽度",
    FrameWidthDesc	="设置单位框架的宽度.\n"..default..BUI.Defaults.FrameWidth,
    FrameHeight	="单位框架高度",
    FrameHeightDesc	="设置单位框架的高度.\n"..default..BUI.Defaults.FrameHeight,
    EnableNameplate	="展示玩家铭牌",
    EnableNameplateDesc	="在单位框架上显示你自己的角色铭牌\n"..default..(BUI.Defaults.EnableNameplate and on or off),
    FoodBuff	="食物增益功能",
    FoodBuffDesc	="根据食物加成改变玩家的属性条长度\n"..default..(BUI.Defaults.FoodBuff and on or off),
    EnableXPBar	="开启经验条",
    EnableXPBarDesc	="在玩家框架下展示你的经验/狼人计时器/攻城器生命/坐骑耐力条。\n"..default..(BUI.Defaults.EnableXPBar and on or off),
    ShowDots		="显示技能堆叠",
    ShowDotsDesc	="显示契约武器和百折不挠堆叠计数器。\n"..default..(BUI.Defaults.ShowDots and on or off),
    DodgeFatigue	="开启翻滚疲劳条",
    DodgeFatigueDesc	="翻滚之后显示疲劳进程条 (当疲劳持续时，另一个翻滚消耗双倍的耐力).\n"..default..(BUI.Defaults.DodgeFatigue and on or off),
    FramesFade	="自动隐藏",
    FramesFadeDesc	="当属性已满且玩家不在战斗状态时自动隐藏玩家属性\n"..default..(BUI.Defaults.FramesFade and on or off),
    Shield="伤害护盾",
    ShieldDesc="在资源条上显示伤害护盾",
    Trauma = "治疗吸收",
    TraumaDesc = "在资源条上显示治疗吸收",

    --Target frame
    TargetFrame	="额外目标框架",
    TargetFrameDesc	="使用自定义目标框架\n"..default..(BUI.Defaults.TargetFrame and on or off),
    DefaultTargetFrame	="默认目标框架",
    DefaultTargetFrameDesc	="继续显示默认 ESO 目标框架\n"..default..(BUI.Defaults.DefaultTargetFrame and on or off),
    DefaultTargetFrameText	="默认目标框架文本",
    DefaultTargetFrameTextDesc	="在默认目标框架上的额外信息",
    TargetFrameCenter = "居中目标框文本",
    TargetWidth	="目标框架宽度",
    TargetWidthDesc	="设置目标框架的宽度\n"..default..BUI.Defaults.TargetWidth,
    TargetHeight	="目标框架高度",
    TargetHeightDesc	="设置目标框架的高度\n"..default..BUI.Defaults.TargetHeight,
    TargetFramePercents	="显示百分比",
    TargetFramePercentsDesc	=default..(BUI.Defaults.TargetFramePercents and on or off),
    ExecuteThreshold	="处决阈值",
    ExecuteThresholdDesc	="为框架和文本警报设置所需的处决阈值生命百分比. 设置为零将禁用警报.\n"..default..BUI.Defaults.ExecuteThreshold,
    ExecuteSound	="处决声音",
    ExecuteSoundDesc	="处决阶段开始时播放'喀喇'声音\n"..default..(BUI.Defaults.ExecuteSound and on or off),
    BossFrame	="Boss框架",
    BossFrameDesc	=default..(BUI.Defaults.BossFrame and on or off),
    BossWidth	="Boss框架宽度",
    BossWidthDesc	="设置Boss框架的宽度\n"..default..BUI.Defaults.BossWidth,
    BossHeight	="Boss框架高度",
    BossHeightDesc	="设置Boss框架的高度\n"..default..BUI.Defaults.BossHeight,

    Attackers	="攻击者框架",
    AttackersDesc	="显示攻击你的敌人和其所造成的伤害。\n"..default..(BUI.Defaults.Attackers and on or off),
    AttackersWidth	="攻击者框架宽度",
    AttackersWidthDesc	="设置攻击者框架的宽度。\n"..default..BUI.Defaults.AttackersWidth,
    AttackersHeight	="攻击者框架高度",
    AttackersHeightDesc	="设置攻击者框架的高度。\n"..default..BUI.Defaults.AttackersHeight,

    --Fonts
    FrameNameFormat	="名称格式",
    FrameNameFormatValues	={"角色名","@账户名","角色名@账户名"},
    FrameFont1	="主要字体",
    FrameFont1Desc	="更改单位框架中使用的主要字体.\n"..default..BUI.TranslateFont(BUI.Defaults.FrameFont1),
    FrameFont2	="次要字体",
    FrameFont2Desc	="更改单位框架中使用的次要字体.\n"..default..BUI.TranslateFont(BUI.Defaults.FrameFont2),
    FrameFontSize	="框架字体大小",
    FrameFontSizeDesc	="更改单位框架中使用的字体的基本比例. \n"..default..BUI.Defaults.FrameFontSize,
    FrameOpacityIn	="战斗不透明度",
    FrameOpacityInDesc	="调整战斗中单位框架的不透明度. 较低的设置更透明.\n"..default..BUI.Defaults.FrameOpacityIn,
    FrameOpacityOut	="非战斗不透明度",
    FrameOpacityOutDesc	="调整战斗外单位框架的不透明度. 较低的设置更透明.\n"..default..BUI.Defaults.FrameOpacityOut,

    --Colors
    SelfColor	="自己颜色差异",
    SelfColorDesc	="在组队时使用不同颜色的玩家条\n"..default..(BUI.Defaults.SelfColor and on or off),
    CustomEdgeColor	="自定义主题颜色",
    CustomEdgeColorDesc	="所有界面框架的边缘颜色。\n"..default..BUI.TranslateColor(BUI.Defaults.CustomEdgeColor),
    AdvancedThemeColor	="高级主题颜色",
    AdvancedThemeColorDesc	="所有界面框架的HUD颜色和边缘颜色.\n"..default..BUI.TranslateColor(BUI.Defaults.AdvancedThemeColor),

    FrameHealthColor	="生命条颜色",
    FrameHealthColorDesc	="设置单位框架生命条颜色.\n"..default..BUI.TranslateColor(BUI.Defaults.FrameHealthColor),
    FrameMagickaColor	="魔力条颜色",
    FrameMagickaColorDesc	="设置玩家框架魔力条颜色\n"..default..BUI.TranslateColor(BUI.Defaults.FrameMagickaColor),
    FrameStaminaColor	="耐力条颜色",
    FrameStaminaColorDesc	="设置玩家框架耐力条颜色\n"..default..BUI.TranslateColor(BUI.Defaults.FrameStaminaColor),
    FrameShieldColor	="护盾条颜色",
    FrameShieldColorDesc	="设置玩家框架护盾条颜色\n"..default..BUI.TranslateColor(BUI.Defaults.FrameShieldColor),
    FrameTraumaColor    ="创伤条颜色",
    FrameTraumaColorDesc	="设置单位框架创伤条中显示的颜色.\n"..default..BUI.TranslateColor(BUI.Defaults.FrameTraumaColor),
    SameColors	="同样颜色",
    SameColorsDesc="将末端颜色设置为与首端颜色一样",

    ColorRoles	="根据角色改变框架颜色",
    ColorRolesDesc	="在组队和团队框架为每种战斗角色使用不同的颜色\n"..default..(BUI.Defaults.ColorRoles and on or off),
    FrameTankColor	="坦克角色颜色",
    FrameTankColorDesc	="在组队和团队框架中为坦克角色设置颜色.\n"..default..BUI.TranslateColor(BUI.Defaults.FrameTankColor),
    FrameHealerColor	="治疗角色颜色",
    FrameHealerColorDesc	="在组队和团队框架中为治疗角色设置颜色.\n"..default..BUI.TranslateColor(BUI.Defaults.FrameHealerColor),
    FrameDamageColor	="伤害角色颜色",
    FrameDamageColorDesc	="在组队和团队框架中为DPS角色设置颜色.\n"..default..BUI.TranslateColor(BUI.Defaults.FrameDamageColor),

    --Group frame
    RaidFrames	="开启组队框架",
    RaidFramesDesc	="使用自定义组队单位框架.\n"..default..(BUI.Defaults.RaidFrames and on or off),
    RaidCompact	="简洁模式",
    RaidCompactDesc	="(组队增益和DPS将被禁用)\n"..default..(BUI.Defaults.RaidCompact and on or off),
    GroupAnimation	="组队动画",
    GroupAnimationDesc	="开启 恢复/退化 状态动画\n"..default..(BUI.Defaults.GroupAnimation and on or off),
    GroupDeathSound	="队员死亡声音",

    RaidLevels	="显示等级",
    RaidLevelsDesc	=default..(BUI.Defaults.RaidLevels and on or off),
    RaidColumnSize	="团队框架列尺寸",
    RaidColumnSizeDesc	="组队框架中每列显示玩家数\n"..default..BUI.Defaults.RaidColumnSize,
    RaidWidth	="组队框架宽度",
    RaidWidthDesc	="为组队框架设置宽度.\n"..default..BUI.Defaults.RaidWidth,
    RaidHeight	="组队框架高度",
    RaidHeightDesc	="为组队框架设置高度.\n"..default..BUI.Defaults.RaidHeight,
    RaidFontSize	="组队框架字体尺寸",
    RaidFontSizeDesc	="更改组队框架中使用的字体的比例.\n"..default..BUI.Defaults.RaidFontSize,
    RaidStatValue	="资源数",
    
    --Advanced
    GroupElection	="高级就绪检查",
    GroupBuffs	="队伍Buff",
    GroupBuffsDesc	=default..(BUI.Defaults.GroupBuffs and on or off),
    StatusIcons	="队伍成员状态",
    StatusIconsDesc	="护甲耐久, 致命debuff, 号角图标.\n"..default..(BUI.Defaults.StatusIcons and on or off),
    SmallGroupScale	="小队尺寸",
    SmallGroupScaleDesc	="小队的额外框架比例\n"..default..BUI.Defaults.SmallGroupScale.."%",
    LargeRaidScale	="大团尺寸",
    LargeRaidScaleDesc	="为大团队降低比例\n"..default..BUI.Defaults.LargeRaidScale.."%",
    RaidSplit	="按小组划分团队",
    RaidSplitDesc	="定义小组内的玩家数量\n设为0以禁用",
    RaidSort		="团队分类",
    RaidSortDesc	="自动模式，包括为特定Boss进行高级分类。\n以主力量分类 (魔力, 耐力) 只在开启状态分享的队伍中生效。\n"..default..select(BUI.Defaults.RaidSort+1,"禁用","自动","以角色","以主力量","以等级"),
    ShieldGroup="伤害护盾",
    ShieldGroupDesc="在资源条上显示伤害护盾",
    TraumaGroup = "治疗吸收",
    TraumaGroupDesc = "在资源条上显示治疗吸收",
    --Stats share
    StatShare	="分享状态",
    StatShareDesc	="与队伍分享你的主要状态和终极.\n"..default..(BUI.Defaults.StatShare and on or off),
    StatShareUlt	="展示分享的终极",
    StatShareUltDesc	="特殊功能。团队队长使用(在团队框架每列之间保留空间)。\n"..default..select(BUI.Defaults.StatShareUlt,"全部","只有号角","禁用"),
    UltimateOrder	="终极顺序",
    UltimateOrderDesc	="显示号角和巨像顺序信息\n"..default..select(BUI.Defaults.UltimateOrder,"开启","自动","禁用"),
    --Group synergy
    GroupSynergy	="协同技能冷却",
    GroupSynergyDesc	="显示队伍成员激活协同技能冷却时间。\n"..default..select(BUI.Defaults.GroupSynergy,"全部","坦克","禁用"),
    GroupSynergyCount	="被显示的协同技能数量",
    GroupSynergyCountDesc	="被显示的协同技能数越大，团队框架每列之间的空间就越大。\n"..default..BUI.Defaults.GroupSynergyCount,
    --Group leader
    GroupLeaderHeader	="队长",
    MarkerLeader	="队长浮动标记",
    MarkerSize		="标记尺寸",

    --Curved Frames
    CurvedFrame	="弯曲框架风格",
    CurvedFrameDesc	=default..BUI.Defaults.CurvedFrame,
    CurvedDistance	="弯曲框架距离",
    CurvedDistanceDesc	=default..BUI.Defaults.CurvedDistance,
    CurvedDistanceWarn	="不能在菜单预览上展示",
    CurvedOffset	="弯曲框架垂直位移",
    CurvedOffsetDesc	=default..BUI.Defaults.CurvedOffset,
    CurvedHeight	="弯曲框架长度",
    CurvedHeightDesc	=default..BUI.Defaults.CurvedHeight,
    CurvedDepth	="弯曲框架深度和弯度",
    CurvedDepthDesc	=default..BUI.Defaults.CurvedDepth*100 ,
    CurvedStatValues	="展示弯曲框架状态值",
    CurvedStatValuesDesc	=default..(BUI.Defaults.CurvedStatValues and on or off),
    CurvedHitAnimation	="致命一击动画",
    CurvedHitAnimationDesc	=default..(BUI.Defaults.CurvedHitAnimation and on or off),
    CurvedShift	="属性位置切换",
    CurvedShiftDesc	="战斗结束后将属性切换到另一边。\n"..default..(BUI.Defaults.CurvedShift and on or off),
    CurvedShiftAnimation	="切换动画",
    CurvedShiftAnimationDesc	=default..(BUI.Defaults.CurvedShiftAnimation and on or off),

    --Damage Report Menu
    StatMiniHeader	="迷你仪表",
    StatsMiniMeter	="展示迷你仪表",
    StatsMiniMeterDesc	=default..(BUI.Defaults.StatsMiniMeter and on or off),
    MiniMeterAplha	="迷你仪表初值",
    MiniMeterAplhaDesc	=default..BUI.Defaults.MiniMeterAplha*100 ,
    StatsMiniHealing	="展示迷你仪表hps",
    StatsMiniHealingDesc	=default..(BUI.Defaults.StatsMiniHealing and on or off),
    StatsMiniGroupDps	="展示迷你仪表队伍dps",
    StatsMiniGroupDpsDesc	=default..(BUI.Defaults.StatsMiniGroupDps and on or off),
    StatsMiniSpeed	="展示迷你仪表循环速度",
    StatsMiniSpeedDesc	=default..(BUI.Defaults.StatsMiniSpeed and on or off),

    StatsUpdateDPS	="DPS分享",
    StatsUpdateDPSDesc	=default..(BUI.Defaults.StatsUpdateDPS and on or off),
    StatsGroupDPS	="成员面板上的DPS",
    StatsGroupDPSDesc	="在小组成员面板贴出dps(简洁模式下禁用)\n"..default..(BUI.Defaults.StatsGroupDPS and on or off),
    StatsGroupDPSframe	="在额外框架上的DPS",
    StatsGroupDPSframeDesc	="显示小组成员DPS\n"..default..(BUI.Defaults.StatsGroupDPSframe and on or off),
    StatsSplitElements	="分裂元素",
    StatsSplitElementsDesc	="为轻重击, 力量冲击, 伊拉姆布里斯 分裂元素\n"..default..(BUI.Defaults.StatsSplitElements and on or off),
    StatsBuffs	="玩家和目标增益报告",
    StatsBuffsDesc	="在伤害报告窗口开启玩家和目标的增益/减益部分\n"..default..(BUI.Defaults.StatsBuffs and on or off),

    Log	="战斗日志",
    LogDesc	="用作详细的死亡回顾或游戏机制的开发人员信息。处理启用的统计信息和通知模块。控件设置中的绑定键.\n"..default..(BUI.Defaults.Log and on or off),

    --Buffs
    PlayerBuffs	="玩家增益",
    PlayerBuffsDesc	=default..(BUI.Defaults.PlayerBuffs and on or off),
    BuffsOtherHide	="隐藏来自其他玩家的增益",
    BuffsOtherHideDesc	="除掉某些重要增益例如吸取, 艾尔克许, etc.\n"..default..(BUI.Defaults.BuffsOtherHide and on or off),
    BuffsImportant	="用不同大小显示重要效果",
    BuffsImportantDesc	="号角, 吸取, 高级力量, 杀手, 失衡, 套装效果例如艾尔克许, 月舞者, BSW, etc. \n"..default..(BUI.Defaults.BuffsImportant and on or off),
    MinimumDuration	="最小增益持续时长",
    MinimumDurationDesc	=default..BUI.Defaults.MinimumDuration,
    PlayerBuffsAlign	="玩家增益排列",
    PlayerBuffsAlignDesc	=default..AlignValues[BUI.Defaults.PlayerBuffsAlign],
    PlayerBuffSize	="玩家增益图标尺寸",
    PlayerBuffSizeDesc	=default..BUI.Defaults.PlayerBuffSize,

    TargetBuffs	="目标增益",
    TargetBuffsDesc	=default..(BUI.Defaults.TargetBuffs and on or off),
    TargetBuffSize	="目标增益图标尺寸",
    TargetBuffSizeDesc	=default..BUI.Defaults.TargetBuffSize,
    TargetBuffsAlign	="目标增益排列",
    TargetBuffsAlignDesc	=default..AlignValues[BUI.Defaults.TargetBuffsAlign],

    BuffsPassives	="被动",
    BuffsPassivesDesc	=default..(BUI.Defaults.BuffsPassives),
    PassiveProgress	="被动进程条",
    PassiveProgressDesc	=default..(BUI.Defaults.PassiveProgress and on or off),
    PassivePWidth	="进程条宽度",
    PassivePWidthDesc	=default..BUI.Defaults.PassivePWidth,
    PassivePSide	="进程条方位",
    PassivePSideDesc	=default..BUI.Defaults.PassivePSide,
    PassiveBuffSize	="被动增益图标大小",
    PassiveBuffSizeDesc	=default..BUI.Defaults.PassiveBuffSize,
    PassiveOakFilter="隐藏橡树之魂增益",
    PassiveOakFilterDesc=default..(BUI.Defaults.PassiveOakFilter and on or off),

    BlackListHeader	="增益黑名单",
    EnableBlackList	="为增益应用黑名单",
    EnableBlackListDesc	=default..(BUI.Defaults.EnableBlackList and on or off),
    BlackListAdd	="加入黑名单",
    BlackListAddDesc	="输入增益名字（对于所有具有特定名称的增益，区分大小写）或增益id来加入黑名单. 或者直接在增益面板上对其点击右键.",
    BlackListDel	="剔出黑名单",
    BlackListDelDesc	="选择增益来把他剔出黑名单",

    CustomBuffsHeader	="自定义增益面板",
    EnableCustomBuffs	="开启自定义增益面板",
    EnableCustomBuffsDesc	=default..(BUI.Defaults.EnableCustomBuffs and on or off),
    CustomBuffsAdd	="添加到自定义增益",
    CustomBuffsAddDesc	="输入名字或增益id来加入自定义. 或者直接在增益面板上对其点击左键.",
    CustomBuffsDel	="从自定义增益删除",
    CustomBuffsDelDesc	="选择增益来把他剔出自定义增益",
    CustomBuffsDirection	="自定义增益方向",
    CustomBuffsDirectionDesc	=default..BUI.Defaults.CustomBuffsDirection,
    CustomBuffsProgress	="自定义增益进程条",
    CustomBuffsProgressDesc	="只在垂直方向可用.\n"..default..(BUI.Defaults.CustomBuffsProgress and on or off),
    CustomBuffsPWidth	="进程条宽度",
    CustomBuffsPWidthDesc	=default..BUI.Defaults.CustomBuffsPWidth,
    CustomBuffsPSide	="进程条方位",
    CustomBuffsPSideDesc	=default..BUI.Defaults.CustomBuffsPSide,
    CustomBuffSize	="自定义增益图标尺寸",
    CustomBuffSizeDesc	=default..BUI.Defaults.CustomBuffSize,

    SynergyCdHeader	="协同冷却面板",
    EnableSynergyCd	="开启协同冷却面板",
    EnableSynergyCdDesc	=default..(BUI.Defaults.EnableSynergyCd and on or off),
    SynergyCdDirection	="方向",
    SynergyCdDirectionDesc	=default..BUI.Defaults.SynergyCdDirection,
    SynergyCdProgress	="进程条",
    SynergyCdProgressDesc	="只在垂直方向可用。\n"..default..(BUI.Defaults.SynergyCdProgress and on or off),
    SynergyCdPWidth	="进程条宽度",
    SynergyCdPWidthDesc	=default..BUI.Defaults.SynergyCdPWidth,
    SynergyCdPSide	="进程条方位",
    SynergyCdPSideDesc	=default..BUI.Defaults.SynergyCdPSide,
    SynergyCdSize	="图标大小",
    SynergyCdSizeDesc	=default..BUI.Defaults.SynergyCdSize,

    --Widgets
    WidgetsHeader	="小工具",
    EnableWidgets	="开启小工具",
    EnableWidgetsDesc	=default..(BUI.Defaults.EnableWidgets and on or off),
    WidgetsSize	="小工具尺寸",
    WidgetsSizeDesc	=default..BUI.Defaults.WidgetsSize,
    WidgetsAdd	="添加小工具",
    WidgetsAddDesc	="输入名字或增益id来加入小工具. 或者直接在增益面板上对其点击中键.",
    WidgetsProgress	="进程条",
    WidgetsPWidth	="进程条宽度",
    WidgetsPWidthDesc	=default..BUI.Defaults.WidgetsPWidth,
    WidgetsMultiTarget	="多目标",
    WidgetsSelfEffects	="只开启玩家效果",
    WidgetsAlwaysShow	="一直显示",
    WidgetsCombine	="额外效果",
    WidgetsCombineDesc	="此处你可添加额外效果的名字或ID，它将显示为额外进程条。\n留白则禁用此项。",
    WidgetPotion	="药水小工具",
    WidgetPotionDesc	="当资源不足且药剂准备好时显示药剂图标\n"..default..(BUI.Defaults.WidgetPotion and on or off),
    WidgetSound1	="激活声音",
    WidgetSound1Desc	="是否播放激活和失效声音选项，可以在小工具设置中为不同的小工具分别设置是否开启。",
    WidgetSound2	="失效声音",
    WidgetSound2Desc	="是否播放激活和失效声音选项，可以在小工具设置中为不同的小工具分别设置是否开启。",
    WidgetsSoundDesc	="",
    WidgetsPSide	="进程条方位",
    WidgetsCooldownDesc	="在这里，您可以更改自定义小工具冷却 (毫秒).\n保留空白以使用默认值.",
    WidgetsManage	="管理小工具",
    WidgetsReset	="重置位置",
    WidgetsAbility	="技能",
    WidgetsAbilityDesc	="必须开启技能计时器",
    WidgetsBuff		="最近增益",
    WidgetsBuffDesc	="必须开启伤害统计增益",
    WidgetsCustom	="自定义",

    --Actions
    Actions	="展示技能计时器",
    ActionsDesc	=default..(BUI.Defaults.Actions and on or off),
    ActionsPrecise	="精确模式",
    ActionsPreciseDesc	="当技能生效时，精确模式计时器将启动\n"..default..(BUI.Defaults.ActionsPrecise and on or off),
    ProcAnimation	="技能激活动画",
    ProcAnimationDesc	='碎裂水晶，刺客之愿，自爆枯骨等技能的的"准备好了" 动画  '..default..(BUI.Defaults.ProcAnimation and on or off),
    ProcSound	="技能激活声音",
    UseSwapPanel	="显示切换面板",
    UseSwapPanelDesc	=default..(BUI.Defaults.UseSwapPanel and on or off),
    HideSwapPanel	="自动隐藏切换面板",
    HideSwapPanelDesc	="闲置技能将被隐藏\n"..default..(BUI.Defaults.UseSwapPanel and on or off),
    FullSwapPanel	="显示完整切换面板",
    FullSwapPanelDesc	="显示整个切换面板\n"..default..(BUI.Defaults.UseSwapPanel and on or off),
    ExpiresAnimation	="到期动画",
    ExpiresAnimationDesc	=default..(BUI.Defaults.ExpiresAnimation and on or off),
    ActionsFontSize	="字体尺寸",
    ActionsFontSizeDesc	=default..BUI.Defaults.ActionsFontSize,

    --Automation
    AutoConfirm	="自动确认",
    UndauntedDaily	="日常",
    UndauntedQuest	="任务",
    UndauntedDone	="完成",
    AutomationHeader	="自动",
    BlockingsHeader	="阻挡",
    ImprovementsHeader	="提升",
    Teleporter	="传送点",
    TeleporterDesc	="添加到位置列表选项，以在选定区域内免费传送.(必须安装聊天标签选择器)",
    DeleteMail	="自动删除邮件",
    DeleteMailDesc	="删除没有附件的邮件时跳过确认对话框.",
    JumpToLeader	="跳到队长",
    JumpToLeaderDesc	="禁用跳到队长的邀请.",
    GroupLeave	="离开组队",
    GroupLeaveDesc	="离开组队时禁用确认对话框.",
    Books	="自动关闭书本",
    BooksDesc	="如果你想读这本书，就再用一次.",
    LargeGroupInvite	="大团队邀请",
    LargeGroupInviteDesc	="禁用大团队邀请警告.",
    LargeGroupAnnoucement	="大团队公告",
    LargeGroupAnnoucementDesc	="禁用聊天中的大/小团队公告.",
    FriendStatus	="好友状态",
    FriendStatusDesc	="禁用好友 \"登入登出\" 聊天信息.",
    FastTravel	="快速旅行",
    FastTravelDesc	="在使用路点神龛时禁用确认对话框.",
    InitialDialog	="NPC初始对话",
    InitialDialogDesc	="银行, 商店, 介绍任务",
    RepeatableQuests	="可重复任务处理器",
    RepeatableQuestsDesc	="自动 确认/完成 可重复任对话框。",
    CovetousCountess	="盗贼公会: 贪婪的伯爵夫人",
    CovetousCountessDesc	="无 \"贪婪的伯爵夫人\" 合约会被跳过. 需要再次按下交互按钮.",
    DarkBrotherhoodSpree	="黑暗兄弟会: 杀戮盛宴契约",
    DarkBrotherhoodSpreeDesc	="无杀戮盛宴契约会被跳过. 需要再次按下交互按钮.",
    --FeedSynergy	="进食协同",
    --FeedSynergyDesc	="禁用吸血鬼的\"进食\"协同技能来使用 \"哀伤匕首\".",
    AdvancedSynergy	="高级协同",
    AdvancedSynergyDesc	="为坦克和治疗者禁用\"充能闪电\"。\n云栖城: 自动禁用可能阻碍进入传送门或掉落“移除尖啸冰霜”的协同，如果它们恰好出现在具有更高优先级的协同之前。\n"..default..(BUI.Defaults.AdvancedSynergy and on or off),
    BlockAnnouncement	="阻挡公告",
    BlockAnnouncementDesc	="阻挡初始公告",
    ContainerHandler	="容器处理器",
    ContainerHandlerDesc	="添加物品栏选项来自动打开容器或切片鱼肉.",
    StealthWield	="在潜行状态下显示武器",
    StealthWieldDesc	="",
    LootStolen	="潜行时自动偷窃物品",
    LootStolenDesc	="",
    UndauntedPledges	="活动查找器：闯世者誓约",
    UndauntedPledgesDesc	="在活动查找器中添加一个按钮来标记与当前闯世者任务相关的地牢。\n添加地牢成就信息。",
    CollapseNormalDungeon	="折叠普通地下城",
    CollapseNormalDungeonDesc	="在地牢查找器窗口中折叠普通地牢。\n仅在启用无畏誓言时可用。",
    ConfirmLocked	="自动确认被锁定的物品",
    ConfirmLockedDesc	="转化/提升/附魔 被锁定的物品时，自动添加 \"CONFIRM\" 文本到确认对话框中。",
    PlayerToPlayer	="玩家对玩家提示",
    PlayerToPlayerDesc	="移除踢出队伍选项 (这是为了消除在试图复活玩家时不小心将玩家踢出队伍的可能性)",
    BuiltInGlobalCooldown="启用内置全局冷却时间",
    BuiltInGlobalCooldownDesc="在登录时设置内置的全局冷却时间。",
    AutoDismissPet="自动解雇非战斗宠物（试炼）.",
    AutoDismissPetDesc="进入试炼时解雇非战斗宠物.",
    HousePins	="隐藏地图住房图标",
    HousePinsDesc	="仅隐藏 \"住房\" 图标。标签不会被移除。",
    ActFinderButton	="勾选当前誓约",

    Meters_Header	="计量仪",
    Meter_Speed	="速度",
    Meter_SpeedDesc	="显示玩家移动速度。",
    Meter_Power	="力量",
    Meter_PowerDesc	="显示玩家魔力或武器力量。",
    Meter_Crit	="暴击",
    Meter_CritDesc	="显示玩家魔力或武器暴击几率。",
    Meter_Exp	="经验",
    Meter_ExpDesc	="显示玩家经验。",
    Meter_DPS	="DPS",
    Meter_DPSDesc	="显示当前和最后的DPS值。",
    Meter_Criminal	="犯罪",
    Meter_CriminalDesc	="显示赏金和热力仪。",
    Meter_Scale	="计量仪尺寸",

    Markers_Header="标记",
    Markers_IconDuration="以秒为单位显示图标的持续时间",
    Markers_Dungeons="在地下城中显示标记",
    Markers_Trials="在试炼中显示标记",
    Markers_Message="在聊天框中显示找到宝箱的消息",
    Markers_Icon="在找到宝箱时显示图标",
    Markers_HeavySack="发现重袋时也会显示标记",
  }
return true end

--Code's Combat Alerts
--2.0.8.1
BB.AddonList["CombatAlerts"] = function() if not CombatAlerts2 then return false end
  ZO_CreateStringId("SI_CA_TITLE"                          , "Combat Alerts")
  ZO_CreateStringId("SI_CA_MODULE_LOAD"                    , "已加载模块 [<<1>>].")
  ZO_CreateStringId("SI_CA_MODULE_UNLOAD"                  , "已卸载模块 [<<1>>].")
  ZO_CreateStringId("SI_CA_CORRUPTED"                      , "|cFF0000错误：|r 战斗机制提醒 的安装文件似乎损坏，这个错误可能由 Minion 造成。 |cFF0000你得手动删除本插件再尝试安装。|r")
  ZO_CreateStringId("SI_CA_PURGEABLE_EFFECTS"              , "可净化的效果")
  ZO_CreateStringId("SI_CA_NEARBY"                         , "附近玩家")
  ZO_CreateStringId("SI_CA_NEARBY_EMPTY"                   , "无附近玩家")
  ZO_CreateStringId("SI_CA_SETTINGS_SUPPRESS"              , "阻止模块的加载与卸载提示消息")
  ZO_CreateStringId("SI_CA_SETTINGS_NEARBY"                , "显示附近玩家")
  ZO_CreateStringId("SI_CA_SETTINGS_BYPASS_PURGE_CHECK"    , "总是追踪可净化的效果")
  ZO_CreateStringId("SI_CA_SETTINGS_BYPASS_PURGE_CHECK_TT" , "SI_CA_SETTINGS_BYPASS_PURGE_CHECK_TT" , "如果你没有AOE净化技能装载的话，默认将队伍范围的可清除效果追踪为关闭；开启这个选项必须手动确认。")
  ZO_CreateStringId("SI_CA_SETTINGS_MODULES"               , "模块")
  ZO_CreateStringId("SI_CA_SETTINGS_MODULE_INFO"           , "区域: <<1>>\nAuthor: <<2>>")
  ZO_CreateStringId("SI_CA_SETTINGS_MODULE_ALERT_TEMPLATE" , "为<<1>>启用警报")
  ZO_CreateStringId("SI_CA_SETTINGS_REPOSITION"            , "重定位UI元素")
  ZO_CreateStringId("SI_CA_SETTINGS_MOVE_ELEMENTS"         , "重定位元素")
  ZO_CreateStringId("SI_CA_SETTINGS_MOVE_ELEMENTS_TT"      , "您可以随时使用鼠标移动一些用户界面元素，而无需使用设置面板。不过，大多数 UI 元素在战斗外都是隐藏的，这将允许您在战斗外重新定位 UI 元素。")
  ZO_CreateStringId("SI_CA_SETTINGS_RESET_ELEMENTS"        , "重置所有元素")
  ZO_CreateStringId("SI_CA_MOVE_STATUS"                    , "状态面板")
  ZO_CreateStringId("SI_CA_MOVE_GROUP_PANEL"               , "队伍面板")
  ZO_CreateStringId("SI_CA_MOVE_NEARBY"                    , "附近")
  ZO_CreateStringId("SI_CA_LEGACY_HOF"                     , "制造大厅插件已退役，应卸载；其功能已并入本插件。")
return true end

--Combat Metrics
--1.5.16
BB.AddonList["CombatMetrics"] = function() if not CMX then return false end
  local strings = {
    SI_COMBAT_METRICS_LIVEREPORT_DPSMULTI_TOOLTIP = "多目标DPS",
    SI_COMBAT_METRICS_LIVEREPORT_DPSSINGLE_TOOLTIP = "单目标DPS",
    SI_COMBAT_METRICS_MENU_ALKOSH = "艾尔克许的咆哮",
    SI_COMBAT_METRICS_CRITBONUS_TT = "暴击率 vs. 伤害",
    SI_COMBAT_METRICS_MENU_TREMORSCALE_TOOLTIP = "由战栗之鳞降低的抗性。它取决于施法者的物理抗性或法术抗性中更高的那项，系数为0.08",
    SI_COMBAT_METRICS_MENU_TREMORSCALE = "战栗之鳞",
    SI_COMBAT_METRICS_LIVEREPORT_TIME_TOOLTIP = "战斗持续",
    SI_COMBAT_METRICS_LIVEREPORT_HPSINC_TOOLTIP = "传入的HPS",
    SI_COMBAT_METRICS_LIVEREPORT_DPSINC_TOOLTIP = "传入的DPS",
    SI_COMBAT_METRICS_LIVEREPORT_HPSRAW_TOOLTIP = "原始HPS (包含过量治疗)",
    SI_COMBAT_METRICS_LIVEREPORT_GROUP_TOOLTIP = "玩家 / 队伍",
    SI_COMBAT_METRICS_MENU_ALKOSH_TOOLTIP = "由艾尔克许的咆哮降低的抗性。它取决于施法者的武器伤害或法术伤害中更高的那项，至多减少6000抗性。",
  }
--Special Setting
  for stringId, stringValue in pairs(strings) do
    ZO_CreateStringId(stringId, stringValue)
    SafeAddVersion(stringId, 1)
  end
return true end

--Dolgubon's Lazy Set (and Furniture!) Crafter
--3.0.4.1
BB.AddonList["DolgubonsLazySetCrafter"] = function() if not DolgubonSetCrafter then return false end
  DolgubonSetCrafter.localizedStrings.UIStrings.chatRequest      = "聊天发送制作请求"
  DolgubonSetCrafter.localizedStrings.UIStrings.mailRequest      = "邮件发送制造请求"
  DolgubonSetCrafter.localizedStrings.UIStrings.FavouritesTitle  = "收藏"
  DolgubonSetCrafter.localizedStrings.UIStrings.resetPatterns		 = "重置所选"
  DolgubonSetCrafter.localizedStrings.UIStrings.totalCostTitle	 = "总花费"
  DolgubonSetCrafter.localizedStrings.UIStrings.onlyKnownRecipes = "仅已知配方"
  --Special Setting
  local OldFun = DolgubonSetCrafter.scroll.SetupEntry
  DolgubonSetCrafter.scroll.SetupEntry = function(...)
    local Result = OldFun(...)
    local Control = select(2, ...)
    if Control then
      local Level = Control:GetNamedChild("Level")
      if Level then Level:SetWidth(65) end
    end
    return Result
  end
  --
  BB.SetAfterPart(
    function()
      DolgubonSetCrafterWindowToggleFurniture:SetText("切换 家具/消耗品")
      DolgubonSetCrafterWindowRightCost:SetText("总花费：")
    end
  )
return true end

--Dolgubon's Lazy Writ Crafter
--3.1.6.6
BB.AddonList["DolgubonsLazyWritCreator"] = function() if not WritCreater then return false end
  local function proper(str)
    if type(str)== "string" then
      return zo_strformat("<<C:1>>",str)
    else
      return str
    end
  end
  
  WritCreater.hirelingMailSubjects["铁匠原材料"] = true
  WritCreater.hirelingMailSubjects["制衣匠材料"] = true
  WritCreater.hirelingMailSubjects["木匠原材料"] = true
  WritCreater.hirelingMailSubjects["附魔师原材料"] = true
  WritCreater.hirelingMailSubjects["烹饪师原材料"] = true

  function WritCreater.langWritNames()
    return {
      ["G"] = "委托",
      [CRAFTING_TYPE_ENCHANTING]      = "附魔",
      [CRAFTING_TYPE_BLACKSMITHING]   = "铁匠",
      [CRAFTING_TYPE_CLOTHIER]        = "制衣",
      [CRAFTING_TYPE_PROVISIONING]    = "烹饪",
      [CRAFTING_TYPE_WOODWORKING]     = "木匠",
      [CRAFTING_TYPE_ALCHEMY]         = "炼金",
      [CRAFTING_TYPE_JEWELRYCRAFTING] = "珠宝",
    }
  end

  function WritCreater.langCraftKernels()
    return {
      [CRAFTING_TYPE_ENCHANTING]      = "附魔",
      [CRAFTING_TYPE_BLACKSMITHING]   = "锻造",
      [CRAFTING_TYPE_CLOTHIER]        = "制衣",
      [CRAFTING_TYPE_PROVISIONING]    = "烹饪",
      [CRAFTING_TYPE_WOODWORKING]     = "木(.+)",
      [CRAFTING_TYPE_ALCHEMY]         = "炼金",
      [CRAFTING_TYPE_JEWELRYCRAFTING] = "珠宝",
    }
  end

  function WritCreater.langMasterWritNames()
    return {
      ["M"] 							          = "大师级的",
      ["M1"]							          = "工艺精湛的",
      [CRAFTING_TYPE_ALCHEMY]			  = "调和物",
      [CRAFTING_TYPE_ENCHANTING]		= "雕文",
      [CRAFTING_TYPE_PROVISIONING]	= "盛宴",
      ["plate"]						          = "护甲",
      ["tailoring"]					        = "剪裁",
      ["leatherwear"]					      = "皮衣",
      ["weapon"]						        = "武器",
      ["shield"]						        = "盾牌",
    }
  end

  function WritCreater.writCompleteStrings()
    return {
      ["Deliver"]       = "将货物送至",
      ["Acquire"]       = "获(.+)",
      ["place"]         = "<将货物放",
      ["sign"]          = "签订",
      
      ["masterStart"]   = "<接受契约",
      ["Rolis Hlaalu"]  = "罗利斯·哈拉鲁",
      ["masterPlace"]   = "我完成了",
      ["masterSign"]    = "<完工",
    }
  end

  function WritCreater.languageInfo()
    return {
      [CRAFTING_TYPE_CLOTHIER] = {
        ["pieces"] = {
          [1] = "长袍",
          [2] = "短衣",
          [3] = "鞋子",
          [4] = "手套",
          [5] = "帽子",
          [6] = "长裤",
          [7] = "肩袢",
          [8] = "饰带",
          [9] = "上衣",
          [10]= "靴子",
          [11]= "护腕",
          [12]= "头盔",
          [13]= "护腿",
          [14]= "护肩",
          [15]= "腰带",
        },
        ["match"] = {
          [1] = "手工", 
          [2] = "亚麻",	
          [3] = "棉",
          [4] = "蛛丝",
          [5] = "乌丝",
          [6] = "克雷什",
          [7] = "紫苑草织物",
          [8] = "银叶花织物",
          [9] = "影织",
          [10]= "先祖丝绸",
          [11]= "生皮",
          [12]= "兽皮",
          [13]= "皮革",
          [14]= "全皮",
          [15]= "兽皮",
          [16]= "布莱根丁防弹衣",
          [17]= "铁皮",
          [18]= "超级",
          [19]= "暗影兽皮",
          [20]= "发红皮革",
        },
      },
      [CRAFTING_TYPE_BLACKSMITHING] = {
        ["pieces"] = {
          [1] =  "斧头",
          [2] =  "钉锤",
          [3] =  "剑",
          [4] =  "战斧",
          [5] =  "重槌",
          [6] =  "巨剑",
          [7] =  "匕首",
          [8] =  "胸铠",
          [9] =  "足铠",
          [10] = "手铠",
          [11] = "重盔",
          [12] = "腿铠",
          [13] = "肩铠",
          [14] = "腰铠",
        },
        ["match"] = {
          [1] = "铁",
          [2] = "钢",
          [3] = "黄铜",
          [4] = "矮人",
          [5] = "乌木",
          [6] = "月长石铜",
          [7] = "水银钢",
          [8] = "水银",
          [9] = "虚无之钢",
          [10]= "赤晶",
        },
      },
      [CRAFTING_TYPE_WOODWORKING] = {
        ["pieces"] = {
          [1] = "弓",
          [3] = "炼狱法杖",
          [4] = "寒冰法杖",
          [5] = "闪电法杖",
          [6] = "恢复法杖",
          [2] = "盾牌",
        },
        ["match"] = {
          [1] = "枫木",
          [2] = "橡木",
          [3] = "榉木",
          [4] = "山核桃木",
          [5] = "紫杉木",
          [6] = "桦木",
          [7] = "梣木",
          [8] = "红木",
          [9] = "夜木",
          [10]= "赤晶梣木",
        },
      },
      [CRAFTING_TYPE_JEWELRYCRAFTING] = {
        ["pieces"] = {
          [1] = "戒指",
          [2] = "项链",
        },
        ["match"] = {
          [1] = "锡", -- 1
          [2] = "铜", -- 26
          [3] = "银", -- CP10
          [4] = "银金", --CP80
          [5] = "铂金", -- CP150
        },
      },
      [CRAFTING_TYPE_ENCHANTING] = {
        ["pieces"] = { --{String Identifier, ItemId, positive or negative}
          {"生命",          45831,1},
          {"吸取生命",      45831,2},
          {"魔力",          45832,1},
          {"吸取魔力",      45832,2},
          {"耐力",          45833,1},
          {"吸取耐力",      45833,2},
          {"生命回复",      45834,1},
          {"削减生命",      45834,2},
          {"魔力回复",      45835,1},
          {"降低法术消耗",  45835,2},
          {"耐力回复",      45836,1},
          {"降低武艺消耗",  45836,2},
          {"毒素",          45837,1},
          {"毒素抗性",      45837,2},
          {"火焰",          45838,1},
          {"火焰抗性",      45838,2},
          {"寒霜",          45839,1},
          {"寒霜抗性",      45839,2},
          {"电击",          45840,1},
          {"电击抗性",      45840,2},
          {"肮脏",          45841,1},
          {"疾病抗性",      45841,2},
          {"硬化",          45842,1},
          {"粉碎",          45842,2},
          {"武器伤害",      45843,1},
          {"削弱",          45843,2},
          {"药水提升",      45846,1},
          {"药水速度",      45846,2},
          {"提高物理损害",  45847,1},
          {"减少物理损害",  45847,2},
          {"提高魔法损害",  45848,1},
          {"减少法术损害",  45848,2},
          {"猛击",          45849,1},
          {"招架",          45849,2},
          {"棱镜猛攻",      68342,2},
          {"棱镜防御",      68342,1},
          {"棱镜回复",      166045,1},
          {"降低技能消耗",  166045,2},
        },
        ["match"] = {
          [1] = {"微不足道", 45855},
          [2] = {"次级",45856},
          [3] = {"微小",45857},
          [4] = {"轻微",45806},
          [5] = {"次要",45807},
          [6] = {"低级",45808},
          [7] = {"中度",45809},
          [8] = {"普通",45810},
          [9] = {"强大",45811},
          [10]= {"主要",45812},
          [11]= {"高级",45813},
          [12]= {"宏大",45814},
          [13]= {"辉煌",45815},
          [14]= {"纪念性",45816},
          [15]= {"真正超凡",{68341,68340,},},
          [16]= {"超级",{64509,64508,},},
        },
        ["quality"] = {
          {"普通",45850},
          {"优良",45851},
          {"上乘",45852},
          {"史诗",45853},
          {"传说",45854},
          {""    ,45850}
        }
      }
    }
  end

  function WritCreater.masterWritQuality()
    return {
      {"史诗",4},{"传说",5}
    }
  end

  function WritCreater.langEssenceNames() -- Vital
    return {
      [1] = "奥科", --health
      [2] = "德尼", --stamina
      [3] = "马可", --magicka
    }
  end

  function WritCreater.langPotencyNames() -- Vital
    --exact!! Also, these are all the positive runestones - no negatives needed.
    return {
      [1] = "乔拉", --Lowest potency stone lvl
      [2] = "伯拉德",
      [3] = "杰拉",
      [4] = "杰乔拉",
      [5] = "欧达",
      [6] = "伯乔拉",
      [7] = "艾多拉",
      [8] = "杰尔拉",
      [9] = "伯拉",
      [10]= "德纳拉",
      [11]= "雷拉",
      [12]= "德拉多",
      [13]= "雷库拉",
      [14]= "库拉",
      [15]= "勒杰拉",
      [16]= "雷波拉", --v16 potency stone
    }
  end

  function WritCreater.questExceptions(condition)
    condition = string.gsub(condition, " "," ")
    return condition
  end

  function WritCreater.enchantExceptions(condition)
    condition = string.gsub(condition, " "," ")
    return condition
  end

  function WritCreater.langTutorial(i) 
    local t = {
      [5]="还有一些事情你应该知道。\n首先, /dailyreset 此命令会告诉你\n距离下一次服务器日常任务重置还有多久。",
      [4]="最后, 您也可以选择\n为每个专业停用或激活此插件。\n一般来说，所有可用制造都是默认开启的\n如果您想关闭其中的某些，请查看设置。",
      [3]="接下来，您需要选择当您使用工作台的时候\n是否希望看到此窗口。\n此窗口会告诉你完成令状需要多少材料, 以及你现在有多少。",
      [2]="要选择的第一个设置是\n您是否想使用自动制造。\n如果开启, 当您打开工作台时, 插件将自动开始制造。",
      [1]="欢迎使用懒人令状!\n首先，您应该选择几个设置。\n 您可以随时从设置菜单更改设置。",
    }
    return t[i]
  end

  function WritCreater.langTutorialButton(i,onOrOff) -- sentimental and short please. These must fit on a small button
    local tOn = {
      [1]="使用默认",
      [2]="开",
      [3]="显示",
      [4]="继续",
      [5]="完成",
    }
    local tOff= {
      [1]="继续",
      [2]="关",
      [3]="不显示",
    }
    if onOrOff then
      return tOn[i]
    else
      return tOff[i]
    end
  end

  function WritCreater.langStationNames()
    return {
      ["锻造台"]                               = 1, 
      ["制衣台"]                               = 2, 
      ["附魔台"]                               = 3,
      ["炼金台"]                               = 4, 
      ["烹饪火焰"]                             = 5, 
      ["木工台"]                               = 6, 
      ["珠宝制作台"]                           = 7,
    }
  end

  local function runeMissingFunction(ta,essence,potency)
    local missing = {}
    if not ta["bag"] then
      missing[#missing + 1] = "|r塔|cf60000"
    end
    if not essence["bag"] then
      missing[#missing + 1] =  "|cffcc66"..essence["slot"].."|cf60000"
    end
    if not potency["bag"] then
      missing[#missing + 1] = "|c0066ff"..potency["slot"].."|r"
    end
    local text = ""
    for i = 1, #missing do
      if i ==1 then
        text = "|cff3333附魔无法制造。你缺少 "..proper(missing[i])
      else
        text = text.." 和 "..proper(missing[i])
      end
    end
    return text
  end

  local function dailyResetFunction(till, stamp) -- You can translate the following simple version instead.
                      -- function (till) d(zo_strformat("<<1>> hours and <<2>> minutes until the daily reset.",till["hour"],till["minute"])) end,
    if till["hour"]==0 then
      if till["minute"]==1 then
        return "还有 1 分钟后日常重置!"
      elseif till["minute"]==0 then
        if stamp==1 then
          return "日常重置还剩 "..stamp.." 秒!"
        else
          return "真的... 别问了。你真有那么着急么??? 它会在一秒内重置! *哼~哼*"
        end
      else
        return till["minute"].." 分钟后日常将重置!"
      end		
    else
      return till["hour"].." 小时 "..till["minute"].." 分钟 后日常重置"
    end 
  end

  local function masterWritEnchantToCraft (pat,set,trait,style,qual,mat,writName,Mname,generalName)
    local partialString = zo_strformat("制造一个 CP150 <<t:6>> <<t:1>> 带有 <<t:2>> 套装，<<t:3>> 特性， <<t:4>> 风格以及 <<t:5>> 品质等属性",pat,set,trait,style,qual,mat)
    return zo_strformat("<<t:2>> <<t:3>> <<t:4>>: <<1>>",partialString,writName,Mname,generalName )
  end

  WritCreater.missingTranslations = {}
  local stringIndexTable = {}
  local findMissingTranslationsMetatable = {
    ["__newindex"] = function(t,k,v) 
      if not stringIndexTable[tostring(t)] then 
        stringIndexTable[tostring(t)] = {} 
      end 
      stringIndexTable[tostring(t)][k] = v WritCreater.missingTranslations[k] = {k, v} 
    end,
    ["__index"] = function(t, k) 
      return stringIndexTable[tostring(t)][k] 
    end,
  }
  
  WritCreater.strings = {
    runeReq                   = function (essence, potency)
                                  return zo_strformat("|c2dff00制造需要 1个 |r塔|c2dff00, 1个 |cffcc66<<1>>|c2dff00 和 1个 |c0066ff<<2>>|r", essence, potency)   
                                end,
    runeMissing               = runeMissingFunction,
    notEnoughSkill            = "你没有足够的制造技能来制造所需的装备",
    smithingMissing 			    = "\n|cf60000你没有足够的材料|r",
    craftAnyway 				      = "先制造再说",
    smithingEnough 				    = "\n|c2dff00你的材料充足|r",
    craft 						        = "|c00ff00制造|r",
    crafting 					        = "|c00ff00制造中...|r",
    craftIncomplete 			    = "|cf60000制造可能无法完成。\n你需要更多材料。|r",
    moreStyle 					      = "|cf60000您没有任何可用的风格材料。\n检查你的物品栏, 成就, 和设置。|r",
    moreStyleSettings			    = "|cf60000您没有任何可用的风格材料。\n您可能需要在设置菜单中允许更多|r",
    moreStyleKnowledge			  = "|cf60000您没有任何可用的风格材料。\n您可能需要学习更多的风格|r",
    dailyreset 					      = dailyResetFunction,
    complete 					        = "|c00FF00令状完成|r",
    craftingstopped				    = "制造终止。请检查以确保插件正在制作正确的物品。",
    smithingReqM 				      = function (amount, type, more) 
                                  return zo_strformat( "制造将使用 <<1>> <<2>> (|cf60000你需要 <<3>>|r)" ,amount, type, more) 
                                end,
    smithingReq 				      = function (amount,type, current) 
                                  return zo_strformat( "制造将使用 <<1>> <<2>> (|c2dff00<<3>> 可用|r)", amount, type, current) 
                                end,
    lootReceived				      = "<<3>> <<1>> 被收到 (你有 <<2>>)",
    lootReceivedM				      = "<<1>> 被收到 ",
    countSurveys				      = "你有 <<1>> 调查报告",
    countVouchers				      = "你有 <<1>> 未获得的大师令券",
    includesStorage				    = function(type) 
                                  local a= {"调查报告", "大师令状"} a = a[type] 
                                  return zo_strformat("包括 <<1>> 房屋储存", a) 
                                end,
    surveys						        = "制造调查报告",
    sealedWrits					      = "密封的状令",
    masterWritEnchantToCraft	= function(lvl, type, quality, writCraft, writName, generalName)
                                  return zo_strformat("<<t:4>> <<t:5>> <<t:6>>: 正在制造一个 <<t:2>> 等级 <<t:3>> 类型的 <<t:1>> 附魔", lvl, type, quality, writCraft, writName, generalName) 
                                end,
    masterWritSmithToCraft		= masterWritEnchantToCraft,
    withdrawItem				      = function(amount, link, remaining) 
                                  return "懒人令状插件 取出了 "..amount.." "..link.."。(银行剩余"..remaining..")" 
                                end,
    fullBag						        = "你没有足够的背包空间。请清理你的背包。",
    masterWritSave				    = "懒人令状插件 阻止了你意外接受一个大师令状! 设置菜单以禁用此选项。",
    missingLibraries			    = "懒人令状插件 需要以下运行库。请下载、安装或打开这些运行库: ",
    resetWarningMessageText		= "日常状令将在 <<1>> 小时 <<2>> 分钟 后刷新\n您可以在设置中自定义或关闭此警告",
    resetWarningExampleText		= "警告将是这样",
    lowInventory              = "\n你的背包剩余 <<1>> 格空间，可能装不下本次制作的物品。",
  }
  setmetatable(WritCreater.strings, findMissingTranslationsMetatable)

  WritCreater.optionStrings = {}
  WritCreater.optionStrings.nowEditing                   = "你正在更改 %s 设置"
  WritCreater.optionStrings.accountWide                  = "账户全局"
  WritCreater.optionStrings.characterSpecific            = "角色独立"
  WritCreater.optionStrings.useCharacterSettings         = "使用角色设置" -- de
  WritCreater.optionStrings.useCharacterSettingsTooltip  = "仅对该角色使用独立于其他角色的设置" --de
  WritCreater.optionStrings["style tooltip"]								= function (styleName, styleStone) return zo_strformat("允许 <<1>> 风格, 将使用 <<2>> 风格材料用于制造",styleName, styleStone) end 
  WritCreater.optionStrings["show craft window"]							= "显示制造窗口"
  WritCreater.optionStrings["show craft window tooltip"]					= "当制造工作台打开时显示制造窗口"
  WritCreater.optionStrings["autocraft"]									= "自动制造"
  WritCreater.optionStrings["autocraft tooltip"]							= "选择此选项将使插件在进入一个工作台后立即开始制造。如果选择不显示窗口, 此功能会被打开."
  WritCreater.optionStrings["blackmithing"]								= "锻造"
  WritCreater.optionStrings["blacksmithing tooltip"]						= "为锻造打开此插件"
  WritCreater.optionStrings["clothing"]									= "制衣"
  WritCreater.optionStrings["clothing tooltip"]							= "为制衣打开此插件"
  WritCreater.optionStrings["enchanting"]									= "附魔"
  WritCreater.optionStrings["enchanting tooltip"]							= "为附魔打开此插件"
  WritCreater.optionStrings["alchemy"]									= "炼金"
  WritCreater.optionStrings["alchemy tooltip"]							= "为炼金打开此插件(只开启取出银行功能)"
  WritCreater.optionStrings["provisioning"]								= "烹饪"
  WritCreater.optionStrings["provisioning tooltip"]						= "为烹饪打开此插件(只开启取出银行功能)"
  WritCreater.optionStrings["woodworking"]								= "木工"
  WritCreater.optionStrings["woodworking tooltip"]						= "为木工打开此插件"
  WritCreater.optionStrings["jewelry crafting"]							= "首饰制造"
  WritCreater.optionStrings["jewelry crafting tooltip"]					= "为首饰制造打开此插件"
  WritCreater.optionStrings["writ grabbing"]								= "取出令状物品"
  WritCreater.optionStrings["writ grabbing tooltip"]						= "从银行获取令状所需的物品 (例如 奈恩根, 塔, 之类的)"
  WritCreater.optionStrings["style stone menu"]							= "使用风格材料"
  WritCreater.optionStrings["style stone menu tooltip"]					= "选择插件将使用哪些风格材料"
  WritCreater.optionStrings["send data"]									= "发送令状数据"
  WritCreater.optionStrings["send data tooltip"]							= "发送你从令状盒子中收到的奖励信息。不会发送其他信息。"
  WritCreater.optionStrings["exit when done"]								= "退出制造窗口"
  WritCreater.optionStrings["exit when done tooltip"]						= "完成所有的制造后退出制造窗口"
  WritCreater.optionStrings["automatic complete"]							= "自动任务对话框"
  WritCreater.optionStrings["automatic complete tooltip"]					= "在需要的地方自动接受和完成任务"
  WritCreater.optionStrings["new container"]								= "保持新状态"
  WritCreater.optionStrings["new container tooltip"]						= "保持令状奖励容器的新状态"
  WritCreater.optionStrings["master"]										= "大师令状"
  WritCreater.optionStrings["master tooltip"]								= "如果开启，插件会制造你已激活的大师令状（译注：推荐使用WritWorthy插件完成大师令，而不是使用本插件）"
  WritCreater.optionStrings["right click to craft"]						= "右击制作"
  WritCreater.optionStrings["right click to craft tooltip"]				= "如果开启，右键点击一个密封的令状后，插件将制作你制定的大师令状。需要打开LibCustomMenu插件。"
  WritCreater.optionStrings["crafting submenu"]							= "为交易而制造"
  WritCreater.optionStrings["crafting submenu tooltip"]					= "为特殊制造关闭插件"
  WritCreater.optionStrings["timesavers submenu"]							= "节省时间"
  WritCreater.optionStrings["timesavers submenu tooltip"]					= "各种节省时间的小功能"
  WritCreater.optionStrings["loot container"]								= "收到容器时打开"
  WritCreater.optionStrings["loot container tooltip"]						= "当收到令状奖励容器时打开他们"
  WritCreater.optionStrings["master writ saver"]							= "保存大师令状"
  WritCreater.optionStrings["master writ saver tooltip"]					= "防止大师令状被接受"
  WritCreater.optionStrings["loot output"]								= "高价奖励提醒"
  WritCreater.optionStrings["loot output tooltip"]						= "当从令状奖励中收到有价值的物品时，输出一条消息"
  WritCreater.optionStrings["autoloot behaviour"]							= "自动开箱行为" -- Note that the following three come early in the settings menu, but becuse they were changed
  WritCreater.optionStrings["autoloot behaviour tooltip"]					= "选择什么时候插件将自动开启令状奖励容器" -- they are now down below (with untranslated stuff)
  WritCreater.optionStrings["autoloot behaviour choices"]					= {"复制游戏设置下的设置", "自动开箱", "不要自动开箱"}
  WritCreater.optionStrings["hide when done"]								= "完成时隐藏"
  WritCreater.optionStrings["hide when done tooltip"]						= "所有项目都已制作完成时，隐藏插件窗口"
  WritCreater.optionStrings['reticleColour']								= "改变光标颜色"
  WritCreater.optionStrings['reticleColourTooltip']						= "如果你在工作台有未完成或已完成的令状，改变光标颜色"
  WritCreater.optionStrings['autoCloseBank']								= "自动银行对话框"
  WritCreater.optionStrings['autoCloseBankTooltip']						= "如有要取出的物品，则自动进入和退出银行对话框"
  WritCreater.optionStrings['despawnBanker']							= "解散银行助手"
  WritCreater.optionStrings['despawnBankerTooltip']					= "取出物品后自动解散银行助手"
  WritCreater.optionStrings['dailyResetWarnTime']								= "距重置剩余分钟"
  WritCreater.optionStrings['dailyResetWarnTimeTooltip']						= "在日常任务重置前多少分钟显示警告"
  WritCreater.optionStrings['dailyResetWarnType']							= "日常重置提醒"
  WritCreater.optionStrings['dailyResetWarnTypeTooltip']					= "当每日重置即将发生时，应该显示哪种类型的警告"
  WritCreater.optionStrings['dailyResetWarnTypeChoices']					={ "无","类型 1", "类型 2", "类型 3", "类型 4", "全部"}
  WritCreater.optionStrings['stealingProtection']							= "偷窃保护"
  WritCreater.optionStrings['stealingProtectionTooltip']					= "当您的任务日志中有令状任务时，防止您误操作导致偷窃"
  WritCreater.optionStrings['noDELETEConfirmJewelry']						= "简单首饰销毁"
  WritCreater.optionStrings['noDELETEConfirmJewelryTooltip']				= "在删除首饰对话框中自动输入'DELETE'文本来销毁首饰令状"
  WritCreater.optionStrings['suppressQuestAnnouncements']					= "隐藏令状任务公告"
  WritCreater.optionStrings['suppressQuestAnnouncementsTooltip']			= "当你接下令状任务和制造令状物品时，隐藏屏幕中央的公告文本"
  WritCreater.optionStrings["questBuffer"]								= "令状任务缓冲区"
  WritCreater.optionStrings["questBufferTooltip"]							= "保留一个任务缓冲区，这样就可以保障你有空间去接令状任务"
  WritCreater.optionStrings["craftMultiplier"]							= "批量制造器"
  WritCreater.optionStrings["craftMultiplierTooltip"]						= "制作多份所需物品以便下次出现相同令状的时候，你不需要再次制造。注意: 每增加1个以上，节省大约37个栏位"
  WritCreater.optionStrings['hireling behaviour']							= "雇佣邮件动作"
  WritCreater.optionStrings['hireling behaviour tooltip']					= "如何处理雇佣邮件"
  WritCreater.optionStrings['hireling behaviour choices']					= { "无处理","拿取并删除", "仅拿取"}


  WritCreater.optionStrings["allReward"]									= "所有制造"
  WritCreater.optionStrings["allRewardTooltip"]							= "对所有制造类所采取的动作"

  WritCreater.optionStrings['sameForALlCrafts']							= "对所有使用相同选项"
  WritCreater.optionStrings['sameForALlCraftsTooltip']					= "对所有制造类使用与此类奖励相同的选项"
  WritCreater.optionStrings['1Reward']									= "锻造"
  WritCreater.optionStrings['2Reward']									= "对所有使用"
  WritCreater.optionStrings['3Reward']									= "对所有使用"
  WritCreater.optionStrings['4Reward']									= "对所有使用"
  WritCreater.optionStrings['5Reward']									= "对所有使用"
  WritCreater.optionStrings['6Reward']									= "对所有使用"
  WritCreater.optionStrings['7Reward']									= "对所有使用"

  WritCreater.optionStrings["matsReward"]									= "材料奖励"
  WritCreater.optionStrings["matsRewardTooltip"]							= "如何处理制造材料奖励"
  WritCreater.optionStrings["surveyReward"]								= "调查报告奖励"
  WritCreater.optionStrings["surveyRewardTooltip"]						= "如何处理调查报告奖励"
  WritCreater.optionStrings["masterReward"]								= "大师令状奖励"
  WritCreater.optionStrings["masterRewardTooltip"]						= "如何处理大师令状奖励"
  WritCreater.optionStrings["repairReward"]								= "修理箱奖励"
  WritCreater.optionStrings["repairRewardTooltip"]						= "如何处理修理箱奖励"
  WritCreater.optionStrings["ornateReward"]								= "华丽特质装备奖励"
  WritCreater.optionStrings["ornateRewardTooltip"]						= "如何处理华丽特质装备奖励"
  WritCreater.optionStrings["intricateReward"]							= "精巧特质装备奖励"
  WritCreater.optionStrings["intricateRewardTooltip"]						= "如何处理精巧特质装备奖励"
  WritCreater.optionStrings["soulGemReward"]								= "空灵魂石"
  WritCreater.optionStrings["soulGemTooltip"]								= "如何处理空灵魂石"
  WritCreater.optionStrings["glyphReward"]								= "附魔"
  WritCreater.optionStrings["glyphRewardTooltip"]							= "如何处理附魔"
  WritCreater.optionStrings["recipeReward"]								= "食谱"
  WritCreater.optionStrings["recipeRewardTooltip"]						= "如何处理食谱"
  WritCreater.optionStrings["fragmentReward"]								= "塞伊克碎片"
  WritCreater.optionStrings["fragmentRewardTooltip"]						= "如何处理塞伊克碎片"
  WritCreater.optionStrings["writRewards submenu"]						= "令状奖励处理"
  WritCreater.optionStrings["writRewards submenu tooltip"]				= "怎么处理所有来自令状的奖励"

  WritCreater.optionStrings["jubilee"]									= "打开周年纪念盒子"
  WritCreater.optionStrings["jubilee tooltip"]							= "自动打开周年纪念盒子"
  WritCreater.optionStrings["skin"]										= "令状助手皮肤"
  WritCreater.optionStrings["skinTooltip"]								= "令状助手UI皮肤"
  WritCreater.optionStrings["skinOptions"]								= {"默认", "奶酪化"}
  
  WritCreater.optionStrings["goatSkin"]	= "山羊"
  WritCreater.optionStrings["cheeseSkin"]	= "奶酪"
  WritCreater.optionStrings["defaultSkin"] = "默认"
  
  WritCreater.optionStrings["smart style slot save"] = "优先使用数量少的样式材料"
  WritCreater.optionStrings["smart style slot save tooltip"]= "如果不是 ESO Plus，将尝试优先使用数量较少的样式材料，尽量减少占用背包空间。"
  WritCreater.optionStrings["abandon quest for item"] = "需要 <<1>> 的委托"
  WritCreater.optionStrings["abandon quest for item tooltip"]= "如果关闭，将自动放弃需要 <<1>> 的委托"
  WritCreater.optionStrings["status bar submenu"] = "状态栏选项"
  WritCreater.optionStrings["status bar submenu tooltip"]	= "状态栏选项"
  WritCreater.optionStrings['showStatusBar']= "显示状态栏"
  WritCreater.optionStrings['showStatusBarTooltip'] = "显示或隐藏任务状态栏"
  WritCreater.optionStrings['statusBarIcons']= "显示图标"
  WritCreater.optionStrings['statusBarIconsTooltip'] = "显示每种委托类型的图标而不是字母"
  WritCreater.optionStrings['transparentStatusBar'] = "透明状态条"
  WritCreater.optionStrings['transparentStatusBarTooltip']= "将状态条背景设置为透明"
  WritCreater.optionStrings['statusBarInventory'] = "背包跟踪器"
  WritCreater.optionStrings['statusBarInventoryTooltip']	= "在状态条中显示背包总容量及已使用量"

  WritCreater.optionStrings["rewardChoices"]								= {"无","存入银行","垃圾", "摧毁", "分解"}
  WritCreater.optionStrings["scan for unopened"]							
= "登录时打开容器"
  WritCreater.optionStrings["scan for unopened tooltip"]					= "当您登录时，扫描背包中未打开的令状容器，并试图打开它们"

  WritCreater.optionStrings["smart style slot save"]						= "优先使用数量最少的样式材料"
  WritCreater.optionStrings["smart style slot save tooltip"]				= "优先消耗数量最少的样式材料，为非ESO会员增加背包空余格"
  ZO_CreateStringId("SI_BINDING_NAME_WRIT_CRAFTER_CRAFT_ITEMS", "制造物品")
  ZO_CreateStringId("SI_BINDING_NAME_WRIT_CRAFTER_OPEN", "显示令状制造器统计窗口")

  WritCreater.optionStrings["alternate universe"] = "关闭愚人玩笑"
  WritCreater.optionStrings["alternate universe tooltip"] = "关闭制造，制造站和其他交互的改名功能。(这个功能是个作者做的彩蛋，愚人节随机改制作台和材料的名字，已经从程序里关闭了，太无聊……)"

  WritCreater.lang = "zh"
  WritCreater.langIsMasterWritSupported = true
return true end

--Dressing Room 2018
--0.12.1
BB.AddonList["DressingRoom"] = function() if not DressingRoom then return false end
  ZO_CreateStringId("SI_BINDING_NAME_DRESSINGROOM_TOGGLE", "显示/隐藏 窗口")
  for i = 1, 12 do
    ZO_CreateStringId("SI_BINDING_NAME_DRESSINGROOM_SET_"..i, "切换 配装 "..i)
  end
  DressingRoom._msg = {
    weaponType = {
      [WEAPONTYPE_AXE] = "斧头",
      [WEAPONTYPE_BOW] = "弓",
      [WEAPONTYPE_DAGGER] = "匕首",
      [WEAPONTYPE_FIRE_STAFF] = "炼狱法杖",
      [WEAPONTYPE_FROST_STAFF] = "寒冰法杖",
      [WEAPONTYPE_HAMMER] = "钉锤",
      [WEAPONTYPE_HEALING_STAFF] = "恢复法杖",
      [WEAPONTYPE_LIGHTNING_STAFF] = "闪电法杖",
      [WEAPONTYPE_NONE] = "无",
      [WEAPONTYPE_RUNE] = "卢恩",
      [WEAPONTYPE_SHIELD] = "盾牌",
      [WEAPONTYPE_SWORD] = "剑",
      [WEAPONTYPE_TWO_HANDED_AXE] = "战斧",
      [WEAPONTYPE_TWO_HANDED_HAMMER] = "重槌",
      [WEAPONTYPE_TWO_HANDED_SWORD] = "巨剑",
    },
    skillBarSaved = "技能配置 %d 栏 %d 已保存",
    skillBarLoaded = "技能配置 %d 栏 %d 已加载",
    skillBarDeleted = "技能配置 %d 栏 %d 已删除",
    gearSetSaved = "装备配置 %d 已储存",
    gearSetLoaded = "装备配置 %d 已加载",
    gearSetDeleted = "装备配置 %d 已加载",
    noGearSaved = "配置 %d 无装备记录",

    options = {
      reloadUIWarning = "需要重新加载UI",
      reloadUI = "重新加载UI",
      clearEmptyGear = {
        name = "卸载 空装备格",
        tooltip = "当加载含空格的装备配置时，卸载先前的装备",
      },
      clearEmptySkill = {
        name = "卸载 空技能格",
        tooltip = "当加载含空格的技能配置时，卸载先前的技能",
      },
      activeBarOnly = {
        name = "仅为激活技能栏显示技能配置按钮",
        tooltip = "只为当前激活的技能栏，显示技能配置按钮",
      },
      fontSize = {
        name = "字体大小",
        tooltip = "交互界面的字体大小",
      },
      btnSize = {
        name = "技能图标尺寸",
        tooltip = "技能图标尺寸",
      },
      columnMajorOrder = {
        name = "优先为配置使用列排序",
        tooltip = "在交互界面中为配置，使用列排列（垂直）而不是行排列（水平）",
      },
      openWithSkillsWindow = {
        name = "随技能窗口开启",
        tooltip = "打开技能窗口时自动显示界面",
      },
      openWithInventoryWindow = {
        name = "随物品栏窗口开启",
        tooltip = "打开物品栏窗口时自动显示界面",
      },
      numRows = {
        name = "行数量",
        tooltip = "窗口中每列的行数",
      },
      numCols = {
        name = "列数量",
        tooltip = "窗口中每行的列数",
      },
      showChatMessages = {
        name = "聊天栏信息输出",
        tooltip = "当存储、装备、删除配置和技能按钮时，在聊天栏输出信息",
      },
      singleBarToCurrent = {
        name = "将单栏配置加载至激活的技能栏",
        tooltip = "加载单栏且无装备的配置时，更新激活的技能栏并忽略空的技能栏。（译注：截止0.12.1版本存在Bug，不推荐启用）",
      },
      alwaysChangePageOnZoneChanged = {
        name = "如果无匹配区域，返回默认页面",
        tooltip = "如果没有为你抵达的新区域提前配置，且当前页面没有被手动选择，返回默认（第一）页",
      },
    },
    barBtnText = "点击 加载单栏技能配置\nShift + 点击 保存配置\nCtrl + 点击 删除配置",
    gearBtnText = "点击 加载装备配置\nShift + 点击 保存配置\nCtrl + 点击 删除配置",
    setBtnText = "点击 加载装备和技能配置",
  }
return true end

--[[ Template

--
--
BB.AddonList[""] = function() if not  then return false end

return true end

]]