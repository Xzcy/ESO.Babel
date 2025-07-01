local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

do if not BB.SV.BanList["MasterMerchant"] then
  local function Fun()
    -- Options Menu
    ZO_CreateStringId("SK_ALERT_ANNOUNCE_NAME", "屏幕提醒")
    ZO_CreateStringId("SK_ALERT_ANNOUNCE_TIP", "在屏幕中央显示销售提醒。")
    ZO_CreateStringId("SK_ALERT_CYRODIIL_NAME", "在西罗帝尔显示提醒")
    ZO_CreateStringId("SK_ALERT_CYRODIIL_TIP", "在西罗帝尔时仍继续显示屏幕提醒。聊天提醒如开启则照常显示。")
    ZO_CreateStringId("SK_MULT_ALERT_NAME", "显示多个提醒")
    ZO_CreateStringId("SK_MULT_ALERT_TIP", "每售出一件物品显示一个提醒，而不是在售出多个物品时显示总结提醒。")
    ZO_CreateStringId("SK_OPEN_MAIL_NAME", "随邮箱开启")
    ZO_CreateStringId("SK_OPEN_MAIL_TIP", "打开邮箱时，一同打开Master Merchant销售总结。")
    ZO_CreateStringId("SK_OPEN_STORE_NAME", "随商店打开")
    ZO_CreateStringId("SK_OPEN_STORE_TIP", "打开公会商店时，一同打开Master Merchant销售总结。")
    ZO_CreateStringId("SK_FULL_SALE_NAME", "显示全价")
    ZO_CreateStringId("SK_FULL_SALE_TIP", "显示商店分成被去掉之前的货物完整售价。")
    ZO_CreateStringId("SK_HISTORY_DEPTH_NAME", "销售历史大小")
    ZO_CreateStringId("SK_HISTORY_DEPTH_TIP", "存储多少天的销售数据。降低这个值可以减少该插件对游戏性能的影响。")
    ZO_CreateStringId("SK_SHOW_PRICING_NAME", "显示MM价格信息")
    ZO_CreateStringId("SK_SHOW_PRICING_TIP", "在物品的提示框中包含基于过往销售记录的MM价格数据。")
    ZO_CreateStringId("SK_SHOW_BONANZA_PRICE_NAME", "显示宝藏价提示框")
    ZO_CreateStringId("SK_SHOW_BONANZA_PRICE_TIP", "在提示框中显示宝藏价数据。该数据基于你最近24小时内到访过的商人商品。本设置不会移除图表中的宝藏价。")
    ZO_CreateStringId("MM_BONANZA_PRICEONGRAPH_NAME", "少于6个商品省略宝藏价")
    ZO_CreateStringId("MM_BONANZA_PRICEONGRAPH_TIP", "商品宝藏价数据少于6个则从图表中省略宝藏价。")
    ZO_CreateStringId("SK_SHOW_TTC_PRICE_NAME", "显示TTC价格参考")
    ZO_CreateStringId("SK_SHOW_TTC_PRICE_TIP", "在提示框中包含TTC简明价格作为参考。")
    ZO_CreateStringId("SK_SHOW_CRAFT_COST_NAME", "显示制造成本信息")
    ZO_CreateStringId("SK_SHOW_CRAFT_COST_TIP", "在提示框中包含基于原材料花费的制造成本。")
    ZO_CreateStringId("SK_SHOW_MATERIAL_COST_NAME", "显示材料成本信息")
    ZO_CreateStringId("SK_SHOW_MATERIAL_COST_TIP", "基于原材料的价格在物品提示框中显示大师委托材料成本。")
    ZO_CreateStringId("SK_CALC_NAME", "显示堆叠价格计算器")
    ZO_CreateStringId("SK_CALC_TIP", "当在公会商店发布物品时显示一个小型计算器。")
    ZO_CreateStringId("SK_WINDOW_FONT_NAME", "窗口字体")
    ZO_CreateStringId("SK_WINDOW_FONT_TIP", "Master Merchant窗口使用的字体")
    ZO_CreateStringId("SK_DEAL_CALC_TYPE_NAME", "交易计算器类型")
    ZO_CreateStringId("SK_DEAL_CALC_TYPE_TIP", "从MM均价、TTC均价、TTC建议价、宝藏价均值中为交易计算器选择类型。")
    ZO_CreateStringId("SK_ALERT_OPTIONS_NAME", "提醒选项")
    ZO_CreateStringId("SK_ALERT_OPTIONS_TIP", "提醒类型和声音选项。")
    ZO_CreateStringId("SK_ALERT_TYPE_NAME", "提醒声音")
    ZO_CreateStringId("SK_ALERT_TYPE_TIP", "当你出售物品时播放的声音。")
    ZO_CreateStringId("SK_ALERT_CHAT_NAME", "聊天提醒")
    ZO_CreateStringId("SK_ALERT_CHAT_TIP", "在聊天框中显示销售提醒。")
    ZO_CreateStringId("SK_OFFLINE_SALES_NAME", "离线销售报告")
    ZO_CreateStringId("SK_OFFLINE_SALES_TIP", "当你下次登录时，在聊天中显示你离线时售出的物品提醒。")
    ZO_CreateStringId("MM_TRAVEL_TO_ZONE_TEXT", "前往...")

    ZO_CreateStringId("MM_DISABLE_ATT_WARN_NAME", "关闭ATT提醒")
    ZO_CreateStringId("MM_DISABLE_ATT_WARN_TIP", "如果您想同时使用MM和ATT，则请使用此开关禁用ATT的提醒。")

    ZO_CreateStringId("SK_TRIM_DECIMALS_NAME", "隐藏价格中的小数")
    ZO_CreateStringId("SK_TRIM_DECIMALS_TIP", "将所有价格四舍五入到最接近的金币。")

    ZO_CreateStringId("SK_ROSTER_INFO_NAME", "在公会名册上显示信息")
    ZO_CreateStringId("SK_ROSTER_INFO_TIP", "根据MM窗口上选择的时间范围，在公会名册上显示购买和销售总额。")

    ZO_CreateStringId("SK_SHOW_GRAPH_NAME", "显示定价历史图表")
    ZO_CreateStringId("SK_SHOW_GRAPH_TIP", "在物品工具提示中包含销售历史的图表。")
    ZO_CreateStringId("SK_COLOR_GUILDNAME_NAME","为公会名称添加颜色")
    ZO_CreateStringId("SK_COLOR_GUILDNAME_TIP", "切换为公会名称添加颜色")

    -- Main window
    -- buttons to toggle personal and guild sales
    ZO_CreateStringId("SK_VIEW_ALL_SALES", "显示公会销售")
    ZO_CreateStringId("SK_VIEW_YOUR_SALES", "显示个人销售")
    -- window title viewMode - Personal sales
    ZO_CreateStringId("SK_SELF_SALES_TITLE", "个人销售")
    -- window title viewSize - All sales
    ZO_CreateStringId("SK_GUILD_SALES_TITLE", "公会销售")
    --  window titles - Both
    ZO_CreateStringId("SK_ITEM_REPORT_TITLE", "物品报告")
    ZO_CreateStringId("SK_SELER_REPORT_TITLE", "卖方报告")
    ZO_CreateStringId("SK_LISTING_REPORT_TITLE", "商人上架货品")
    -- endTimeFrameText on MM Graph
    ZO_CreateStringId("MM_ENDTIMEFRAME_TEXT", "现在")

    ZO_CreateStringId("SK_SHOW_UNIT", "显示单价")
    ZO_CreateStringId("SK_SHOW_TOTAL", "显示总价")
    ZO_CreateStringId("SK_BUYER_COLUMN", "买方")
    ZO_CreateStringId("SK_GUILD_COLUMN", "公会")
    ZO_CreateStringId("SK_ITEM_COLUMN", "售出物品")
    ZO_CreateStringId("SK_TIME_COLUMN", "销售时间")
    ZO_CreateStringId("SK_ITEM_LISTING_COLUMN", "上架物品")
    ZO_CreateStringId("SK_TIME_LISTING_COLUMN", "看见时间")
    ZO_CreateStringId("SK_ITEM_PURCHASE_COLUMN", "购买物品")
    ZO_CreateStringId("SK_TIME_PURCHASE_COLUMN", "购买时间")
    ZO_CreateStringId("SK_PRICE_COLUMN", "价格")
    ZO_CreateStringId("SK_PRICE_EACH_COLUMN", "价格(单)")
    ZO_CreateStringId("SK_FULL_PRICE_BUTTON", "显示全部价格")
    ZO_CreateStringId("SK_YOUR_PROFIT_BUTTON", "显示利润")
    ZO_CreateStringId("SK_REPORTS_LISTING_FEE_COLUMN", "费用")

    -- button tooltips
    ZO_CreateStringId("SK_ITEM_TOOLTIP", "右键单击一件物品将其链接到聊天。")
    ZO_CreateStringId("SK_BUYER_TOOLTIP", "右键单击一个名字以联系他们。")
    ZO_CreateStringId("SK_SORT_TIME_TOOLTIP", "点击以按销售时间排序。")
    ZO_CreateStringId("SK_SORT_PRICE_TOOLTIP", "点击以按销售价格排序。")
    ZO_CreateStringId("SK_STATS_TOOLTIP", "打开统计窗口。")
    ZO_CreateStringId("MM_LOCK_TOOLTIP", "锁定窗口。")
    ZO_CreateStringId("MM_UNLOCK_TOOLTIP", "解锁窗口。")
    ZO_CreateStringId("SK_SALES_TOOLTIP", "销售视图")
    ZO_CreateStringId("MM_NO_REPORTS_RANK", "无报告排行视图")
    ZO_CreateStringId("MM_NO_LISTINGS_RANK", "无上架排行视图")
    ZO_CreateStringId("MM_NO_PURCHASES_RANK", "无购买排行视图")
    ZO_CreateStringId("SK_PURCHASE_TOOLTIP", "购买视图")
    ZO_CreateStringId("SK_BONANZA_TOOLTIP", "宝藏价视图")
    ZO_CreateStringId("SK_MANAGEMENT_TOOLTIP", "管理视图")
    ZO_CreateStringId("SK_FEEDBACK_TOOLTIP", "发送反馈")
    ZO_CreateStringId("SK_CLOSE_TOOLTIP", "关闭窗口")
    ZO_CreateStringId("SK_NAME_FILTER_TOOLTIP", "按名称筛选")
    ZO_CreateStringId("SK_TYPE_FILTER_TOOLTIP", "按类型筛选")
    ZO_CreateStringId("SK_FEEDBACK_MESSAGE", "我无法在游戏中提供技术支持。无法发送图片或网址来理解或回答您的问题。\n\n希望您喜欢Master Merchant。您的反馈意见是非常受欢迎的。如果您想知道是否有办法帮助我买杯星巴克或汉堡，甚至帮助我更新电脑以便我能够继续开发模组...\n\n您可以访问：https://sharlikran.github.io")

    -- toggle view mode
    ZO_CreateStringId("SK_SELLER_TOOLTIP", "排行视图")
    ZO_CreateStringId("SK_ITEMS_TOOLTIP", "物品视图")

    ZO_CreateStringId("SK_TIME_DAYS", "<<1[昨日/1日前/%d日前]>>")
    ZO_CreateStringId("SK_TIME_DAYSAGO", "%s日前")
    ZO_CreateStringId("SK_THOUSANDS_SEP", ",")

    -- Chat and center screen alerts/messages
    ZO_CreateStringId("SK_FIRST_SCAN", "LibGuildStore中无数据。从LibHistoire获取数据可能会花费一些时间，时长取决于已储存的信息量。")
    ZO_CreateStringId("SK_REFRESH_LABEL", "刷新")
    ZO_CreateStringId("SK_REFRESH_START", "开始刷新。")
    ZO_CreateStringId("SK_REFRESH_DONE", "刷新完成。")
    ZO_CreateStringId("SK_REFRESH_WAIT", "请在刷新之间等待一分钟左右。")
    ZO_CreateStringId("SK_RESET_LABEL", "重置")
    ZO_CreateStringId("SK_RESET_CONFIRM_TITLE", "确认重置")
    ZO_CreateStringId("SK_RESET_CONFIRM_MAIN", "您确认要重置您的销售历史吗？所有数据将被替换为新的服务器数据。")
    ZO_CreateStringId("SK_RESET_DONE", "销售历史重置。")
    ZO_CreateStringId("SK_SALES_REPORT", "销售报告:")
    ZO_CreateStringId("SK_SALES_REPORT_END", "报告结束。")

    -- Stats Window
    ZO_CreateStringId("SK_STATS_TITLE", "销售统计")
    ZO_CreateStringId("SK_STATS_TIME_ALL", "使用所有数据")
    ZO_CreateStringId("SK_STATS_TIME_SOME", "返回 <<1[%d 天/%d 天]>>")
    ZO_CreateStringId("SK_STATS_ITEMS_SOLD", "物品售出: %s (%s%% 通过公会商人)")
    ZO_CreateStringId("SK_STATS_TOTAL_GOLD", "金币总数: %s |t16:16:EsoUI/Art/currency/currency_gold.dds|t (%s |t16:16:EsoUI/Art/currency/currency_gold.dds|t 每天)")
    ZO_CreateStringId("SK_STATS_BIGGEST", "最大销售: %s (%s |t16:16:EsoUI/Art/currency/currency_gold.dds|t)")
    ZO_CreateStringId("SK_STATS_DAYS", "天数: ")
    ZO_CreateStringId("SK_STATS_ALL_GUILDS", "所有公会")

    -- Keybindings
    ZO_CreateStringId("SI_BINDING_NAME_MasterMerchant_TOGGLE", "显示/隐藏 主窗口")
    ZO_CreateStringId("SI_BINDING_NAME_MasterMerchant_STATS_TOGGLE", "显示/隐藏 统计窗口")
    ZO_CreateStringId("SI_BINDING_NAME_MasterMerchant_GRAPH_TOGGLE", "显示/隐藏 价格历史图表")

    -- Old string for compatibility
    ZO_CreateStringId("MM_OLD_TIP_FORMAT_SINGLE", "M.M.价格 (%s, %d天): %.2f")
    ZO_CreateStringId("MM_OLD_TIP_FORMAT_MULTI", "M.M.价格 (%s, %d天): %.2f")
    ZO_CreateStringId("SK_OLD_PRICETIP_SALES", "<<1[%d 销售/%d 销售]>>")
    ZO_CreateStringId("MM_OLD_PRICETIP_ITEMS", "/<<1[%d 物品/%d 物品]>>")

    --[[TODO verify used strings
    ]]--
    ZO_CreateStringId("MM_MMPTC_CONDENSED_FORMAT", "MM价格(售:%s, 天:%s): %s") -- sales and days
    ZO_CreateStringId("MM_BONANZAPTC_CONDENSED_FORMAT", "宝藏价(上架:%s): %s") -- listings
    ZO_CreateStringId("MM_TTCPTC_MM_TTC_FORMAT", "TTC价格: 建议: %s/均价: %s")

    -- New Price Formatting Strings
    ZO_CreateStringId("MM_PTC_VOUCHER_VALUE_TYPE_NAME", "平均每券花费类型")
    ZO_CreateStringId("MM_PTC_VOUCHER_VALUE_TYPE_TIP", "基于MM均价, TTC均价, TTC建议价和宝藏价均价计算平均每券花费。")

    ZO_CreateStringId("MM_PTC_MM_HEADER", "MM价格(")
    ZO_CreateStringId("MM_PTC_BONANZA_HEADER", "宝藏价(")
    ZO_CreateStringId("MM_PTC_TTC_HEADER", "TTC价格(")

    ZO_CreateStringId("MM_TIP_MM_HEADER", "MM (")
    ZO_CreateStringId("MM_TIP_BONANZA_HEADER", "宝藏价 (")
    ZO_CreateStringId("MM_TIP_TTC_HEADER", "TTC (")

    ZO_CreateStringId("MM_NO_DATA_FORMAT", "无销售数据")
    ZO_CreateStringId("MM_NO_DATA_RANGE_FORMAT", "近 %d 天内无销售数据")

    ZO_CreateStringId("MM_PTC_PER_VOUCHER", "每券平均: %s")

    ZO_CreateStringId("MM_PTC_CLOSING_SEPERATOR", ")")
    ZO_CreateStringId("MM_PTC_CLOSING_SEPERATOR_SPACE", ") ")
    ZO_CreateStringId("MM_PTC_SLASH_SEPERATOR", "/")
    ZO_CreateStringId("MM_PTC_COLON_SPACE_SEPERATOR", ": ")
    ZO_CreateStringId("MM_PTC_COMMA_SPACE_SEPERATOR", ", ")
    ZO_CreateStringId("MM_PTC_COLON_SEPERATOR", ":")
    ZO_CreateStringId("MM_PTC_PRICE_FORMATER", ": %s")

    ZO_CreateStringId("MM_PTC_SINGULAR_SALE", "%s 销售")
    ZO_CreateStringId("MM_PTC_PLURAL_SALES", "%s 销售")

    ZO_CreateStringId("MM_PTC_SINGULAR_ITEM", "%s 物品")
    ZO_CreateStringId("MM_PTC_PLURAL_ITEMS", "%s 物品")

    ZO_CreateStringId("MM_PTC_SINGULAR_LISTING", "%s 上架")
    ZO_CreateStringId("MM_PTC_PLURAL_LISTINGS", "%s 上架")

    ZO_CreateStringId("MM_PTC_SINGULAR_DAY", ", %s 天)")
    ZO_CreateStringId("MM_PTC_PLURAL_DAYS", ", %s 天)")

    ZO_CreateStringId("MM_PTC_TTC_SUGGESTED", "建议: %s")
    ZO_CreateStringId("MM_PTC_TTC_AVERAGE", "均价: %s")

    -- New values
    ZO_CreateStringId("MM_GRAPHTIP_BONANZA", "宝藏价(%s 上架/%s 物品): %s")
    ZO_CreateStringId("MM_GRAPHTIP_TTC", "TTC [%s 上架] 建议: %s, 均价: %s")
    ZO_CreateStringId("MM_GRAPHTIP_MM_FORMAT_SINGULAR", "MM价格(%s 销售/%s 物品, %s 天): %s")
    ZO_CreateStringId("MM_GRAPHTIP_MM_FORMAT_PLURAL", "MM价格((%s 销售/%s 物品, %s 天): %s")
    ZO_CreateStringId("MM_GRAPHTIP_BONANZA_PRICE", "宝藏价(%s 上架/%s 物品): %s")
    ZO_CreateStringId("MM_GRAPHTIP_TTC_PRICE", "TTC [%s 上架] 建议: %s, 均价: %s")
    ZO_CreateStringId("MM_GRAPHTIP_PER_VOUCHER", "每券 %s (平均)")
    ZO_CreateStringId("MM_NO_TTC_PRICE", "[无TTC价格]")
    ZO_CreateStringId("MM_BONANZATIP_FORMAT_NONE", "宝藏价无数据")
    ZO_CreateStringId("MM_TIP_FOR", "以")
    ZO_CreateStringId("MM_LINK_TO_CHAT", "链接到聊天")
    ZO_CreateStringId("MM_STATS_TO_CHAT", "发布MM价格到聊天")
    ZO_CreateStringId("MM_APP_NAME", "Master Merchant")
    ZO_CreateStringId("MM_APP_AUTHOR", "Sharlikran, Philgo68, Khaibit")
    ZO_CreateStringId("MM_APP_MESSAGE_NAME", "[Master Merchant]")
    ZO_CreateStringId("MM_ADVICE_ERROR", "Master Merchant无法与商行挂接以提供购买建议。")

    ZO_CreateStringId("MM_TOTAL_TITLE", "总共: ")
    ZO_CreateStringId("MM_CP_RANK_SEARCH", "cp")
    ZO_CreateStringId("MM_REGULAR_RANK_SEARCH", "级")
    ZO_CreateStringId("MM_COLOR_WHITE", "白色")
    ZO_CreateStringId("MM_COLOR_GREEN", "绿色")
    ZO_CreateStringId("MM_COLOR_BLUE", "蓝色")
    ZO_CreateStringId("MM_COLOR_PURPLE", "紫色")
    ZO_CreateStringId("MM_COLOR_GOLD", "金色")
    ZO_CreateStringId("MM_COLOR_ORANGE", "橙色")
    ZO_CreateStringId("MM_PERCENT_CHAR", "%")
    ZO_CreateStringId("MM_ENTIRE_GUILD", "整个公会")
    ZO_CreateStringId("MM_INDEX_TODAY", "今日")
    ZO_CreateStringId("MM_INDEX_YESTERDAY", "昨日")
    ZO_CreateStringId("MM_INDEX_THISWEEK", "本周")
    ZO_CreateStringId("MM_INDEX_LASTWEEK", "上周")
    ZO_CreateStringId("MM_INDEX_PRIORWEEK", "前周")
    ZO_CreateStringId("MM_INDEX_7DAY", "7天")
    ZO_CreateStringId("MM_INDEX_10DAY", "10天")
    ZO_CreateStringId("MM_INDEX_30DAY", "30天")
    ZO_CreateStringId("SK_SELLER_COLUMN", "卖方")
    ZO_CreateStringId("SK_LOCATION_COLUMN", "地点")
    ZO_CreateStringId("SK_RANK_COLUMN", "等级")
    ZO_CreateStringId("SK_SALES_COLUMN", "销售")
    ZO_CreateStringId("SK_PURCHASES_COLUMN", "购买")
    ZO_CreateStringId("SK_TAX_COLUMN", "税金")
    ZO_CreateStringId("SK_COUNT_COLUMN", "数目")
    ZO_CreateStringId("SK_PERCENT_COLUMN", "百分比")
    ZO_CreateStringId("MM_NOTHING", "无")

    ZO_CreateStringId("MM_LISTING_ALERT", "您上架了 %s x%d 以 %s |t16:16:EsoUI/Art/currency/currency_gold.dds|t 在 %s。")

    ZO_CreateStringId("MM_CALC_OPTIONS_NAME", "计算显示选项")
    ZO_CreateStringId("MM_CALC_OPTIONS_TIP", "自定义Master Merchant计算显示选项以修改历史图表。")
    ZO_CreateStringId("MM_DAYS_FOCUS_ONE_NAME", "关注 1 天数")
    ZO_CreateStringId("MM_DAYS_FOCUS_ONE_TIP", "关注销售天数。")
    ZO_CreateStringId("MM_DAYS_FOCUS_TWO_NAME", "关注 2 天数")
    ZO_CreateStringId("MM_DAYS_FOCUS_TWO_TIP", "关注销售天数。")
    ZO_CreateStringId("MM_DEFAULT_TIME_NAME", "默认天数范围")
    ZO_CreateStringId("MM_DEFAULT_TIME_TIP", "历史默认使用的天数。(置空表示不显示。)")
    ZO_CreateStringId("MM_SHIFT_TIME_NAME", "<Shift>天数范围")
    ZO_CreateStringId("MM_SHIFT_TIME_TIP", "按住<Shift>时历史使用的天数。")
    ZO_CreateStringId("MM_CTRL_TIME_NAME", "<Crtl>天数范围")
    ZO_CreateStringId("MM_CTRL_TIME_TIP", "按住<Ctrl>时历史使用的天数。")
    ZO_CreateStringId("MM_CTRLSHIFT_TIME_NAME", "<Ctrl-Shift>天数范围")
    ZO_CreateStringId("MM_CTRLSHIFT_TIME_TIP", "按住<Ctrl-Shift>时历史使用的天数。")
    ZO_CreateStringId("MM_RANGE_ALL", "全部")
    ZO_CreateStringId("MM_RANGE_FOCUS1", "关注 1")
    ZO_CreateStringId("MM_RANGE_FOCUS2", "关注 2")
    ZO_CreateStringId("MM_RANGE_FOCUS3", "关注 3")
    ZO_CreateStringId("MM_RANGE_NONE", "无")
    ZO_CreateStringId("MM_BLACKLIST_NAME", "公会&账户筛选")
    ZO_CreateStringId("MM_BLACKLIST_TIP", "列出您希望MM计算时忽略的玩家和公会名。")
    ZO_CreateStringId("MM_BLACKLIST_MENU_SELLER", "添加卖方到筛选器")
    ZO_CreateStringId("MM_BLACKLIST_MENU_GUILD", "添加公会到筛选器")
    ZO_CreateStringId("MM_BLACKLIST_EXCEEDS", "无法添加帐户名。公会&账户筛选将超过2000字符。")

    ZO_CreateStringId("MM_CUSTOM_TIMEFRAME_NAME", "自定义时间段")
    ZO_CreateStringId("MM_CUSTOM_TIMEFRAME_TIP", "自定义一个额外的时间段，可在物品和公会列表中选择。")
    ZO_CreateStringId("MM_CUSTOM_TIMEFRAME_SCALE_NAME", "自定义时间段单位")
    ZO_CreateStringId("MM_CUSTOM_TIMEFRAME_SCALE_TIP", "显示自定义时间段的时间单位。")
    ZO_CreateStringId("MM_CUSTOM_TIMEFRAME_HOURS", "时")
    ZO_CreateStringId("MM_CUSTOM_TIMEFRAME_DAYS", "天")
    ZO_CreateStringId("MM_CUSTOM_TIMEFRAME_WEEKS", "周")
    ZO_CreateStringId("MM_CUSTOM_TIMEFRAME_GUILD_WEEKS", "全公会周")

    ZO_CreateStringId("MM_DISPLAY_PROFIT_NAME", "显示利润而非预付金")
    ZO_CreateStringId("MM_DISPLAY_PROFIT_TIP", "在公会商店中显示预计利润而非预付金百分比。")
    ZO_CreateStringId("MM_MIN_PROFIT_FILTER_NAME", "显示利润筛选")
    ZO_CreateStringId("MM_MIN_PROFIT_FILTER_TIP", "为AGS添加一个额外的利润值筛选器。")

    ZO_CreateStringId("MM_MIN_ITEM_COUNT_NAME", "最小物品数量")
    ZO_CreateStringId("MM_MIN_ITEM_COUNT_TIP", "在历史记录中保留物品的最低销售数量。")
    ZO_CreateStringId("MM_MAX_ITEM_COUNT_NAME", "最大物品数量")
    ZO_CreateStringId("MM_MAX_ITEM_COUNT_TIP", "在历史记录中保留物品的最高销售数量。")

    ZO_CreateStringId("MM_REPLACE_INVENTORY_VALUES_NAME", "替代物品栏价值")
    ZO_CreateStringId("MM_REPLACE_INVENTORY_VALUES_TIP", "在物品栏表格中显示MM价格。")
    ZO_CreateStringId("MM_REPLACE_INVENTORY_VALUE_TYPE_NAME", "替代价值类型")
    ZO_CreateStringId("MM_REPLACE_INVENTORY_VALUE_TYPE_TIP", "为物品栏表格中的价值选择显示MM均价、TTC均价、TTC建议价、及宝藏价均值。")
    ZO_CreateStringId("MM_REPLACE_INVENTORY_SHOW_UNITPRICE_NAME", "显示单价")
    ZO_CreateStringId("MM_REPLACE_INVENTORY_SHOW_UNITPRICE_TIP", "启用或禁用显示物品栏中物品的单价。")

    ZO_CreateStringId("MM_DISPLAY_LISTING_MESSAGE_NAME", "显示上架信息")
    ZO_CreateStringId("MM_DISPLAY_LISTING_MESSAGE_TIP", "每完成一次公会商店上架则在聊天框显示一条信息。")

    ZO_CreateStringId("SK_PER_CHANGE_COLUMN", "税金")
    ZO_CreateStringId("SK_PER_CHANGE_TIP", "您的销售向公会缴纳的税金。")
    ZO_CreateStringId("MM_POPUP_ITEM_DATA", "跳出物品数据")
    ZO_CreateStringId("MM_GRAPH_TIP", "在 %s %s 售出 %s x %d 给 %s ，每个 %s。")
    ZO_CreateStringId("MM_GRAPH_TIP_SINGLE", "在 %s %s 售出一个 %s 给 %s 以 %s。")
    ZO_CreateStringId("MM_GRAPH_INFO_NAME", "图表数据点详细信息")
    ZO_CreateStringId("MM_GRAPH_INFO_TIP", "开启后将显示时间、公会、买方、卖方及价格信息。关闭后图表数据点仅显示价格。")
    ZO_CreateStringId("MM_LEVEL_QUALITY_NAME", "等级/品质 选择器")
    ZO_CreateStringId("MM_LEVEL_QUALITY_TIP", "在物品跳出框中显示一个调整等级/品质的按钮。")
    ZO_CreateStringId("MM_SEARCH_BONANZA", "搜索宝藏价")

    ZO_CreateStringId("MM_SKIP_INDEX_NAME", "最小索引")
    ZO_CreateStringId("MM_SKIP_INDEX_TIP", "跳过销售历史记录索引以节省内存，但在MM界面进行搜索将变得更慢。")

    ZO_CreateStringId("MM_DAYS_ONLY_NAME", "仅使用销售历史大小")
    ZO_CreateStringId("MM_DAYS_ONLY_TIP", "整理销售历史时，将仅使用销售历史大小。这将忽略最小和最大数量。")

    ZO_CreateStringId("MM_SHOW_AMOUNT_TAXES_NAME", "增加税收销售排名导出")
    ZO_CreateStringId("MM_SHOW_AMOUNT_TAXES_TIP", "当时用 /mm export 时，将为用户计算总销售额的3.5%作为税金缴纳量显示。")

    ZO_CreateStringId("MM_GUILD_ROSTER_OPTIONS_NAME", "公会名单选项")
    ZO_CreateStringId("MM_GUILD_ROSTER_OPTIONS_TIP", "开启或关闭不同的公会成员名单列。(更新LibGuild名单前需要重新加载UI)")

    ZO_CreateStringId("MM_PURCHASES_COLUMN_NAME", "开启购买列")
    ZO_CreateStringId("MM_PURCHASES_COLUMN_TIP", "在公会成员名单中显示购买。")

    ZO_CreateStringId("MM_SALES_COLUMN_NAME", "开启销售列")
    ZO_CreateStringId("MM_SALES_COLUMN_TIP", "在公会成员名单中显示销售。")

    ZO_CreateStringId("MM_TAXES_COLUMN_NAME", "开启税金列")
    ZO_CreateStringId("MM_TAXES_COLUMN_TIP", "在公会成员名单中显示税金。")

    ZO_CreateStringId("MM_COUNT_COLUMN_NAME", "开启数目列")
    ZO_CreateStringId("MM_COUNT_COLUMN_TIP", "在公会成员名单中显示数目。")

    ZO_CreateStringId("MM_DAYS_FOCUS_THREE_NAME", "关注 3 天数")
    ZO_CreateStringId("MM_DAYS_FOCUS_THREE_TIP", "关注销售天数。")

    ZO_CreateStringId("MM_DEBUG_LOGGER_NAME", "激活自定义调试日志")
    ZO_CreateStringId("MM_DEBUG_LOGGER_TIP", "需要时，使用LibDebugLogger激活可选的调试日志。")

    ZO_CreateStringId("MM_DATA_MANAGEMENT_NAME", "数据管理选项")
    ZO_CreateStringId("MASTER_MERCHANT_WINDOW_NAME", "Master Merchant窗口选项")
    ZO_CreateStringId("MASTER_MERCHANT_TOOLTIPS", "提示框")
    ZO_CreateStringId("MASTER_MERCHANT_TOOLTIP_OPTIONS", "其他提示框选项")
    ZO_CreateStringId("GUILD_STORE_OPTIONS", "公会商店选项")
    ZO_CreateStringId("MASTER_MERCHANT_DEBUG_OPTIONS", "调试选项")
    ZO_CreateStringId("GUILD_MASTER_OPTIONS", "公会会长选项")
    ZO_CreateStringId("MASTER_MERCHANT_INVENTORY_OPTIONS", "物品栏选项")

    ZO_CreateStringId("MM_EXTENSION_SHOPPINGLIST_NAME", "购物单")
    ZO_CreateStringId("MM_EXTENSION_BONANZA_NAME", "宝藏价")

    -- New Price To Chat Options
    ZO_CreateStringId("MM_PTC_OPTIONS_HEADER", "贴价到聊天选项")
    ZO_CreateStringId("MM_PTC_CONDENSED_FORMAT_NAME", "使用缩略格式")
    ZO_CreateStringId("MM_PTC_CONDENSED_FORMAT_TIP", "为贴价到聊天使用缩略格式。如果安装了TTC则会包含TTC价格数据。")
    ZO_CreateStringId("MM_PTC_ITEM_COUNT_NAME", "包含物品数量")
    ZO_CreateStringId("MM_PTC_ITEM_COUNT_TIP", "在价格格式中包含物品数量。")

    ZO_CreateStringId("MM_PTC_LISTINGS_COUNT_NAME", "包含上架数")
    ZO_CreateStringId("MM_PTC_LISTINGS_COUNT_TIP", "在价格格式中为宝藏价和TTC价格包含上架数。")

    ZO_CreateStringId("MM_PTC_TTC_DATA_NAME", "包含TTC价格数据")
    ZO_CreateStringId("MM_PTC_TTC_DATA_TIP", "在贴价到聊天中包含TTC价格数据。")
    ZO_CreateStringId("MM_PTC_BONANZA_NAME", "少于6个上架则省略宝藏价")
    ZO_CreateStringId("MM_PTC_BONANZA_TIP", "宝藏价的上架商品数据少于6个则从价格格式中省略宝藏价。")

    ZO_CreateStringId("MM_PTC_ADD_VOUCHER_NAME", "为委托加入每券花费信息")
    ZO_CreateStringId("MM_PTC_ADD_VOUCHER_TIP", "基于委托的均价为委托加入每张券花费信息。Writ Worthy插件的每券花费信息与此不同，是基于制造物品所需的原材料计算的。")

    -- new notification messages
    ZO_CreateStringId("MM_INITIALIZING", "Master Merchant正在初始化...")
    ZO_CreateStringId("MM_INITIALIZED", "Master Merchant初始化完成: 包含 %s 销售, %s 购买, %s 上架, %s 发布, %s 取消。")
    ZO_CreateStringId("MM_MINIMAL_INDEXING", "最小化索引已开始...")
    ZO_CreateStringId("MM_FULL_INDEXING", "全量索引已开始...")
    ZO_CreateStringId("MM_INDEXING_SUMMARY", "索引中: %s 秒以索引 %s 条销售记录，%s 独特单词。")
    ZO_CreateStringId("MM_TRUNCATE_COMPLETE", "整理完成: %s 秒以整理, %s 条旧记录被移除。")
    ZO_CreateStringId("MM_SLIDING_SUMMARY", "移动中: %s 秒以移动 %s 条销售记录到 %s。")
    ZO_CreateStringId("MM_REINDEXING_COMPLETE", "重建索引完成。")
    ZO_CreateStringId("MM_REINDEXING_EVERYTHING", "重建所有索引。")
    ZO_CreateStringId("MM_CLEANING_TIME_ELAPSED", "清理: %s 秒以清理:")
    ZO_CreateStringId("MM_CLEANING_BAD_REMOVED", '  %s 条损坏的销售记录被清除')
    ZO_CreateStringId("MM_CLEANING_REINDEXED", '  %s 条销售记录重建索引')
    ZO_CreateStringId("MM_CLEANING_WRONG_VERSION", '  %s 条损坏的物品版本')
    ZO_CreateStringId("MM_CLEANING_WRONG_ID", '  %s 条损坏的物品ID')
    ZO_CreateStringId("MM_CLEANING_WRONG_MULE", '  %s 条损坏的转移物品ID')
    ZO_CreateStringId("MM_CLEANING_STRINGS_CONVERTED", '  %s 条数字被转换为字符串事件')
    ZO_CreateStringId("MM_CLEANING_BAD_ITEMLINKS", '  %s 条损坏的物品链接被清除')
    ZO_CreateStringId("MM_LIBHISTOIRE_REFRESH_FINISHED", "LibHistoire刷新完成")
    ZO_CreateStringId("MM_LIBHISTOIRE_ACTIVATED", 'LibHistoire已激活, 正在监听公会销售事件...')
    ZO_CreateStringId("MM_STILL_INITIALIZING", "Master Merchant仍在初始化。")
    ZO_CreateStringId("MM_LIBHISTOIRE_REFRESHING", "LibHistoire正在刷新...")
    ZO_CreateStringId("MM_LIBHISTOIRE_REFRESH_ONCE", "LibHistoire每个会话只能刷新一次。")
    ZO_CreateStringId("MM_EXPORTING", "导出: %s")
    ZO_CreateStringId("MM_EXPORTING_INVALID", "无效! 无效的公会序号, 1 到 5。")
    ZO_CreateStringId("MM_DUP_PURGE", "重复清除: %s 秒以清除 %s 条重复项。")
    ZO_CreateStringId("MM_CHECK_STATUS", "公会名称: %s ; 已加载事件数: %s ; 事件计数: %s ; 速度: %s ; 剩余时间: %s")

    -- new debug messages
    ZO_CreateStringId("MM_FILTER_TIME", "筛选时间: %s")

    -- new slash and help command strings
    ZO_CreateStringId("MM_GUILD_DEAL_TYPE", "公会列表显示已切换。")
    ZO_CreateStringId("MM_RESET_POSITION", "您的MM窗口位置已重置。")
    ZO_CreateStringId("MM_CLEAR_SAVED_PRICES", "您的价格已清除。")
    ZO_CreateStringId("MM_CLEAR_SAVED_PRICES_GUILD", "已清除所选公会的价格。")
    ZO_CreateStringId("MM_CLEAN_UPDATE_DESC", "MM Clean已设置为更新搜索文本。")
    ZO_CreateStringId("MM_CLEAN_START", "清理错误记录。")
    ZO_CreateStringId("MM_CLEAN_START_DELAY", "当当前扫描完成时，将开始清理错误的销售记录。")
    ZO_CreateStringId("MM_GUILD_INDEX_NAME", "[%s] - %s")
    ZO_CreateStringId("MM_GUILD_INDEX_INCLUDE", "请包含您想要导出的公会序号。")
    ZO_CreateStringId("MM_GUILD_SALES_EXAMPLE", "例如 '/mm sales 1' 以导出公会1。")
    ZO_CreateStringId("MM_PERSONAL_SALES_EXAMPLE", "例如 '/mm sales 1' 以导出公会1。")
    ZO_CreateStringId("MM_SALES_ACTIVITY_EXPORT_START", "正在导出销售活动。")
    ZO_CreateStringId("MM_SALES_PERSONAL_EXPORT_START", "正在导出个人销售。")
    ZO_CreateStringId("MM_EXPORT_SHOPPING_LIST_START", "正在导出购买。")
    ZO_CreateStringId("MM_EXPORT_COMPLETE", "导出完成。/reloadui 以保存文件。")
    ZO_CreateStringId("MM_GUILD_EXPORT_EXAMPLE", "例如 '/mm export 1' 以导出公会1。")
    ZO_CreateStringId("MM_EXPORT_START", "正在导出所选周的 销售/购买/税金/排名 数据。")
    ZO_CreateStringId("MM_SLIDING_SALES", "正在移动您的销售。")
    ZO_CreateStringId("MM_SLIDING_SALES_DELAY", "当前扫描完成时，将开始移动您的销售记录。")
    ZO_CreateStringId("MM_PURGING_DUPLICATES", "正在清除重复项。")
    ZO_CreateStringId("MM_PURGING_DUPLICATES_DELAY", "当前扫描完成时，将开始清除重复的销售记录。")

    -- help
    ZO_CreateStringId("MM_HELP_WINDOW", "/mm  - 显示/隐藏Master Merchant主窗口")
    ZO_CreateStringId("MM_HELP_DUPS", "/mm dups  - 扫描您的历史以清除重复条目")
    ZO_CreateStringId("MM_HELP_CLEAN", "/mm clean - 清除损坏的销售记录 (无效信息)")
    ZO_CreateStringId("MM_HELP_CLEARPRICES", "/mm clearprices  - 清除您的历史上架价格")
    ZO_CreateStringId("MM_HELP_INVISIBLE", "/mm invisible  - 重置MM窗口位置以防其无法显示 (即超出屏幕)")
    ZO_CreateStringId("MM_HELP_EXPORT", "/mm export <公会序号>  - 为公会'导出'上周的 销售/购买 总数")
    ZO_CreateStringId("MM_HELP_SALES", "/mm sales <公会序号>  - 为公会'导出'销售活动数据")
    ZO_CreateStringId("MM_HELP_PERSONAL", "/mm personal <公会序号>  - 为公会'导出'个人销售活动数据")
    ZO_CreateStringId("MM_HELP_PURCHASES", "/mm purchases  - '导出'购物单数据")
    ZO_CreateStringId("MM_HELP_DEAL", "/mm deal  - 在公会商店中，在预付金%和利润之间切换交易显示。")
    ZO_CreateStringId("MM_HELP_TYPES", "/mm types  - 列出可用的物品类型筛选")
    ZO_CreateStringId("MM_HELP_TRAITS", "/mm traits  - 列出可用的物品特质筛选")
    ZO_CreateStringId("MM_HELP_QUALITY", "/mm quality  - 列出可用的物品品质筛选")
    ZO_CreateStringId("MM_HELP_EQUIP", "/mm equip  - 列出可用的物品装备类型筛选")
    ZO_CreateStringId("MM_HELP_SLIDE", "/mm slide  - 迁移您的销售记录到一个新的@名称 (例如从@kindredspiritgr到@kindredspiritgrSlid)  /mm slideback 以逆转。")

    -- new summary toggle
    ZO_CreateStringId("MM_GUILD_ITEM_SUMMARY_NAME", "开启公会和物品摘要")
    ZO_CreateStringId("MM_GUILD_ITEM_SUMMARY_TIP", "在处理完成后显示公会和物品总数。")

    ZO_CreateStringId("MM_INDEXING_NAME", "开启索引摘要")
    ZO_CreateStringId("MM_INDEXING_TIP", "在处理完成后显示索引总数。")

    -- Bonanza filter windows
    ZO_CreateStringId("MM_FILTERBY_LINK_TITLE", "按物品名称筛选")
    ZO_CreateStringId("MM_FILTERBY_TYPE_TITLE", "按物品类型筛选")
    ZO_CreateStringId("MM_ITEMNAME_TEXT", "物品名称")
    ZO_CreateStringId("MM_FILTER_MENU_ADD_ITEM", "将名称加入筛选")
    ZO_CreateStringId("MM_CRAFT_COST_TO_CHAT", "贴出制造成本到聊天")
    ZO_CreateStringId("MM_FILTER_MENU_REMOVE_ITEM", "从筛选中移除")
    ZO_CreateStringId("MM_CLEAR_FILTER_BUTTON", "清除筛选")

    ZO_CreateStringId("MM_LGS_NOT_INITIALIZED_AGS_REFRESH", "LibGuildStore未初始化。信息将不会刷新。")
    ZO_CreateStringId("MM_CRAFTCOST_PRICE_TIP", "制造成本: %s")
    ZO_CreateStringId("MM_CRAFTCOSTPER_PRICE_TIP", "制造成本: %s (每个%s)")
    ZO_CreateStringId("MM_MATCOST_PRICE_TIP", "材料成本: %s")
    ZO_CreateStringId("MM_MATCOST_PLUS_WRITCOST_TIP", "材料成本: %s / 委托成本: %s\n总成本: %s")

    ZO_CreateStringId("SK_ALL_CALC_NAME", "保存中心定价数据")
    ZO_CreateStringId("SK_ALL_CALC_TIP", "开启后，所有定价数据对所有公会而言是一样的。如关闭则为每个公会分别保存定价数据。")

    -- notifications
    ZO_CreateStringId("MM_ATT_DATA_ENABLED", "[MasterMerchant] 您可以在LibGuildStore设置菜单中将ATT数据导入Master Merchat。您可以在MasterMerchant设置中的调试选项下关闭此提醒。")
    ZO_CreateStringId("MM_RESET_LISTINGS_WARN_FORCE", "这完成后将会强制进行一次UI重载。")
    ZO_CreateStringId("MM_RESET_LISTINGS_WARN", "更改此值后您需要重载UI才能生效。")
    ZO_CreateStringId("MM_ZONE_INVALID", "更改此值后您需要重载UI才能生效。")
    ZO_CreateStringId("MM_BEAM_ME_UP_MISSING", "BeamMeUp未激活。")
    ZO_CreateStringId("MM_MMXXDATA_OBSOLETE", "仅在导入MM数据时需要旧的MMxxData模块。请关闭所有MMxxData模块以提高性能及减少加载时间。")
    ZO_CreateStringId("MM_SHOPPINGLIST_OBSOLETE", "仅在导入老旧数据时需要ShoppingList。请在导入其数据后关闭ShoppingList。")
    ZO_CreateStringId("MM_RELOADUI_WARN", "更改后将会强制进行一次UI重载。")
    ZO_CreateStringId("MM_REMOVED_ITEM_WARN", "从游戏使用中移除")
    ZO_CreateStringId("MM_VENDOR_ITEM_WARN", "|cF90202商人售卖此物价格:|r %d")

    -- AGS Integration
    ZO_CreateStringId("AGS_DEAL_RANGE_LABEL", "交易范围")
    ZO_CreateStringId("AGS_PROFIT_RANGE_LABEL", "利润范围")
    ZO_CreateStringId("AGS_OVERPRICED_LABEL", "溢价")
    ZO_CreateStringId("AGS_OKAY_LABEL", "还行")
    ZO_CreateStringId("AGS_REASONABLE_LABEL", "可接受")
    ZO_CreateStringId("AGS_GOOD_LABEL", "不错")
    ZO_CreateStringId("AGS_GREAT_LABEL", "很棒")
    ZO_CreateStringId("AGS_BUYIT_LABEL", "买它!")
    ZO_CreateStringId("AGS_PERCENT_ORDER_LABEL", "交易百分比")
    ZO_CreateStringId("AGS_PERCENT_ORDER_ASCENDING", "增长")
    ZO_CreateStringId("AGS_PERCENT_ORDER_DESCENDING", "下降")
    ZO_CreateStringId("AGS_PERCENT_ORDER_NAME", "AGS交易百分比排序顺序")
    ZO_CreateStringId("AGS_PERCENT_ORDER_DESC", "在按交易百分比排序时选择升序或降序。")

    -- Custom Deal Calc
    ZO_CreateStringId("MM_DEALCALC_OPTIONS_NAME", "交易计算器选项")
    ZO_CreateStringId("MM_DEALCALC_OPTIONS_TIP", "交易计算器相关的配置选项。")
    ZO_CreateStringId("MM_DEALCALC_ENABLE_NAME", "开启自定义交易计算器")
    ZO_CreateStringId("MM_DEALCALC_ENABLE_TIP", "开启自定义交易计算器。")
    ZO_CreateStringId("MM_DEALCALC_BUYIT_NAME", "|cEECA2A买它！交易范围|r")
    ZO_CreateStringId("MM_DEALCALC_BUYIT_TIP", "买它！交易范围, 黄色。")
    ZO_CreateStringId("MM_DEALCALC_SEVENTYFIVE_NAME", "|cA02EF7很棒交易范围|r")
    ZO_CreateStringId("MM_DEALCALC_SEVENTYFIVE_TIP", "很棒交易范围, 紫色。")
    ZO_CreateStringId("MM_DEALCALC_FIFTY_NAME", "|c3A92FF不错交易范围|r")
    ZO_CreateStringId("MM_DEALCALC_FIFTY_TIP", "不错交易范围, 蓝色。")
    ZO_CreateStringId("MM_DEALCALC_TWENTYFIVE_NAME", "|c2DC50E可接受交易范围|r")
    ZO_CreateStringId("MM_DEALCALC_TWENTYFIVE_TIP", "可接受交易范围, 绿色。")
    ZO_CreateStringId("MM_DEALCALC_ZERO_NAME", "|cFFFFFF还行交易范围|r")
    ZO_CreateStringId("MM_DEALCALC_ZERO_TIP", "还行交易范围, 白色。")
    ZO_CreateStringId("MM_DEALCALC_OKAY_TEXT", "|cC2B280所有超过|r |cFFFFFF还行交易范围|r |cC2B280的价值将被认为是溢价，并显示为|r|cF90202红色|r。")
    ZO_CreateStringId("MM_MODIFIED_TTC_SUGGESTED_NAME", "将TTC建议价格修改为25%")
    ZO_CreateStringId("MM_MODIFIED_TTC_SUGGESTED_TIP", "开启时，TTC建议价格将被修改为25%。")
    ZO_CreateStringId("MM_SHOW_SEARCH_BONANZA_NAME", "显示 宝藏 搜索菜单")
    ZO_CreateStringId("MM_SHOW_SEARCH_BONANZA_TIP", "从各种库存视图中显示搜索 宝藏 菜单。")

    ZO_CreateStringId("MASTER_MERCHANT_TIMEFORMAT_OPTIONS", "时间格式选项")
    ZO_CreateStringId("MM_SHOW_TIME_NAME", "切换多少时间之前vs小时和分钟")
    ZO_CreateStringId("MM_SHOW_TIME_TIP", "切换是否显示3天前的销售情况或以小时和分钟显示的销售时间。")
    ZO_CreateStringId("MM_USE_TWENTYFOUR_HOUR_TIME_NAME", "切换24小时时间")
    ZO_CreateStringId("MM_USE_TWENTYFOUR_HOUR_TIME_TIP", "切换是否使用24小时时间格式。")
    ZO_CreateStringId("MM_USE_MONTH_DAY_FORMAT", "月.日")
    ZO_CreateStringId("MM_USE_DAY_MONTH_FORMAT", "日.月")
    ZO_CreateStringId("MM_USE_MONTH_DAY_YEAR_FORMAT", "月.日.年")
    ZO_CreateStringId("MM_USE_YEAR_MONTH_DAY_FORMAT", "年.月.日")
    ZO_CreateStringId("MM_USE_DAY_MONTH_YEAR_FORMAT", "日.月.年")
    ZO_CreateStringId("MM_DATE_FORMAT_NAME", "选择日期格式")
    ZO_CreateStringId("MM_DATE_FORMAT_TIP", "选择 月/日 或 日/月 格式。")
    ZO_CreateStringId("MM_CUSTOM_TIMEFRAME_WARN", "|cff0000警告|r: 在开始时，所有的销售已经按照自定义时间段进行了排序。更多信息，请参阅文档。")

    -- Filter Timerange Dropdown
    ZO_CreateStringId("MM_WINDOW_TIME_RANGE_LABEL_DEFAULT", "默认")
    ZO_CreateStringId("MM_WINDOW_TIME_RANGE_LABEL_THIRTY", "30天")
    ZO_CreateStringId("MM_WINDOW_TIME_RANGE_LABEL_SIXTY", "30-60天")
    ZO_CreateStringId("MM_WINDOW_TIME_RANGE_LABEL_NINETY", "60-90天")
    ZO_CreateStringId("MM_WINDOW_TIME_RANGE_LABEL_CUSTOM", "自定义")
    ZO_CreateStringId("MM_WINDOW_CUSTOM_TIMEFRAME_NAME", "自定义筛选时间段")
    ZO_CreateStringId("MM_WINDOW_CUSTOM_TIMEFRAME_TIP", "选择在主商户窗口中显示销售额时将使用的天数。 这用于公会销售视图底部的下拉菜单。")

    ZO_CreateStringId("MM_DUPE_LIBGUILDSTORE_CONFIRM_TITLE", "检测到重复的LibGuildStore数据")
    ZO_CreateStringId("MM_DUPE_LIBGUILDSTORE_CONFIRM_MAIN", "检测到重复的账户名称、公会名称或物品链接索引。销售数据的差异将会发生。您可以取消并在2023年8月14日之前还原备份，否则需要进行所有数据的完全重置。")

    -- New Outlier Options
    ZO_CreateStringId("SK_TRIM_OUTLIERS_NAME", "忽略异常价格")
    ZO_CreateStringId("SK_TRIM_OUTLIERS_TIP", "忽略价格超出标准差的正常范围的交易。")
    ZO_CreateStringId("MM_OUTLIER_OPTIONS_HEADER", "异常值选项")
    ZO_CreateStringId("MM_OUTLIER_PERCENTILE_NAME", "仅按百分位数修整")
    ZO_CreateStringId("MM_OUTLIER_PERCENTILE_TIP", "仅启用修整销售数据的外部百分位数。")
    ZO_CreateStringId("MM_OUTLIER_PERCENTILE_VALUE_NAME", "百分位数")
    ZO_CreateStringId("MM_OUTLIER_PERCENTILE_VALUE_TIP", "指定要移除极端值的外部百分位数。")
    ZO_CreateStringId("MM_AGRESSIVE_TRIM_OUTLIERS_NAME", "启用激进限制")
    ZO_CreateStringId("MM_AGRESSIVE_TRIM_OUTLIERS_TIP", "启用后将执行额外的异常值计算，限制非常严格。")
    
    -- New Sales Format Options
    ZO_CreateStringId("MM_SALES_FORMAT_HEADER", "销售格式")
    ZO_CreateStringId("MM_SALES_FORMAT_NAME", "使用历史和近期销售数据")
    ZO_CreateStringId("MM_SALES_FORMAT_TIP", "启用后，系统将利用历史和近期销售数据进行所有计算。由于采用了新的服务器数据库格式，这将包括可能与当前销售数据重复的旧销售条目。")
    
    --Missing 24.07.02
    ZO_CreateStringId("MM_PTC_TTC_SALES_HEADER", "TTC平均售价 (")
    ZO_CreateStringId("MM_DATE_RANGE_NONE", "未选择日期范围")
    ZO_CreateStringId("MM_NO_TTC_SALES_PRICE", "[无TTC售价数据]")
    ZO_CreateStringId("SK_SALES_ALERT_GROUP_CSA", "你在公会商店已售出 <<1>> 物品，总价 |cD5B526<<2>>|r |t16:16:EsoUI/Art/currency/currency_gold.dds|t")
    ZO_CreateStringId("SK_SALES_ALERT_GROUP_CHAT", "你在公会商店已售出 <<1>> 物品，总价 <<2>> |t16:16:EsoUI/Art/currency/currency_gold.dds|t")
    ZO_CreateStringId("SK_SALES_ALERT_CSA", "你已在 <<4>> 售出 <<t:1>> x <<2>> (<<5>>)，总价 |cD5B526<<3>>|r |t16:16:EsoUI/Art/currency/currency_gold.dds|t")
    ZO_CreateStringId("SK_SALES_ALERT_CHAT", "你已在 <<4>> 售出 <<t:1>> x <<2>> (<<5>>)，总价 <<3>> |t16:16:EsoUI/Art/currency/currency_gold.dds|t")
    ZO_CreateStringId("SK_SHOW_TTC_SALES_AVERAGE_TIP", "将提示框中的TTC推荐价替换为TTC平均售价")
    ZO_CreateStringId("SK_SHOW_TTC_SALES_AVERAGE_NAME", "使用TTC平均售价")
    
    -- Warning text
    ZO_CreateStringId("MM_WARN_DISABLE_TEXT", "点击此处禁用这条警告")
    ZO_CreateStringId("MM_WARN_MESSAGE_TEXT", "截至 9.3.8游戏版本，公会历史信息功能似乎已稳定。查看文档以了解有关请求数据或使用刷新 LibHistoire 功能的信息", 2)
  end
  
  --Sepcial Setting
  BB.SetGlobalHook(function() Fun() end, "MM_FontGameLargeBold")

end end

BB.AddonList["MasterMerchant"] = function() 
  if not MasterMerchant then return false end
  return true 
end