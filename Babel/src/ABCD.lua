local BB = MABabel

--Advanced Filters
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
  AdvancedFilters.strings = BB.TableCopy(Table, AdvancedFilters.ENstrings)
return true end

--AlphaGear 2
do if not BB.SV.BanList["AlphaGear"] then
  local lmb, rmb = '|t16:16:AlphaGear/asset/lmb.dds|t', '|t16:16:AlphaGear/asset/rmb.dds|t'
  local msg = {
    Copy = '拷贝',
    Paste = '粘贴',
    Clear = '清除',
    Insert = '插入当前装备的',

    -- new since 6.6.0
    ToBankAll = '将所有装备配置存入银行',
    FromBankAll = '从银行取回所有装备配置',
    FailedToMoveItem = '移动 <<1>> 失败',
    MovingSet = '移动套装 <<1>>...',
    -- end new 6.6.0

    -- new since 6.2.1
    ToBank = '将装备配置存入银行',
    FromBank = '从银行取回装备配置',
    CurrentlyEquipped = '<<1>> 处于装备状态',
    NotEnoughSpaceInBackPack = '背包空间不足：<<1>>',
    NotEnoughSpaceInBank = '银行空间不足：<<1>>',
    ItemIsStolen = '无法将偷取的 <<1>> 存入银行',
    ReassignHint = '请使用 Shift + 左键 或 从技能界面中拖动技能来重新保存，以获得正确的弹窗信息',
    ToolTipSkillIcon = lmb..' 选择图标\n'..rmb..' 重置图标',
    BindLoadNextSet = '加载下一配置',
    BindLoadPreviousSet = '加载上一配置',
    BindToggleSet = '切换最后两套配装',
    MsgNoPreviousSet = '你没有装备第二套配装',
    ShowMainBinding = '显示/隐藏 AlphaGear 窗口',
    -- end new 6.2.1

    Icon = lmb..'选择图标',
    Set = lmb..' 装备套装\n'..rmb..' 编辑套装',
    NotFound = '<<1>> |cFF0000没有找到...|r',
    NotEnoughSpace = '|cFFAA33AlphaGear|r |cFF0000没有足够的空间...|r',
    SoulgemUsed = '<<C:1>> |cFFAA33已充能.|r',
    SetPart = '\n|cFFAA33套装: <<C:1>>|r',
    Lock = '如果套装锁定, 所有空的槽位将会卸下装备.\n如果套装解锁, 所有空的槽位将会忽略.\n\n'..lmb..' 锁定/解锁',
    Unequip = '卸下装备',
    UnequipAll = '卸下所有装备',

    -- new since 6.1.1
    SetsHeader = '套装',
    SettingsDesc = '配置 AlphaGear UI, Auto-Repair和Auto-Recharge',
    NumVisibleSetButtons = '套装按钮的显示数量',
    GearHeader = '装备',
    WeaponsHeader = '武器',
    EquipmentHeader = '装备栏',
    UIHeader = '用户界面',
    ResetPositions = '重置位置',
    -- end new 6.1.1
    -- new since 6.1.3
    ShowItemLevelChoices = {'总是', '仅低级物品', '从不'},
    -- end new 6.1.3

    -- new since 6.2.0
    OutfitLabel = '装扮',
    UneqipAllBinding = '卸下所有装备',
    LoadSetBinding = '加载套装 ',
    KeepOutfitItemLabel = '保持当前装扮',
    SetChangeQueuedMsg = '当脱战时，将装备套装 <<1>> (<<2>>)',
    ActionBar1Text = '技能栏 1',
    ActionBar2Text = '技能栏 2',
    ActionBarNText = '技能栏 <<1>>',
    NotEnoughMoneyForRepairMsg = '没有足够的钱修理装备',
    ItemsRepairedMsg = '<<1>> 已修复，总开销: <<2>> 金币',
    ItemsNotRepairedMsg = '没有足够的金币修复 <<1>>',
    -- end new since 6.2.0    

    -- new since 6.5.0
    BindLoadProfile = '加载预设 ',
    BindLoadNextProfile = '加载下一预设',
    BindLoadPreviousProfile = '加载上一预设',
    BindToggleProfile = '切换最后两个预设',
    MsgNoPreviousProfile = '没有可切换的预设',
    -- end new since 6.5.0

    SetConnector = {
      lmb..' 连接装备到套装\n'..rmb..' 移除连接',
      lmb..' 连接动作条 1 到套装\n'..rmb..' 移除连接',
      lmb..' 连接动作条 2 到套装\n'..rmb..' 移除连接'
    },
    Head = {
      Gear = '装备 ',
      Skill = '技能 '
    },
    Button = {
      Gear = lmb..' 装备物品\n'..rmb..' 移除物品',
      Skill = lmb..' 装备技能\n'..rmb..' 移除技能'
    },
    Selector = {
      Gear = lmb..' 装备所有装备\n'..rmb..' 更多选项',
      Skill = lmb..' 装备所有技能\n'..rmb..' 更多选项'
    },
    OptionWidth = 300,
    Options = {
      '显示界面按钮',
      '显示界面套装按钮',
      '显示修理按钮',
      '显示修理花费',
      '显示武器充能图标',
      '显示武器切换信息',
      '显示正在装备的套装',
      '在物品栏中标记套装',
      '显示物品耐久度百分比',
      '显示物品质量为颜色',
      '移动时关闭窗口',
      '锁定所有AlphaGear的元素',
      '自动武器充能',
      -- new since 6.1.1
      '在商店界面自动修理装备',
      -- end new 6.1.1
      -- new since 6.1.3
      '显示物品等级标识',
      -- end new 6.1.3
      -- new since 6.4.1
      '<Unused Message>',
      '自动加载预设中最后一个BD',          -- AG_OPTION_LOAD_LAST_BUILD_OF_PROFILE = 17
      -- end new since 6.4.1
    },

    -- new since 6.8.1
    Integrations = {
      Inventory = {
        Title = '库存管理',
        UseFCOIS = '显示 FCOIS 标记图标',
        FCOIS = {
          GearMarkerIconLabel = '标记图标',
          NoGearMarkerIconEntry = '-无-',
        }
      },
      Styling = {
        Title = '风格样式管理',
        UseAlphaStyle = '使用 AlphaStyle 插件',
      },
      Champion = {
        Title = '冠军点数管理',
        UseCPSlots = '使用 ChampionPointsSlots 插件',
      },
      QuickSlot = {
        Title = '快捷栏管理',
        UseGMQSB = '使用 Greymind Quick Slot Bar 插件',
      },
    },
    -- new since 6.8.1
  }

  --Special Setting
  BB.SetGlobalHook(function() BB.TableCopy(msg, AGLang.msg) end, "AG", "author")

end end

BB.AddonList["AlphaGear"] = function() 
  if not AGLang then return false end
  return true
end

--Arkadius' Trade Tools
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
  BB.TableCopy(ToolString, ArkadiusTradeTools.Localization)
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
  BB.TableCopy(StatisticsString, (ArkadiusTradeTools.Modules.Statistics or {}).Localization)
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
  BB.TableCopy(SaleString, (ArkadiusTradeTools.Modules.Sales or {}).Localization)
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
  BB.TableCopy(PurchaseString, (ArkadiusTradeTools.Modules.Purchases or {}).Localization)
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
  BB.TableCopy(ExportString, (ArkadiusTradeTools.Modules.Exports or {}).Localization)
  
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
  --UI
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
  
  BB.SetMenuItemPatch("AC: Get itemId", "获取物品ID")
return true end

--BeamMeUp
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
  mkstr(SI.TELE_UI_TRAVEL_PARENT_ZONE, "传送至父区域")
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
  --Special Setting
  BB.SetMenuItemPatch("Post DPS", "发布DPS统计")
  BB.SetMenuItemPatch("Post death count", "发布死亡计数")
  BB.SetMenuItemPatch("Clear death count", "清空死亡计数")
  BB.SetMenuItemPatch("Save group list", "保存队伍列表")
  BB.SetMenuItemPatch("Post group list", "发布队伍列表")
  BB.SetMenuItemPatch("Regroup", "重组")
  BB.SetMenuItemPatch("Refresh frame", "刷新框架")
return true end

--Buff The Group
BB.AddonList["BuffTheGroup"] = function() if not btg then return false end
  local NewOption = {
		{
			type = "header",
			name = "设置",
		},
		{
			type = "checkbox",
			name = "启用",
			tooltip = "切换UI显示",
		},
		{
			type = "checkbox",
			name = "仅为DPS职能显示",
			tooltip = "在BTG框架中，仅显示被标记为DPS玩家的Buff情况",
		},
		{
			type = "checkbox",
			name = "单列模式",
			tooltip = "以单列而不是 6x2 布局来排列框架",
		},
		{
			type = "checkbox",
			name = "精简模式",
			tooltip = "将UI简化为百分比显示，背景颜色代表Buff剩余时间。[仅为DPS职能显示]设置对该模式有效",
		},
		{
			type = "checkbox",
			name = "梯度模式",
			tooltip = "为Buff持续时间使用颜色渐变显示",
		},
		{
			type = "colorpicker",
			name = "Buff开始颜色",
			tooltip = "设置追踪Buff开始时的梯度颜色",
		},
		{
			type = "colorpicker",
			name = "Buff结束颜色",
			tooltip = "设置追踪Buff结束时的梯度颜色",
		},
		{
			type = "header",
			name = "译注：因插件使用 英文字符串 区分高级/次级Buff",
		},
		{
			type = "header",
			name = "导致中文下，所有Buff均被归入其他一类",
		},
		{
			type = "header",
			name = "其他 Buff",
		},
    {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, 
    {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, 
    {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, 
    {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, 
		{
			type = "button",
			name = "取消所有选择",
		},
		{
			type = "button",
			name = "重置位置",
		},
	}
  
  --Specail Setting
  BB.SetMenuPatch(btg.name.."Options", NewOption)
  
return true end

--Caro's Skill Point Saver
BB.AddonList["CarosSkillPointSaver"] = function() if not CSPS then return false end
  local L = {}
  
	L.SI_BINDING_NAME_CSPS_SHOW = "显示 Skill Point Saver"
	L.SI_BINDING_NAME_CSPS_CPHK1 = "CP栏预设 热键 1"
	L.SI_BINDING_NAME_CSPS_CPHK2 = "CP栏预设 热键 2"
	L.SI_BINDING_NAME_CSPS_CPHK3 = "CP栏预设 热键 3"
	L.SI_BINDING_NAME_CSPS_CPHK4 = "CP栏预设 热键 4"
	L.SI_BINDING_NAME_CSPS_CPHK5 = "CP栏预设 热键 5"
	L.SI_BINDING_NAME_CSPS_CPHK6 = "CP栏预设 热键 6"
	L.SI_BINDING_NAME_CSPS_CPHK7 = "CP栏预设 热键 7"
	L.SI_BINDING_NAME_CSPS_CPHK8 = "CP栏预设 热键 8"
	L.SI_BINDING_NAME_CSPS_CPHK9 = "CP栏预设 热键 9"
	L.SI_BINDING_NAME_CSPS_CPHK10 = "CP栏预设 热键 10"
	L.SI_BINDING_NAME_CSPS_CPHK11 = "CP栏预设 热键 11"
	L.SI_BINDING_NAME_CSPS_CPHK12 = "CP栏预设 热键 12"
	L.SI_BINDING_NAME_CSPS_CPHK13 = "CP栏预设 热键 13"
	L.SI_BINDING_NAME_CSPS_CPHK14 = "CP栏预设 热键 14"
	L.SI_BINDING_NAME_CSPS_CPHK15 = "CP栏预设 热键 15"
	L.SI_BINDING_NAME_CSPS_CPHK16 = "CP栏预设 热键 16"
	L.SI_BINDING_NAME_CSPS_CPHK17 = "CP栏预设 热键 17"
	L.SI_BINDING_NAME_CSPS_CPHK18 = "CP栏预设 热键 18"
	L.SI_BINDING_NAME_CSPS_CPHK19 = "CP栏预设 热键 19"
	L.SI_BINDING_NAME_CSPS_CPHK20 = "CP栏预设 热键 20"
	
	-- General UI
	L.CSPS_MyWindowTitle = "Caro's Skill Point Saver"
	
	L.CSPS_Tooltiptext_Close = "关闭窗口"
	L.CSPS_Tooltiptext_Read = "读取当前数据"
	L.CSPS_Tooltiptext_Save = "保存显示的数据"
	L.CSPS_Tooltiptext_Load = "加载保存的数据"
	L.CSPS_Tooltiptext_Apply = "应用冠军点数"
	L.CSPS_Tooltiptext_Help = "帮助!"
	L.CSPS_Tooltiptext_CP1 = "你想要应用蓝CP吗？"
	L.CSPS_Tooltiptext_CP2 = "你想要应用红CP吗？"
	L.CSPS_Tooltiptext_CP3 = "你想要应用绿CP吗？"
	
	L.CSPS_Tooltiptext_ApplyCP = "应用冠军点数"
	L.CSPS_Tooltiptext_ATTR = "应用属性点数"
	L.CSPS_Tooltiptext_Sk = "应用技能点数"
	
	L.CSPS_Tooltiptext_MinusSk = "降级/删除 此技能"
	L.CSPS_Tooltiptext_PlusSk = "升级/添加 此技能"
	L.CSPS_Tooltiptext_Optional = "显示额外选项"
	L.CSPS_Tooltiptext_SkIcon = "拖动技能，将其装备在热键栏上"
	L.CSPS_Tooltiptext_SrcCombo	 = "选择导入/导出格式"
	L.CSPS_Tooltiptext_AddProfile = "添加预设..."
	L.CSPS_Tooltiptext_RenameProfile = "重命名预设..."
	L.CSPS_Tooltiptext_DeleteProfile = "删除预设..."
	L.CSPS_Tooltiptext_ProfileCombo = "选择一个配置文件以加载/保存数据..."
	L.CSPS_Tooltiptext_MinusSkType = "删除该类型的所有技能"
	L.CSPS_Tooltiptext_MinusSkLine = "删除此技能线中的所有技能"
	L.CSPS_Tooltiptext_PlusSkLine = "添加所有被动技能，并将其设置为最高等级"
	L.CSPS_Tooltiptext_MinusAttr = "移除属性点（按住 %s 为 10 点）"
	L.CSPS_Tooltiptext_PlusAttr = "添加属性点（按住 %s 为 10 点）"
	L.CSPS_Tooltiptext_SaveProfile = "保存预设..."
	L.CSPS_Tooltiptext_CPProfile = "CP 预设" -- also used for the profile-section title
	L.CSPS_Tooltiptext_PlusCP = "添加CP点 (按住 %s 为 10 点 / 下一阶段)"
	L.CSPS_Tooltiptext_MinusCP = "移除CP点 (按住 %s 为 10 点 / 下一阶段)"
	L.CSPS_Tooltiptext_CpHbHk = "点击改变该预设的热键"
	L.CSPS_Tooltip_CPBar = "从列表中拖放一个技能到这里。右键单击可移除已装备的技能。"
	L.CSPS_Tooltip_CPPUpdate = "上次更新: <<1>>/<<2>>/<<3>>"
	L.CSPS_Tooltip_CPPWebsite = "如需了解最新信息，请访问\n<<1>>"
	L.CSPS_Tooltip_CPCustomBar = "切换 HUD中是否显示 CP装备栏"
	L.CSPS_Tooltip_CPCustomIcons = "切换 插件是否为装备的CP使用自定义图标"
	
	L.CSPS_Tooltip_ReverseLabel = "导入文本的标准顺序：编号 名称\n点击颠倒顺序为：名称 编号"
	L.CSPS_Tooltip_CapLabel = "激活时，插件将不会尝试导入超过该账户可用点数的CP"
	L.CSPS_Tooltip_SelectBarProfile = "|t26:26:esoui/art/miscellaneous/icon_lmb.dds|t: 选择 子预设 (%s)\n|t26:26:esoui/art/miscellaneous/icon_rmb.dds|t: 编辑 子预设" 
	L.CSPS_Tooltip_ImpExp_CleanUp = "这将删除文本中的所有特殊字符。它还将删除所有以破折号分隔的数字对，这些数字对可用于表示所需的冠军点范围（如在 AlcastHQ 上），但会在导入过程中导致错误。"
	
	L.CSPS_Tooltip_AddBind1 = "如果添加了此条件，每次加载所选 dressing room 设置时，都会自动应用当前组"
	L.CSPS_Tooltip_AddBind2 = "如果添加了此条件，每次加载所选 alpha gear 设置时，都会自动应用当前组"
	L.CSPS_Tooltip_AddBind3 = "如果添加了此条件，每次进入所选区域时，都会自动应用当前组"
	
	L.CSPS_Tooltip_CPAutoOpen = "勾选时，插件会在每次你进入CP窗口时显示"
	
	L.CSPS_Tooltiptext_DeleteBinding = "去除绑定"
	
	L.CSPS_Tooltip_AddConnection = "链接到当前预设"
	L.CSPS_Tooltip_RemoveConnection = "移除与当前预设的链接"
	L.CSPS_Tooltip_ShowConnection = "链接到子预设: %s\n\n 对该规范所做的更改可以应用到你的角色，但不会保存到当前的预设中。加载构建会自动尝试加载链接的子预设.\n\n|t26:26:esoui/art/miscellaneous/icon_rmb.dds|t: 移除链接"
	
	L.CSPS_Tooltiptext_LoadAndApply = "加载并应用"
	L.CSPS_MORPH = "<<1[无变形/变形 1/变形 $d]>>"
	L.CSPS_MyRank = "等级 %s"
	
	L.CSPS_CP_RED = "红CP"
	L.CSPS_CP_BLUE = "蓝CP"
	L.CSPS_CP_GREEN = "绿CP"
	
	L.CSPS_TxtCp = "CP"	-- shortest form for champion points
	
	--	Errormessages (chat)
	L.CSPS_NoSavedData = "尚无保存的数据"
	L.CSPS_TxtLangDiff = "游戏语言已更改。迁移按字母顺序排列的技能类型数据。"
	L.CSPS_Txt_NewProfile = "预设 " -- for numbered names
	L.CSPS_Txt_NewProfile2 = "新预设" -- for unnumbered names
	L.CSPS_Txt_StandardProfile = "标准"
	
	L.CSPS_CPP_Name = "名称"
	L.CSPS_CPP_Points = "点数"
	L.CSPS_CPP_Role = "角色"
	L.CSPS_CPP_Source = "来源"
	L.CSPS_CPP_Hotkey = "热键"
	L.CSPS_CPP_BtnCustAcc = "自定义\n(账户)"
	L.CSPS_CPP_BtnCustChar = "自定义\n(角色)"
	L.CSPS_CPP_BtnImportText = "从文本导入"
	L.CSPS_CPP_BtnPresets = "预设"
	L.CSPS_CPP_BtnHotBar = "仅限热区栏"
	L.CSPS_CPApplied = "CP成功应用"
	L.CSPS_CPNoChanges = "无需更改CP"
	L.CSPS_CPBar_GroupHeading = "当前组: %s/%s"
	L.CSPS_CPBar_GroupKeybind = "当前键位: %s"
	L.CSPS_Manage_Connections = "管理绑定"
	L.CSPS_CPLoadGroup = "加载组: "
	L.CSPS_CPOldPreset = "连接到已加载预案的 CP 预置会被标记为过时。您仍然可以使用这些预置，但建议切换到一些较新的可用预设"
	L.CSPS_BuildProfile = "建立预设"
	
	L.CSPS_CPValueTooHigh = "数值高于该技能的最大值"
	
	L.CSPS_CPPDescr_JoaTFarming = "该预置经过优化，可与插件 'Jack of all Trades' 一起使用，并侧重于采集资源（战斗、捕鱼和犯罪将在更高的CP等级添加）"
	L.CSPS_CPPDescr_JoaTFishing = "该预设经过优化，可与插件 ‘Jack of all Trades' 一起使用，并侧重于捕鱼（采集、战斗和犯罪将在更高的CP等级添加）"
	L.CSPS_CPPDescr_JoaTThieving = "该预设经过优化，可与插件 ‘Jack of all Trades' 一起使用，并侧重于犯罪（采集、战斗、捕鱼将在更高的CP等级添加）"
	L.CSPS_CPPDescr_CombatFocus = "该预置侧重于与战斗相关的绿色CP"
	
	L.CSPS_StrictOrder = "严格秩序"
	L.CSPS_Tooltiptext_StrictOrder = "启用时，插件在第一个技能点数不足时停止加载预设，而不是检查是否可以加载其余技能。选择此选项可能会增加未使用的点数，但可能会节省 3000 金币的重置费。"
	L.CSPS_CPPCurrentlyApplied = "目前应用:  <<1[无点数/1 点数/$d 点数]>>"
		
	L.CSPS_MSG_ApplyClosing = "CP系统中似乎有未应用的更改。请确保没有忘记应用它们。"
	
	L.CSPS_CPBar_LocTrial = "试炼 / 竞技场"
	L.CSPS_CPBar_LocCurr = "当前区域"
	L.CSPS_CPBar_LocType = "按种类"
	L.CSPS_CPBar_Location = "区域"
	
	L.CSPS_CPBar_AddBindings = "为该组添加自动应用的条件..."
	L.CSPS_CPBar_BindingsHeader = "该组的现有条件："
	L.CSPS_Bindings_Empty = "清空组"
	L.CSPS_Binding_Overwritten = "被改写: 组 %s (%s)"
	L.CSPS_Binding_Conflict = " 与组的现有绑定冲突 %s.\n|t26:26:esoui/art/miscellaneous/icon_rmb.dds|t: 去除现有的绑定"
	
	L.CSPS_CPBar_EditProfiles = "编辑预设"
	L.CSPS_CPBar_Apply = "加载并应用该组..."
	L.CSPS_CPBar_NoDR = "您要么没有安装 <<1>>，要么您使用的版本现在不支持"

	L.CSPS_QS_ApplyWait = "应用热区栏：%s（等待时间：%s）"
	L.CSPS_QS_TT_Edit = "|t26:26:esoui/art/miscellaneous/icon_rmb.dds|t: 改变"
	L.CSPS_QS_TT_Select = "|t26:26:esoui/art/miscellaneous/icon_lmb.dds|t: 选择"
	L.CSPS_QS_TT_TestIt = "|t26:26:esoui/art/miscellaneous/icon_rmb.dds|t: 立即行动"
	L.CSPS_SubProfiles_Edit = "编辑子预设"
	
	L.CSPS_Help_Oversection1 = "常规功能"
	L.CSPS_Help_Head1 = "保存数据"
	L.CSPS_Help_Sect1 = " 1. 点击 '读取当前数据'(|t24:24:esoui/art/help/help_tabicon_feedback_up.dds|t).\n2. 可选择点击技能旁的加/减号来调整技能（稍后您还可以编辑技能）\n3. 点击 '保存显示的数据'(|t24:24:esoui/art/mail/mail_tabicon_compose_up.dds|t)\n会保存所有技能、属性点、CP、快捷栏和装备(需要LibSets)"
	L.CSPS_Help_Head2 = "加载已保存的数据"
	L.CSPS_Help_Sect2 = "1. 点击 '加载保存的数据' (|t24:24:esoui/art/mail/mail_tabicon_inbox_up.dds|t)\n2. 的加减号来调整技能。\n3.  点击每个部分上方或右侧的一个应用按钮 (|t24:24:esoui/art/buttons/accept_up.dds|t)，应用您的技能、属性等\n您所选的数据已应用\n应用技能时，请注意必须单独应用您的热栏。请确保您的热栏显示在插件底部。如果没有，请单击 '选项'（右上角 |t24:24:esoui/art/skillsadvisor/advisor_tabicon_settings_up.dds|t）并启用热栏。然后点击插件底部的 '应用'（|t24:24:esoui/art/buttons/accept_up.dds|t）。"
	L.CSPS_Help_Head3 = "创建预设"
	L.CSPS_Help_Sect3 = "您可以将所有数据（技能、属性和CP）保存到不同的预设中\n1. 通过插件窗口左上角的下拉菜单选择现有预设，或点击旁边的加号按钮创建新预设\n 除标准配置文件外，您还可以重命名或删除所有已创建的预设(|t24:24:esoui/art/buttons/edit_up.dds|t, |t24:24:esoui/art/buttons/minus_up.dds|t) \n3. 为了使保存的数据尽可能少，建议只将应用时实际需要更改的技能保存到预设中。使用相应的减号按钮可从预设中删除整行技能。\n4. 完成编辑后，别忘了保存预设(|t24:24:esoui/art/mail/mail_tabicon_compose_up.dds|t)"
	L.CSPS_Help_Head4 = "应用 预设/重置"
	L.CSPS_Help_Sect4 = "要应用技能点或属性点预设，首先要在神龛花费金币来进入技能或属性重置\n在大多数情况下，重置变形就足够了。保持在重置模式下应用更改。完成后在 eso 技能窗口中确认更改。请注意，只要游戏仍处于重置模式且尚未确认更改，插件就会将您的更改视为冲突。另外，您也可以在应用预设前在军械库中使用空栏。请注意，插件无法更改您的装备"
	L.CSPS_Help_Head5 = "自定义CP图标"
	L.CSPS_Help_Sect5 = "为了使冠军插槽更容易区分，插件可以为每个可插槽技能使用不同的图标。点击 '选项'（右上角，|t24:24:esoui/art/skillsadvisor/advisor_tabicon_settings_up.dds|t）并激活 '自定义 CP 图标' 选框"
	L.CSPS_Help_Head6 = "独立CP栏"
	L.CSPS_Help_Sect6 = "该插件可以在单独的条形图中显示您已插槽的冠军技能，作为游戏内覆盖的一部分，帮助您跟踪当前激活的技能。 点击 '选项'（右上角，|t24:24:esoui/art/skillsadvisor/advisor_tabicon_settings_up.dds|t）并激活 '独立 CP 栏' 选框。还可选择是否将插槽显示在一行（1x12）、三行（3x4）或只显示当前CP技能树(1x4)"
	L.CSPS_Help_Oversection7 = "子预设"
	L.CSPS_Help_Head7 = "常规子预设"
	L.CSPS_Help_Sect7 = "您可以选择为技能、快捷栏或CP等构建的不同方面创建单独的子预设 \n1. 根据要保存的规范，点击右上角的按钮之一(|t24:24:esoui/art/champion/champion_points_magicka_icon-hud-32. dds|t，|t24:24:esoui/art/champion/champion_points_health_icon-hud-32.dds|t，|t24:24:esoui/art/champion/champion_points_stamina_icon-hud-32.dds|t ...)\n2. 选择只为当前角色保存子预设，还是让整个账户都能使用\n3. 对于CP，您也可以加载插件中的预设，而不用创建自己的预设" 
	L.CSPS_Help_Head8 = "自动化(绑定组)" 
	L.CSPS_Help_Sect8 = "您可以创建绑定组，通过按键绑定或自动加载，包括CP热区栏和/或快捷键预设。您也可以加载完整的构建预设，但不建议这样做，因为应用完整预设可能会消耗金币或根本无法运行。插件仅在设置中激活时启用该功能。您最多可以定义 20 个全账户组和 20 个基于角色的组。每个组都可以通过控制设置分配一个绑定键位。如果存在具有相同按键绑定的全账户组和基于角色的组，插件将始终加载基于角色的组。"
	L.CSPS_Help_Head9 = "设置绑定组"
	L.CSPS_Help_Sect9 = "1.  要设置自动化，请单击 '选项' (|t24:24:esoui/art/skillsadvisor/advisor_tabicon_settings_up.dds|t)\n2. 点击 '管理绑定'.\n3. 使用顶部的箭头 |t24:24:esoui/art/buttons/large_leftarrow_up.dds|t 和 |t24:24:esoui/art/buttons/large_rightarrow_up.dds|t 选择组 \n4. 现在可以通过已定义的绑定键位或以下章节介绍的自动选项加载和应用所选的子预设"
	L.CSPS_Help_Head10 = "绑定到区域"
	L.CSPS_Help_Sect10 = "在绑定管理器中，您可以选择是否在进入特定位置（如特定试验或竞技场）后应用绑定组 \n1. 点击 '区域' \n2. 选择当前组应自动应用的区域 \n3. 现在，每次进入所选区域时，插件都会加载选定预设"
	L.CSPS_Help_Head11 = "Dressing Room / Alpha Gear / Wizard's Wardrobe"
	L.CSPS_Help_Sect11 = "您还可以使用绑定管理器将绑定组绑定到Dressing Room、Alpha Gear或Wizard's Wardrobe \n1. 点击 'DR', 'AG' 或 'WW'.\n2. 选择技能或装备配置绑定至CP栏预设\n3. 现在，每次通过Dressing Room、Alpha Gear或Wizard's Wardrobe 装备所选装备/技能时，绑定组也会应用"
	L.CSPS_Help_Oversection12 = "导入/\n导出"
	L.CSPS_Help_Head12 = "常规导入/导出"
	L.CSPS_Help_Sect12 = "1. 点击 '设置' (|t24:24:esoui/art/skillsadvisor/advisor_tabicon_settings_up.dds|t)\n2. 点击 '导入/导出'，打开导入/导出窗口 \n3. 使用右上角的下拉菜单选择要导入和/或导出的数据和格式 \n4. 根据所选格式的不同，您现在有不同的选择 \n5. 要导入数据，首先要将其复制到剪贴板，然后粘贴到导入文本字段 (Ctrl+V)。"
	L.CSPS_Help_Head13 = "基于文本的CP导入 (1/3)"
	L.CSPS_Help_Sect13 = "1. 对于该选项，首先要选择要导入的CP规范 \n2. 导入文本应包含CP技能的英文名称和相应数值 \n3. 标准格式是数字形式的数值，然后是技能名称（例如 '10 Tireless Discipline' 或 '(10) → Tireless Discipline')。您可以点击页面底部的选框来切换顺序。请注意，文本中实际的冠军点数旁不应包含任何数字"
	L.CSPS_Help_Head14 = "基于文本的CP导入 (2/3)"
	L.CSPS_Help_Sect14 = "4. 如果文本中包含可插槽的CP技能，插件将从顶部开始应用这些技能。如果您只想让某些技能插槽，请在文本中使用附加关键字 'slot'(必须放在名称旁边，而不是数值旁边)标记它们。\n5. 如果插件无法识别一个或多个技能名称，您可以从列表中手动选择。在分配或放弃所有值之前，该过程不会结束"
	L.CSPS_Help_Head15 = "基于文本的CP导入 (3/3)"
	L.CSPS_Help_Sect15 = "如果文本中包含同一冠军技能的多个值，则只会导入最后一个值。点击导入按钮的同时按住 shift 键，即可将这些值相加 \n使用右键单击可创建动态预设，另外按住 Ctrl 键可使其覆盖整个帐户。动态预设中保存的CP将从上到下依次应用，直到达到当前可用CP点数的上限"
	L.CSPS_Help_Head16 = "手把手 从 AlcastHQ 或 JustLootIt 导入"
	L.CSPS_Help_Sect16 = "1. 点击右上角的蓝色、红色或绿色 CP 图标(取决于您希望导入的 CP 颜色) \n2. 点击 '从文本导入'(Ctrl+V) \n3. 将网站上的文本粘贴到导入文本字段中 \n4. 确保 'slot'一词只出现在你真正想要插槽的CP技能后面 \n5. 点击右下角的 '清理文本' \n6. 选中 '顺序颠倒' 选框(因为 AlcastHQ 和 JustLootIt 都是先列出名称，再列出数值) \n7. 点击 '导入文本' \n8. 点数现已加载到插件中。现在，您可以点击 '自定义(账户)'或 '自定义(角色)'，然后点击这些按钮下方的加号按钮，将它们保存到新预设，或者点击 CP 预设部分下方的应用按钮来应用它们"

	-- Dialogs
	L.CSPS_MSG_ConfirmSave = "真的要将显示的数据保存为预设'<<1>>'？这会覆盖现有数据 <<2>>"
	L.CSPS_MSG_ConfirmApply = "可用技能点: %s\n实际需要的技能点: %s\n\n冲突: %s\n尚未解锁: %s\n已处于另一变形: %s\n已经为更高等级: %s\n变形/等级尚未解锁: %s\n\n应用这些技能点？"
	L.CSPS_MSG_ConfirmApplyTitle = "CSPS - 技能点"
	L.CSPS_MSG_ConfirmAttrTitle = "CSPS - 属性点"
	L.CSPS_MSG_ConfirmAttr = "需要的属性点: <<1>>\n可用属性点: <<2>>\n应用这些属性点?"
	L.CSPS_MSG_ConfirmAttr1 = "无法应用属性点; 可用属性点不足。请先重置旧属性"
	L.CSPS_MSG_ConfirmAttr2 = "无法应用属性点; 至少一种属性比预设值要高。 请先重置旧属性"	
	L.CSPS_MSG_RenameProfile = "为预设选择新名称 '<<1>>':<<2>>"
	L.CSPS_MSG_DeleteProfile = "确定删除预设 '<<1>>'?<<2>><<3>>"
	L.CSPS_MSG_DeleteProfileStan =  "标准预设将被加载"
	L.CSPS_MSG__ChangeProfile = "预设 '<<1>>' 可能存在未保存修改。你确定要加载预设 '<<2>>'?<<3>>"
	L.CSPS_MSG_DeleteSkillType = "你确定要从预设中移除所有 '<<1>>' 技能？" -- <<1>> can either be a skill type or a skill line 
	L.CSPS_MSG_CpPurchTitle = "应用CP点数..."
	L.CSPS_MSG_CpPurchChosen = "需求的点数: "
	L.CSPS_MSG_CpPurchCost = "花费: <<1>>|t28:28:esoui/art/loot/icon_goldcoin_pressed.dds|t" -- the cost and a coin-icon
	L.CSPS_MSG_CpPurchNow = "确定现在应用选择的CP点数？"
	L.CSPS_MSG_CpPurchFailed = "应用CP点数失败"
	L.CSPS_MSG_CpPurchSuccess = "成功应用CP点数"
	L.CSPS_MSG_CpPointsMissing = "CP点数不足 - 移除点数后重试"
	L.CSPS_MSG_Unslotted = "下列可插槽技能无法插槽："
	L.CSPS_MSG_NoCPProfiles = "\n\n|cff7723WARNING!|r\n这不是保存CP预设的最佳方法！如果您只想保存CP预设，请使用右上角的三个按钮打开CP预设部分。在那里，您可以找到用于创建和保存预设的单独按钮(|t28:28:esoui/art/champion/champion_points_magicka_icon-hud-32.dds|t, |t28:28:esoui/art/champion/champion_points_health_icon-hud-32.dds|t, |t28:28:esoui/art/champion/champion_points_stamina_icon-hud-32.dds|t)"
	L.CSPS_MSG_CPPaths = "最便宜的解锁路径 '<<C:1>>':\n\n<<2>>"
	L.CSPS_MSG_CPPathOpt = "|c<<1>>选项 <<2>> (<<3>>)|r:" -- 1 color 2 number 3 points
	
	--	Errorcodes
	L.CSPS_ErrorNumber1 = "技能已学习"
	L.CSPS_ErrorNumber2 = "技能已处于另一变形。请在尝试应用前重置技能或变形"
	L.CSPS_ErrorNumber3 = "技能的当前等级已经超过你尝试应用的"
	L.CSPS_LoadingError = "请检查技能: <<C:1>>"
	
	-- Options
	L.CSPS_KeepLastBuild = "在关闭时保留最后一次构建"
	L.CSPS_KeepLastBuildTT = "如果激活，在关闭窗口时，插件会始终将当前构建保存到一个不可见的配置文件中。下次启动游戏并打开插件时，该配置文件将被加载，这样您就可以继续之前的操作。如果未激活，插件将始终以当前应用的实际构建文件启动"
	L.CSPS_DeleteLastBuilds = "是否应该删除所有角色的临时预设？"
	L.CSPS_ShowHb = "显示热区栏"
	L.CSPS_AutoOpen = "自动打开..."
	L.CSPS_CPAutoOpen = "CP界面"
	L.CSPS_CPCustomBar = "单独CP栏"
	L.CSPS_CPCustomIcons = "自定义CP图标"
	L.CSPS_CPCustomBarLayout = "图层"
	L.CSPS_ArmoryAutoOpen = "军械库"
	L.CSPS_Tooltip_ArmoryAutoOpen = "选定时，使用军械库时显示插件"
	L.CSPS_SkillWindowAutoOpen = "技能界面"
	L.CSPS_StatsWindowAutoOpen = "角色界面"
	L.CSPS_BtnApplyAll = "全部应用"
	L.CSPS_ShowBtnApplyAll = "显示 '全部应用' 按钮"
	L.CSPS_ShowDateInProfileName = "在预设名中显示最后修改时间"
	L.CSPS_AcceptedLevelDifference = "接受等级差异"
	L.CSPS_AcceptedLevelDifferenceTooltip = "CSPS 只会在您的角色等级与物品等级之差小于所选值的情况下找到并装备装备"
	L.CSPS_RequiresLibSets = "该功能需要安装并激活 LibSets"
	L.CSPS_ShowGearMarkers = "显示库存标记"
	L.CSPS_ShowGearMarkersTooltip = "只有符合已保存预设的套装物品才会显示标记。更改后保存预设，以标记相应的套装物品"
	L.CSPS_ShowGearMarkerDataBased = "显示符合数据的物品"
	L.CSPS_ShowGearMarkerDataBasedTooltip = "如果物品是按其属性而非唯一ID 保存的，则插件可以标记符合数据的物品。否则，它只会标记保存为 '唯一'的物品"
	L.CSPS_SavedSpecific = "保存在: %s"
	L.CSPS_SavedData = "适用于: %s"
	
	L.CSPS_LAM_ShowCpPresetNotifications = "加载CP预设时通知"
	L.CSPS_LAM_ShowCpNotSaved = "CP技能变动尚未应用"
	L.CSPS_LAM_ShowSaveOther = "打开子预设部分时保存一般预设"
	L.CSPS_LAM_KB_Descr = "您可以将子预设组合成组，并通过热键应用。您可以定义 20 个全账户组和 20 个与当前角色绑定的组。您可以定义多达 20 个热键来快速加载和应用这些组。如果基于角色的组不为空，按下热键将加载该组。否则将加载具有相同编号的全账户组。您可以定义一个单独的键来强制插件加载整个账户的组，而不是基于角色的组"
	L.CSPS_LAM_KB_ShiftMode = "强制为热键加载全账户组而非基于角色的组"
	L.CSPS_LAM_ShowOutdatedPresets = "在预设列表中显示过时预置"
	L.CSPS_LAM_ShowBindBuild = "在绑定管理器中显示构建配置文件(请注意：在尝试加载需要应用神龛等的配置文件时，自动操作可能不起作用)"
	L.CSPS_LAM_JumpShiftKey = "键(调整属性/CP时以10为单位，或链接子预设)"
	L.CSPS_LAM_SortCP = "CP技能顺序"
	L.CSPS_LAM_SortCP_1 = "标准"
	L.CSPS_LAM_SortCP_2 = "按字母顺序"
	L.CSPS_LAM_SortCP_3 = "按字母顺序, 被动技能独立"
	L.CSPS_LAM_ShowNumSetItems = "在物品名称后显示有效套装物品的数量。如果武器是套装的一部分，编号将显示为（主手/副手）"
	
	-- Presets
	L.CSPS_MSG_SwitchCP = "Invest points into |c<<1>>'<<2>>'|r instead of one of the other slottables whenever you might profit from it."
	L.CSPS_MSG_SituationalCP = "根据情况，考虑用以下技能之一来代替插槽: "
	L.CSPS_CPP_Tank = "坦克"
	L.CSPS_AOE = "AOE伤害"
	L.CSPS_CRIT = "暴击伤害"
	L.CSPS_OffBalance = "失衡"
	
	-- Import/Export
	L.CSPS_ImpEx_BtnImpLink = "导入链接"
	L.CSPS_ImpEx_BtnImpText = "导入文本"
	L.CSPS_ImpEx_BtnExpLink = "生成链接"
	L.CSPS_ImpEx_BtnExpText = "生成文本"
	L.CSPS_ImpEx_Standard = "您可以从 eso-skillfactory.com 粘贴链接（Ctrl+V）来导入构建，也可以点击 '生成链接' 来为当前选定的构建生成链接，然后复制（Ctrl+C）并导出到浏览器中，在 eso-skillfactory.com 上查看"
	L.CSPS_ImpEx_CpAsText = "您可以将文本形式的 CP 设置粘贴到此字段中（Ctrl+V）。标准格式是 数字格式的数值，然后是技能名称(英文)。如果要应用的文本使用了不同的顺序，请单击底部的顺序选框。如果文本中包含 CP 范围的数字（如源自 AlcastHQ 或 JustLootIt文本），请单击底部的 '清理' 按钮将其删除。然后点击 '导入文本'。只要所有CP 名称都写得完整正确，插件就会自动将它们填入表格，供您查看和应用。"
	L.CSPS_ImpEx_BtnImpTT = "首先将链接粘贴（Ctrl+V）到下面的字段中"
	L.CSPS_ImpEx_BtnImpTTCP = "首先将文本粘贴（Ctrl+V）到下面的字段中 \n按住 Ctrl 为预设生成代码 \n使用右键单击创建动态预设，另外按住 Ctrl 键使其覆盖整个账户\n如果按下 Shift 键，同一CP 技能的多个条目数值将相加而不是替换"
	L.CSPS_ImpEx_BtnExpTT = "从当前显示的构建中生成链接"
	L.CSPS_ImpEx_NoData = "未找到数据。在尝试生成链接之前，请先为角色加载数据。"
	L.CSPS_ImpEx_ErrHb = "导入热区栏 <<1>> 时出错"
	L.CSPS_ImpEx_ErrSk = "无法映射技能: <<1>>"
	L.CSPS_ImpExp_TextSk = "文本导出"
	L.CSPS_ImpExp_TextOd = "其他数据"
	L.CSPS_ImpEx_HbTxt = "热区栏"
	L.CSPS_ImpEx_CsvCP = "以逗号分隔 CP 列表"
	L.CSPS_ImpEx_TxtCP2_1 = "CP |cA6D852(绿, 从文本)|r" 
	L.CSPS_ImpEx_TxtCP2_2 = "CP |c5CBDE7(蓝, 从文本)|r" 
	L.CSPS_ImpEx_TxtCP2_3 = "CP |cDE6531(红, 从文本)|r"
	L.CSPS_ImpExp_TxtOrder1 = "值 → 名称(/Slot)"
	L.CSPS_ImpExp_TxtOrder2 = "名称(/Slot) → 值"
	L.CSPS_ImpExp_TxtOrder3 = "名称 → 值 ( → Slot)"
	L.CSPS_ImpEx_CapLabel = "限制点数"
	L.CSPS_ImpEx_LangTT = "使用 %s 代替英文作为CP技能名称的语言（如果要从英文网站导入 CP，请勿激活此选项）"
	L.CSPS_ImpExp_CleanUp = "清理文本"
	L.CSPS_ImpExp_Transfer = "转移..."
	L.CSPS_ImpExp_TransferLoad = "加载"
	L.CSPS_ImpExp_TransConfirm = "|cDE6531您真的希望将所有绑定从 <<1>> 转移到 <<2>>？所有当前绑定都将被覆盖。这个过程是不可逆的。|r"
	L.CSPS_ImpExp_Transfer_Server = "服务器"
	L.CSPS_ImpExp_Transfer_Profiles = "预设..."
	L.CSPS_ImpExp_Transfer_CPP = "CP预设..."
	L.CSPS_ImpExp_Transfer_CPHb = "CP栏..."
	L.CSPS_ImpExp_Transfer_CopyReplace = "转移所有热区栏预设和绑定（替换当前预设）"
	L.CSPS_ImpExp_Transfer_CopyAdd = "转移所有热区栏预设和绑定（保留当前预设）"
	
	L.CSPS_Tooltip_Transfer_CopyReplace = "|cDE6531当前为该角色设置的所有绑定和热区栏预设都将被覆盖|r"
	L.CSPS_Tooltip_Transfer_CopyAdd = "转移热区栏预设，但保留现有预设\n|cDE6531当前为该角色设置的所有绑定都将被覆盖|r"
	
	L.CSPS_CPImp_Success = "成功映射技能:"
	L.CSPS_CPImp_Unmapped = "尚未分配技能:"
	L.CSPS_CPImp_BtnApply = "应用映射"
	L.CSPS_CPImp_BtnDiscard = "弃用"
	L.CSPS_CPImp_BtnDiscardAll = "弃用所有"
	L.CSPS_CPImp_New = "|c<<1>> <<2>>/<<3>> 映射 <<4>> 指向: <<C:5>>|r"
	L.CSPS_CPImp_Note = "单击下面列表中的技能，手动映射该技能。请注意，只有在所有技能都已映射或放弃后，才会应用该映射"
	L.CSPS_CPImp_NoMatch = "找不到任何匹配数据"
	
	--New with 5.5.0
	L.CSPS_ScribingGoToStation = "%s\n请到纂刻台刻印你的纂刻技能（需要花费 %s 墨水）"
	L.CSPS_CannotBeScribed = "<<1[技能/1 技能/$d 技能]>> 无法刻印"
	L.CSPS_ScribingGo = "%s\n刻印你的纂刻技能（将消耗 %s 墨水，您拥有 %s）"
	L.CSPS_NothingToScribe = "没有什么可刻印的"
	L.CSPS_ScribeGo = "刻印: <<C:1>>"
	L.CSPS_ScribingDiag = "%s 技能将被刻印 (这将消耗 %s 墨水)"
	L.CSPS_ScribeNotEnough = "您无法刻印所选技能（墨水不足）"
	L.CSPS_CustomStyles = "应用自定义样式: %s\n锁定的自定义样式: %s\n\n%s"
	
  for stringId, stringValue in pairs(L) do
    ZO_CreateStringId(stringId, stringValue)
  end
  
  --Special Setting
  BB.SetAfterPart(
    function()
      CSPSWindowOptionsBtnImpExp:SetText("导入/导出")
      CSPSWindowOptionsBtnManageBars:SetText("管理键位绑定")
      CSPSWindowOptionsBtnExtendetOptions:SetText("额外设置")
      CSPSWindowManageBarsLblBindList:SetText("该组的现有条件: ")
      CSPSWindowSubProfilesCustomAcc:SetText("自定义\r\n(账户)")
      CSPSWindowSubProfilesCustomChar:SetText("自定义\r\n(角色)")
      CSPSWindowSubProfilesImportFromText:SetText("从文本导入")
      CSPSWindowSubProfilesPresets:SetText("预设")
      CSPSWindowSubProfilesBarsOnly:SetText("仅限热区栏")
      CSPSWindowImportExportLblCap:SetText("有限点数")
      CSPSWindowImportExportCleanUpText:SetText("清理文本")
      CSPSWindowSubProfilesHeaderName:SetText("名称")
    end
  )
return true end

--Combat Metrics
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

  for stringId, stringValue in pairs(strings) do
    ZO_CreateStringId(stringId, stringValue)
    SafeAddVersion(stringId, 1)
  end
return true end

--Combat Metronome
BB.AddonList["CombatMetronome"] = function() if not CombatMetronome then return false end
  --CMSettings.lua
  local NewOption = {
    {
      type = "header",
      name = "设置"
    },
    {
      type = "checkbox",
      name = "账户设置",
      tooltip = "检查账户范围的插件设置",
    },
		{
      type = "submenu",
      name = "施法条 / GCD追踪器",
			tooltip = "帮你追踪GCD，有效安排轻击和施法",
			controls = {
				{
					type = "checkbox",
					name = "隐藏GCD追踪器",
					tooltip = "隐藏施法条，如果你只需要技能层数追踪器",
					warning = "激活时，所有与GCD追踪器有关设置都会失效",
				},
				{
					type = "checkbox",
					name = "在PVP区域隐藏施法条",
					tooltip = "在PVP区域隐藏施法条，以保持用户界面整洁",
				},
				{
					type = "checkbox",
					name = "预览",
					tooltip = "在屏幕右侧预览施法条，其无法调整大小或移动。离开设置菜单时重置",
					warning = "这将暂时禁用解锁功能。停用后才可解锁施法条位置",
				},
        ---------------------------
        ---- Position and Size ----
        ---------------------------
				{
					type = "submenu",
					name = "位置 / 大小",
					controls = {
						{
							type = "checkbox",
							name = "解锁施法条",
							tooltip = "通过拖动中心/边缘来重新定位/调整施法条尺寸",
						},
						{
							type = "slider",
							name = "X轴偏移量",
						},
						{
							type = "button",
							name = "水平居中",
						},
						{
							type = "slider",
							name = "Y轴偏移量",
						},
						{
							type = "button",
							name = "垂直居中",
						},
						{
							type = "slider",
							name = "宽度",
						},
						{
							type = "slider",
							name = "高度",
						},
					},
				},
        -----------------
        ---- Visuals ----
        -----------------
				{
					type = "submenu",
					name = "视觉效果 / 色彩 / 布局",
					controls = {
						{
							type = "checkbox",
							name = "永久显示",
							tooltip = "如果不想在未使用时隐藏施法条，它会显示背景颜色",
						},
						{
							type = "checkbox",
							name = "华丽化",
							tooltip = "使施法条变得花哨",
						},
						{
							type = "colorpicker",
							name = "背景颜色",
							tooltip = "施法条的背景色",
						},
						{
							type = "colorpicker",
							name = "施法条颜色",
							tooltip = "施法条的颜色",
						},
						{
							type = "colorpicker",
							name = "Ping值区域颜色",
							tooltip = "Ping值区域颜色",
						},
						{
							type = "dropdown",
							name = "对齐",
							tooltip = "施法条的对齐方式",
						},
						{
							type = "checkbox",
							name = "为引导技能切换施法条颜色",
							tooltip = "在引导技能剩余1s以内改变施法条颜色，帮助在引导结束时切手",
							warning = "这是实验性功能，可能会有点不正常",
						},
						{
							type = "colorpicker",
							name = "引导技能颜色",
							tooltip = "释放引导技能时颜色",
						},
						{
							type = "dropdown",
							name = "标签字体",
							tooltip = "标签使用的字体",
						},
						{
							type = "dropdown",
							name = "字体样式",
							tooltip = "标签使用的字体样式",
						},
					},
				},
        ------------------
        ---- Behavior ----
        ------------------
				{
					type = "submenu",
					name = "表现",
					controls = {
						{
							type = "slider",
							name = "最大延迟",
							tooltip = "设置最大显示延迟",
						},
						{
							type = "slider",
							name = "GCD调整",
							tooltip = "增加/减少显示的 GCD 长度",
						},
						{
							type = "slider",
							name = "全局重击调整",
							tooltip = "增加/减少重击的基准时间。除此以外，还会对特定重击类型进行额外调整",
						},
						{
							type = "slider",
							name = "全局施法调整",
							tooltip = "增加/减少技能施放的基准时间。除此以外，还会对特定技能进行额外调整",
						},
						{
							type = "checkbox",
							name = "显示GCD",
							tooltip = "在非战斗状态下跟踪 GCD",
						},
            {
							type = "submenu",
							name = "显示更多GCD信息（注:因原作奇妙代码，无法汉化）",
							controls = {
								{
									type = "checkbox",
									name = "Dodgeroll",
                  tooltip = "显示 翻滚信息",
								},
								{
									type = "checkbox",
									name = "Mounting/Dismounting",
                  tooltip = "显示 上下坐骑信息",
								},
								{
									type = "checkbox",
									name = "Show mount nickname",
                  tooltip = "显示 坐骑名称",
								},
								{
									type = "checkbox",
									name = "Assistants and companions",
                  tooltip = "显示 助手和伙伴",
								},
								{
									type = "checkbox",
									name = "Usage of items",
                  tooltip = "显示 道具使用",
								},
								{
									type = "checkbox",
									name = "Killing actions",
									tooltip = "显示 吸血鬼喂食和哀伤之刃等杀戮技能",
								},
								{
									type = "checkbox",
									name = "Breaking free",
                  tooltip = "显示 挣脱控制",
								},
								-- {
									-- type = "checkbox",
									-- name = "Other synergies that cause GCD",
									-- disabled = function() return not self.config.trackGCD end,
									-- default = false,
									-- getFunc = function() return self.config.trackOthers end,
									-- setFunc = function(value)
										-- self.config.trackOthers = value
										-- if value and not self.collectiblesTrackerRegistered then
												-- CombatMetronome:RegisterCollectiblesTracker()
										-- elseif not value and self.config.combatEventsRegistered and not (self.config.trackMounting or self.config.trackKillingActions or self.config.trackBreakingFree) then
												-- CombatMetronome:UnregisterCollectiblesTracker()
										-- end
									-- end,
								-- },
								-- {
									-- type = "submenu",
									-- name = "Collectible types",
									-- disabled = function() return not self.config.trackCollectibles end,
									-- controls = {
										-- {
											-- type = "checkbox",
											-- name = "Assistants",
											-- disabled = function() return not self.config.trackCollectibles end,
											-- default = false,
											-- getFunc = function() return self.config.trackRolldodge end,
											-- setFunc = function(value)
												-- self.config.trackRolldodge = value
											-- end,
										-- },
										-- {
											-- type = "checkbox",
											-- name = "Companions",
											-- disabled = function() return not self.config.trackCollectibles end,
											-- default = false,
											-- getFunc = function() return self.config.trackRolldodge end,
											-- setFunc = function(value)
												-- self.config.trackRolldodge = value
											-- end,
										-- },
										-- {
											-- type = "checkbox",
											-- name = "Costumes",
											-- disabled = function() return not self.config.trackCollectibles end,
											-- default = false,
											-- getFunc = function() return self.config.trackRolldodge end,
											-- setFunc = function(value)
												-- self.config.trackRolldodge = value
											-- end,
										-- },
										-- {
											-- type = "checkbox",
											-- name = "Polymorphs",
											-- disabled = function() return not self.config.trackCollectibles end,
											-- default = false,
											-- getFunc = function() return self.config.trackRolldodge end,
											-- setFunc = function(value)
												-- self.config.trackRolldodge = value
											-- end,
										-- },
										-- {
											-- type = "checkbox",
											-- name = "Vanity pets",
											-- disabled = function() return not self.config.trackCollectibles end,
											-- default = false,
											-- getFunc = function() return self.config.trackRolldodge end,
											-- setFunc = function(value)
												-- self.config.trackRolldodge = value
											-- end,
										-- },
									-- },
								-- },
							},
						},
						{
							type = "checkbox",
							name = "不显示Ping值区域",
							tooltip = "完全不在施法条上显示Ping值区域",
						},
						{
							type = "checkbox",
							name = "我不是重击侠",
							tooltip = "停止显示重击的施法条",
						},
						{
							type = "checkbox",
							name = "在重击时显示Ping值区域",
							tooltip = "在重击时显示Ping值区域。重击会在施法条进入Ping值区域时完成（本地估算），这是为了视觉一致性。",
						},
						{
							type = "checkbox",
							name = "在施法条上显示引导技能名称",
							tooltip = "在施法条上显示引导技能的名称",
						},
						{
							type = "checkbox",
							name = "在施法条上显示引导技能剩余时间",
							tooltip = "在施法条上显示引导技能的剩余时间",
						},
					},
				},
        ----------------
        ---- Sounds ----
        ----------------
				{
					type = "submenu",
					name = "声音", 
					controls = {
						{
							type = "slider",
							name = "'tick' 和 'tock' 的音量",
							tooltip = "调整音量",
							warning = "您可能需要同时调整游戏音频设置，这样效果才会明显",
						},
						{
							type = "checkbox",
							name = "音效 'tick'",
							tooltip = "启用音效 'tick'",
						},
						{
							type = "dropdown",
							name = "音效 'tick' 效果",
						},
						{
							type = "slider",
							name = "音效 'tick' 偏移量",
						},
						{
							type = "checkbox",
							name = "音效 'tock'",
              tooltip = "启用音效 'tock'",
						},
						{
							type = "dropdown",
							name = "音效 'tock' 效果",
						},
						{
							type = "slider",
							name = "音效 'tock' 偏移量",
						},
					},
				},
        -------------------------------
        ---- Ability Timer Adjusts ----
        -------------------------------
				{
					type = "submenu",
					name = "技能计时器调整",
					description = "调整特定技能的计时器，这会在全局调整的基础上进行",
					controls = {
						{
							type = "editbox",
							name = "添加需要调整的技能（中文全称）",
						},
						{
							type = "dropdown",
							name = "选择技能",
						},
						{
							type = "slider",
							name = "调整GCD长度",
						},
						{
							type = "button",
							name = "移除技能调整",
						},
					},
				},
			},
		},
		{	type = "divider",},
		-------------------
		---- Resources ----
		-------------------
		{	
      type = "submenu",
			name = "资源",
			tooltip = "在资源条上追踪您的各种资源",
			controls = {
				{
					type = "checkbox",
					name = "解锁资源条",
					tooltip = "通过拖动中心/边缘，重新定位/调整资源栏大小",
				},
				{
					type = "checkbox",
					name = "将资源条固定在GCD追踪器顶部",
					tooltip = "关闭时，资源条可以独立拖动和调整",
					warning = "关闭此选项时，将自动调整资源条大小以适应GCD追踪器",
				},
				{
					type = "checkbox",
					name = "在PVP区域隐藏资源条",
					tooltip = "在PVP区域时隐藏资源条，保持界面干净",
				},
				{
					type = "checkbox",
					name = "预览",
					tooltip = "在屏幕右侧显示资源条用于预览，其无法移动",
					warning = "这会暂时禁止资源条的移动功能。禁用以解锁资源条。离开设置菜单时重置",
				},
				{
					type = "submenu",
					name = "配置",
					controls = {
						{
							type = "checkbox",
							name = "始终显示持有资源",
							tooltip = "关闭时，仅在瞄准可攻击目标时显示",
						},
						{
							type = "checkbox",
							name = "显示终极点",
							tooltip = "切换显示终极点",
						},
						{
							type = "slider",
							name = "终极点标签尺寸",
							tooltip = "设置终极点标签的尺寸",
						},
						{
							type = "colorpicker",
							name = "终极点标签颜色",
							tooltip = "终极点标签颜色",
						},
						{
							type = "checkbox",
							name = "显示耐力（百分比）",
							tooltip = "切换显示耐力",
						},
						{
							type = "slider",
							name = "耐力标签尺寸",
							tooltip = "设置耐力标签的尺寸",
						},
						{
							type = "colorpicker",
							name = "耐力标签颜色",
							tooltip = "设置耐力标签的颜色",
						},
						{
							type = "checkbox",
							name = "显示魔力（百分比）",
							tooltip = "切换显示魔力",
						},
						{
							type = "slider",
							name = "魔力标签大小",
							tooltip = "设置魔力标签的大小",
						},
						{
							type = "colorpicker",
							name = "魔力标签颜色",
							tooltip = "设置魔力标签的颜色",
						},
						{
							type = "checkbox",
							name = "显示目标血量",
							tooltip = "切换显示目标血量",
						},
						{
							type = "slider",
							name = "血量标签大小",
							tooltip = "设置血量标签的大小",
						},
						{
							type = "colorpicker",
							name = "血量标签颜色",
							tooltip = "设置血量标签的颜色",
						},
						{
							type = "checkbox",
							name = "将目标血量吸附在准星上",
							tooltip = "将目标血量放在准星旁",
						},
						{
							type = "slider",
							name = "目标血量斩杀线高亮",
							tooltip = "设置目标血量高亮阈值（0%不高亮）",
						},
						{
							type = "colorpicker",
							name = "血量高亮颜色",
							tooltip = "设置目标血量高亮的颜色",
						},
						{
							type = "checkbox",
							name = "在瞄准守卫时显示资源",
							tooltip = "在瞄准守卫时显示资源",
						},
					},
				},
			},
		},
		{	type = "divider",},
		-----------------------
		---- Stack Tracker ----
		-----------------------
		{	
      type = "submenu",
			name = "技能层数追踪器",
			tooltip = "仅为夜刃、巫师、龙骑、奥术启用",
			controls = {
				{
					type = "checkbox",
					name = "在PVP区域隐藏层数追踪器",
					tooltip = "在PVP区域隐藏层数追踪器",
				},
				{
					type = "checkbox",
					name = "预览",
					tooltip = "在屏幕右侧显示层数追踪器预览，其不可移动",
					warning = "这将会暂时禁用层数追踪器的移动功能。禁用以解锁层数追踪器。离开设置菜单时重置",
				},
        ---------------------------
        ---- Position and Size ----
        ---------------------------
				{
					type = "submenu",
					name = "位置 / 尺寸",
					controls = {
						{	
              type = "checkbox",
							name = "解锁层数追踪器",
							tooltip = "解锁层数追踪器",
						},
						{	
              type = "slider",
							name = "层数追踪器尺寸",
						},
					},
				},
        -------------------------
        ---- Stacks to track ----
        -------------------------
				{
					type = "submenu",
					name = "需要追踪的技能层数",
					controls = {
						{
							type = "checkbox",
							name = "追踪 熔火烈鞭",
						},
						{
							type = "checkbox",
							name = "追踪 契约武器",
						},
						{
							type = "checkbox",
							name = "追踪 百折不挠 及其变形",
						},
						{
							type = "checkbox",
							name = "追踪 魔核",
						},
						{
							type = "checkbox",
							name = "追踪 火焰颅骨 及其变形",
						},
					},
				},
        --------------------------
        ---- Tracker Behavior ----
        --------------------------
				{
					type = "submenu",
					name = "视听提示",
					tooltip = "达到满层数时的视听提示设置",
					controls = {
						{	type = "checkbox",
							name = "满层时播放音效",
							tooltip = "当层数达到最大值时会发出声音",
						},
						{
							type = "slider",
							name = "音效音量",
							tooltip = "选择提示音效的音量",
							warning = "您可能还需要调整游戏音频设置，这样效果才明显",
						},
						{
							type = "dropdown",
							name = "选择音效",
						},
						{	type = "checkbox",
							name = "满层时播放动画",
							tooltip = "给你更强烈的视觉提示",
						},
          }
        }
      }
    },
    {	type = "divider",},
		------------------------------
		---- Light Attack Tracker ----
		------------------------------
		{	type = "submenu",
			name = "轻攻击追踪",
			tooltip = "让你可以追踪轻攻击，更好分析数据结果",
			controls = {
				{
					type = "checkbox",
					name = "PVP区域隐藏轻攻击追踪",
					tooltip = "在PVP区域隐藏轻攻击追踪，保持UI整洁",
				},
				{	type = "checkbox",
					name = "解锁 轻攻击追踪",
					tooltip = "使轻攻击追踪UI可以移动",
				},
				{	type = "dropdown",
					name = "追踪何物",
					tooltip = "定义追踪器是否显示 每秒轻攻击、轻攻击时间间隔或其他",	
				},
				{	type = "slider",
					name = "战斗后追踪器显示维持时间",
					tooltip = "这是战斗结束后，跟踪器会持续显示结果的秒数",
				},
				{	type = "checkbox",
					name = "在战斗后显示轻攻击记录",
					tooltip = "为你提供 战斗时间、每秒轻攻击、轻攻击总数的记录",
				},
			},
		},
  }

  --Speical Setting
  BB.SetMenuPatch("CombatMetronomeOptions", NewOption)
  
return true end

--CraftStore
do if not BB.SV.BanList["CraftStoreFixedAndImproved"] then
  local CS = CraftStoreFixedAndImprovedLongClassName
  local lmb,rmb,mmb = '|t16:16:CraftStoreFixedAndImproved/DDS/lmb.dds|t','|t16:16:CraftStoreFixedAndImproved/DDS/rmb.dds|t','|t16:16:CraftStoreFixedAndImproved/DDS/mmb.dds|t'
  local i,o = GetString('SI_ITEMTRAITTYPE',ITEM_TRAIT_TYPE_ARMOR_INTRICATE),GetString('SI_ITEMTRAITTYPE',ITEM_TRAIT_TYPE_ARMOR_ORNATE)
  local L = {
    options = {
      showbutton = '显示CraftStore按钮',
      lockbutton = '锁定CraftStore按钮',
      lockelements = '锁定CraftStore元素',
      closeonmove = '移动时关闭CraftStore窗口',
      useartisan = '使用CraftStore工匠 (未准备好)',
      useflask = '使用CraftStore烧瓶 (未准备好)',
      usequest = '使用CraftStore任务',
      usequestTooltip = '打开制作台时显示当前活动的制作令状任务',
      usecook = '使用CraftStore烹饪',
      usecookTooltip = '用 Craftstore UI 替换烹饪站的默认用户界面',
      userune = '使用CraftStore附魔',
      useruneTooltip = '用 Craftstore UI 替换附魔表的默认用户界面',
      displaystyles = '在详细框中显示物品风格',
      markitems = '标记需要的物品',
      showsymbols = '显示 '..i..'/'..o..'-标志',
      marksetitems = '套装物品可以被标记为可研究',
      showstock = '在提示框中显示物品库存',
      stacksplit = '预选择物品堆叠分割',
      markduplicates = '允许标记复制品为可研究',
      displayrunelevel = '在提示框显示附魔符文等级',
      displaymm = '在提示框中显示Master Merchant插件',
      displayttc = '在提示框中显示TTC插件',
      timeralarm = '显示计时器提醒',
      mountalarm = '显示骑术提醒',
      researchalarm = '显示研究提醒',
      playrunevoice = '播放附魔符文语音',
      advancedcolorgrid = '研究列表使用高级颜色',
      lockprotection = '开启锁定保护',
      inspirationgain = '显示获得的灵感',
      sortsets = '排序套装',
      sortstyles = '排序风格',
      bulkcraftlimit = '批量制造限制',
      overviewstyle = '角色概览风格',
      userunecreation = '使用CraftStore符文制造',
      userunecreationTooltip = '用 Craftstore UI 替换符文制作的默认用户界面',
      useruneextraction = '使用CraftStore符文分解',
      useruneextractionTooltip = '将符文提取的默认用户界面替换为 Craftstore UI',
      userunerecipe = '使用CraftStore符文家具',
      userunerecipeTooltip = '使用Craftstore UI替换附魔台上家具蓝图制作的默认用户界面。',
      displayunknown = '在提示框中显示未知',
      displayknown = '在提示框中显示已知',
      displaycount = '在工具提示中显示已知/未知计数',
    },
    suboptions = {
      sortstyles = {
        [1] = "字母顺序",
        [2] = "风格页 #",
        [3] = "内置顺序 #",
      },
      sortsets = {
        [1] = "字母顺序",
        [2] = "特性",
      },
      alarms = {
        [1] = "通告",
        [2] = "聊天",
        [3] = "两者",
        [4] = "关闭",
      },
      overviewstyle = {
        [1] = "完全",
        [2] = "缩减",
        [3] = "最小",
      },
    },
    TT = {
      '|cFFFFFF<<C:1>>|r\n'..lmb..' 选择/取消 研究\n\n|t20:20:<<2>>|t |cFFFFFF全部 <<C:3>>|r\n'..rmb..' 选择/取消 研究',
      '|cE8DFAF'..lmb..' 制造 x <<1>>|r',
      '|cE8DFAF'..rmb..' 制造 x <<1>>|r',
      '|cE8DFAF'..mmb..' 标记到收藏夹 |r|t16:16:esoui/art/characterwindow/equipmentbonusicon_full.dds|t',
      '|cE8DFAF'..lmb..' 选择|r',
      '|cE8DFAF'..rmb..' 链接到聊天框|r',
      '|cE8DFAF'..mmb..' 标记材料|r',
      '|cE8DFAF'..lmb..' 分解附魔雕文|r',
      '|cE8DFAF'..lmb..' 分解所有非制造的附魔雕文\n'..rmb..' 分解所有可找到的附魔雕文|r',
      '|cE8DFAF'..lmb..' 选择此角色\n'..rmb..' 设置此角色为主要角色\n'..mmb..' 删除此角色',
      '收藏夹',
      '符文模式制造',
      '追踪已知风格',
      '追踪已知食谱',
      '显示CraftStore',
      '可用销赃交易数和今天的进账',
      '法师公会 - 艾维雅 - 在最近的法师公会建筑中使用传送门',
      '战士公会 - 大地熔炉 - 在最近的战士公会建筑中使用传送门',
      '点击前往离此套装制造站最近的指路祭坛',
      '|cFFFFFF骑术|r\n负重, 耐力\n和速度',
      {'任何水域','污水','河水','湖水','海水'},
      '分解所有附魔雕文',
      '状令',
      '家具',
      '追踪已知特性',
      '|cE8DFAF'..lmb..' 家具预览|r',
      '|cE8DFAF'..rmb..' 家具预览|r',
      '|cE8DFAF'..rmb..' 分解堆叠|r',
      '|cFFFFFF技能点|r\n未花费/总共获得',--29
      '|cFFFFFFSP|r ',--30
      '|cFFFFFF天空碎片|r\n已收集/总数',--31
      '追踪已知蓝图',--32
      '|cE8DFAF'..mmb..' 研究|r',
      '|cE8DFAF'..lmb..' 追踪|r',
      '片鱼',
    },
    nobagspace = '|cFF0000背包空间不足!|r',
    noSlot = '|cFF0000没有空闲研究槽或物品无法使用!|r',
    noItemPreview = '|cFF0000需要物品预览!|r',
    noFurnitureData = '|cFF0000Item物品预览缺乏此物品|r',
    blueprintSearchLimit = '|cFF0000缩小搜索范围以显示所有结果|r',
    removeCurrentCharacter = '|cFF0000无法移除当前角色|r',
    searchfor = '搜索: ',
    finished = '已完成',
    level = '等级',
    rank = '技能级数',
    bank = '银行',
    housebank = '房屋银行 ',
    guildbank = '公会银行',
    craftbag = '生产背包',
    chars = '角色概览',
    set = '选择套装...',
    unknown = '未知',
    knownStyles = '已知风格',
    finishResearch = '<<C:1>> 已完成 |c00FF00<<C:2>>|r |c00FF88(<<C:3>>)|r 研究.',
    finishMount = '<<C:1>> 完成了骑术研究',
    finish12 = '12 小时倒计时已结束',
    finish24 = '24 小时倒计时已结束',
    itemsearch = '\n谁有 <<c:2>> 特性的 <<C:1>> ？',
    hideStyles = '隐藏简单风格',
    hideCrownStyles = '隐藏皇冠风格',
    hideKnown = "隐藏已知",
    hideUnknown = "隐藏未知",
    unselectedWayshrine = "|cFF0000选择一种可制造的套装|r",
    unknownWayshrine = "|cFF0000不能传送到未发现的指路祭坛|r", 
    previewType = {"重甲", "中甲", "轻甲 + 长袍", "轻甲 + 衬衫"},
    provisioningWritOffset = 7,
    styleNames = {}, 
    reload = "需要重新载入",
  }

  --Specail Setting
  BB.SetGlobalHook(function() BB.TableCopy(L, CraftStoreFixedAndImprovedLongClassName.Loc) end, "CraftStoreFixedAndImprovedLongClassName", "Quality")

end end

BB.AddonList["CraftStoreFixedAndImproved"] = function()
  if not CraftStoreFixedAndImprovedLongClassName then return false end
  return true 
end

--CrutchAlerts
BB.AddonList["CrutchAlerts"] = function() if not CrutchAlerts then return false end
    local Crutch = CrutchAlerts

    local function GetNoSubtitlesZoneIdsAndNames()
      local ids = {}
      local names = {}
      for zoneId, _ in pairs(Crutch.savedOptions.subtitlesIgnoredZones) do
          table.insert(ids, zoneId)
          table.insert(names, string.format("%s (%d)", GetZoneNameById(zoneId), zoneId))
      end
      return ids, names
    end
    
    --/script d(GetAbilityName())
    --ProminentV2.lua
    local Prominent = {
      [1051] = { --CR
        ["|c08BD1DProminent Alerts|r"] = {"|c08BD1D强烈警告|r", "以下警告具有强烈的视觉和音效提示"},
        ["Alert Direct Current"] = {"震荡光束 警告", "瑞丽昆恩（电）释放可打断的震荡光束时，显示突出警报"},
        ["Alert Glacial Spikes"] = {"冰爆 警告", "加伦韦（冰）释放可打断的冰爆时，显示突出警报"},
        ["Alert Creeper Spawn"] = {"藤蔓生成 警告", "藤蔓生成时，显示突出警报"},
        ["Alert Grievous Retaliation"] = {"队友影子 警告", "当你尝试救一个影子还存在的玩家时，显示突出警报"},
      },
      [1344] = { --DSR
        ["|c08BD1DProminent Alerts|r"] = {"|c08BD1D强烈警告|r", "以下警告具有强烈的视觉和音效提示"},
        ["Alert Cascading Boot"] = {"冰踢 警告", "当监管者使用冰踢攻击（击退）你时，显示突出警报"},
      },
      [975] = { --HoF
        ["|c08BD1DProminent Alerts|r"] = {"|c08BD1D强烈警告|r", "以下警告具有强烈的视觉和音效提示"},
        ["Alert Direct Current"] = {"震荡光束 警告", "当顶级机械体（二王）释放可以打断的震荡光束时，显示突出警告"},
        ["Alert Reclaim the Ruined"] = {"自爆机械 警告", "当重组理事（四王）战斗中生成自爆小怪时，显示突出警告"},
        ["Alert Stomp"] = {"践踏 警告", "当组装大将军（尾王）释放可格挡的践踏时，显示突出警告"},
      },
      [1196] = { --KA
        ["|c08BD1DProminent Alerts|r"] = {"|c08BD1D强烈警告|r", "以下警告具有强烈的视觉和音效提示"},
        ["Alert Hemorrhage Ended (Tank Only)"] = {"血球爆炸后 警告 (仅坦克)", "当你是Tank且二楼血球爆炸后，显示突出警告，提醒你嘲讽血球爆炸产生的巨型史莱姆"},
      },
      [1478] = { --LC
        ["|c08BD1DProminent Alerts|r"] = {"|c08BD1D强烈警告|r", "以下警告具有强烈的视觉和音效提示"},
        ["Alert Darkness Inflicted"] = {"黑暗侵染 警告", "当你叠加3层蠕动黑暗，获得黑暗侵染时，显示突出警告"},
        ["Alert Fate Sealer"] = {"命运封印者 警告", "当你是Tank且神秘破裂碎片（三王）召唤命运封存球体时，显示突出警告"},
      },
      [725] = { --MoL
        ["|c08BD1DProminent Alerts|r"] = {"|c08BD1D强烈警告|r", "以下警告具有强烈的视觉和音效提示"},
        ["Alert Shattering Strike"] = {"碎石闪击打击 警告", "当野蛮人小怪瞄准你释放降低护甲的技能时，显示突出警告"},
        ["Alert Grip of Lorkhaj"] = {"洛克汗之握 警告", "当你被被遗忘的札加萨（一王）诅咒点名时，显示突出警告"},
        ["Alert Threshing Wings"] = {"翻滚之握 警告", "当你需要用格挡避免拉克哈特（尾王）的击退时，显示突出警告"},
        ["Alert Unstable Void"] = {"不稳定虚无 警告", "当你被点名不稳定虚无，需要远离队伍处理时，显示突出警告"},
      },
      [1263] = { --RG
        ["|c08BD1DProminent Alerts|r"] = {"|c08BD1D强烈警告|r", "以下警告具有强烈的视觉和音效提示"},
        ["Alert Savage Blitz"] = {"野蛮冲锋 警告", "当奥西索（一王）冲锋时，显示突出警告"},
      },
      [1427] = { --SE
        ["|c08BD1DProminent Alerts|r"] = {"|c08BD1D强烈警告|r", "以下警告具有强烈的视觉和音效提示"},
        ["Alert Chain Pull"] = {"锁链拉扯 警告", "当大主教亚赛里亚（一王）点名你锁链，需要挣脱时，显示突出警告"},
      },
      [1121] = { --SS
        ["|c08BD1DProminent Alerts|r"] = {"|c08BD1D强烈警告|r", "以下警告具有强烈的视觉和音效提示"},
        ["Alert Shield Charge"] = {"盾牌冲锋 警告", "当小怪瞄准你释放盾牌冲锋时，显示突出警告"},
        ["Alert Sundering Gale"] = {"狂风撕裂 警告", "当尾王传送门中Mini对你释放扇形击退AOE时，显示突出警告"},
      },
      [1082] = { --BRP
        ["|c08BD1DProminent Alerts|r"] = {"|c08BD1D强烈警告|r", "以下警告具有强烈的视觉和音效提示"},
        ["Alert Lava Whip"] = {"熔岩鞭", "当帝国无畏骑士瞄准你释放熔岩鞭时，显示突出警告"},
      },
      [635] = { --DSA
        ["|c08BD1DProminent Alerts|r"] = {"|c08BD1D强烈警告|r", "以下警告具有强烈的视觉和音效提示"},
        ["Alert Heat Wave"] = {"热力波 警告", "当火法师释放热力波时，显示突出警告"},
        ["Alert Winter's Reach"] = {"凛冬之触 警告", "当冰法师释放凛冬之触时，显示突出警告"},
        ["Alert Draining Poison"] = {"汲取资源 警告", "当契约猎手游侠（六层怪）瞄准你释放汲取资源时，显示突出警告。你应该闪避来避免被耗尽资源"},
      },
      [1436] = { --endlessArchive
        ["|c08BD1DProminent Alerts|r"] = {"|c08BD1D强烈警告|r", "以下警告具有强烈的视觉和音效提示"},
        ["Alert Grasp of Lorkhaj"] = {"洛克汗之握 警告", "当你当你被被遗忘的札加萨诅咒点名时，显示突出警告"},
        ["Alert Meteor Call"] = {"召唤流星 警告", "当传奇神秘人召唤流星时，显示突出警告"},
        ["Alert Venomous Arrow (Arc 4+)"] = {"剧毒箭矢 警告 (Arc 4+)", "当在Arc4+以上进度时，弓箭怪物瞄准你释放剧毒箭矢且其身上无高级怯懦时，显示突出警告。该Dot会快照当前的怪物面板，因此在之后给怪物施加Debuff后该Dot依然保持较高伤害。所以最好躲开这个技能"},
      },
      [677] = { --MA
        ["|c08BD1DProminent Alerts|r"] = {"|c08BD1D强烈警告|r", "以下警告具有强烈的视觉和音效提示"},
        ["Alert Poison Arrow Spray"] = {"剧毒箭矢 警告", "当你在树荫拱顶中被毒箭命中需要解毒时，显示突出警报"},
        ["Alert Volatile Poison"] = {"暴烈毒素 警告", "当你在树荫拱顶中踩到蘑菇需要解毒时，显示突出警告"},
        ["Alert Heat Wave"] = {"热力波 警告", "当火法师释放热力波时，显示突出警告"},
        ["Alert Teleport Strike"] = {"传送打击 警告", "当夜刃小怪埋伏你时，显示突出警告"},
        ["Alert Soul Tether"] = {"灵魂束链 警告", "当夜刃小怪释放灵魂束链时，显示突出警告"},
      },
      [1227] = { --VH
        ["|c08BD1DProminent Alerts|r"] = {"|c08BD1D强烈警告|r", "以下警告具有强烈的视觉和音效提示"},
        ["Alert Heat Wave"] = {"热力波 警告", "当火法师释放热力波时，显示突出警告"},
        ["Alert Winter's Reach"] = {"凛冬之触 警告", "当冰法师释放凛冬之触时，显示突出警告"},
      },
    }
    
    --Effects.lua
    local Effect = {
      [1051] = { --Cloudrest
        ["|c08BD1DEffect Timers|r"] = {"|c08BD1D效果计时器|r", "这些都是经过精心设计的计时器，与即将到来的开始/获得施法同时显示，通常用于特定的定时机制，如对自身的debuff"},
        ["Show Hoarfrost Timer"] = {"显示 冰风 计时器", "显示一个\"警告\"计时器，当冰风将要杀死你时（老兵难度中）"},
        ["Show Voltaic Overload Timer"] = {"显示 超载 计时器", "显示一个\"警告\"计时器，当处于超载不应切手时"},
      },
      [1263] = {
        ["|c08BD1DEffect Timers|r"] = {"|c08BD1D效果计时器|r", "这些都是经过精心设计的计时器，与即将到来的开始/获得施法同时显示，通常用于特定的定时机制，如对自身的debuff"},
        ["Show Death Touch Timer"] = {"显示 死亡之触 计时器", "显示一个\"警告\"计时器，当你的巴塞诅咒即将爆炸"},
      },
      [1478] = { --Lucent Citadel
        ["|c08BD1DEffect Timers|r"] = {"|c08BD1D效果计时器|r", "这些都是经过精心设计的计时器，与即将到来的开始/获得施法同时显示，通常用于特定的定时机制，如对自身的debuff"},
        ["Show Fate Sealer Timer"] = {"显示 命运封印者 计时器", "显示一个\"警告\"计时器，当命运封印球体开始攻击"},
        ["Show Arcane Knot Timer"] = {"显示 奥术结 计时器", "显示一个\"警告\"计时器，为当前奥术结的持有时间"},
      },
      [725] = { --Maw of Lorkhaj
        ["|c08BD1DEffect Timers|r"] = {"|c08BD1D效果计时器|r", "这些都是经过精心设计的计时器，与即将到来的开始/获得施法同时显示，通常用于特定的定时机制，如对自身的debuff"},
        ["Show Shattered Timer"] = {"显示 碎石 计时器", "显示一个\"警告\"计时器，当你的护甲被碎石闪击降低"},
      },
    }
    
    local function ReplaceProminent(ID, Old)
      --Replace Effect
      local New = Effect[ID]
      local Start = false
      if New then
        for i = 1, #Old do
          if Start then
            if Old[i].name and New[Old[i].name] then
              Old[i].tooltip = New[Old[i].name][2]
              Old[i].name = New[Old[i].name][1]
            end
          else
            if Old[i].title and New[Old[i].title] then
              Old[i].text = New[Old[i].title][2]
              Old[i].title = New[Old[i].title][1]
              Start = true
            end
          end
        end
      end
      
      --Replace Prominent
      New = Prominent[ID]
      Start = false
      if New then
        for i = 1, #Old do
          if Start then
            if Old[i].name and New[Old[i].name] then
              Old[i].tooltip = New[Old[i].name][2]
              Old[i].name = New[Old[i].name][1]
            end
          else
            if Old[i].title and New[Old[i].title] then
              Old[i].text = New[Old[i].title][2]
              Old[i].title = New[Old[i].title][1]
              Start = true
            end
          end
        end
      end
      
      --Return Results
      return Old
    end
    
    --Settings.lua
    local NewTable = {
        {
          type = "checkbox",
          name = "解锁UI",
          tooltip = "解锁框架的移动功能",
        },
---------------------------------------------------------------------
-- general
        {
            type = "submenu",
            name = "常规设置",
            controls = {
                {
                    type = "checkbox",
                    name = "显示 施法开始警告",
                    tooltip = "在你成为开始施法的目标时显示警报 (ACTION_RESULT_BEGIN)",
                },
                {
                    type = "checkbox",
                    name = "      忽视非怪物来源施法",
                    tooltip = "如果施法不是来自怪物（如玩家来源），则不显示开始时警告",
                },
                {
                    type = "checkbox",
                    name = "显示 施法获得警告",
                    tooltip = "在你从怪物处 \"获得\" 施法时显示警告  (ACTION_RESULT_GAINED 或手动设置的 ACTION_RESULT_GAINED_DURATION)",
                },
                {
                    type = "checkbox",
                    name = "显示 对其他目标的施法警告",
                    tooltip = "当你队伍中的其他人成为特定能力的目标，或者在某些情况下，当敌人对自身施放某种能力时，显示警告。这是一个手动编辑列表，其中列出了足以影响到你的关键能力",
                },
                {
                    type = "checkbox",
                    name = "显示 可伤害计时器",
                    tooltip = "对于某些遭遇战，显示一个计时器，说明何时 BOSS 会变得可伤害、可嘲讽或返回竞技场等",
                },
                {
                    type = "checkbox",
                    name = "显示 奥术师计时器",
                    tooltip = "显示施放奥术师特定引导技能的警告",
                },
            }
        },
-- boss health bar
        {
            type = "submenu",
            name = "垂直 Boss 血条设置",
            controls = {
                {
                    type = "checkbox",
                    name = "显示 BOSS 血条",
                    tooltip = "为基于百分比的机制显示带有标记的垂直 BOSS 血条",
                },
                {
                    type = "slider",
                    name = "尺寸",
                    tooltip = "显示垂直 BOSS 血条的尺寸。注意：某些元素在重新加载前可能无法正确更新尺寸",
                },
                {
                    type = "checkbox",
                    name = "使用 \"向下取整\" 舍入方式",
                    tooltip = "是否使用\"向下取整\"或\"四舍五入\"的方式显示 BOSS 血量 %\n\n开启时，血量相对于机制%更加精确\n\n关闭时，血量将与其他UI的表现一致",
                },
                {
                    type = "submenu",
                    name = "舍入: 为什么?",
                    controls = {
                        {
                            type = "description",
                            text = "基于血量的机制通常会以 50.999% 这样的百分比显示，但默认用户界面和大多数附加组件都使用 \"zo_round\" 对显示的血量百分比进行四舍五入。这是常见的四舍五入方法，例如 50.4 四舍五入为 50，50.5 四舍五入为 51。这就意味着，当我们说一个机制在 50%时发生，它仍然可以在用户界面上显示 51%！为了解决这个问题，\"向下取整\" 会将小数舍入更小的整数。这意味着 50.999 被舍入为 50，这就与触发 BOSS 机制的方式一致了。不过我还是保留了常用的四舍五入方法作为选项，因为有些人可能更希望整个用户界面保持一致，即使只有半个百分点的差别",
                        }
                    },
                },
            }
        },
-- subtitles
        {
            type = "submenu",
            name = "杂项设置",
            controls = {
                {
                    type = "checkbox",
                    name = "在聊天中显示字幕",
                    tooltip = "在聊天中显示 NPC 对话字幕。如果有多行字幕，颜色格式会很奇怪",
                },
                {
                    type = "dropdown",
                    name = "无字幕区域",
                    tooltip = "在这些区域中聊天时不会显示字幕。从下拉菜单中选择一个即可移除",
                    setFunc = function(value)
                        Crutch.savedOptions.subtitlesIgnoredZones[value] = nil
                        CHAT_SYSTEM:AddMessage(string.format("从字幕忽略区移除 %s(%d)", GetZoneNameById(value), value))
                        local ids, names = GetNoSubtitlesZoneIdsAndNames()
                        CrutchAlerts_NoSubtitlesZones:UpdateChoices(names, ids)
                    end,
                },
                {
                    type = "editbox",
                    name = "添加无字幕区域ID",
                    tooltip = "输入区域ID来添加无字幕列表",
                    setFunc = function(value)
                        local zoneId = tonumber(value)
                        local zoneName = GetZoneNameById(zoneId)
                        if (not zoneId or not zoneName or zoneName == "") then
                            CHAT_SYSTEM:AddMessage(value .. " 为非法区域ID！")
                            return
                        end
                        Crutch.savedOptions.subtitlesIgnoredZones[zoneId] = true
                        CHAT_SYSTEM:AddMessage(string.format("为字幕忽略区添加 %s(%d)", zoneName, zoneId))
                    end,
                },
            }
        },
-- debug
        {
            type = "submenu",
            name = "调试设置",
            controls = {
                {
                    type = "checkbox",
                    name = "显示高难队长判断",
                    tooltip = "当发生某些重要事件时，在文本聊天中显示可能的信息。例如，有人在 DSR 中捡到了火穹",
                },
                {
                    type = "checkbox",
                    name = "在警报中显示调试信息",
                    tooltip = "在警报上添加一小行文本，显示 ID 和其他调试信息",
                },
                {
                    type = "checkbox",
                    name = "在聊天框显示调试信息",
                    tooltip = "几乎每次启用战斗事件时都会在聊天框显示信息 -- 非常吵！",
                },
                {
                    type = "checkbox",
                    name = "显示其他调试",
                    tooltip = "显示其他调试信息",
                },
                {
                    type = "checkbox",
                    name = "显示调试UI",
                    tooltip = "显示一个用户界面元素，该元素可能包含有用的调试功能，也可能不包含",
                },
            },
        },
---------------------------------------------------------------------
-- trials
        {
            type = "description",
            title = "试炼",
            text = "以下是特定试炼中特殊机制的设置",
        },
        {
            type = "submenu",
            name = "庇护圣所(AS)",
            controls = {
                {
                    type = "checkbox",
                    name = "当亵渎爆破（扇形AOE）点名你时 播放音效",
                    tooltip = "当洛希斯（一王）点名你释放亵渎爆破（扇形AOE）时，播放音效",
                },
                {
                    type = "checkbox",
                    name = "当亵渎爆破（扇形AOE）点名其他人时 播放音效",
                    tooltip = "当洛希斯（一王）点名其他人释放亵渎爆破（扇形AOE）时，播放音效",
                },
            }
        },
        {
            type = "submenu",
            name = "云息城(CR)",
            controls = ReplaceProminent(1051, Crutch.GetProminentSettings(1051, Crutch.GetEffectSettings(1051, {
                {
                    type = "checkbox",
                    name = "显示 矛机制 指示器",
                    tooltip = "显示有多少矛上楼、下楼和球被消除",
                },
                {
                    type = "checkbox",
                    name = "播放 矛机制 音效",
                    tooltip = "当矛在楼上生成时，播放CP技能提交音效",
                },
                {
                    type = "checkbox",
                    name = "显示 叠火 分组",
                    tooltip = "当进入泽玛亚斩杀阶段且加火时，显示被点叠火的2人应该去哪侧(这与RaidNotifier插件的提示相同)",
                },
                {
                    type = "checkbox",
                    name = "染色Ody死亡图标",
                    tooltip = "需要OdySupportIcons插件。如果死亡队友的影子依然存在，将其Ody死亡图标染为紫色",
                },
            }))),
        },
        {
            type = "submenu",
            name = "恐帆礁石(DSR)",
            controls = ReplaceProminent(1344, Crutch.GetProminentSettings(1344, {
                {
                    type = "checkbox",
                    name = "警告 电Debuff 层数",
                    tooltip = "当你身上电Debuff层数过高时，显示突出警告并发生Ding的音效",
                },
                {
                    type = "slider",
                    name = "电Debuff层数阈值",
                    tooltip = "发出警告的最低层数",
                },
                {
                    type = "checkbox",
                    name = "警告 毒Debuff 层数",
                    tooltip = "当你身上毒Debuff层数过高时，显示突出警告并发生Ding的音效",
                },
                {
                    type = "slider",
                    name = "毒Debuff层数阈值",
                    tooltip = "发出警告的最低层数",
                },
            })),
        },
        {
            type = "submenu",
            name = "制造大厅(HoF)",
            controls = ReplaceProminent(975, Crutch.GetProminentSettings(975, {
                {
                    type = "checkbox",
                    name = "显示重组理事（四王）的安全点",
                    tooltip = "在重组理事（四王）战斗中，在秒杀护盾外的地方显示图标。需要OdySupportIcons插件",
                },
                {
                    type = "slider",
                    name = "重组理事安全点图标尺寸",
                },
                {
                    type = "checkbox",
                    name = "显示组装大将军（尾王）斩杀点位图标",
                    tooltip = "在地图上显示组装大将军（尾王）斩杀站位图标。需要OdySupportIcons插件",
                },
                {
                    type = "slider",
                    name = "组装大将军斩杀站位图标尺寸",
                },
            })),
        },
        {
            type = "submenu",
            name = "凯恩之盾(KA)",
            controls = ReplaceProminent(1196, Crutch.GetProminentSettings(1196, {
                {
                    type = "checkbox",
                    name = "显示 爆炸矛落点",
                    tooltip = "在存在长枪小怪的战斗中，显示爆炸矛AOE大致的落点。需要OdySupportIcons插件。",
                },
                {
                    type = "checkbox",
                    name = "显示 血牢图标",
                    tooltip = "在被点名血牢的玩家头上显示图标，该提示可早于特效。需要OdySupportIcons插件。",
                },
                {
                    type = "checkbox",
                    name = "显示 法格拉文领主（尾王） 2楼DD站位图标",
                    tooltip = "在法格拉文领主（尾王）战斗中，显示DD重叠站位的图标。需要OdySupportIcons插件。",
                },
                {
                    type = "slider",
                    name = "法格拉文领主 DD重叠站位图标尺寸",
                },
            })),
        },
        {
            type = "submenu",
            name = "卢晶堡垒(LC)",
            controls = ReplaceProminent(1478, Crutch.GetProminentSettings(1478,  Crutch.GetEffectSettings(1478, {
                {
                    type = "checkbox",
                    name = "显示 卡沃特·阿格南 出生点",
                    tooltip = "为卡沃特·阿格南 出生点显示图标，需要OdySupportIcons插件",
                },
                {
                    type = "slider",
                    name = "卡沃特·阿格南 图标尺寸",
                    tooltip = "卡沃特·阿格南 出生点图标尺寸",
                },
                {
                    type = "checkbox",
                    name = "显示 神秘破裂碎片（三王）镜子图标",
                    tooltip = "在神秘破裂碎片（三王）战斗中，为每面镜子显示图标",
                },
                {
                    type = "checkbox",
                    name = "    数字图标",
                    tooltip = "为镜子使用1~8进行标记显示，而不是方位",
                },
                {
                    type = "slider",
                    name = "镜子图标尺寸",
                    tooltip = "镜子图标尺寸",
                },
                {
                    type = "checkbox",
                    name = "显示 奥术传送 图标",
                    tooltip = "在将要或已经被点名奥术传送（奥术结阶段，达利厄尔·莱蒙斯连线点名）的队员头上显示图标。需要 OdySupportIcons 插件",
                },
                {
                    type = "checkbox",
                    name = "显示 奥术传送连线",
                    tooltip = "在将要或已经被点名奥术传送（奥术结阶段，达利厄尔·莱蒙斯连线点名）的队员头顶显示连线的图标",
                },
                {
                    type = "dropdown",
                    name = "显示 冲锋易伤（换T） 计时器",
                    tooltip = "在佐林（尾王）战斗中，为附带易伤的冲锋重击显示警告计时器。如果设置为'仅坦克'，只有在你职能是坦克时才显示。",
                    choices = {"从不", "仅坦克", "总是"},
                },
                {
                    type = "checkbox",
                    name = "显示 佐林（尾王）线条AOE 站位图标",
                    tooltip = "在佐林（尾王）战斗中，为小队成员站位显示图标（也会在试炼开始时显示，以用于练习）。需要OdySupportIcons插件。",
                },
                {
                    type = "slider",
                    name = "佐林线条AOE图标尺寸",
                    tooltip = "佐林线条AOE图标尺寸",
                },
            }))),
        },
        {
            type = "submenu",
            name = "洛克汗的巨口(MoL)",
            controls = ReplaceProminent(725, Crutch.GetProminentSettings(725, Crutch.GetEffectSettings(725, {
                {
                    type = "checkbox",
                    name = "显示 净化地板 冷却",
                    tooltip = "在被遗忘的札加萨（一王）老兵难度战斗中，显示净化地板的冷却情况（25秒）",
                },
                {
                    type = "checkbox",
                    name = "显示 双子变色机制",
                    tooltip = "在瓦沙艾和斯金莱（二王）战斗中，如果你被点名变色则显示突出警告",
                },
            }))),
        },
        {
            type = "submenu",
            name = "石林(RG)",
            controls = ReplaceProminent(1263, Crutch.GetProminentSettings(1263, Crutch.GetEffectSettings(1263, {
                {
                    type = "checkbox",
                    name = "显示 毒点名玩家 处理方位",
                    tooltip = "在奥西索（一王）战斗中，显示毒点名的玩家应该去哪侧解毒。该提示与Qcell's Rockgrove Helper插件的结果相同。",
                },
            }))),
        },
        {
            type = "submenu",
            name = "理智边缘(SE)",
            controls = ReplaceProminent(1427, Crutch.GetProminentSettings(1427, {
                {
                    type = "checkbox",
                    name = "标记安苏尔（尾王）场地的中央",
                    tooltip = "在折磨者安苏尔（尾王）战斗中，在场地中央显示图表。需要OdySupportIcons插件",
                },
                {
                    type = "slider",
                    name = "安苏尔场地图标尺寸",
                },
            })),
        },
        {
            type = "submenu",
            name = "太阳尖顶(SS)",
            controls = ReplaceProminent(1121, Crutch.GetProminentSettings(1121, {
                {
                    type = "checkbox",
                    name = "显示 洛克斯提兹（一王）HM模式光束AOE 站位图标",
                    tooltip = "在洛克斯提兹（一王）HM模式战斗中，显示8个DD和2个H的防重叠站位图标。需要OdySupportIcons插件。",
                },
                {
                    type = "checkbox",
                    name = "    洛克斯提兹（一王）单奶图标",
                    tooltip = "在洛克斯提兹（一王）HM模式战斗中使用单奶站位图标，显示9个DD和1个H的站位图标。如果在与洛克斯提兹战斗中修改该选项，将在下次图标显示时，才会更新图标。",
                },
                {
                    type = "slider",
                    name = "洛克斯提兹HM图标尺寸",
                    tooltip = "在图标隐藏后再次显示时，才会更新图标尺寸",
                },
                {
                    type = "checkbox",
                    name = "显示 尤尔纳克林（二王）站位图标",
                    tooltip = "在尤尔纳克林（二王）战斗中，显示尤尔纳克林降落时头部和右翅膀位置图标。需要OdySupportIcons插件。",
                },
                {
                    type = "checkbox",
                    name = "    尤尔纳克林（二王）左侧站位图标",
                    tooltip = "在尤尔纳克林（二王）战斗中，使用左侧图标代替右侧图标。",
                },
                {
                    type = "slider",
                    name = "尤尔纳克林图标尺寸",
                },
            })),
        },
        {
            type = "description",
            title = "竞技场",
            text = "以下是特定竞技场中特殊机制的设置",
        },
        {
            type = "submenu",
            name = "黑玫瑰监狱(BRP)",
            controls = ReplaceProminent(1082, Crutch.GetProminentSettings(1082, {})),
        },
        {
            type = "submenu",
            name = "龙星竞技场(DSA)",
            controls = ReplaceProminent(635, Crutch.GetProminentSettings(635, {
                {
                    type = "checkbox",
                    name = "普通难度下受伤警告",
                    tooltip = "如果在普通难度龙星竞技场中受到某些技能伤害，则会显示恼人的文字并敲响警钟。这样做是为了方便进行afk伐木，在需要手动干预时通知您。",
                },
            })),
        },
        {
            type = "submenu",
            name = "无尽档案塔",
            controls = ReplaceProminent(1436, Crutch.GetProminentSettings(1436, {
                {
                    type = "checkbox",
                    name = "自动标记 传奇者",
                    tooltip = "当你准星扫过传奇者小怪时，自动使用游戏基础图标标记他们。在你移动过快，或有NPC和队友从你面前走过时，有小概率发生标记错误。",
                },
                {
                    type = "checkbox",
                    name = "自动标记 沉默 施法者",
                    tooltip = "和上者类似，不过标记可以释放沉默的小怪。它们会在你距离足够近的时候，释放沉默（术士终极技能同款）",
                },
                {
                    type = "checkbox",
                    name = "显示 酿酒师药剂点",
                    tooltip = "在酿酒师可能投掷了缩小药剂的地方显示图标。注意这对扔向队友召唤物的药剂无效。需要OdySupportIcons插件",
                },
                {
                    type = "checkbox",
                    name = "音效提示 升天击 / 威力猛击",
                    tooltip = "当你被双手或持盾敌人，选为升天击或威力猛击的目标时，播放音效提示",
                },
                {
                    type = "checkbox",
                    name = "音效提示 危险技能",
                    tooltip = "为特定的高危技能，播放音效提示",
                },
            })),
        },
        {
            type = "submenu",
            name = "漩涡竞技场(MA)",
            controls = ReplaceProminent(677, Crutch.GetProminentSettings(677, {
                {
                    type = "checkbox",
                    name = "显示当前轮数",
                    tooltip = "在每轮开始时在聊天栏显示信息。同样也在倒数第二轮开始15秒后，提醒马上到最后一轮",
                },
                {
                    type = "editbox",
                    name = "阶段 1 额外文本",
                    tooltip = "第 1 阶段 最后一轮提醒时的附加文本",
                },
                {
                    type = "editbox",
                    name = "阶段 2 额外文本",
                    tooltip = "第 2 阶段 最后一轮提醒时的附加文本",
                },
                {
                    type = "editbox",
                    name = "阶段 3 额外文本",
                    tooltip = "第 3 阶段 最后一轮提醒时的附加文本",
                },
                {
                    type = "editbox",
                    name = "阶段 4 额外文本",
                    tooltip = "第 4 阶段 最后一轮提醒时的附加文本",
                },
                {
                    type = "editbox",
                    name = "阶段 5 额外文本",
                    tooltip = "第 5 阶段 最后一轮提醒时的附加文本",
                },
                {
                    type = "editbox",
                    name = "阶段 6 额外文本",
                    tooltip = "第 6 阶段 最后一轮提醒时的附加文本",
                },
                {
                    type = "editbox",
                    name = "阶段 7 额外文本",
                    tooltip = "第 7 阶段 最后一轮提醒时的附加文本",
                },
                {
                    type = "editbox",
                    name = "阶段 8 额外文本",
                    tooltip = "第 8 阶段 最后一轮提醒时的附加文本",
                },
                {
                    type = "editbox",
                    name = "阶段 9 额外文本",
                    tooltip = "第 9 阶段 最后一轮提醒时的附加文本",
                },
                {
                    type = "checkbox",
                    name = "普通难度下受伤警告",
                    tooltip = "如果在普通难度旋涡竞技场中受到某些技能伤害，则会显示恼人的文字并敲响警钟。这样做是为了方便进行afk伐木，在需要手动干预时通知您。",
                },
            })),
        },
        {
            type = "submenu",
            name = "瓦特什兰洞穴(VH)",
            controls = ReplaceProminent(1227, Crutch.GetProminentSettings(1227, {
                {
                    type = "checkbox",
                    name = "显示丢失的附加分数",
                    tooltip = "仅在老兵难度中起效，且只推荐用于刷分。如果你跳过整组战斗，跳过的追加怪将不准确。",
                },
            })),
        },
        {
            type = "description",
            title = "地下城",
            text = "以下是特定地下城中特殊机制的设置",
        },
        {
            type = "submenu",
            name = "船工之憾地牢",
            controls = {
                {
                    type = "checkbox",
                    name = "灵魂炸弹分摊提示",
                    tooltip = "在工头布拉迪干（一王）HM模式战斗中，当出现2个灵魂炸弹（分摊）点名时，显示推荐的分摊队友。如果有OdySupportIcons插件，则会在对应玩家头上显示标记。该提示按用户名进行分摊选择。",
                },
            }
        },
    }
    
    --Specail Setting
    BB.SetMenuPatch("CrutchAlertsOptions", NewTable)

return true end

--Descendants Support Set Tracker
BB.AddonList["DescendantsSupportSetTracker"] = function() if not DSST then return false end
  local NewOption = {
		{
      type = "button",
      name = "显示 / 隐藏",
      tooltip = "显示/隐藏 窗口",
    },
		{
			type = "dropdown",
			name = "套装列表",
			tooltip = "选择显示的套装列表",
		},
		{
			type = "dropdown",
			name = "语言",
			tooltip = "选择插件要显示的语言",
		},
		{
      type = "button",
      name = "重置位置",
      tooltip = "将位置重置到屏幕中央",
    },
		{
			type = "divider",
		},
    {
      type = "checkbox",
      name = "在物品栏中标记物品",
      tooltip = "在物品栏中标记属于追踪的套装列表的物品（按角色设置）",
    },
		{
      type = "checkbox",
      name = "显示双手武器",
      tooltip = "在套装列表中显示双手武器",
    },
		{
      type = "checkbox",
      name = "显示重构标记",
      tooltip = "在套装列表中显示蜕变石标记",
    },
    {
      type = "header",
      name = "自定义套装（Custom）列表",
    },
		{
			type = "dropdown",
			name = "套装名",
			tooltip = "用于在自定义列表中添加/移除套装",
		},
		{
      type = "editbox",
      name = "套装名",
      tooltip = "写入套装中文全称，套装之间以 ！英文逗号！ 分隔",
    },
		{
      type = "button",
      name = "添加套装",
      tooltip = "为自定义列表添加套装",
    },
		{
      type = "button",
      name = "移除套装",
      tooltip = "从自定义列表移除套装",
    },
		{
			type = "divider",
		},
		{
      type = "description",
      text = "通过在聊天栏输入 |caeba00/dsst|r 打开插件UI",
		},
	}

  --Special Setting
  BB.SetMenuPatch("Descendants Support Set Tracker", NewOption)
  
  BB.TableCopy({
    {name="头部"},
    {name="肩部"},
    {name="胸甲"},
    {name="手部"},
    {name="腰部"},
    {name="腿部"},
    {name="足部"},
    {name="颈部"},
    {name="戒指"},
    {name="匕首"},
    {name="斧头"},
    {name="钉锤"},
    {name="剑"},
    {name="盾牌"},
    {name="炼狱法杖"},
    {name="闪电法杖"},
    {name="寒冰法杖"},
    {name="治疗法杖"},
    {name="剑（双手）"},
    {name="斧头（双手）"},
    {name="钉锤（双手）", link="esoui/art/tradinghouse/tradinghouse_weapons_2h_mace_down.dds"},
    {name="弓"},
    }, DSST.icons
  )
  
  BB.TableCopy({
    [BAG_BACKPACK] = {name = "背包"},
    [BAG_WORN] = {name="装备中"},
    [BAG_BANK] = {name="银行"},
    [BAG_SUBSCRIBER_BANK] = {name="银行"}
    }, DSST.Storages
  )
  
return true end

--Display Leads
BB.AddonList["displayleads"] = function() if not RDL then return false end
--UI
  RDL.ZONENAME_ALLZONES = "所有区域"
  RDL.ZONENAME_BGS = "战场"

  RDL.KEYBINDINGTEXT = "切出线索查询窗口"

  -- UI Filter Elements (Dropdowns) 	

  BB.TableCopy({
    major = "复杂筛选条件",
    zone = "按区域筛选",
    settype = "按套装或古物类型筛选",
  }, RDL.DropdownTooltips)

  BB.TableCopy({
    ChoicesMajor  = { "可发现", "可占卜", "缺失宝典条目", "从未挖掘过", "可执行线索", "所有线索", "组队地牢", "最新DLC",},
    
    TooltipsMajor  = {
      "排除已发现但未占卜的线索，以及已发现的不可重复获得的线索",
      "只显示已发现但还未占卜的线索",
      "只显示考古宝典条目存在缺失的条目",
      "只显示从还未挖掘过的古物",
      "显示除已完成的不可重复获得的线索之外的其他所有线索",
      "显示包括已完成的不可重复获得的线索的所有线索",
      "只显示从4人地牢中获得的线索",
      "只显示最新DLC的新线索",
    },
    
    ChoicesZone = {RDL.ZONENAME_ALLZONES, "当前区域", "最新DLC", "排除次要DLC", },
    TooltipsZone = { 
      "显示所有区域的线索",
      "只显示与当前区域有关的线索",
      "只显示最新DLC的新线索",
      "只显示与基础区域或章节区域有关的线索",
    },
    TooltipsZoneGenerated = "只显示与 %s 有关的线索",
    ChoicesSetType  = { "所有", "隐藏简单类", "组合古物",},
    TooltipsSetType   = {
      "显示所有类型和套装的线索",
      "隐藏古地图、免费宝物线索及样式页\n但如果在'可占卜'主模式下，则仅隐藏普通绿色宝物",
      "仅显示组合古物的线索",
    },
    TooltipsSetTypeGenerated = "仅显示 %s 类型/套装的线索",
  }, RDL.DropdownData)

  -- Alerts Label

  RDL.LABEL_ALERTS_UD_MISSING = "|c%s警告 : %d 7天; %d 1天; %d 1小时; ?? 闯世者日常|r"

  RDL.LABEL_ALERTS = "|c%s警告 : %d 7天; %d 1天; %d 1小时; %d 闯世者日常|r"

  -- LOOP
  BB.TableCopy({
    "UndauntedDaily插件缺失！无法",
    "计算日常任务是否有线索给你",
  }, RDL.TOOLTIP_ALERTS_UD_MISSING)

  RDL.TOOLTIP_ALERTS_1HOUR = "线索过期<1小时: %d"
  RDL.TOOLTIP_ALERTS_1DAY = "线索过期<1天: %d"
  RDL.TOOLTIP_ALERTS_7DAYS = "线索过期<7天: %d"
  RDL.TOOLTIP_ALERTS_UD_NONEFOUND = "闯世者日常无线索给你"
  RDL.TOOLTIP_ALERTS_UD_SCRYFIRST = " (您已拥有此线索，请先占卜/挖掘)"

  RDL.LABEL_URL_INITIAL = "目前为止没有发现线索"
  RDL.LABEL_URL_LEADFOUND = "|c3A92FF报告最新的线索，使用ID %d|r"

  -- LOOP
  BB.TableCopy({
    "为了顺畅地报告新地点: ",
    "如您找到一个线索，本插件将:",
    " - 将线索ID信息贴出到此框内",
    " - 将当前地点贴出到右边的栏中",
    "   (如果我认为位置信息是完整的，它将发布一个请求",
    "    以确认你的信息确实是最新的)",
    " - 如果你是在别处发现此线索的，请您:",
    "   - 删除编辑框中的内容",
    "   - 描述你的位置",
    "   - 点击这里的栏",
    "插件将:",
    " - 将信息转化为URL",
    " - 同意ZOS的弹出框后用浏览器打开URL",
  }, RDL.TOOLTIP_URL)

  RDL.EDITBOX_INITIAL = "如果你找到新位置: 替换将出现在这里的内容; 单击左侧的标签发送到浏览器"
  RDL.EDITBOX_LOCATION_DATA_COMPLETE = "位置信息被认为是完整的。请仅在确认您的发现未被现有描述涵盖后提交"
  RDL.EDITBOX_NO_LEAD_FOUND_OR_SELECTED = "首先找到一个线索，或单击要报告的线索行"
  RDL.EDITBOX_NOT_EDITED = "提交新发现: 首先用新位置替换此编辑框中的内容。然后单击左侧的标签。"
  RDL.EDITBOX_LOCDATA_EMPTY = "您需要在此编辑框中输入您的新位置。然后单击左侧的标签。"
  RDL.EDITBOX_THANKS = "感谢您提交新的位置数据"

  BB.TableCopy({
      "线索", 
      "区域", 
      "地点", 
      "难度", 
      "知识", 
      "挖掘", 
      "套装", 
      "过期", 
  }, RDL.SORTHEADER_NAMES)

  BB.TableCopy({
    "古物的名称",
    "可找到/占卜线索的区域",
    "简短的位置描述\n(D) = 洞穴\n(PD) = 公共地牢\n(GD) = 组队地牢\n(WB) = 世界Boss",
    "线索稀有程度。除非难度为5。",
    "还有多少知识/宝典条目缺失",
    "该古物已被挖出多少次",
    "组合古物组装完成后的物品名。\n或单线索古物的类型",
    "线索过期剩余时间。\n某些线索在获得后的前几天过期时间不会减少。",
  }, RDL.SORTHEADER_TOOLTIP)

  -- LOOP
  BB.TableCopy({
    "如果你知道其他的获取位置:",
    "单击行以激活该线索的位置数据更新。",
    "将编辑框内容替换为您的位置，然后单击左侧的标签"
  }, RDL.TOOLTIP_LEAD_HOWUPDATE)

  -- LOOP
  BB.TableCopy({
    "原始位置数据由@inklings提供 (Discord, Twitch)",
    "非常感谢你让我使用这些数据",
  }, RDL.TOOLTIP_INKLING)

  RDL.TOOLTIP_MAPPINS = "已包含在Hoft的MapPins插件中"

--Location
  RDL.LOCDATA_TYPE_ALLLOOTTABLES = "所有拾取列表"
  RDL.LOCDATA_SHORT_ALLLOOTTABLES = "所有拾取列表"
  RDL.LOCDATA_LONG_ALLLOOTTABLES = "任何和所有来源。甚至包括试炼"

  RDL.LOCDATA_TYPE_EXCAVATIONREWARD = "挖掘奖励"
  RDL.LOCDATA_SHORT_EXCAVATIONREWARD = "挖掘奖励"
  RDL.LOCDATA_LONG_EXCAVATIONREWARD = "挖掘前一级宝物线索的奖励"

  RDL.LOCDATA_TYPE_EXCAVATIONREWARD2 = "藏宝图"
  RDL.LOCDATA_SHORT_EXCAVATIONREWARD2 = "藏宝图"
  RDL.LOCDATA_LONG_EXCAVATIONREWARD2 = "瑞驰和西天际的藏宝图"

  RDL.LOCDATA_TYPE_COFFER = "奖励箱"
  RDL.LOCDATA_SHORT_COFFER = "西罗帝尔角斗士奖励箱"
  RDL.LOCDATA_LONG_COFFER = "角斗士奖励箱西罗帝尔"

  RDL.LOCDATA_TYPE_DAILY = "日常"
  RDL.LOCDATA_SHORT_DAILY = "日常奖励箱"
  RDL.LOCDATA_LONG_DAILY = "日常奖励箱"

  RDL.LOCDATA_TYPE_DELVE = "洞穴"

  RDL.LOCDATA_TYPE_FISHING = "钓鱼"

  RDL.LOCDATA_TYPE_FIXLOCATION = "修改位置"

  RDL.LOCDATA_TYPE_GROUPDUNGEON = "组队地牢"

  RDL.LOCDATA_TYPE_MOB = "怪物"

  RDL.LOCDATA_TYPE_NODE = "采集点"

  RDL.LOCDATA_TYPE_PUBLICDUNGEON = "公共地牢"

  RDL.LOCDATA_TYPE_SAFEBOX = "保险箱"
  RDL.LOCDATA_SHORT_SAFEBOX = "保险箱"

  RDL.LOCDATA_TYPE_STARTER = "起始"
  RDL.LOCDATA_SHORT_STARTER = "基本"
  RDL.LOCDATA_LONG_STARTER = "区域起始线索"

  RDL.LOCDATA_TYPE_TREASURECHEST = "宝箱"
  RDL.LOCDATA_SHORT_TREASURECHEST = "宝箱"
  RDL.LOCDATA_LONG_TREASURECHEST = "宝箱"

  RDL.LOCDATA_TYPE_TREASUREMAP = "藏宝图"
  RDL.LOCDATA_SHORT_TREASUREMAP = "藏宝图"
  RDL.LOCDATA_LONG_TREASUREMAP = "藏宝图宝箱"

  RDL.LOCDATA_TYPE_ANTIQUEMAP = "商人"
  RDL.LOCDATA_SHORT_ANTIQUEMAP = "旅店老板，普通商人"
  RDL.LOCDATA_LONG_ANTIQUEMAP = "旅店老板，普通商人。需要探路者成就"

  RDL.LOCDATA_TYPE_WORLDBOSS = "世界boss"
  RDL.LOCDATA_SHORT_WORLDBOSSALL = "(WB) 全部"
  RDL.LOCDATA_LONG_WORLDBOSSALL = "全部世界boss"
  RDL.LOCDATA_SHORT_WORLDBOSSDRAGON = "(WB) 龙"
  RDL.LOCDATA_LONG_WORLDBOSSDRAGON = "从龙身上掉落"
  RDL.LOCDATA_SHORT_HARROWSTORMS = "(WB) 血疫风暴"
  RDL.LOCDATA_LONG_HARROWSTORMS = "从血疫风暴掉落"

  RDL.LOCDATA_TYPE_FIX = "修改位置"
  RDL.LOCDATA_SHORT_FIX = "MapPins插件"
  RDL.LOCDATA_LONG_FIX = "使用Hoft的Map Pins插件。开启古物筛选器。"

  RDL.UNKNOWN = "未知"

  RDL.ENDLESSARCHIVE = "无尽的档案"

  BB.TableCopy({
    [18] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [19] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [20] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [21] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [22] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [23] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [24] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [25] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [26] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [27] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [28] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [29] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [30] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [31] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [32] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [33] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [34] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [35] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [36] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [37] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [38] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [39] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [40] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [41] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [42] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [43] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [44] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [45] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [46] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [47] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [48] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [49] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [50] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [51] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [52] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [53] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [54] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [55] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [56] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [57] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [58] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [59] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [60] = {"在厄卡奥泽欧制造区角落中的'神奇锻莫碎石'",RDL.LOCDATA_TYPE_FIXLOCATION,"碎石","TRUE",},
    [61] = {"坐骑碎片 - 内海机枢洞穴boss",RDL.LOCDATA_TYPE_DELVE,"(D) 内海机枢","TRUE",},
    [62] = {"克拉兹加尔洞穴中的克拉兹加尔百夫长",RDL.LOCDATA_TYPE_DELVE,"(D) 克拉兹加尔","TRUE",},
    [63] = {"祖伏特内的锻莫蜘蛛, 锻莫机械球, 百夫长, 蒸汽管道",RDL.LOCDATA_TYPE_MOB,"祖伏特怪物","TRUE",},
    [64] = {"阿尔登兹洞穴boss",RDL.LOCDATA_TYPE_DELVE,"(D) 阿尔登兹","TRUE",},
    [65] = {"外面的狼群, 布扎克内的锻莫蜘蛛, 圣徒港德蕾克哨兵/德蕾克割喉者, 哥布林矿洞",RDL.LOCDATA_TYPE_ALLLOOTTABLES,"大多数怪物","TRUE",},
    [66] = {"阿旺晨泽尔洞穴boss",RDL.LOCDATA_TYPE_DELVE,"(D) 阿旺晨泽尔","TRUE",},
    [67] = {"穆萨纳兹boss, 巧手的裁缝师, 黄铜蜘蛛幼仔",RDL.LOCDATA_TYPE_DELVE,"(D) 穆萨纳兹","TRUE",},
    [68] = {"沃伦费尔最终boss",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 沃伦费尔","TRUE",},
    [69] = {"暗影洞穴2(引擎守护者boss) ",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 暗影洞穴2","TRUE",},
    [70] = {"拉扎克之轮的所有boss",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 拉扎克之轮","TRUE",},
    [71] = {"查森卡斯特的非组队boss",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 查森卡斯特","TRUE",},
    [72] = {"大地熔炉压力间 III，奥格努姆之鳞制衣台附近的“神奇锻莫碎石”",RDL.LOCDATA_TYPE_FIXLOCATION,"碎石","TRUE",},
    [73] = {"(WB) 泽玛雷克萨尔",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 泽玛雷克萨尔","TRUE",},
    [74] = {"暗影洞穴1(库加姆的哨兵) ",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 暗影洞穴1","TRUE",},
    [75] = {"卡尔达克洞穴中最后的哨兵boss",RDL.LOCDATA_TYPE_DELVE,"(D) 卡尔达克","TRUE",},
    [76] = {"昆德泽夫特组队洞穴，马兹克洛克boss",RDL.LOCDATA_TYPE_DELVE,"(D) 昆德泽夫特","TRUE",},
    [77] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [78] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [79] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [80] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [81] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [82] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [83] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [84] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [85] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [86] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [87] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [88] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [89] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [90] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [91] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [93] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [94] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [95] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [96] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [97] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [98] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [99] = {"所有地区的珠宝盒容器","容器","珠宝盒","TRUE",},
    [100] = {"多数/全部地区中的盗贼宝库","盗贼宝库","盗贼宝库","TRUE",},
    [101] = {"所有区域的保险箱，宝箱",RDL.LOCDATA_TYPE_SAFEBOX,RDL.LOCDATA_SHORT_SAFEBOX,"TRUE",},
    [102] = {"雷伦希尔场景NPC。观看幽灵跳舞，然后线索将出现在你的收藏品中。",RDL.LOCDATA_TYPE_FIXLOCATION,"雷伦希尔幽灵之舞","TRUE",},
    [103] = {"","其他","","TRUE",},
    [104] = {"至高王的房间，蓝色宫殿；独孤城外帝都行商帐篷珠宝盒",RDL.LOCDATA_TYPE_FIXLOCATION,"至高王的房间","TRUE",},
    [105] = {"“要塞的危机”主线任务中莫萨尔城古墓的终点",RDL.LOCDATA_TYPE_FIXLOCATION,"莫萨尔城古墓","TRUE",},
    [106] = {"在龙桥下方",RDL.LOCDATA_TYPE_FIXLOCATION,"龙桥下方","TRUE",},
    [107] = {"查森卡斯特公共地牢内的“机械准则”",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 查森卡斯特","TRUE",},
    [108] = {"废料洞穴的锻莫蜘蛛boss。",RDL.LOCDATA_TYPE_DELVE,"(D) 废料洞穴","TRUE",},
    [109] = {"黑降的巨像充能站世界boss",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 巨像","TRUE",},
    [111] = {"卡斯威斯腾公共地牢内的所有boss",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 卡斯威斯腾","TRUE",},
    [112] = {RDL.LOCDATA_LONG_WORLDBOSSALL,RDL.LOCDATA_TYPE_WORLDBOSS,RDL.LOCDATA_SHORT_WORLDBOSSALL,"TRUE",},
    [113] = {"咸水钓鱼",RDL.LOCDATA_TYPE_FISHING,"咸水钓鱼","TRUE",},
    [114] = {"阿蒂姆或夏暮岛的塞伊克传送门",RDL.LOCDATA_TYPE_NODE,"塞伊克传送门","TRUE",},
    [115] = {"咸水钓鱼",RDL.LOCDATA_TYPE_FISHING,"咸水钓鱼","TRUE",},
    [116] = {"恐霜要塞中的冰境的德萝达",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 恐霜要塞","TRUE",},
    [117] = {RDL.LOCDATA_LONG_WORLDBOSSALL,RDL.LOCDATA_TYPE_WORLDBOSS,RDL.LOCDATA_SHORT_WORLDBOSSALL,"TRUE",},
    [118] = {"匕落同盟NPC、霜之边缘哨兵、冰啮蜘蛛、泥蟹、亡灵",RDL.LOCDATA_TYPE_MOB,"怪物","TRUE",},
    [119] = {"西罗帝尔, 棺盖洞穴, 毒菌洞穴, 顶石洞穴, 红宝石洞穴等四个洞穴",RDL.LOCDATA_TYPE_DELVE,"(D) 西罗帝尔4个洞穴","FALSE",},
    [120] = {"迷宫遗迹公共地牢内的所有boss",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 迷宫遗迹","TRUE",},
    [121] = {RDL.LOCDATA_LONG_WORLDBOSSALL,RDL.LOCDATA_TYPE_WORLDBOSS,RDL.LOCDATA_SHORT_WORLDBOSSALL,"TRUE",},
    [122] = {"艾尔登洞穴1的奥兰内斯族长",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 艾尔登洞穴1","TRUE",},
    [123] = {"恶人幽谷公共地牢内的所有boss",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 恶人幽谷","TRUE",},
    [124] = {RDL.LOCDATA_LONG_WORLDBOSSALL,RDL.LOCDATA_TYPE_WORLDBOSS,RDL.LOCDATA_SHORT_WORLDBOSSALL,"TRUE",},
    [125] = {"波克-许尔，回声幽谷世界boss，西帝斯之牙+特索费尔洞穴内的boss",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) (D) 全部","TRUE",},
    [126] = {RDL.LOCDATA_LONG_WORLDBOSSALL,RDL.LOCDATA_TYPE_WORLDBOSS,RDL.LOCDATA_SHORT_WORLDBOSSALL,"TRUE",},
    [127] = {"黑心港口地牢的黑心船长",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 黑心港口","TRUE",},
    [128] = {RDL.LOCDATA_LONG_WORLDBOSSALL,RDL.LOCDATA_TYPE_WORLDBOSS,RDL.LOCDATA_SHORT_WORLDBOSSALL,"TRUE",},
    [129] = {RDL.LOCDATA_LONG_WORLDBOSSALL,RDL.LOCDATA_TYPE_WORLDBOSS,RDL.LOCDATA_SHORT_WORLDBOSSALL,"TRUE",},
    [130] = {"乌鸦之森公共地牢内的所有boss",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 乌鸦之森","TRUE",},
    [131] = {"贝庭克的随机怪物",RDL.LOCDATA_TYPE_MOB,"随机怪物","TRUE",},
    [132] = {"老奥辛纽姆公共地牢内的所有boss",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 老奥辛纽姆","TRUE",},
    [133] = {"碎骨废墟公共地牢内的所有boss",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 碎骨废墟","TRUE",},
    [134] = {"帝都上层Boss",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 帝都上层","TRUE",},
    [135] = {RDL.LOCDATA_LONG_WORLDBOSSALL,RDL.LOCDATA_TYPE_WORLDBOSS,RDL.LOCDATA_SHORT_WORLDBOSSALL,"TRUE",},
    [136] = {"心灵地穴1中的伊拉姆布里斯双子",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 心灵地穴1","TRUE",},
    [137] = {"失落村庄公共地牢内的所有boss",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 失落村庄","TRUE",},
    [138] = {"蛛丝之握洞穴1的低语者",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 蛛丝之握洞穴1","TRUE",},
    [139] = {"桑吉恩领地公共地牢内的所有boss",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 桑吉恩领地","TRUE",},
    [140] = {"帝都下水道全部Boss",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 所有帝都下水道boss","TRUE",},
    [141] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [142] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [143] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [144] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [145] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [146] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [147] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [148] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [149] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [150] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [151] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [152] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [153] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [154] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [155] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [156] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [157] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [158] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [159] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [160] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [161] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [162] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [163] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [164] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [165] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [166] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [167] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [168] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [169] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [170] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [171] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [172] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [173] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [174] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [175] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [176] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [177] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [178] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [179] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [180] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [181] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [182] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [183] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [184] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [185] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [186] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [187] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [188] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [189] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [190] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [191] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [192] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [193] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [194] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [195] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [196] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [197] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [198] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [199] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [200] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [204] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [205] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [206] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [207] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [208] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [209] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [213] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [214] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [215] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [216] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [217] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [218] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [219] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [220] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [221] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [222] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [223] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [224] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [225] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [226] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [227] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [228] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [229] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [230] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [231] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [232] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [233] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [234] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [235] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [236] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [237] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [238] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [239] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [240] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [241] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [242] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [243] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [244] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [245] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [246] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [247] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [248] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [249] = {"老奥辛纽姆公共地牢内的所有boss和随机怪物",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 老奥辛纽姆","TRUE",},
    [250] = {"所有采集点",RDL.LOCDATA_TYPE_NODE,"所有采集点","TRUE",},
    [251] = {"木材,符文石采集点",RDL.LOCDATA_TYPE_NODE,"木材,符文石采集点","TRUE",},
    [252] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [253] = {"普通猛犸象怪物，东境、裂谷、马拉巴尔石山、沃斯加的猛犸象","猛犸象","猛犸象","TRUE",},
    [254] = {"科林涅姆堡垒最终boss",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 科林涅姆堡垒","TRUE",},
    [255] = {"狮鹫、塞伊克传送门、间歇泉","狮鹫","狮鹫,塞伊克,间歇泉","TRUE",},
    [256] = {"矿物采集点、矿物调查报告采集点、珠宝调查报告",RDL.LOCDATA_TYPE_NODE,"矿物,珠宝采集点","TRUE",},
    [257] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [258] = {"香丁赫尔、瓦拉斯塔努斯、克罗普斯福特、科洛尔、布鲁玛日常奖励",RDL.LOCDATA_TYPE_DAILY,"城镇日常5x","TRUE",},
    [259] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [260] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [261] = {"保险箱、藏宝图宝箱、盗贼宝库、采集点",RDL.LOCDATA_TYPE_SAFEBOX,"特殊","TRUE",},
    [262] = {RDL.LOCDATA_LONG_TREASURECHEST,RDL.LOCDATA_TYPE_TREASURECHEST,RDL.LOCDATA_SHORT_TREASURECHEST,"TRUE",},
    [263] = {"怪物(胡蜂、狼、莫里瑟利、山海幽灵、血荆棘教徒) ",RDL.LOCDATA_TYPE_MOB,"怪物","TRUE",},
    [264] = {"吸血剑齿虎、熊、血骑士，凯恩之盾、荆棘城堡、石之花园中的怪物",RDL.LOCDATA_TYPE_MOB,"特殊","FALSE",},
    [265] = {RDL.LOCDATA_LONG_TREASURECHEST,RDL.LOCDATA_TYPE_TREASURECHEST,RDL.LOCDATA_SHORT_TREASURECHEST,"TRUE",},
    [266] = {"脏水鱼饵钓鱼",RDL.LOCDATA_TYPE_FISHING,"脏水鱼饵钓鱼","TRUE",},
    [267] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [268] = {"瓦登费尔日常奖励箱",RDL.LOCDATA_TYPE_DAILY,"日常","TRUE",},
    [269] = {"月光海湾和遗忘城堡中的容器，例如瓮罐和背包, 森查尔码头瓮，南艾斯维尔随机怪物","容器","容器","TRUE",},
    [270] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [271] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [272] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [273] = {"随机怪物",RDL.LOCDATA_TYPE_MOB,"随机怪物","TRUE",},
    [274] = {"哨兵城的保险箱",RDL.LOCDATA_TYPE_SAFEBOX,RDL.LOCDATA_SHORT_SAFEBOX,"TRUE",},
    [275] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [276] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [277] = {"任何地方的所有牛头人。帝都的莫拉格.巴尔","牛头人","牛头人","TRUE",},
    [278] = {RDL.LOCDATA_LONG_WORLDBOSSALL,RDL.LOCDATA_TYPE_WORLDBOSS,RDL.LOCDATA_SHORT_WORLDBOSSALL,"TRUE",},
    [279] = {"战场获得的“贡献者奖励！”","战场奖励","战场奖励","TRUE",},
    [280] = {"纳西斯、哀伤之城(审判庭神殿) 、友善附魔师、穆斯格纳尔山丘附近的磨坊、德雷斯宅邸等地的保险箱",RDL.LOCDATA_TYPE_SAFEBOX,RDL.LOCDATA_SHORT_SAFEBOX,"TRUE",},
    [281] = {"塞伊克传送门、附魔符文石采集点、背包",RDL.LOCDATA_TYPE_NODE,"塞伊克,符文石采集点","TRUE",},
    [282] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [283] = {"塞伊克传送门、附魔采集点",RDL.LOCDATA_TYPE_NODE,"塞伊克,符文石采集点","TRUE",},
    [284] = {"保险箱",RDL.LOCDATA_TYPE_SAFEBOX,RDL.LOCDATA_SHORT_SAFEBOX,"TRUE",},
    [285] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [286] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [287] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [288] = {RDL.LOCDATA_LONG_WORLDBOSSDRAGON,RDL.LOCDATA_TYPE_WORLDBOSS,RDL.LOCDATA_SHORT_WORLDBOSSDRAGON,"TRUE",},
    [289] = {"马拉塔深渊的利刃交响曲boss",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 马拉塔深渊","TRUE",},
    [290] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [291] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [292] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [293] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [294] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [295] = {RDL.LOCDATA_LONG_WORLDBOSSDRAGON,RDL.LOCDATA_TYPE_WORLDBOSS,RDL.LOCDATA_SHORT_WORLDBOSSDRAGON,"TRUE",},
    [296] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [297] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [298] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [299] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [300] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [301] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [302] = {"完成盗窃任务和盗贼公会日常获得的奖励。盗贼公会的大小被洗劫的货箱容器。",RDL.LOCDATA_TYPE_DAILY,"盗贼公会日常","TRUE",},
    [303] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [304] = {RDL.LOCDATA_LONG_COFFER,RDL.LOCDATA_TYPE_COFFER,RDL.LOCDATA_SHORT_COFFER,"TRUE",},
    [305] = {RDL.LOCDATA_LONG_COFFER,RDL.LOCDATA_TYPE_COFFER,RDL.LOCDATA_SHORT_COFFER,"TRUE",},
    [306] = {RDL.LOCDATA_LONG_COFFER,RDL.LOCDATA_TYPE_COFFER,RDL.LOCDATA_SHORT_COFFER,"TRUE",},
    [307] = {"布扎克的宝箱、怪物；床头柜偷窃，圣徒港的海盗，狼群、甲虫刺客",RDL.LOCDATA_TYPE_MOB,"特殊","TRUE",},
    [308] = {"荒崖任何试炼的最终boss","试炼","荒崖试炼","TRUE",},
    [310] = {"古文物学会顶层的“神奇钱币收藏”(在一些书架后面的一个陈列柜的上面，需要收集所有102个免费的绿色、蓝色、紫色区域宝物线索后才会刷新) ",RDL.LOCDATA_TYPE_FIXLOCATION,"神奇钱币收藏","TRUE",},
    [312] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [313] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [314] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [315] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [316] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD2,RDL.LOCDATA_TYPE_EXCAVATIONREWARD2,RDL.LOCDATA_SHORT_EXCAVATIONREWARD2,"TRUE",},
    [317] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD2,RDL.LOCDATA_TYPE_EXCAVATIONREWARD2,RDL.LOCDATA_SHORT_EXCAVATIONREWARD2,"TRUE",},
    [318] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD2,RDL.LOCDATA_TYPE_EXCAVATIONREWARD2,RDL.LOCDATA_SHORT_EXCAVATIONREWARD2,"TRUE",},
    [319] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD2,RDL.LOCDATA_TYPE_EXCAVATIONREWARD2,RDL.LOCDATA_SHORT_EXCAVATIONREWARD2,"TRUE",},
    [320] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD2,RDL.LOCDATA_TYPE_EXCAVATIONREWARD2,RDL.LOCDATA_SHORT_EXCAVATIONREWARD2,"TRUE",},
    [321] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD2,RDL.LOCDATA_TYPE_EXCAVATIONREWARD2,RDL.LOCDATA_SHORT_EXCAVATIONREWARD2,"TRUE",},
    [322] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD2,RDL.LOCDATA_TYPE_EXCAVATIONREWARD2,RDL.LOCDATA_SHORT_EXCAVATIONREWARD2,"TRUE",},
    [323] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD2,RDL.LOCDATA_TYPE_EXCAVATIONREWARD2,RDL.LOCDATA_SHORT_EXCAVATIONREWARD2,"TRUE",},
    [324] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD2,RDL.LOCDATA_TYPE_EXCAVATIONREWARD2,RDL.LOCDATA_SHORT_EXCAVATIONREWARD2,"TRUE",},
    [325] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD2,RDL.LOCDATA_TYPE_EXCAVATIONREWARD2,RDL.LOCDATA_SHORT_EXCAVATIONREWARD2,"TRUE",},
    [326] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD2,RDL.LOCDATA_TYPE_EXCAVATIONREWARD2,RDL.LOCDATA_SHORT_EXCAVATIONREWARD2,"TRUE",},
    [327] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD2,RDL.LOCDATA_TYPE_EXCAVATIONREWARD2,RDL.LOCDATA_SHORT_EXCAVATIONREWARD2,"TRUE",},
    [328] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD2,RDL.LOCDATA_TYPE_EXCAVATIONREWARD2,RDL.LOCDATA_SHORT_EXCAVATIONREWARD2,"TRUE",},
    [329] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD2,RDL.LOCDATA_TYPE_EXCAVATIONREWARD2,RDL.LOCDATA_SHORT_EXCAVATIONREWARD2,"TRUE",},
    [335] = {"夜谷要塞内桌子上的卷轴。每隔五分钟重新刷新。",RDL.LOCDATA_TYPE_FIXLOCATION,"夜谷要塞","TRUE",},
    [336] = {"(PD) 恶人幽谷普通小怪",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 恶人幽谷","TRUE",},
    [337] = {RDL.LOCDATA_LONG_TREASURECHEST,RDL.LOCDATA_TYPE_TREASURECHEST,RDL.LOCDATA_SHORT_TREASURECHEST,"TRUE",},
    [338] = {"冷岩矿洞最终boss",RDL.LOCDATA_TYPE_DELVE,"(D) 冷岩矿洞","TRUE",},
    [339] = {RDL.LOCDATA_LONG_WORLDBOSSALL,RDL.LOCDATA_TYPE_WORLDBOSS,RDL.LOCDATA_SHORT_WORLDBOSSALL,"TRUE",},
    [340] = {"保险箱",RDL.LOCDATA_TYPE_SAFEBOX,RDL.LOCDATA_SHORT_SAFEBOX,"TRUE",},
    [341] = {"心灵地穴2的奈恩斯",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 心灵地穴2","TRUE",},
    [342] = {"利里斯亲王。",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 放逐地牢1","TRUE",},
    [343] = {"(PD) 根之割裂废墟boss",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(PD) 根之割裂废墟","TRUE",},
    [344] = {"所有洞穴boss",RDL.LOCDATA_TYPE_DELVE,"(D) 全部","TRUE",},
    [345] = {"精英锻莫怪物(极低掉落几率) (巴塔·扎尔，阿克赞德图书馆外部…) ",RDL.LOCDATA_TYPE_MOB,"巴塔·扎尔","TRUE",},
    [346] = {"精英锻莫怪物(极低掉落几率) (巴塔·扎尔，阿克赞德图书馆外部…) ",RDL.LOCDATA_TYPE_MOB,"巴塔·扎尔","TRUE",},
    [347] = {"精英锻莫怪物(极低掉落几率) (巴塔·扎尔，阿克赞德图书馆外部…) ",RDL.LOCDATA_TYPE_MOB,"巴塔·扎尔","TRUE",},
    [348] = {"精英锻莫怪物(极低掉落几率) (巴塔·扎尔，阿克赞德图书馆外部…) ",RDL.LOCDATA_TYPE_MOB,"巴塔·扎尔","TRUE",},
    [349] = {"精英锻莫怪物(极低掉落几率) (巴塔·扎尔，阿克赞德图书馆外部…) ",RDL.LOCDATA_TYPE_MOB,"巴塔·扎尔","TRUE",},
    [350] = {"精英锻莫怪物(极低掉落几率) (巴塔·扎尔，阿克赞德图书馆外部…) ",RDL.LOCDATA_TYPE_MOB,"巴塔·扎尔","TRUE",},
    [351] = {"精英锻莫怪物(极低掉落几率) (巴塔·扎尔，阿克赞德图书馆外部…) ",RDL.LOCDATA_TYPE_MOB,"巴塔·扎尔","TRUE",},
    [352] = {"黑降中的未激活构造体。已经死亡。使用一个虚无异常传送过桥。阿克赞德图书馆南边",RDL.LOCDATA_TYPE_FIXLOCATION,"黑降","TRUE",},
    [353] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [354] = {RDL.LOCDATA_LONG_HARROWSTORMS,RDL.LOCDATA_TYPE_WORLDBOSS,RDL.LOCDATA_SHORT_HARROWSTORMS,"TRUE",},
    [355] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [356] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [357] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [358] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [359] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [360] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [361] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [362] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [363] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [364] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [365] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [366] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [367] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [368] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [369] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [370] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [371] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [372] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [373] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [374] = {"在一根亚龙人棍子上。石林试炼西边，天空裂片北边 70.05,90.34",RDL.LOCDATA_TYPE_FIXLOCATION,"亚龙人棍子","TRUE",},
    [375] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [376] = {"乐雅文日常奖励箱",RDL.LOCDATA_TYPE_DAILY,"乐雅文日常","TRUE",},
    [377] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [378] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [379] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [380] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [381] = {"湮灭传送门最终宝箱","湮灭传送门","湮灭传送门","TRUE",},
    [382] = {"全部帝都上层Boss",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 帝都上层","TRUE",},
    [383] = {"贡献者奖励！","贡献者奖励！","贡献者奖励！","TRUE",},
    [384] = {"龙星竞技场最终宝箱",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 龙星竞技场","TRUE",},
    [385] = {"异常点，安卡拉。最终宝箱。",RDL.LOCDATA_TYPE_WORLDBOSS,"异常点，安卡拉","TRUE",},
    [386] = {"(GD) 疯狂密室最终Boss",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 疯狂密室","TRUE",},
    [387] = {RDL.LOCDATA_LONG_HARROWSTORMS,RDL.LOCDATA_TYPE_WORLDBOSS,RDL.LOCDATA_SHORT_HARROWSTORMS,"TRUE",},
    [388] = {"海尔辛的徘徊地全部Boss",RDL.LOCDATA_TYPE_DELVE,"(D) 海尔辛的徘徊地","TRUE",},
    [389] = {"(GD) 蛛丝之握洞穴2最终Boss",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 蛛丝之握洞穴2","TRUE",},
    [390] = {"(PD) 寂静殿堂: 几乎所有boss",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 寂静殿堂","TRUE",},
    [391] = {"全部世界Boss",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 全部","TRUE",},
    [392] = {"(GD) 谜城遗迹: 最终Boss",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 谜城遗迹","TRUE",},
    [393] = {"全部炼金采集点",RDL.LOCDATA_TYPE_NODE,"炼金采集点","TRUE",},
    [394] = {"脏水钓鱼",RDL.LOCDATA_TYPE_FISHING,"脏水钓鱼","TRUE",},
    [395] = {"匕落同盟怪物",RDL.LOCDATA_TYPE_MOB,"匕落同盟怪物","TRUE",},
    [396] = {"(PD) 泽尼萨尔神庙: 所有boss",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 泽尼萨尔神庙","TRUE",},
    [397] = {"罪犯避难所的黑暗兄弟会补给掉落，需要技能点","黑暗兄弟会补给掉落","黑暗兄弟会","TRUE",},
    [398] = {"(GD) 暗影摇篮",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 暗影摇篮","TRUE",},
    [399] = {"所有洞穴boss",RDL.LOCDATA_TYPE_DELVE,"(D) 全部","TRUE",},
    [400] = {"(PD) 遗忘地穴: 所有boss",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 遗忘地穴","TRUE",},
    [401] = {"屑石村路点神龛西南边被毁的小屋(59.67,78.86) ",RDL.LOCDATA_TYPE_FIXLOCATION,"被毁的小屋","TRUE",},
    [402] = {"乌纳克洞穴西边，在一条长隧道中大型祭坛后面(30.75,36.99) ",RDL.LOCDATA_TYPE_FIXLOCATION,"祭坛后面","TRUE",},
    [403] = {"屑石村内荒废的建筑上层。需要跳跃(63.90,79.83) ",RDL.LOCDATA_TYPE_FIXLOCATION,"荒废的建筑","TRUE",},
    [404] = {"破碎的石巢神庙WB东南边的隘谷中(58.30,85.59) ",RDL.LOCDATA_TYPE_FIXLOCATION,"隘谷","TRUE",},
    [405] = {"乐雅文桥东南边骷髅旁边(30.75,57.69) ",RDL.LOCDATA_TYPE_FIXLOCATION,"骷髅","TRUE",},
    [406] = {"葛林桥南边帐篷旁边(66.41,67.52) ",RDL.LOCDATA_TYPE_FIXLOCATION,"帐篷旁边","TRUE",},
    [407] = {"潮汐洞穴东南边木箱边的树边，挨近小船(31.74,70.04) ",RDL.LOCDATA_TYPE_FIXLOCATION,"树","TRUE",},
    [408] = {"乌纳克洞穴北边，在岛上的房屋中(81.29,63.49) ",RDL.LOCDATA_TYPE_FIXLOCATION,"岛上的房屋","TRUE",},
    [409] = {"寂静殿堂公共地牢图标北边，在独轮车附近的一个洞里(57.91,62.90) ",RDL.LOCDATA_TYPE_FIXLOCATION,"独轮车","TRUE",},
    [410] = {"谢姆霍克的泻湖WB东南边荒废的建筑(81.66,79.33) ",RDL.LOCDATA_TYPE_FIXLOCATION,"荒废的建筑","TRUE",},
    [411] = {"蓝血路点神龛东南边被毁的马车(37.42,67.77) ",RDL.LOCDATA_TYPE_FIXLOCATION,"被毁的马车","TRUE",},
    [412] = {"吉德昂北边的城堡废墟，东边，穿过陷阱 - 女公爵的私人书房(56.60,45.35) ",RDL.LOCDATA_TYPE_FIXLOCATION,"藏身处","TRUE",},
    [413] = {"西·提赛洞穴西北边的小船(48.92,75.55) ",RDL.LOCDATA_TYPE_FIXLOCATION,"船","TRUE",},
    [414] = {"暗潮洞穴西北边的洞穴里(17.13,47.40) ",RDL.LOCDATA_TYPE_FIXLOCATION,"洞穴","TRUE",},
    [415] = {"白马旅馆南边(20.74,45.74) ",RDL.LOCDATA_TYPE_FIXLOCATION,"白马旅馆南边","TRUE",},
    [416] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [417] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [418] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [419] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [420] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [421] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [422] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [423] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [424] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [425] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [426] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [427] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [428] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [429] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [430] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"FALSE",},
    [431] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"FALSE",},
    [432] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"FALSE",},
    [433] = {"保险箱",RDL.LOCDATA_TYPE_SAFEBOX,"保险箱","FALSE",},
    [434] = {"徘徊的boss",RDL.LOCDATA_TYPE_WORLDBOSS,"徘徊的boss","FALSE",},
    [435] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [436] = {"恶毒尖刺路点神龛北边的细死树下方的不寻常的金属采集点(81.29,42.29) ",RDL.LOCDATA_TYPE_FIXLOCATION,"不寻常的金属采集点","FALSE",},
    [437] = {"(WB) 憎恶摇篮",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 憎恶摇篮","FALSE",},
    [438] = {"任何地方的魔族",RDL.LOCDATA_TYPE_ALLLOOTTABLES,"魔族","FALSE",},
    [439] = {"保险箱",RDL.LOCDATA_TYPE_SAFEBOX,"保险箱","FALSE",},
    [440] = {"(WB) 颤栗神龛",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 颤栗神龛","FALSE",},
    [441] = {"惊惧兽",RDL.LOCDATA_TYPE_MOB,"惊惧兽","FALSE",},
    [442] = {"(WB) 毁灭者",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 毁灭者","FALSE",},
    [443] = {"(GD) 放逐地牢1&2",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 放逐地牢1&2","FALSE",},
    [444] = {"死地日常",RDL.LOCDATA_TYPE_DAILY,"死地日常","FALSE",},
    [445] = {"魔鼠",RDL.LOCDATA_TYPE_MOB,"魔鼠","FALSE",},
    [446] = {"宝箱",RDL.LOCDATA_TYPE_TREASURECHEST,"宝箱","FALSE",},
    [447] = {"死地日常",RDL.LOCDATA_TYPE_DAILY,"死地日常","FALSE",},
    [448] = {"(GD) 佛克瑞斯领地宝箱",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 佛克瑞斯领地宝箱","FALSE",},
    [449] = {"(GD) 黑德雷克庄园",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 黑德雷克庄园","FALSE",},
    [450] = {"黄金海岸宝箱",RDL.LOCDATA_TYPE_TREASURECHEST,"宝箱","FALSE",},
    [451] = {"(WB) 行政官的愚行",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 行政官的愚行","FALSE",},
    [452] = {"(PD) 献祭环礁(传送门事件) ",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 献祭环礁","FALSE",},
    [453] = {"符文石",RDL.LOCDATA_TYPE_NODE,"符文石","FALSE",},
    [460] = {"塞伊克传送门",RDL.LOCDATA_TYPE_NODE,"塞伊克传送门","FALSE",},
    [461] = {"保险箱",RDL.LOCDATA_TYPE_SAFEBOX,"保险箱","FALSE",},
    [462] = {"(试炼) 太阳尖顶(龙) ","试炼","(T) 太阳尖顶","TRUE",},
    [463] = {"(GD) 月墓神庙小怪",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 月墓神庙小怪","TRUE",},
    [464] = {"(GD) 马塞洛克巢穴最终Boss",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 马塞洛克巢穴","TRUE",},
    [465] = {"传送门内的凝视者(献祭环礁) ",RDL.LOCDATA_TYPE_MOB,"传送门内的凝视者","TRUE",},
    [466] = {"(GD) 帝都监狱(观察者Boss) ",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 帝都监狱","TRUE",},
    [467] = {"制衣采集点",RDL.LOCDATA_TYPE_NODE,"制衣采集点","TRUE",},
    [468] = {"观察者怪物",RDL.LOCDATA_TYPE_MOB,"观察者怪物","TRUE",},
    [469] = {"(PD) 邪恶宅邸公共地牢内的宝箱",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 邪恶宅邸","TRUE",},
    [470] = {"日常制造委托",RDL.LOCDATA_TYPE_DAILY,"日常制造委托","TRUE",},
    [471] = {"间歇泉的贝壳宝库",RDL.LOCDATA_TYPE_WORLDBOSS,"间歇泉","TRUE",},
    [472] = {"(WB) 莫尔纳德瀑布",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 莫尔纳德瀑布","TRUE",},
    [473] = {"礁蛇，小海蝰",RDL.LOCDATA_TYPE_MOB,"礁蛇/小海蝰","TRUE",},
    [474] = {"宝箱",RDL.LOCDATA_TYPE_TREASURECHEST,"宝箱","TRUE",},
    [475] = {"(WB) 巨蛇泥沼",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 巨蛇泥沼","TRUE",},
    [476] = {"珠宝调查报告","调查报告","珠宝调查报告","TRUE",},
    [477] = {"大砗磲",RDL.LOCDATA_TYPE_NODE,"大砗磲","TRUE",},
    [478] = {"法师公会日常",RDL.LOCDATA_TYPE_DAILY,"法师公会日常","TRUE",},
    [479] = {"(WB) 冰冻废墟",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 冰冻废墟","TRUE",},
    [480] = {"保险箱",RDL.LOCDATA_TYPE_SAFEBOX,"保险箱","TRUE",},
    [481] = {"(WB) 泥蟹沙滩/泰坦之爪",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 泥蟹沙滩","TRUE",},
    [482] = {"矿物采集点",RDL.LOCDATA_TYPE_NODE,"矿物采集点","TRUE",},
    [483] = {"随机怪物",RDL.LOCDATA_TYPE_MOB,"随机怪物","TRUE",},
    [484] = {"火山口",RDL.LOCDATA_TYPE_WORLDBOSS,"火山口","TRUE",},
    [485] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [486] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [487] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [488] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [489] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [490] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [491] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [492] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [493] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [494] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [495] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [496] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [497] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [498] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [499] = {"水道交汇处的“旧罐”，阿梅诺斯休息站东北边",RDL.LOCDATA_TYPE_FIXLOCATION,"阿梅诺斯: 小岛","TRUE",},
    [500] = {"建在悬崖中的废墟里的“凹凸不平的碗”，在隐藏的铸造厂的东入口的南边",RDL.LOCDATA_TYPE_FIXLOCATION,"阿梅诺斯: 悬崖底部的废墟","TRUE",},
    [501] = {"水中高杆附近失事船只上“生锈的食物处理钳”，在骷髅牙海岸北边的海湾内",RDL.LOCDATA_TYPE_FIXLOCATION,"阿梅诺斯: 骷髅牙海岸北边","TRUE",},
    [502] = {"全旗屿东北滨的“陈旧的石头”，被一块高大的新月形的陈旧的石头边的陆地掩蔽起来",RDL.LOCDATA_TYPE_FIXLOCATION,"全旗屿","TRUE",},
    [503] = {"死亡之勇要塞洞穴南边小海湾的南岸上的“老旧的布莱顿茶壶”",RDL.LOCDATA_TYPE_FIXLOCATION,"死亡之勇要塞南边小海湾","TRUE",},
    [504] = {"纳维尔城堡路点神龛东边，路边大树旁的“损坏的编织过滤器”",RDL.LOCDATA_TYPE_FIXLOCATION,"纳维尔城堡附近","TRUE",},
    [505] = {"度佛特船厂路点神龛南边，在炽热的德鲁伊教团中的岩石后面的“炽热的石头”",RDL.LOCDATA_TYPE_FIXLOCATION,"度佛特船厂南边","TRUE",},
    [506] = {"从托尔·达奥奇火山口向西走，然后在开花的树左边找到“德鲁伊的屠夫刀”",RDL.LOCDATA_TYPE_FIXLOCATION,"托尔·达奥奇火山口西边","TRUE",},
    [507] = {"加里克栖所北边，俯瞰大海的悬崖上的“远古清洁工具”",RDL.LOCDATA_TYPE_FIXLOCATION,"加里克栖所附近","TRUE",},
    [508] = {"海滩上的浮木边的“满是污痕的水壶”，树精的林冠西边",RDL.LOCDATA_TYPE_FIXLOCATION,"树精的林冠西边","TRUE",},
    [509] = {"倚靠在一棵高大树木附近的岩石上的“德鲁伊箭矢”，在一个瀑布东边，放逐避难所北边。被一只小恶魔守卫着。每5分钟刷新",RDL.LOCDATA_TYPE_FIXLOCATION,"阿梅诺斯: 瀑布","TRUE",},
    [510] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [511] = {"(试炼) 恐帆礁石","试炼","(T) 恐帆礁石","TRUE",},
    [512] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [513] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [514] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [515] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [516] = {RDL.UNKNOWN,RDL.UNKNOWN,RDL.UNKNOWN,"FALSE",},
    [517] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [518] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [519] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [520] = {"(WB) 鹿人瀑布",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 鹿人瀑布","TRUE",},
    [521] = {"(PD) 黑曜石伤痕",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 黑曜石伤痕","TRUE",},
    [522] = {"盗贼宝库, 保险箱","盗贼宝库","盗贼宝库, 保险箱","TRUE",},
    [523] = {"木材采集点",RDL.LOCDATA_TYPE_NODE,"木材采集点","TRUE",},
    [524] = {"(D) 鲸落,Boss和猎人",RDL.LOCDATA_TYPE_DELVE,"(D) 鲸落","TRUE",},
    [525] = {"火山口",RDL.LOCDATA_TYPE_WORLDBOSS,"火山口","TRUE",},
    [526] = {"制衣、炼金采集点",RDL.LOCDATA_TYPE_NODE,"制衣、炼金采集点","TRUE",},
    [527] = {RDL.LOCDATA_LONG_DAILY,RDL.LOCDATA_TYPE_DAILY,RDL.LOCDATA_SHORT_DAILY,"TRUE",},
    [528] = {"(PD) 牙槌隘谷的组队事件Boss",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 牙槌隘谷","TRUE",},
    [529] = {"(WB观察者山谷",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB观察者山谷","TRUE",},
    [530] = {"日常锻造委托",RDL.LOCDATA_TYPE_DAILY,"日常锻造委托","TRUE",},
    [531] = {"(GD) 放逐地牢2",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 放逐地牢2","TRUE",},
    [532] = {"钓鱼",RDL.LOCDATA_TYPE_FISHING,"钓鱼","TRUE",},
    [533] = {"(GD) 船工之憾地牢",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 船工之憾地牢","TRUE",},
    [534] = {"(WB) 灵鹿乐园",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 灵鹿乐园","TRUE",},
    [535] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [536] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"TRUE",},
    [537] = {"(PD) 幽灵庇护湾组队事件",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 幽灵庇护湾","FALSE",},
    [538] = {"(PD) 遗忘废墟",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 遗忘废墟","TRUE",},
    [539] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [540] = {"(WB) 伽林保护者",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 伽林保护者","TRUE",},
    [541] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"TRUE",},
    [542] = {"火山口，(PD) 失落之城纳·托坦布(阿里克尔沙漠) ",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"多重","TRUE",},
    [543] = {RDL.LOCDATA_LONG_DAILY,RDL.LOCDATA_TYPE_DAILY,RDL.LOCDATA_SHORT_DAILY,"TRUE",},
    [544] = {"(WB) 海妖德苏嘉",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 海妖德苏嘉","TRUE",},
    [545] = {RDL.LOCDATA_LONG_TREASURECHEST ,RDL.LOCDATA_TYPE_TREASURECHEST,RDL.LOCDATA_SHORT_TREASURECHEST ,"TRUE",},
    [546] = {"(GD) 途歇城下水道1",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 途歇城下水道1","TRUE",},
    [547] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [548] = {"盗贼宝库，日常奖励",RDL.LOCDATA_TYPE_DAILY,"盗贼宝库，日常奖励","TRUE",},
    [549] = {"(GD) 途歇城下水道2",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 途歇城下水道2","TRUE",},
    [550] = {"火山口",RDL.LOCDATA_TYPE_WORLDBOSS,"火山口","TRUE",},
    [551] = {"(WB) 奇美拉之林",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 奇美拉之林","TRUE",},
    [552] = {"(D) 鹿人之森",RDL.LOCDATA_TYPE_DELVE,"(D) 鹿人之森","TRUE",},
    [553] = {RDL.LOCDATA_LONG_DAILY,RDL.LOCDATA_TYPE_DAILY,RDL.LOCDATA_SHORT_DAILY,"TRUE",},
    [554] = {"(GD) 灰烬之城1:最终Boss",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 灰烬之城1:最终Boss","TRUE",},
    [555] = {"(D) 灰烬藤",RDL.LOCDATA_TYPE_DELVE,"(D) 灰烬藤","TRUE",},
    [556] = {"凤凰蛾, 牛角岩浆蛙",RDL.LOCDATA_TYPE_MOB,"凤凰蛾, 牛角岩浆蛙","TRUE",},
    [557] = {"(GD) 巴尔桑纳 最终Boss",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 巴尔桑纳","FALSE",},
    [558] = {"(WB) 克拉莫拉普盆地",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 克拉莫拉普盆地","FALSE",},
    [559] = {"(D) 忧虑书房 Boss",RDL.LOCDATA_TYPE_DELVE,"(D) 忧虑书房","FALSE",},
    [560] = {RDL.LOCDATA_LONG_TREASURECHEST ,RDL.LOCDATA_TYPE_TREASURECHEST,RDL.LOCDATA_SHORT_TREASURECHEST ,"FALSE",},
    [561] = {"日常奖励箱",RDL.LOCDATA_TYPE_DAILY,"日常奖励箱","FALSE",},
    [562] = {"(D) 纳曲莱夫特",RDL.LOCDATA_TYPE_DELVE,"(D) 纳曲莱夫特","FALSE",},
    [563] = {"(GD) 铭深岛 隐藏 Boss 1&2&3",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 铭深岛","FALSE",},
    [564] = {"(GD) 珊瑚鹫巢 激光隐藏Boss",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 珊瑚鹫巢","FALSE",},
    [565] = {"(PD) 遗忘废墟，纳曲莱夫庭斯 组队Boss",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 两个组队BOSS","FALSE",},
    [566] = {"(PD) 格尔涅组队事件",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 格尔涅组队事件","FALSE",},
    [567] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [568] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [569] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [570] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [571] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [572] = {" WB, 圣遗物 日常奖励宝箱",RDL.LOCDATA_TYPE_DAILY,"WB,圣遗物 日常","FALSE",},
    [573] = {"(D) 卡蒙纳鲁恩 Boss",RDL.LOCDATA_TYPE_DELVE,"(D) 卡蒙纳鲁恩","FALSE",},
    [574] = {"(GD) 书吏大厅 金库宝箱",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 书吏大厅 金库宝箱","FALSE",},
    [575] = {"(WB) 符文大师卫城",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 符文大师卫城","FALSE",},
    [576] = {"(PD) 焚迹熔炉组队BOSS : 全视者基祖",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 焚迹熔炉","FALSE",},
    [577] = {RDL.LOCDATA_LONG_ANTIQUEMAP,RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [578] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [579] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [580] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [581] = {"尼米克堡垒 赫麦尤斯·莫拉 小BOSS 宝箱","尼米克堡垒","尼米克堡垒 宝箱","FALSE",},
    [582] = {"钓鱼",RDL.LOCDATA_TYPE_FISHING,"钓鱼","FALSE",},
    [583] = {"真菌岩洞 II: 最终BOSS",RDL.LOCDATA_TYPE_P,"真菌岩洞 II","FALSE",},
    [584] = {"(D) 玛图斯·阿金蛋矿",RDL.LOCDATA_TYPE_DELVE,"(D) 玛图斯·阿金蛋矿","FALSE",},
    [585] = {"(WB) 深层掠夺者沼地",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 深层掠夺者沼地","FALSE",},
    [586] = {"符文石",RDL.LOCDATA_TYPE_NODE,"符文石","FALSE",},
    [587] = {"每日 委托",RDL.LOCDATA_TYPE_DAILY,"每日 委托","FALSE",},
    [588] = {"(WB) 首席编者",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 首席编者","FALSE",},
    [589] = {"尼米克堡垒 Boss",RDL.LOCDATA_TYPE_WORLDBOSS,"尼米克堡垒 Boss","FALSE",},
    [591] = {"(D) 安克雷蛋矿 Boss",RDL.LOCDATA_TYPE_DELVE,"(D) 安克雷蛋矿","FALSE",},
    [592] = {"木材资源点",RDL.LOCDATA_TYPE_NODE,"木材资源点","FALSE",},
    [593] = {"(D) 拉蕾尔夫人的避难所",RDL.LOCDATA_TYPE_DELVE,"(D) 拉蕾尔夫人的避难所","FALSE",},
    [594] = {"(GD) 真菌岩洞 I 最终BOSS",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 真菌岩洞 I","FALSE",},
    [595] = {"尼米克堡垒 Boss",RDL.LOCDATA_TYPE_WORLDBOSS,"尼米克堡垒 Boss","FALSE",},
    [596] = {"(WB) 西索恩广场",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 西索恩广场","FALSE",},
    [597] = {"日常洞穴 奖励之匣",RDL.LOCDATA_TYPE_DAILY,"日常洞穴 奖励之匣","FALSE",},
    [598] = {"(WB) 复生之庭",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 复生之庭","FALSE",},
    [599] = {"(D) 深水漂移",RDL.LOCDATA_TYPE_DELVE,"(D) 深水漂移","FALSE",},
    [600] = {"保险箱, 盗贼宝库","保险箱, 盗贼宝库","保险箱, 盗贼宝库","FALSE",},
    [601] = {"旅店老板, 普通商人. 需要 死灵之地英雄 成就",RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [602] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"FALSE",},
    [603] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"FALSE",},
    [604] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"FALSE",},
    [605] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"FALSE",},
    [606] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"FALSE",},
    [607] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"FALSE",},
    [608] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"FALSE",},
    [609] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"FALSE",},
    [610] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"FALSE",},
    [611] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"FALSE",},
    [612] = {"(D) 奎尔斯温德 BOSS",RDL.LOCDATA_TYPE_DELVE,"(D) 奎尔斯温德 BOSS","FALSE",},
    [613] = {"(WB) 梦魇巢穴",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 梦魇巢穴","FALSE",},
    [614] = {"(D) 调节厅",RDL.LOCDATA_TYPE_DELVE,"(D) 调节厅","FALSE",},
    [615] = {"岩浆池南部在 阿拉维利斯 和 帕多梅山峰路点神龛之间",RDL.LOCDATA_TYPE_FIXLOCATION,"帕多梅 的西南","FALSE",},
    [616] = {"通往 凯梅尔-泽 的桥梁后, right side",RDL.LOCDATA_TYPE_FIXLOCATION,"朝 凯梅尔-泽 的方向","FALSE",},
    [617] = {"埃德伊斯拉的东北部. 城市与水之间.",RDL.LOCDATA_TYPE_FIXLOCATION,"埃德伊斯拉的东北部","FALSE",},
    [618] = {"梦魇巢穴以南的海岸 WB",RDL.LOCDATA_TYPE_FIXLOCATION,"梦魇巢穴以南的海岸","FALSE",},
    [619] = {"凯梅尔-泽的右边 有三个岛屿 (最小的) . 找小瓮",RDL.LOCDATA_TYPE_FIXLOCATION,"凯梅尔-泽东边岛屿","FALSE",},
    [620] = {"帕多梅路点神龛南部 , 沿着悬崖边墙",RDL.LOCDATA_TYPE_FIXLOCATION,"帕多梅 南部" ,"FALSE",},
    [621] = {"在 阿拉维利斯 和 理智边缘 试炼入口之间",RDL.LOCDATA_TYPE_FIXLOCATION,"阿拉维利斯的东南","FALSE",},
    [622] = {"埃德伊斯拉 南部最大的岛屿",RDL.LOCDATA_TYPE_FIXLOCATION,"埃德伊斯拉 南部最大的岛屿","FALSE",},
    [623] = {"塞伦莫拉北部海岸",RDL.LOCDATA_TYPE_FIXLOCATION,"塞伦莫拉北部海岸","FALSE",},
    [624] = {"帕多梅 山峰路点神龛 的北部, 沿河向东. 隐藏在岩石边 ( 右边 ) ",RDL.LOCDATA_TYPE_FIXLOCATION,"帕多梅山峰北部","FALSE",},
    [625] = {"《望族传奇》 宝箱","《望族传奇》","《望族传奇》 宝箱","FALSE",},
    [626] = {"(D) 折磨之眼的极点 Boss",RDL.LOCDATA_TYPE_DELVE,"(D) 折磨之眼的极点","FALSE",},
    [627] = {"尼米克堡垒 奖励盒子",RDL.LOCDATA_TYPE_DAILY,"尼米克堡垒 奖励盒子","FALSE",},
    [628] = {"(D) 泽恩加纳兹",RDL.LOCDATA_TYPE_DELVE,"(D) 泽恩加纳兹","FALSE",},
    [629] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_LONG_ALLLOOTTABLES,"FALSE",},
    [630] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [631] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [632] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [633] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"FALSE",},
    [634] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"FALSE",},
    [635] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"FALSE",},
    [636] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"FALSE",},
    [637] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"FALSE",},
    [638] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"FALSE",},
    [639] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"FALSE",},
    [640] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"FALSE",},
    [641] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"FALSE",},
    [642] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"FALSE",},
    [643] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"FALSE",},
    [644] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [645] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [646] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [647] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [648] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [649] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [650] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [651] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [652] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [653] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [654] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [655] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [656] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [657] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [658] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [659] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [660] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [661] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [662] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [663] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [664] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [665] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [666] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [667] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [668] = {RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,RDL.ENDLESSARCHIVE,"FALSE",},
    [669] = {"(D) 克罗维亚堡垒",RDL.LOCDATA_TYPE_DELVE,"(D) 克罗维亚堡垒","FALSE",},
    [670] = {"(PD) 瑞因达莱夫特",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 瑞因达莱夫特","FALSE",},
    [671] = {"(GD) 沃伦费尔地下城 最终Boss",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 沃伦费尔","FALSE",},
    [672] = {"(D) 桑卡提",RDL.LOCDATA_TYPE_DELVE,"(D) 桑卡提","FALSE",},
    [673] = {"制造大厅最终Boss","试炼","(T) 制造大厅","FALSE",},
    [674] = {"(D) 海尔丹伐木场",RDL.LOCDATA_TYPE_DELVE,"(D) 海尔丹伐木场","FALSE",},
    [675] = {"(WB) 百夫长高地",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 百夫长高地","FALSE",},
    [676] = {"间歇泉",RDL.LOCDATA_TYPE_WORLDBOSS,"间歇泉","FALSE",},
    [677] = {"(GD) 月墓古庙",RDL.LOCDATA_TYPE_GROUPDUNGEON,"(GD) 月墓古庙","FALSE",},
    [678] = {"(PD) 兽人栖所",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 兽人栖所","FALSE",},
    [679] = {"(D) 谢尔格拉之舌",RDL.LOCDATA_TYPE_DELVE,"(D) 谢尔格拉之舌","FALSE",},
    [680] = {"暗锚","暗锚","暗锚","FALSE",},
    [681] = {"(WB) 小圆环",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 小圆环","FALSE",},
    [682] = {"漩涡竞技场奖励宝箱","漩涡竞技场","漩涡竞技场","FALSE",},
    [683] = {"(PD) 邪恶宅邸",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 邪恶宅邸","FALSE",},
    [684] = {RDL.LOCDATA_LONG_STARTER,RDL.LOCDATA_TYPE_STARTER,RDL.LOCDATA_SHORT_STARTER,"TRUE",},
    [685] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [686] = {RDL.LOCDATA_LONG_EXCAVATIONREWARD,RDL.LOCDATA_TYPE_EXCAVATIONREWARD,RDL.LOCDATA_SHORT_EXCAVATIONREWARD,"TRUE",},
    [687] = {"Innkeeper, general merchant. Requiers Pathfinder Achievement",RDL.LOCDATA_TYPE_ANTIQUEMAP,RDL.LOCDATA_SHORT_ANTIQUEMAP,"TRUE",},
    [688] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"FALSE",},
    [689] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"FALSE",},
    [690] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"FALSE",},
    [691] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"FALSE",},
    [692] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"FALSE",},
    [693] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"FALSE",},
    [694] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"FALSE",},
    [695] = {RDL.LOCDATA_LONG_ALLLOOTTABLES,RDL.LOCDATA_TYPE_ALLLOOTTABLES,RDL.LOCDATA_SHORT_ALLLOOTTABLES,"FALSE",},
    [696] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"FALSE",},
    [697] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"FALSE",},
    [698] = {RDL.LOCDATA_LONG_TREASUREMAP,RDL.LOCDATA_TYPE_TREASUREMAP,RDL.LOCDATA_SHORT_TREASUREMAP,"FALSE",},
    [699] = {"(PD) 西洛恩",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 西洛恩","FALSE",},
    [700] = {"(WB) 奥洛湖",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 奥洛湖","FALSE",},
    [701] = {"(D) 菲尔莱特洞穴",RDL.LOCDATA_TYPE_DELVE,"(D) 菲尔莱特洞穴","FALSE",},
    [702] = {"(D) 诺农加洛",RDL.LOCDATA_TYPE_DELVE,"(D) 诺农加洛","FALSE",},
    [703] = {"(WB) 法尔林地",RDL.LOCDATA_TYPE_WORLDBOSS,"(WB) 法尔林地","FALSE",},
    [704] = {"(D) 瓦仁哨岗",RDL.LOCDATA_TYPE_DELVE,"(D) 瓦仁哨岗","FALSE",},
    [705] = {RDL.LOCDATA_LONG_DAILY,RDL.LOCDATA_TYPE_DAILY,RDL.LOCDATA_SHORT_DAILY,"FALSE",},
    [706] = {"(PD) 莱福忒尔交易站",RDL.LOCDATA_TYPE_PUBLICDUNGEON,"(PD) 莱福忒尔交易站","FALSE",},
    [707] = {"镜泽入侵(Mirrormoor Incursions) ","镜泽入侵","镜泽入侵","FALSE",},
    [708] = {"(D) 军团休整地",RDL.LOCDATA_TYPE_DELVE,"(D) 军团休整地","FALSE",},
  }, RDL.Locations)

--Sepcial Setting
  BB.TableCopy({
    [RDL.ZONEID_ALLZONES] = RDL.ZONENAME_ALLZONES,
    [RDL.ZONEID_BGS] = RDL.ZONENAME_BGS,
    [RDL.ZONEID_UNKNOWN] = RDL.LOCDATA_ZONENAME_UNKNOWN,
  }, RDL.ZONENAME_SPECIAL)

  BB.SetAfterPart(
    function()
      RDLMainWindowHeadersLeadName:SetText(RDL.SORTHEADER_NAMES[1])
      RDLMainWindowHeadersZoneName:SetText(RDL.SORTHEADER_NAMES[2])
      RDLMainWindowHeadersLocationName:SetText(RDL.SORTHEADER_NAMES[3])
      RDLMainWindowHeadersDiffName:SetText(RDL.SORTHEADER_NAMES[4])
      RDLMainWindowHeadersLoreName:SetText(RDL.SORTHEADER_NAMES[5])
      RDLMainWindowHeadersDugName:SetText(RDL.SORTHEADER_NAMES[6])
      RDLMainWindowHeadersSetName:SetText(RDL.SORTHEADER_NAMES[7])
      RDLMainWindowHeadersExpirationName:SetText(RDL.SORTHEADER_NAMES[8])
    end
  )
return true end

--Dolgubon's Lazy Set (and Furniture!) Crafter
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
  WritCreater.optionStrings['despawnBanker']							= "解散银行助手（取出）"
  WritCreater.optionStrings['despawnBankerTooltip']					= "取出物品后自动解散银行助手"
  WritCreater.optionStrings['despawnBankerDeposit']						= "解散银行助手（存储）"
WritCreater.optionStrings['despawnBankerDepositTooltip']				= "存储物品后自动解散银行助手"
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

--[[ Template 1, "" = folder name

--
BB.AddonList[""] = function() if not  then return false end

return true end

]]

--[[ Template 2, "" = folder name

--
do if not BB.SV.BanList[""] then

end end

BB.AddonList[""] = function() if not  then return false end

return true end

]]