local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

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