local BB = MABabel

--Master Merchant
--3.8.07
do
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
  
  local First = true
  local OldFun = ZO_CreateStringId
  ZO_CreateStringId = function(...)
    local key = ...
    if key == "MM_WARN_MESSAGE_TEXT" and First then
      First = false
      Fun()
      return
    end
    return OldFun(...)
  end
  
  BB.AddonList["MasterMerchant"] = function() 
    if not MasterMerchant then return false end
    return true 
  end
end

--pChat
--10.0.5.3
BB.AddonList["pChat"] = function() if not pChat then return false end
  SafeAddString(PCHAT_Tab1                ,"选择聊天标签 1",1)
  SafeAddString(PCHAT_Tab2                ,"选择聊天标签 2",1)
  SafeAddString(PCHAT_Tab3                ,"选择聊天标签 3",1)
  SafeAddString(PCHAT_Tab4                ,"选择聊天标签 4",1)
  SafeAddString(PCHAT_Tab5                ,"选择聊天标签 5",1)
  SafeAddString(PCHAT_Tab6                ,"选择聊天标签 6",1)
  SafeAddString(PCHAT_Tab7                ,"选择聊天标签 7",1)
  SafeAddString(PCHAT_Tab8                ,"选择聊天标签 8",1)
  SafeAddString(PCHAT_Tab9                ,"选择聊天标签 9",1)
  SafeAddString(PCHAT_Tab10               ,"选择聊天标签 10",1)
  SafeAddString(PCHAT_Tab11               ,"选择聊天标签 11",1)
  SafeAddString(PCHAT_Tab12               ,"选择聊天标签 12",1)
    -- 9.3.6.24 Additions
  SafeAddString(PCHAT_CHATTABH                     ,"聊天标签设置",1)
  SafeAddString(PCHAT_enableChatTabChannel         ,"每个标签启用最后一次使用的频道",1)
  SafeAddString(PCHAT_enableChatTabChannelT        ,"开启聊天标签来记住最后一次使用的频道,它将成为默认的,直到你选择使用一个不同的标签。",1)
  SafeAddString(PCHAT_enableWhisperTab             ,"开启私聊跳转",1)
  SafeAddString(PCHAT_enableWhisperTabT            ,"开启将你的私聊转到一个特定的标签。",1)
  -- New Need Translations
  SafeAddString(PCHAT_ADDON_INFO     ,"pChat大幅修改了文本在聊天框中显示的方式。你可以修改颜色, 尺寸, 通知, 播放声音等等。\nChatMentions插件已经被融合进pChat。\n使用slashcommand输入命令 /msg 来定义缩略聊天命令,以将您的长文本写入聊天框 (例如公会欢迎信息)",1)
  SafeAddString(PCHAT_ADDON_INFO_2   ,"使用slash命令 \'/pchatdeleteoldsv\' 以删除老旧的聊天记录 (缩小聊天记录文件大小).",1)

  SafeAddString(PCHAT_OPTIONSH                         ,"聊天设置",1)
  SafeAddString(PCHAT_MESSAGEOPTIONSH                  ,"消息设置",1)
  SafeAddString(PCHAT_MESSAGEOPTIONSNAMEH              ,"消息中的名字",1)
  SafeAddString(PCHAT_MESSAGEOPTIONSNAME_ALLOTHERH     ,"所有其他聊天信息",1)
  SafeAddString(PCHAT_MESSAGEOPTIONSCOLORH             ,"消息颜色",1)

  SafeAddString(PCHAT_GUILDNUMBERS                     ,"公会数字",1)
  SafeAddString(PCHAT_GUILDNUMBERSTT                   ,"在公会标签边上显示公会数字",1)

  SafeAddString(PCHAT_ALLGUILDSSAMECOLOUR              ,"为所有公会使用相同颜色",1)
  SafeAddString(PCHAT_ALLGUILDSSAMECOLOURTT            ,"所有公会聊天使用与 \'%s\' 一样的颜色",1)

  SafeAddString(PCHAT_ALLZONESSAMECOLOUR               ,"为所有区域聊天使用相同颜色",1)
  SafeAddString(PCHAT_ALLZONESSAMECOLOURTT             ,"所有区域聊天使用与 /zone 一样的颜色",1)

  SafeAddString(PCHAT_ALLNPCSAMECOLOUR                 ,"为所有NPC使用相同颜色",1)
  SafeAddString(PCHAT_ALLNPCSAMECOLOURTT               ,"所有NPC行使用与 NPC说 一样的颜色",1)

  SafeAddString(PCHAT_DELZONETAGS                      ,"移除区域标签",1)
  SafeAddString(PCHAT_DELZONETAGSTT                    ,"在消息开始处移除例如 说, 吆喝 等标签",1)

  SafeAddString(PCHAT_ZONETAGSAY                       ,"说",1)
  SafeAddString(PCHAT_ZONETAGYELL                      ,"吆喝",1)
  SafeAddString(PCHAT_ZONETAGPARTY                     ,"队伍",1)
  SafeAddString(PCHAT_ZONETAGZONE                      ,"区域",1)

  SafeAddString(PCHAT_CARRIAGERETURN                   ,"名称和消息间换行",1)
  SafeAddString(PCHAT_CARRIAGERETURNTT                 ,"玩家名和聊天文本之间用换行符分隔。",1)

  SafeAddString(PCHAT_USEESOCOLORS                     ,"使用ESO颜色",1)
  SafeAddString(PCHAT_USEESOCOLORSTT                   ,"使用在社交设置中所设置的颜色替代pChat颜色\n如果您启用这个设置,聊天频道颜色将不会被激活!",1)

  SafeAddString(PCHAT_DIFFFORESOCOLORS                 ,"开启亮度差异",1)
  SafeAddString(PCHAT_DIFFFORESOCOLORSTT               ,"按照此值调整所显示的玩家名称/区域与消息文本之间的亮度差异(名称会变暗/消息文本会变亮)。\n如果您启用选项\'每行使用同一种颜色\',此选项将失效!\n将滑块设置为0以禁用亮度差。",1)
  SafeAddString(PCHAT_DIFFFORESOCOLORSDARKEN           ,"亮度差异：变暗",1)
  SafeAddString(PCHAT_DIFFFORESOCOLORSDARKENTT         ,"按照此值变暗聊天名称",1)
  SafeAddString(PCHAT_DIFFFORESOCOLORSLIGHTEN          ,"亮度差异：变亮",1)
  SafeAddString(PCHAT_DIFFFORESOCOLORSLIGHTENTT        ,"按照此值变亮聊天文本",1)

  SafeAddString(PCHAT_REMOVECOLORSFROMMESSAGES         ,"移除消息颜色",1)
  SafeAddString(PCHAT_REMOVECOLORSFROMMESSAGESTT       ,"阻止人们使用彩色的文字",1)

  SafeAddString(PCHAT_PREVENTCHATTEXTFADING            ,"防止聊天文字渐隐",1)
  SafeAddString(PCHAT_PREVENTCHATTEXTFADINGTT          ,"防止聊天文字自动隐藏 (您可以在社交选项中设置防止聊天背景渐隐",1)
  SafeAddString(PCHAT_CHATTEXTFADINGBEGIN	             ,"多少秒后开始文字渐隐",1)
  SafeAddString(PCHAT_CHATTEXTFADINGBEGINTT	     ,"此秒数过后,开始渐隐文字",1)
  SafeAddString(PCHAT_CHATTEXTFADINGDURATION	     ,"文字渐隐持续秒数",1)
  SafeAddString(PCHAT_CHATTEXTFADINGDURATIONTT	     ,"文字渐隐将持续此秒数",1)


  SafeAddString(PCHAT_AUGMENTHISTORYBUFFER             ,"增加聊天中显示的行数",1)
  SafeAddString(PCHAT_AUGMENTHISTORYBUFFERTT           ,"默认情况下,聊天只显示最后200行。此功能将此值提升到1000行",1)

  SafeAddString(PCHAT_USEONECOLORFORLINES              ,"每行使用同一种颜色",1)
  SafeAddString(PCHAT_USEONECOLORFORLINESTT            ,"只使用第一种颜色（玩家颜色）,而不是每个频道都使用两种颜色",1)

  SafeAddString(PCHAT_GUILDTAGSNEXTTOENTRYBOX          ,"输入框旁边的公会标签",1)
  SafeAddString(PCHAT_GUILDTAGSNEXTTOENTRYBOXTT        ,"在你聊天输入框的边上显示公会标签替代公会名",1)

  SafeAddString(PCHAT_DISABLEBRACKETS                  ,"删除名称周围的括号",1)
  SafeAddString(PCHAT_DISABLEBRACKETSTT                ,"删除玩家名称周围的括号 []",1)

  SafeAddString(PCHAT_DEFAULTCHANNEL                   ,"默认频道",1)
  SafeAddString(PCHAT_DEFAULTCHANNELTT                 ,"选择登录时默认使用的频道",1)

  SafeAddString(PCHAT_DEFAULTCHANNELCHOICE99           ,"Do not change",1)
  SafeAddString(PCHAT_DEFAULTCHANNELCHOICE31           ,"/zone",1)
  SafeAddString(PCHAT_DEFAULTCHANNELCHOICE0            ,"/say",1)
  SafeAddString(PCHAT_DEFAULTCHANNELCHOICE12           ,"/guild1",1)
  SafeAddString(PCHAT_DEFAULTCHANNELCHOICE13           ,"/guild2",1)
  SafeAddString(PCHAT_DEFAULTCHANNELCHOICE14           ,"/guild3",1)
  SafeAddString(PCHAT_DEFAULTCHANNELCHOICE15           ,"/guild4",1)
  SafeAddString(PCHAT_DEFAULTCHANNELCHOICE16           ,"/guild5",1)
  SafeAddString(PCHAT_DEFAULTCHANNELCHOICE17           ,"/officer1",1)
  SafeAddString(PCHAT_DEFAULTCHANNELCHOICE18           ,"/officer2",1)
  SafeAddString(PCHAT_DEFAULTCHANNELCHOICE19           ,"/officer3",1)
  SafeAddString(PCHAT_DEFAULTCHANNELCHOICE20           ,"/officer4",1)
  SafeAddString(PCHAT_DEFAULTCHANNELCHOICE21           ,"/officer5",1)

  SafeAddString(PCHAT_GEOCHANNELSFORMAT                ,"名称格式",1)
  SafeAddString(PCHAT_GEOCHANNELSFORMATTT              ,"本地频道 (说, 区域, 私聊) 使用的名称格式",1)

  SafeAddString(PCHAT_DEFAULTTAB                       ,"默认标签",1)
  SafeAddString(PCHAT_DEFAULTTABTT                     ,"选择启动时显示的默认标签",1)

  SafeAddString(PCHAT_ADDCHANNELANDTARGETTOHISTORY     ,"使用箭头键切换频道",1)
  SafeAddString(PCHAT_ADDCHANNELANDTARGETTOHISTORYTT   ,"当使用箭头键切换频道来匹配先前使用的频道。",1)

  SafeAddString(PCHAT_URLHANDLING                      ,"侦测url和链接",1)
  SafeAddString(PCHAT_URLHANDLINGTT                    ,"如果一条以 http(s):// 开头的URL在聊天中被链接,pChat将自动检测到它,你将能够通过点击它直接使用您的系统浏览器打开有关的链接。\n注意: ESO总是会先询问您是否想要打开外部链接。",1)

  SafeAddString(PCHAT_ENABLECOPY                       ,"开启复制",1)
  SafeAddString(PCHAT_ENABLECOPYTT                     ,"开启右击文本复制 - 同时开启左击频道切换。如果在聊天中显示链接出现问题,请禁用此选项",1)

    -- Group Settings

  SafeAddString(PCHAT_GROUPH                           ,"组队频道微调",1)

  SafeAddString(PCHAT_ENABLEPARTYSWITCH                ,"自动切换：组队",1)
  SafeAddString(PCHAT_ENABLEPARTYSWITCHTT              ,"开启组队切换将会在您加入队伍时自动将当前频道切换为组队频道,并在您离开队伍时切回您的默认频道。",1)

  SafeAddString(PCHAT_ENABLEPARTYSWITCHPORTTODUNGEON   ,"自动切换：地牢/重载界面",1)
  SafeAddString(PCHAT_ENABLEPARTYSWITCHPORTTODUNGEONTT ,"如你传送进入地牢/执行重载界面/登录且已经在队伍中等情况下,上面提到的自动切换也会将频道切换为 /party。\n此设置仅当组队切换开启时生效!",1)

  SafeAddString(PCHAT_GROUPLEADER                      ,"队长特殊颜色",1)
  SafeAddString(PCHAT_GROUPLEADERTT                    ,"开启此功能将允许你为队伍领袖的消息设置一个特殊颜色",1)

  SafeAddString(PCHAT_GROUPLEADERCOLOR                 ,"队长名称颜色",1)
  SafeAddString(PCHAT_GROUPLEADERCOLORTT               ,"队长名称颜色",1)

  SafeAddString(PCHAT_GROUPLEADERCOLOR1                ,"队长消息颜色",1)
  SafeAddString(PCHAT_GROUPLEADERCOLOR1TT              ,"队长消息的颜色。当\"使用ESO颜色\"选项开启时,此选项将被禁用。",1)

  SafeAddString(PCHAT_GROUPNAMES                       ,"组队名称格式",1)
  SafeAddString(PCHAT_GROUPNAMESTT                     ,"组队频道中您队友的名称格式",1)

    -- Sync settings

  SafeAddString(PCHAT_SYNCH                            ,"同步设置",1)

  SafeAddString(PCHAT_CHATSYNCCONFIG                   ,"同步聊天配置",1)
  SafeAddString(PCHAT_CHATSYNCCONFIGTT                 ,"如同步开启, 您所有的角色将获取相同的聊天配置 (颜色, 位置, 窗口大小, 标签)\n注意: 请配置好了所有自定义选项后再启用此选项!",1)

  SafeAddString(PCHAT_CHATSYNCCONFIGIMPORTFROM         ,"导入聊天设置",1)
  SafeAddString(PCHAT_CHATSYNCCONFIGIMPORTFROMTT       ,"您可以随时从其他角色导入聊天设置到本角色 (颜色, 位置, 窗口大小, 标签)",1)

    -- Apparence

  SafeAddString(PCHAT_APPARENCEMH                      ,"聊天窗口设置",1)

  SafeAddString(PCHAT_WINDOWDARKNESS                   ,"聊天窗透明度",1)
  SafeAddString(PCHAT_WINDOWDARKNESSTT                 ,"增加聊天窗口的暗化",1)

  SafeAddString(PCHAT_CHATMINIMIZEDATLAUNCH            ,"启动时聊天最小化",1)
  SafeAddString(PCHAT_CHATMINIMIZEDATLAUNCHTT          ,"游戏开始时最小化屏幕左侧的聊天窗口",1)

  SafeAddString(PCHAT_CHATMINIMIZEDINMENUS             ,"在菜单中最小化聊天",1)
  SafeAddString(PCHAT_CHATMINIMIZEDINMENUSTT           ,"当您打开菜单时,最小化屏幕左侧的聊天窗口 (公会, 状态, 制造, 等等)",1)

  SafeAddString(PCHAT_CHATMINIMIZEDINMENUS_HALF        ,"仅在某些菜单中最小化聊天",1)
  SafeAddString(PCHAT_CHATMINIMIZEDINMENUS_HALFTT      ,"仅在CP,设置菜单中最小化聊天",1)

  SafeAddString(PCHAT_CHATMAXIMIZEDAFTERMENUS          ,"退出菜单后恢复聊天",1)
  SafeAddString(PCHAT_CHATMAXIMIZEDAFTERMENUSTT        ,"总是在退出菜单后恢复聊天窗口",1)

  SafeAddString(PCHAT_FONTCHANGE                       ,"聊天字体",1)
  SafeAddString(PCHAT_FONTCHANGETT                     ,"设置聊天字体",1)

  SafeAddString(PCHAT_TABWARNING                       ,"新消息提醒",1)
  SafeAddString(PCHAT_TABWARNINGTT                     ,"设置标签名称的警告颜色",1)

    -- Whisper settings

  SafeAddString(PCHAT_IMH                              ,"私聊",1)

  SafeAddString(PCHAT_SOUNDFORINCWHISPS                ,"收到私聊声音",1)
  SafeAddString(PCHAT_SOUNDFORINCWHISPSTT              ,"选择收到私聊时播放的声音",1)

  SafeAddString(PCHAT_NOTIFYIM                         ,"视觉通知",1)
  SafeAddString(PCHAT_NOTIFYIMTT                       ,"如您错过一条私聊, 一个通知将出现在聊天的右上角,允许您快速访问它。另外, 如果当时你的聊天框被最小化了, 一个通知将显示在隐藏条上",1)

  SafeAddString(PCHAT_SOUNDFORINCWHISPSCHOICE1         ,"无",1)
  SafeAddString(PCHAT_SOUNDFORINCWHISPSCHOICE2         ,"通知",1)
  SafeAddString(PCHAT_SOUNDFORINCWHISPSCHOICE3         ,"点击",1)
  SafeAddString(PCHAT_SOUNDFORINCWHISPSCHOICE4         ,"写字",1)

    -- Restore chat settings

  SafeAddString(PCHAT_RESTORECHATH                     ,"恢复聊天",1)
  SafeAddString(PCHAT_RESTOREONRELOADUI                ,"重载界面之后",1)
  SafeAddString(PCHAT_RESTOREONRELOADUITT              ,"在使用ReloadUI()重新载入游戏之后, pChat将恢复您的聊天和历史",1)

  SafeAddString(PCHAT_RESTOREONLOGOUT                  ,"登出之后",1)
  SafeAddString(PCHAT_RESTOREONLOGOUTTT                ,"登出之后, 如果您在下面所设置的时间内登录的话,pChat将恢复您的聊天和历史",1)

  SafeAddString(PCHAT_RESTOREONAFK                     ,"被踢出之后",1)
  SafeAddString(PCHAT_RESTOREONAFKTT                   ,"因挂机、内存溢出或网络问题被踢出游戏之后, 如果您在下面所设置的时间内登录的话,pChat将恢复您的聊天和历史",1)

  SafeAddString(PCHAT_RESTOREONQUIT                    ,"离开游戏之后",1)
  SafeAddString(PCHAT_RESTOREONQUITTT                  ,"离开游戏之后, 如果您在下面所设置的时间内登录的话,pChat将恢复您的聊天和历史",1)

  SafeAddString(PCHAT_TIMEBEFORERESTORE                ,"恢复聊天的最大时间",1)
  SafeAddString(PCHAT_TIMEBEFORERESTORETT              ,"超过此时间之后(小时), pChat将不再尝试恢复聊天",1)

  SafeAddString(PCHAT_RESTORESYSTEM                    ,"恢复系统消息",1)
  SafeAddString(PCHAT_RESTORESYSTEMTT                  ,"当恢复聊天时,恢复系统消息 (例如登录提醒或插件消息)",1)

  SafeAddString(PCHAT_RESTORESYSTEMONLY                ,"只恢复系统消息",1)
  SafeAddString(PCHAT_RESTORESYSTEMONLYTT              ,"当恢复聊天时,仅仅恢复系统消息 (例如登录提醒或插件消息)",1)

  SafeAddString(PCHAT_RESTOREWHISPS                    ,"恢复私聊",1)
  SafeAddString(PCHAT_RESTOREWHISPSTT                  ,"登出、掉线或退出之后恢复发出和收到的私聊。重载界面后将总是恢复私聊",1)

  SafeAddString(PCHAT_RESTOREWHISPS_NO_NOTIFY          ,"恢复时关闭私聊通知",1)
  SafeAddString(PCHAT_RESTOREWHISPS_NO_NOTIFY_TT       ,"被恢复的私聊信息不显示私聊提醒, 不着色聊天标签。\n仅当私聊通知被开启时可开启。",1)

  SafeAddString(PCHAT_RESTORETEXTENTRYHISTORYATLOGOUTQUIT        ,"恢复文本输入历史",1)
  SafeAddString(PCHAT_RESTORETEXTENTRYHISTORYATLOGOUTQUITTT      ,"登出、掉线或退出之后使用箭头键恢复文本输入历史。重载界面后将总是恢复文本输入历史",1)

  SafeAddString(PCHAT_RESTOREHISTORY_SHOWACTUALZONENAME        ,"[pChat]历史已恢复: %s in %s",1)
    -- Anti Spam settings

  SafeAddString(PCHAT_ANTISPAMH                        ,"反刷屏",1)

  SafeAddString(PCHAT_FLOODPROTECT                     ,"开启抗刷屏",1)
  SafeAddString(PCHAT_FLOODPROTECTTT                   ,"防止你附近的玩家重复发送相同的信息",1)

  SafeAddString(PCHAT_FLOODGRACEPERIOD                 ,"抗刷屏持续时间",1)
  SafeAddString(PCHAT_FLOODGRACEPERIODTT               ,"相同消息将被忽略的秒数",1)

  SafeAddString(PCHAT_LOOKINGFORPROTECT                ,"忽略求组队消息",1)
  SafeAddString(PCHAT_LOOKINGFORPROTECTTT              ,"忽略玩家求组队的信息",1)

  SafeAddString(PCHAT_WANTTOPROTECT                    ,"忽略求交易消息",1)
  SafeAddString(PCHAT_WANTTOPROTECTTT                  ,"忽略玩家寻求买卖交易的信息",1)

  SafeAddString(PCHAT_WANTTOPROTECT_GOLDCROWNSSPAM                    ,"忽略皇冠金币交易消息",1)
  SafeAddString(PCHAT_WANTTOPROTECT_GOLDCROWNSSPAMTT                  ,"忽略玩家寻求买卖皇冠和金币的信息",1)


  SafeAddString(PCHAT_SPAMGRACEPERIOD                  ,"临时刷屏阻止",1)
  SafeAddString(PCHAT_SPAMGRACEPERIODTT                ,"当你自己发布了一条求组队或交易信息时, 临时刷屏阻止此功能被改写, 给你一个时间来获取回答。功能会在所设置的时间之后自动生效 (以分钟记)",1)

    -- Nicknames settings

  SafeAddString(PCHAT_NICKNAMESH                       ,"简称",1)
  SafeAddString(PCHAT_NICKNAMESD                       ,"你可以为想要的人设置简称, 输入 老名字,新名字 即可\n\n例如: @Ayantir,Little Blonde\n\n如果老名字是 @玩家ID 格式将替换该账号下所有角色,如果老名字是角色名的话则只替换指定角色。",1)
  SafeAddString(PCHAT_NICKNAMES                        ,"简称清单",1)
  SafeAddString(PCHAT_NICKNAMESTT                      ,"你可以为想要的人设置简称, 输入 老名字,新名字 即可\n\n例如: @Ayantir,Little Blonde\n\n如果老名字是 @玩家ID 格式将替换该账号下所有角色,如果老名字是角色名的话则只替换指定角色。",1)

    -- Timestamp settings

  SafeAddString(PCHAT_TIMESTAMPH                       ,"时间戳",1)

  SafeAddString(PCHAT_ENABLETIMESTAMP                  ,"开启时间戳",1)
  SafeAddString(PCHAT_ENABLETIMESTAMPTT                ,"为聊天消息添加时间戳",1)

  SafeAddString(PCHAT_TIMESTAMPCOLORISLCOL             ,"时间戳颜色与玩家名相同",1)
  SafeAddString(PCHAT_TIMESTAMPCOLORISLCOLTT           ,"忽略时间戳颜色并使用与玩家/NPC名称相同的颜色",1)

  SafeAddString(PCHAT_TIMESTAMPFORMAT                  ,"时间戳格式",1)
  SafeAddString(PCHAT_TIMESTAMPFORMATTT                ,"格式:\nHH: 小时(24)\nhh: 小时(12)\nH: 小时(24, 不含0)\nh: 小时(12, 不含0)\nA: AM/PM\na: am/pm\nm: 分钟\ns: 秒钟",1)

  SafeAddString(PCHAT_TIMESTAMP                        ,"时间戳",1)
  SafeAddString(PCHAT_TIMESTAMPTT                      ,"为时间戳设置颜色",1)

    -- Guild settings
  SafeAddString(PCHAT_GUILDH                           ,"公会微调",1)

  SafeAddString(PCHAT_CHATCHANNELSH                    ,"聊天频道",1)

  SafeAddString(PCHAT_NICKNAMEFOR                      ,"简称",1)
  SafeAddString(PCHAT_NICKNAMEFORTT                    ,"设置简称",1)

  SafeAddString(PCHAT_OFFICERTAG                       ,"官员聊天标签",1)
  SafeAddString(PCHAT_OFFICERTAGTT                     ,"官员聊天频道前缀",1)

  SafeAddString(PCHAT_SWITCHFOR                        ,"频道开关",1)
  SafeAddString(PCHAT_SWITCHFORTT                      ,"频道的新开关。例如: /myguild",1)

  SafeAddString(PCHAT_OFFICERSWITCHFOR                 ,"官员聊天开关",1)
  SafeAddString(PCHAT_OFFICERSWITCHFORTT               ,"官员聊天频道的新开关。例如: /offs",1)

  SafeAddString(PCHAT_NAMEFORMAT                       ,"名称格式",1)
  SafeAddString(PCHAT_NAMEFORMATTT                     ,"选择公会成员名称格式",1)

  SafeAddString(PCHAT_FORMATCHOICE1                    ,"@玩家ID",1)
  SafeAddString(PCHAT_FORMATCHOICE2                    ,"角色名",1)
  SafeAddString(PCHAT_FORMATCHOICE3                    ,"角色名@玩家ID",1)
  SafeAddString(PCHAT_FORMATCHOICE4                    ,"@玩家ID/角色名",1)

  SafeAddString(PCHAT_SETCOLORSFORTT                   ,"为<<1>>的成员设置颜色",1)
  SafeAddString(PCHAT_SETCOLORSFORCHATTT               ,"为<<1>>的消息设置颜色",1)

  SafeAddString(PCHAT_SETCOLORSFOROFFICIERSTT          ,"为<<1>>的官员聊天频道成员设置颜色",1)
  SafeAddString(PCHAT_SETCOLORSFOROFFICIERSCHATTT      ,"为<<1>>的官员聊天频道消息设置颜色",1)

  SafeAddString(PCHAT_MEMBERS                          ,"玩家名",1)
  SafeAddString(PCHAT_CHAT                             ,"消息",1)

  SafeAddString(PCHAT_OFFICERSTT                       ,"官员",1)

    -- Channel colors settings

  SafeAddString(PCHAT_CHATCOLORSH                      ,"聊天频道颜色",1)

  SafeAddString(PCHAT_SAY                              ,"说 - 名称",1)
  SafeAddString(PCHAT_SAYTT                            ,"为 说 频道设置玩家名称颜色",1)

  SafeAddString(PCHAT_SAYCHAT                          ,"说 - 信息",1)
  SafeAddString(PCHAT_SAYCHATTT                        ,"为 说 频道设置聊天信息颜色",1)

  SafeAddString(PCHAT_ZONE                             ,"区域 - 名称",1)
  SafeAddString(PCHAT_ZONETT                           ,"为 区域 频道设置玩家名称颜色",1)

  SafeAddString(PCHAT_ZONECHAT                         ,"区域 - 信息",1)
  SafeAddString(PCHAT_ZONECHATTT                       ,"为 区域 频道设置聊天信息颜色",1)

  SafeAddString(PCHAT_YELL                             ,"吆喝 - 名称",1)
  SafeAddString(PCHAT_YELLTT                           ,"为 吆喝 频道设置玩家名称颜色",1)

  SafeAddString(PCHAT_YELLCHAT                         ,"吆喝 - 信息",1)
  SafeAddString(PCHAT_YELLCHATTT                       ,"为 吆喝 频道设置聊天信息颜色",1)

  SafeAddString(PCHAT_INCOMINGWHISPERS                 ,"收到私聊 - 名称",1)
  SafeAddString(PCHAT_INCOMINGWHISPERSTT               ,"为 收到私聊 设置玩家名称颜色",1)

  SafeAddString(PCHAT_INCOMINGWHISPERSCHAT             ,"收到私聊 - 信息",1)
  SafeAddString(PCHAT_INCOMINGWHISPERSCHATTT           ,"为 收到私聊 设置聊天信息颜色",1)

  SafeAddString(PCHAT_OUTGOINGWHISPERS                 ,"发出私聊 - 名称",1)
  SafeAddString(PCHAT_OUTGOINGWHISPERSTT               ,"为 发出私聊 设置玩家名称颜色",1)

  SafeAddString(PCHAT_OUTGOINGWHISPERSCHAT             ,"发出私聊 - 信息",1)
  SafeAddString(PCHAT_OUTGOINGWHISPERSCHATTT           ,"为 发出私聊 设置聊天信息颜色",1)

  SafeAddString(PCHAT_GROUP                            ,"组队 - 名称",1)
  SafeAddString(PCHAT_GROUPTT                          ,"为 组队聊天 设置玩家名称颜色",1)

  SafeAddString(PCHAT_GROUPCHAT                        ,"组队 - 信息",1)
  SafeAddString(PCHAT_GROUPCHATTT                      ,"为 组队聊天 设置聊天信息颜色",1)

    -- Other colors

  SafeAddString(PCHAT_OTHERCOLORSH                     ,"其他颜色",1)

  SafeAddString(PCHAT_EMOTES                           ,"表情 - 名称",1)
  SafeAddString(PCHAT_EMOTESTT                         ,"为 表情 频道设置玩家名称颜色",1)

  SafeAddString(PCHAT_EMOTESCHAT                       ,"表情 - 消息",1)
  SafeAddString(PCHAT_EMOTESCHATTT                     ,"为 表情 频道设置聊天消息颜色",1)

  SafeAddString(PCHAT_ENZONE                           ,"英语区域 - 名称",1)
  SafeAddString(PCHAT_ENZONETT                         ,"为 英语区域 频道设置玩家名称颜色",1)

  SafeAddString(PCHAT_ENZONECHAT                       ,"英语区域 - 消息",1)
  SafeAddString(PCHAT_ENZONECHATTT                     ,"为 英语区域 频道设置聊天消息颜色",1)

  SafeAddString(PCHAT_FRZONE                           ,"法语区域 - 名称",1)
  SafeAddString(PCHAT_FRZONETT                         ,"为 法语区域 频道设置玩家名称颜色",1)

  SafeAddString(PCHAT_FRZONECHAT                       ,"法语区域 - 消息",1)
  SafeAddString(PCHAT_FRZONECHATTT                     ,"为 法语区域 频道设置聊天消息颜色",1)

  SafeAddString(PCHAT_DEZONE                           ,"德语区域 - 名称",1)
  SafeAddString(PCHAT_DEZONETT                         ,"为 德语区域 频道设置玩家名称颜色",1)

  SafeAddString(PCHAT_DEZONECHAT                       ,"德语区域 - 消息",1)
  SafeAddString(PCHAT_DEZONECHATTT                     ,"为 德语区域 频道设置聊天消息颜色",1)

  SafeAddString(PCHAT_JPZONE                           ,"日语区域 - 名称",1)
  SafeAddString(PCHAT_JPZONETT                         ,"为 日语区域 频道设置玩家名称颜色",1)

  SafeAddString(PCHAT_JPZONECHAT                       ,"日语区域 - 消息",1)
  SafeAddString(PCHAT_JPZONECHATTT                     ,"为 日语区域 频道设置聊天消息颜色",1)

  SafeAddString(PCHAT_RUZONE                           ,"俄语区域 - 名称",1)
  SafeAddString(PCHAT_RUZONETT                         ,"为 俄语区域 频道设置玩家名称颜色",1)

  SafeAddString(PCHAT_RUZONECHAT                       ,"俄语区域 - 消息",1)
  SafeAddString(PCHAT_RUZONECHATTT                     ,"为 俄语区域 频道设置聊天消息颜色",1)

  SafeAddString(PCHAT_ESZONE                           ,"西语区域 - 名称",1)
  SafeAddString(PCHAT_ESZONETT                         ,"为 西语区域 频道设置玩家名称颜色",1)

  SafeAddString(PCHAT_ESZONECHAT                       ,"西语区域 - 消息",1)
  SafeAddString(PCHAT_ESZONECHATTT                     ,"为 西语区域 频道设置聊天消息颜色",1)

  SafeAddString(PCHAT_ZHZONE                           ,"中文区域 - 名称",1)
  SafeAddString(PCHAT_ZHZONETT                         ,"为 中文区域 频道设置玩家名称颜色",1)

  SafeAddString(PCHAT_ZHZONECHAT                       ,"中文区域 - 消息",1)
  SafeAddString(PCHAT_ZHZONECHATTT                     ,"为 中文区域 频道设置聊天消息颜色",1)

  SafeAddString(PCHAT_NPCSAY                           ,"NPC 说 - 名称",1)
  SafeAddString(PCHAT_NPCSAYTT                         ,"为NPC 说 设置NPC名称颜色",1)

  SafeAddString(PCHAT_NPCSAYCHAT                       ,"NPC 说 - 消息",1)
  SafeAddString(PCHAT_NPCSAYCHATTT                     ,"为NPC 说 设置NPC聊天消息颜色",1)

  SafeAddString(PCHAT_NPCYELL                          ,"NPC 吆喝 - 名称",1)
  SafeAddString(PCHAT_NPCYELLTT                        ,"为NPC 吆喝 设置NPC名称颜色",1)

  SafeAddString(PCHAT_NPCYELLCHAT                      ,"NPC 吆喝 - 消息",1)
  SafeAddString(PCHAT_NPCYELLCHATTT                    ,"为NPC 吆喝 设置NPC聊天消息颜色",1)

  SafeAddString(PCHAT_NPCWHISPER                       ,"NPC 私语 - 名称",1)
  SafeAddString(PCHAT_NPCWHISPERTT                     ,"为NPC 私语 设置NPC名称颜色",1)

  SafeAddString(PCHAT_NPCWHISPERCHAT                   ,"NPC 私语 - 消息",1)
  SafeAddString(PCHAT_NPCWHISPERCHATTT                 ,"为NPC 私语 设置NPC聊天消息颜色",1)

  SafeAddString(PCHAT_NPCEMOTES                        ,"NPC 表情 - 名称",1)
  SafeAddString(PCHAT_NPCEMOTESTT                      ,"为NPC 表情 设置NPC名称颜色",1)

  SafeAddString(PCHAT_NPCEMOTESCHAT                    ,"NPC 表情 - 消息",1)
  SafeAddString(PCHAT_NPCEMOTESCHATTT                  ,"为NPC 表情 设置NPC聊天消息颜色",1)

    -- Debug settings

  SafeAddString(PCHAT_DEBUGH                           ,"调试",1)

  SafeAddString(PCHAT_DEBUG                            ,"调试",1)
  SafeAddString(PCHAT_DEBUGTT                          ,"调试",1)

    -- Various strings not in panel settings

  SafeAddString(PCHAT_UNDOCKTEXTENTRY                  ,"解锁文本输入",1)
  SafeAddString(PCHAT_REDOCKTEXTENTRY                  ,"锁定文本输入",1)

  SafeAddString(PCHAT_COPYXMLTITLE                     ,"使用Ctrl+C复制文本",1)
  SafeAddString(PCHAT_COPYXMLLABEL                     ,"使用Ctrl+C复制文本",1)
  SafeAddString(PCHAT_COPYXMLTOOLONG                   ,"被分段文本",1)
  SafeAddString(PCHAT_COPYXMLPREV                      ,"上一个",1)
  SafeAddString(PCHAT_COPYXMLNEXT                      ,"下一个",1)
  SafeAddString(PCHAT_COPYXMLAPPLY                     ,"应用筛选器",1)

  SafeAddString(PCHAT_COPYMESSAGECT                    ,"复制消息",1)
  SafeAddString(PCHAT_COPYLINECT                       ,"复制行",1)
  SafeAddString(PCHAT_COPYDISCUSSIONCT                 ,"复制频道聊天",1)
  SafeAddString(PCHAT_ALLCT                            ,"复制全部聊天",1)

  SafeAddString(PCHAT_SWITCHTONEXTTABBINDING           ,"切换到下一个标签",1)
  SafeAddString(PCHAT_TOGGLECHATBINDING                ,"切出聊天窗口",1)
  SafeAddString(PCHAT_WHISPMYTARGETBINDING             ,"私聊我的目标",1)
  SafeAddString(PCHAT_COPYWHOLECHATBINDING	     ,"复制全部聊天 (对话)",1)

  SafeAddString(PCHAT_SAVMSGERRALREADYEXISTS                ,"无法保存您的消息, 此条已经存在",1)
  SafeAddString(PCHAT_AUTOMSG_NAME_DEFAULT_TEXT             ,"例如 : ts3",1)
  SafeAddString(PCHAT_AUTOMSG_MESSAGE_DEFAULT_TEXT          ,"当您使用自动信息功能时发送的文本",1)
  SafeAddString(PCHAT_AUTOMSG_MESSAGE_TIP1_TEXT             ,"新行将被自动删除",1)
  SafeAddString(PCHAT_AUTOMSG_MESSAGE_TIP2_TEXT             ,"当您认证消息 \"!nameOfMessage\"时此消息将被发送。(例如: |cFFFFFF!ts3|r)",1)
  SafeAddString(PCHAT_AUTOMSG_MESSAGE_TIP3_TEXT             ,"要在指定频道发送消息, 在消息开头加上它的开关 (例如: |cFFFFFF/g1|r)",1)
  SafeAddString(PCHAT_AUTOMSG_NAME_HEADER                   ,"您的信息的缩写",1)
  SafeAddString(PCHAT_AUTOMSG_MESSAGE_HEADER                ,"替换信息",1)
  SafeAddString(PCHAT_AUTOMSG_ADD_TITLE_HEADER              ,"新自动信息",1)
  SafeAddString(PCHAT_AUTOMSG_EDIT_TITLE_HEADER             ,"修改自动信息",1)
  SafeAddString(PCHAT_AUTOMSG_ADD_AUTO_MSG                  ,"添加",1)
  SafeAddString(PCHAT_AUTOMSG_EDIT_AUTO_MSG                 ,"编辑",1)
  SafeAddString(PCHAT_SI_BINDING_NAME_PCHAT_SHOW_AUTO_MSG   ,"自动消息",1)
  SafeAddString(PCHAT_AUTOMSG_REMOVE_AUTO_MSG               ,"移除",1)

  SafeAddString(PCHAT_CLEARBUFFER                           ,"清除聊天",1)


    --Added by Baertram
  SafeAddString(PCHAT_RESTORED_PREFIX                       ,"[H]",1)
  SafeAddString(PCHAT_RESTOREPREFIX                         ,"为被恢复的消息添加前缀",1)
  SafeAddString(PCHAT_RESTOREPREFIXTT                       ,"为被恢复的消息添加一个前缀 \'[H]\' 以更易分辨恢复。\n需要重载界面后生效!\n前缀的颜色将使用标准ESO聊天频道颜色。",1)

  SafeAddString(PCHAT_BUILT_IN_CHANNEL_SWITCH_WARNING       ,"不能使用现有的内置开关 '%s'",1)
  SafeAddString(PCHAT_DUPLICATE_CHANNEL_SWITCH_WARNING      ,"试图替换现有的开关 '%s'",1)

  SafeAddString(PCHAT_CHATHANDLERS                          ,"聊天格式处理器",1)
  SafeAddString(PCHAT_CHATHANDLER_TEMPLATETT                ,"格式化事件\'%s\'的聊天信息。\n\n如果此设置被禁用,聊天信息将不会被各种pChat格式选项所改变(例如 颜色,时间戳,名称等)。",1)
  SafeAddString(PCHAT_CHATHANDLER_SYSTEMMESSAGES            ,"系统消息",1)
  SafeAddString(PCHAT_CHATHANDLER_PLAYERSTATUS              ,"玩家状态改变",1)
  SafeAddString(PCHAT_CHATHANDLER_IGNORE_ADDED              ,"添加了忽略列表",1)
  SafeAddString(PCHAT_CHATHANDLER_IGNORE_REMOVED            ,"移除了忽略列表",1)
  SafeAddString(PCHAT_CHATHANDLER_GROUP_MEMBER_LEFT         ,"队员离开",1)
  SafeAddString(PCHAT_CHATHANDLER_GROUP_TYPE_CHANGED        ,"队伍类型改变",1)
  SafeAddString(PCHAT_CHATHANDLER_KEEP_ATTACK_UPDATE         ,"保持攻击更新",1)
  SafeAddString(PCHAT_CHATHANDLER_PVP_KILL_FEED        ,"PVP击杀",1)
  SafeAddString(PCHAT_SETTINGS_EDITBOX_HOOKS 		  ,"聊天编辑框",1)
  SafeAddString(PCHAT_SETTINGS_EDITBOX_HOOK_CTRL_BACKSPACE  ,"CTRL + backspace: 清除文字",1)
  SafeAddString(PCHAT_SETTINGS_EDITBOX_HOOK_CTRL_BACKSPACETT,"按 CTRL键 + BACKSPACE退格键 将删除光标左边的所有文字。",1)

  SafeAddString(PCHAT_SETTINGS_BACKUP 			   ,"备份",1)
  SafeAddString(PCHAT_SETTINGS_BACKUP_REMINDER_LAST_REMINDER ,"最后提醒: %s",1)
  SafeAddString(PCHAT_SETTINGS_BACKUP_REMINDER 		   ,"备份提醒",1)
  SafeAddString(PCHAT_SETTINGS_BACKUP_REMINDER_TT 	   ,"每周显示一次提醒,提醒您备份您的SavedVariables。如果检测到API版本增加,它将自动显示(例如游戏版本升级)。\n\n你总是应该在游戏版本升级之后,打开游戏客户端之前,备份你的整个SavedVariables文件夹!",1)
  SafeAddString(PCHAT_SETTINGS_BACKUP_REMINDER_DIALOG_TEXT   ,"请|cFF0000!登出!|r并备份你的pChat SavedVariables!\n以下www.esoui.com链接解释了该如何做:\n\nhttps://www.esoui.com/forums/showthread.php?t,9235\n\n按下确认按钮,下个对话框将询问是否打开网站\n(如果你需要学习如何备份你的SavedVariables的话)。",1)
  SafeAddString(PCHAT_SETTINGS_WARNING_REMINDER_LOGOUT_BEFORE,"记得先登出!",1)

  SafeAddString(PCHAT_RESTORESHOWNAMEANDZONE,"恢复后：显示名称和区域",1)
  SafeAddString(PCHAT_RESTORESHOWNAMEANDZONE_TT,"恢复聊天记录后,显示当前登录的帐户名称以及聊天中的角色名称和区域/地区。",1)

  SafeAddString(PCHAT_CHATCONTEXTMENU,"聊天栏右键菜单",1)
  SafeAddString(PCHAT_SHOWACCANDCHARATCONTEXTMENU,"复制菜单显示帐户名称/角色名称",1)
  SafeAddString(PCHAT_SHOWACCANDCHARATCONTEXTMENU_TT,"在复制上下文菜单中显示@账号名/角色名。前提是已经为相应的聊天频道启用了@账号名/角色名标题！私聊频道将不会显示！",1)
  SafeAddString(PCHAT_SHOWCHARLEVELATCONTEXTMENU,"复制菜单中显示角色等级",1)
  SafeAddString(PCHAT_SHOWCHARLEVELATCONTEXTMENU_TT,"在复制右键菜单中显示角色等级，前提是启用了@账号名/角色名标题，允许在聊天消息中显示角色名称，并且该角色当前在线，位于您的队伍、公会或好友列表中时，此功能才有效！",1)
  SafeAddString(PCHAT_ASKBEFOREIGNORE					, "对于忽略的玩家显示额外的 \'!警告!\'",1)
  SafeAddString(PCHAT_ASKBEFOREIGNORETT					, '如果玩家位于您的忽略列表中，则在聊天右键菜单中添加警告提示。',1)
  SafeAddString(PCHAT_SHOWIGNOREDWARNINGCONTEXTMENU	, "对于忽略的玩家添加 是/否 对话框 \'忽略\'  (聊天, 好友, ...)",1)
  SafeAddString(PCHAT_SHOWIGNOREDWARNINGCONTEXTMENUTT	, "在忽略玩家的右键菜单（如聊天窗口、好友列表等）中添加了一个带有“是/否”按钮的对话框，这样您就不会意外地忽略原本打算进行其他操作（例如，误点击了想要密语的玩家）的玩家。",1)
  SafeAddString(PCHAT_SHOWSENDMAILCONTEXTMENU			, "添加 \'发送邮件\' 选项",1)
  SafeAddString(PCHAT_SHOWSENDMAILCONTEXTMENUTT			, "在右键菜单中添加一个选项，直接向角色/帐户发送新邮件",1)
  SafeAddString(PCHAT_SHOWTELEPORTTOCONTEXTMENU		, "添加传送到玩家的选项",1)
  SafeAddString(PCHAT_SHOWTELEPORTTOCONTEXTMENUTT		, "右键菜单中显示一个传送到队友、公会成员或好友的选项。注意：这不适用于非好友、队友或公会成员的普通区域聊天玩家！",1)
  SafeAddString(PCHAT_CHATCONTEXTMENUTPTO,"Teleport to",1)
  SafeAddString(PCHAT_CHATCONTEXTMENUTPFRIEND,"好头 %q",1)
  SafeAddString(PCHAT_CHATCONTEXTMENUTPGUILD,"公会 #%s 成员 %q",1)
  SafeAddString(PCHAT_CHATCONTEXTMENUTPGROUP,"队伍 成员 %q",1)
  SafeAddString(PCHAT_CHATCONTEXTMENUTPGROUPLEADER,"队长",1)
  SafeAddString(PCHAT_CHATCONTEXTMENUWARNIGNORE,"[|c00FF00!WARNING!|r] 你忽略了这名玩家!",1)
  SafeAddString(PCHAT_CHATCONTEXTMENUTYPEFRIEND,"好友",1)
  SafeAddString(PCHAT_TELEPORTINGTO,"传送到: ",1)

  SafeAddString(PCHAT_TOGGLE_SEARCH_UI_ON, "开启搜索",1)
  SafeAddString(PCHAT_TOGGLE_SEARCH_UI_OFF,"关闭搜索",1)
  SafeAddString(PCHAT_SEARCHUI_HEADER_TIME,"时间",1)
  SafeAddString(PCHAT_SEARCHUI_HEADER_FROM,"从",1)
  SafeAddString(PCHAT_SEARCHUI_HEADER_CHATCHANNEL,"频道",1)
  SafeAddString(PCHAT_SEARCHUI_HEADER_MESSAGE,"消息",1)
  SafeAddString(PCHAT_SEARCHUI_MESSAGE_SEARCH_DEFAULT_TEXT,"输入 \'message\' 在这里搜索...",1)
  SafeAddString(PCHAT_SEARCHUI_FROM_SEARCH_DEFAULT_TEXT,"输入 \'from\' 在这里搜索...",1)
  SafeAddString(PCHAT_SEARCHUI_CLEAR_SEARCH_HISTORY,"清除搜索历史",1)

    -- Coorbin20200708
    -- Chat Mentions settings strings
  SafeAddString(PCHAT_MENTIONSH                                   ,"提及",1)
  SafeAddString(PCHAT_MENTIONS_TEXT_COLOR_CHECKBOX_NAME 		,"当你的名字被提到时改变文本颜色?",1)
  SafeAddString(PCHAT_MENTIONS_TEXT_COLOR_CHECKBOX_TOOLTIP	,"当提到您的名字时,是否更改文本颜色。",1)
  SafeAddString(PCHAT_MENTIONS_TEXT_COLOR_PICKER_NAME		,"被提到时你名字的颜色",1)
  SafeAddString(PCHAT_MENTIONS_ADD_EXCL_ICON_NAME			,"加感叹号图标?",1)
  SafeAddString(PCHAT_MENTIONS_ADD_EXCL_ICON_TOOLTIP		,"当提到您的名字时,是否在开头添加感叹号图标。",1)
  SafeAddString(PCHAT_MENTIONS_ALLCAPS_NAME			,"你的名字都用大写?",1)
  SafeAddString(PCHAT_MENTIONS_ALLCAPS_TOOLTIP			,"当提到你的名字时,要不要用大写。",1)
  SafeAddString(PCHAT_MENTIONS_EXTRA_NAMES_NAME			,"额外提示名称 (每个名称换行)",1)
  SafeAddString(PCHAT_MENTIONS_EXTRA_NAMES_TOOLTIP		,"一个以换行符分隔的额外名称列表。按回车键以换行。如果你在希望被监听的自定义名称前加一个`!` (感叹号) , 将只会在该名称出现在单词边界时通知您。举个例子, 如果您添加'!de' 到额外列表中, 当监听到'de nada'时将通知您,但'delicatessen'则不会通知。如果您只是添加'de'到额外列表, 则'delicatessen'也会通知。",1)
  SafeAddString(PCHAT_MENTIONS_SELFSEND_NAME			,"适用于您发送的消息?",1)
  SafeAddString(PCHAT_MENTIONS_SELFSEND_TOOLTIP			,"是否对您所发送的消息应用格式。",1)
  SafeAddString(PCHAT_MENTIONS_DING_NAME				,"声音提示?",1)
  SafeAddString(PCHAT_MENTIONS_DING_TOOLTIP			,"当你的名字被提到时,是否要发出叮的声音。",1)
  SafeAddString(PCHAT_MENTIONS_DING_SOUND_NAME, "选择音效", 1)
	SafeAddString(PCHAT_MENTIONS_DING_SOUND_NAME_TOOLTIP, "选择播放的音效", 1)
  SafeAddString(PCHAT_MENTIONS_APPLYNAME_NAME			,"适用于你的角色名字?",1)
  SafeAddString(PCHAT_MENTIONS_APPLYNAME_TOOLTIP			,"是否对你每个角色的名称(以空格分隔)应用格式。如果你在角色名中使用了非常常见的名字,比如“Me”,则请禁用它。",1)
  SafeAddString(PCHAT_MENTIONS_WHOLEWORD_NAME			,"你的名字只进行完全匹配?",1)
  SafeAddString(PCHAT_MENTIONS_WHOLEWORD_TOOLTIP			,"是否仅以全部字符匹配您的角色名。如果你的角色名很短,你可能需要打开它。",1)

    -- Coorbin20211222
    -- CharCount settings strings
  SafeAddString(PCHAT_CHARCOUNTH ,"聊天窗标题",1)
  SafeAddString(PCHAT_CHARCOUNT_ENABLE_CHECKBOX_NAME ,"显示字符计数",1)
  SafeAddString(PCHAT_CHARCOUNT_ENABLE_CHECKBOX_TOOLTIP ,"显示当前输入到聊天文本框超过350的最大限制以外的字符数。它将出现在聊天窗口的顶部中心位置。",1)
  SafeAddString(PCHAT_CHARCOUNT_ZONE_POST_TRACKER_NAME ,"显示区域发布追踪",1)
  SafeAddString(PCHAT_CHARCOUNT_ZONE_POST_TRACKER_TOOLTIP ,"显示您最后一次在当前区域的区域聊天频道中发布内容的时间戳。当你改变区域时,时间会重置。对于在区域聊天频道中发布公告很有用。它将出现在聊天窗口的顶部中心位置。",1)
return true end

--PerfectPixel
--0.12.18
BB.AddonList["PerfectPixel"] = function() if not PP then return false end
  local stringsZh = {
    --[LAM settings]
    PP_LAM_ACTIVATE									= "启用",
    PP_LAM_COLOR									  = "颜色",
    PP_LAM_EDGE_COLOR								= "边框颜色",
    PP_LAM_LIST_BG									= "列表背景",
    --Window & list style
    PP_LAM_WINDOW_STYLE 							= "窗口风格",
    PP_LAM_LIST_STYLE 								= "列表风格",
    PP_LAM_LIST_STYLE_BACKDROP 					= "背景",
    PP_LAM_LIST_STYLE_EDGE 							= "边框",
    PP_LAM_LIST_STYLE_LIST 							= "列表",
    PP_LAM_LIST_STYLE_INSETS 						= "边缘偏移量",
    PP_LAM_LIST_STYLE_TILE_LAYING  			= "瓷砖铺设模式",
    PP_LAM_LIST_STYLE_TILE_SIZE  				= "瓷砖大小",
    PP_LAM_LIST_STYLE_COLOR  						= "颜色",
    PP_LAM_LIST_STYLE_HIGHLIGHT_COLOR			= "高亮颜色",
    PP_LAM_LIST_STYLE_SELECTED_COLOR			= "选中颜色",
    PP_LAM_LIST_STYLE_THICKNESS						= "厚度",
    PP_LAM_LIST_STYLE_FILE_WIDTH					= "文件宽度",
    PP_LAM_LIST_STYLE_FILE_HEIGHT					= "文件高度",
    PP_LAM_LIST_STYLE_STRETCH_TEXTURE_EDGE	= "拉伸纹理边缘",
    PP_LAM_LIST_STYLE_FADE_DISTANCE					= "边缘虚化",
    PP_LAM_LIST_STYLE_UNIFORM_CONTROL_HEIGHT= "行高",
    PP_LAM_LIST_STYLE_CONTROL_HEIGHT				= "控件高度",
    --Other
    PP_LAM_OTHERS									  = "其他",
    PP_LAM_DONOTINTERRUPT						= "不要打断互动操作",
    PP_LAM_BLUR_BG									= "模糊背景",
    -- PP_LAM_FADE_SCENE_DURATION						= "Fade scene duration (ms)",
    --Reticle
    PP_LAM_RETICLE									= "准星",
    PP_LAM_RETICLE_HIDE_STEALTH			= "取消显示 \"" .. GetString(SI_STEALTH_HIDDEN) .. "\" 文字",
    --Tabs
    PP_LAM_TABS										  = "主菜单选项",
    PP_LAM_TABS_HIDE_MENU_BAR_LABEL	= "隐藏菜单栏标签",
    PP_LAM_TABS_HIDE_TOP_BAR_BG			= "隐藏顶部栏背景",
    --Tooltips
    PP_LAM_TOOLTIPS									= "弹窗",
    PP_LAM_COMPARATIVE_TOOLTIPS			= "按住按钮时显示装备比较弹窗",
    PP_LAM_COMPARATIVE_TOOLTIPS_TT	= "装备比较弹窗只有当按住指定按钮时才显示。在控件菜单中设置按钮！",
    PP_LAM_COMPARATIVE_TOOLTIPS_BIND= "装备比较弹窗",
    --Compass
    PP_LAM_COMPASS									= "罗盘",
    PP_LAM_COMPASS_QUEST						= "任务区域",
    PP_LAM_COMPASS_COMBAT						= "战斗指示器",
    --[LAM Scenes]
    --Inventory Scene
    PP_LAM_SCENE_INV								= "库存界面",
    PP_LAM_SCENE_INV_NO_SPIN				= "不要旋转相机",
    PP_LAM_SCENE_INV_NO_SPIN_TT			= "如果预览功能出现问题，请禁用",
    --SkillsScene
    PP_LAM_SCENE_SKILLS							= "技能界面",
    PP_LAM_SCENE_SKILLS_SKILLS_TREE_UNWRAPPED	= "展开的技能树",
    PP_LAM_SCENE_SKILLS_SKILLS_TREE_BG				= "技能树背景",
    --Journal Scene
    PP_LAM_SCENE_JOURNAL							= "任务界面",
    PP_LAM_SCENE_JOURNAL_QUEST_LARGE_LIST			= "增大的任务清单",
    --World map
    PP_LAM_SCENE_WORLDMAP							= "世界地图",
    PP_LAM_SCENE_WORLDMAP_LARGE						= "大地图",
    --GameMenuInGameScene
    PP_LAM_SCENE_GAME_MENU							= "主菜单",
    PP_LAM_SCENE_GAME_MENU_ADDONS					= "插件",
    --Performance Meter
    PP_LAM_SCENE_PERFORMANCE_METER					= "性能仪表",
    --CraftStations
    PP_LAM_CRAFT_STATIONS_PROVISIONER_SHOWTOOLTIP	= "显示弹窗",
    PP_LAM_TRANSPARENCY								= "透明度",
    --Keybindstrip
    PP_LAM_KEYBINDSTRIP								= "菜单底部栏",
    --Chat
    PP_LAM_SCENE_CHAT								= GetString(SI_CHAT_TAB_GENERAL),
  }
  --Create the strings so they are available via function GetString(stringId) ingame
  for stringId, stringValue in pairs(stringsZh) do
    ZO_CreateStringId(stringId, stringValue)
    SafeAddVersion(stringId, 1)
  end
return true end

--PersonalAssistant
--2024.06.14
BB.AddonList["PersonalAssistant"] = function() if not PersonalAssistant then return false end
  local strings = {
    --GenericStrings
    SI_PA_SUBMENU_PAB = "PA 银行",
    SI_PA_SUBMENU_PAJ = "PA 垃圾",
    SI_PA_SUBMENU_PACO = "PA 消耗品", 
    SI_KEYBINDINGS_CATEGORY_PA_BANKING = "|cFFD700P|rersonal|cFFD700A|rssistant 银行",
    SI_KEYBINDINGS_CATEGORY_PA_JUNK = "|cFFD700P|rersonal|cFFD700A|rssistant 垃圾",
    --Repair
    SI_PA_MENU_REPAIR_REPAIRKIT_GROUP = "使用团队修理包",
    SI_PA_MENU_REPAIR_REPAIRKIT_GROUP_T = "当你组队时进行修理，团队修理包会被优先使用",
    SI_PA_MENU_BUY_REPAIR_KITS_HEADER = "购买修理包",
    SI_PA_MENU_BUY_REPAIR_KITS_ENABLE = "启用自动购买修理包",
    SI_PA_MENU_BUY_ITEM_HEADER = "购买 %s",
    SI_PA_MENU_BUY_ITEM_ENABLE = "自动购买 %s?",
    SI_PA_MENU_BUY_ITEM_ENABLE_T = "当遇到商人时, 缺少的 %s 将被自动购买",
    SI_PA_MENU_BUY_ITEM_THRESHOLD = "%s 库存阈值",
    SI_PA_MENU_BUY_ITEM_THRESHOLD_T = "当你拥有的 %s 的数量低于阈值，缺失部分将被购买",
    SI_PA_MENU_BUY_ITEM_PRIORITY = "%s 货币优先级",
    SI_PA_MENU_BUY_ITEM_PRIORITY_T = "选择当尝试购买 %s 时的货币优先级",	
    SI_PA_MENU_BUY_SOUL_GEMS_HEADER = "购买灵魂石 & 开锁器",
    SI_PA_MENU_BUY_SOUL_GEMS_ENABLE = "启用自动购买灵魂石 & 开锁器",	
    SI_PA_MENU_BUY_SIEGE_ITEMS_HEADER = "购买 "..GetString(SI_ITEMTYPEDISPLAYCATEGORY32),
    SI_PA_MENU_BUY_SIEGE_ITEMS_ENABLE = "启用自动购买 "..GetString(SI_ITEMTYPEDISPLAYCATEGORY32),
    SI_PA_CHAT_BUY_SUMMARY_BOUGHT = "购买 %s x %s 为了 %s",
    SI_PA_CHAT_BUY_SUMMARY_MISSING = "无法购买 %s 以 %s (%s 缺失)",
    --Integration
    SI_PA_MENU_INTEGRATION_CK_CHARACTER = "当选中角色已知，则认为该知识已知",
    SI_PA_MENU_INTEGRATION_CK_ENABLE = "启用Character Knowledge整合",
    SI_PA_MENU_INTEGRATION_CK_ENABLE_T = table.concat({"使用Character Knowledge来决定", GetString("SI_ITEMTYPE", ITEMTYPE_RECIPE), " or ", GetString("SI_ITEMTYPE", ITEMTYPE_RACIAL_STYLE_MOTIF), "已知"}),
    SI_PA_MENU_INTEGRATION_CK_INITIALIZING ="Character Knowledge正在启用...",
    --Loot
    SI_PA_MENU_LOOT_AUTO_LEARN_RECIPES = table.concat({"自动学习 ", GetString("SI_ITEMTYPE", ITEMTYPE_RECIPE)}),
    SI_PA_MENU_LOOT_AUTO_LEARN_RECIPES_T = table.concat({"当一份 ", GetString("SI_ITEMTYPE", ITEMTYPE_RECIPE), " 被未学习的角色获取，则自动学习"}),	
    --worker
    SI_PA_MENU_WORKER_DESCRIPTION = "PAWorker 可自动分解物品或提炼材料",
    SI_PA_MENU_WORKER_METICULOUS_ENABLE = "细致拆装 检查",
    SI_PA_MENU_WORKER_METICULOUS_ENABLE_T = "防止在未装备细致拆装（CP技能）时，进行分解或提炼材料",
    SI_PA_MENU_WORKER_CHECK_EXTRACTION_ENABLE = "提取被动技能 检查",
    SI_PA_MENU_WORKER_CHECK_EXTRACTION_ENABLE_T = "防止在生产材料提取技能未满级时，进行分解或提炼材料",
    SI_PA_MENU_WORKER_AUTOREFINE_HEADER = "自动提炼材料",
    SI_PA_MENU_WORKER_AUTOREFINE_ENABLE = "启用自动提炼材料",
    SI_PA_MENU_WORKER_AUTOREFINE_ENABLE_T = "自动提炼材料",
    SI_PA_MENU_WORKER_AUTODECONSTRUCT_HEADER = "自动分解物品",
    SI_PA_MENU_WORKER_AUTODECONSTRUCT_ENABLE = "启用自动分解物品",
    SI_PA_MENU_WORKER_AUTODECONSTRUCT_ENABLE_T = "自动分解物品",
    SI_PA_MENU_WORKER_PROTECT_BANK_ENABLE = "保护银行物品",
    SI_PA_MENU_WORKER_PROTECT_BANK_ENABLE_T = "为银行物品施加第二道保护",
    SI_PA_MENU_WORKER_PROTECT_UNCOLLECTED_SET_ITEMS_ENABLE = "保护未收集的套装物品",
    SI_PA_MENU_WORKER_PROTECT_UNCOLLECTED_SET_ITEMS_ENABLE_T = "阻止自动分解未收集的套装物品",
    SI_PA_MENU_WORKER_AUTORESEARCHTRAITS_HEADER = "自动研究特质",
    SI_PA_MENU_WORKER_AUTORESEARCHTRAITS_ENABLE = "启用自动研究特质",
    SI_PA_MENU_WORKER_AUTORESEARCHTRAITS_ENABLE_T = "自动研究特质",
    SI_PA_MENU_WORKER_AUTOMARK_QUALITY_THRESHOLD = "自动分解 %s ，若品质等于或低于",
    SI_PA_MENU_WORKER_AUTOMARK_QUALITY_THRESHOLD_T = "自动分解 %s ，若其品质等于或低于所选",
    SI_PA_MENU_WORKER_AUTOMARK_INTRICATE = table.concat({"自动分解 %s [", GetString("SI_ITEMTRAITTYPE", ITEM_TRAIT_TYPE_ARMOR_INTRICATE),"] 特质"}),
    SI_PA_MENU_WORKER_AUTOMARK_INTRICATE_T = table.concat({"自动分解 %s [", GetString("SI_ITEMTRAITTYPE", ITEM_TRAIT_TYPE_ARMOR_INTRICATE), "] 特质（提高制作灵感获得）？"}),
    SI_PA_MENU_WORKER_AUTOMARK_ORNATE = table.concat({"自动分解 %s [", GetString("SI_ITEMTRAITTYPE", ITEM_TRAIT_TYPE_ARMOR_ORNATE), "] 特质"}),
    SI_PA_MENU_WORKER_AUTOMARK_ORNATE_T = table.concat({"自动分解 %s [", GetString("SI_ITEMTRAITTYPE", ITEM_TRAIT_TYPE_ARMOR_ORNATE), "] 特质（提高售价）？"}),
    SI_PA_MENU_WORKER_AUTOMARK_INCLUDE_SETS = "分解套装 %s 物品",
    SI_PA_MENU_WORKER_AUTOMARK_INCLUDE_SETS_T = "关闭时，仅当 %s 不属于任何套装时才被分解",
    SI_PA_MENU_WORKER_AUTOMARK_INCLUDE_KNOWN_TRAITS = "分解已知特质 %s 物品",
    SI_PA_MENU_WORKER_AUTOMARK_INCLUDE_KNOWN_TRAITS_T = "关闭时，仅当 %s 为无特质或未知特质时才被分解",
    SI_PA_MENU_WORKER_AUTOMARK_INCLUDE_UNKNOWN_TRAITS = "分解未知特质 %s 物品",
    SI_PA_MENU_WORKER_AUTOMARK_INCLUDE_UNKNOWN_TRAITS_T = "关闭时，仅当 %s 为无特质或已知特质时才被分解",
    SI_PA_CHAT_ITEM_DECONSTRUCTED = "%s 被分解",
    SI_PA_CHAT_ITEM_REFINED = "%s 被提炼",
    SI_PA_CHAT_ITEM_RESEARCHED = "%s 被用于研究 %s (%s) 特质 为 %s",
    SI_PA_CHAT_RESEARCH_FULL = "无法研究 %s 特质 为 %s ，因为 %s/%s 研究槽已被占用",
    SI_PA_CHAT_RESEARCH_BUSY = "无法研究 %s 特质，因为你已为 %s 研究另一特质",
    SI_PA_CHAT_NO_METICULOUS = "因细致拆装（CP技能）未装备，自动分解/提炼已停止",
    SI_PA_CHAT_NO_EXTRACTION = "因 %s 等级未满，自动分解/提炼已停止",
    SI_PA_CHAT_NO_EXTRACTION_FOR_ITEM = "%s 等级未满，所以 %s 不会被自动分解",
    SI_PA_CHAT_CRAFTING_QUEST = "因为你持有一项进行中的制造任务，自动分解、提炼和研究已停止",
  }
  for key, value in pairs(strings) do
    ZO_CreateStringId(key, value)
    SafeAddVersion(key, 1)
  end
return true end

--Postmaster
--4.1.8
BB.AddonList["Postmaster"] = function() if not Postmaster then return false end
  local INDENT = "|t100%:100%:art/icons/placeholder/icon_blank.dds|t"
  POSTMASTER_STRINGS = {
    ["SI_PM_WORD_SEPARATOR"]                     = " ",
    ["SI_PM_CHAT_MESSAGES"]                      = "聊天栏信息",
    ["SI_PM_SHORT_PREFIX"]                       = "使用简短缩写",
    ["SI_PM_SHORT_PREFIX_TOOLTIP"]               = "在聊天栏输出[PM]而非[Postmaster]",
    ["SI_PM_PREFIX_HEADER"]                      = "前缀",
    ["SI_PM_PREFIX_COMMAND1"]                    = { INDENT .. "|cEEEE00[<<1>>]|r" },
    ["SI_PM_PREFIX_COMMAND2"]                    = { "|c55C755/chatmessage tag <<1>>|r" },
    ["SI_PM_COLORED_PREFIX"]                     = "使用Postmaster 3.8 色彩前缀",
    ["SI_PM_COLORED_PREFIX_TOOLTIP"]             = { "在聊天栏使用Postmaster 3.8的蓝色前缀(i.e. <<1>>|r or <<2>>|r)，而不是聊天栏颜色设置", SI_PM_PREFIX_COLOR, SI_PM_PREFIX_SHORT_COLOR },
    ["SI_PM_CHAT_USE_SYSTEM_COLOR"]              = "使用默认系统信息颜色",
    ["SI_PM_CHAT_COLOR"]                         = "聊天栏信息颜色",
    ["SI_PM_DELETE_DIALOG_SUPPRESS"]             = "解除删除确认",
    ["SI_PM_DELETE_DIALOG_SUPPRESS_TOOLTIP"]     = "启用时，删除不含附件的邮件将不再需要确认",
    ["SI_PM_RETURN_DIALOG_SUPPRESS"]             = "解除退回确认",
    ["SI_PM_BOUNCE"]                             = "自动退回邮件",
    ["SI_PM_BOUNCE_TOOLTIP"]                     = "监控新邮件，如果主题以下列任何单词开头或相同，自动退回邮件给发件人。RETURN, BOUNCE, RTS",
    ["SI_PM_BOUNCE_MESSAGE"]                     = { "将邮件退回 <<1>>", POSTMASTER_STRING_NO_FORMAT },
    ["SI_PM_WYKKYD_MAILBOX_RETURN_WARNING"]      = "Wykkyd 邮箱退回机器人已启用",
    ["SI_PM_WYKKYD_MAILBOX_DETECTED_WARNING"]    = "检测到Wykkyd Mailbox。请注意\"Automatic Mail Return\" |cFF0000deactivates|r。如果你启用了Wykkyd Mailbox退回机器人",
    ["SI_PM_RESERVED_SLOTS"]                     = "预留空位",
    ["SI_PM_RESERVED_SLOTS_TOOLTIP"]             = "<<1>> 将保留指定数量的背包空位",
    ["SI_PM_SYSTEM"]                             = "系统邮件",
    ["SI_PM_SYSTEM_TAKE_ATTACHED"]               = "带有附件的系统邮件",
    ["SI_PM_SYSTEM_DELETE_ATTACHED"]             = "删除带有附件的系统邮件",
    ["SI_PM_SYSTEM_TAKE_ATTACHED_TOOLTIP"]       = "启用该选项后，<<1>> 命令会从符合以下要求的系统邮件中获取附件，并选择性地删除这些附件",
    ["SI_PM_SYSTEM_TAKE_ATTACHED_TOOLTIP_QUICK"] = { "启用该选项后，<<1>> 命令会从符合以下要求的系统邮件中获取附件并删除它们", SI_PM_TAKE },
    ["SI_PM_SYSTEM_TAKE_PVP"]                    = "联盟战争 / 战场 / PvP 奖励",
    ["SI_PM_SYSTEM_TAKE_CRAFTING"]               = "雇员",
    ["SI_PM_SYSTEM_TAKE_UNDAUNTED"]              = "无畏者",
    ["SI_PM_SYSTEM_TAKE_OTHER"]                  = "所有其他系统附件",
    ["SI_PM_SYSTEM_DELETE_EMPTY"]                = "不含附件的系统邮件",
    ["SI_PM_SYSTEM_DELETE_EMPTY_TOOLTIP"]        = "启用该选项后，<<1>> 命令会删除任何没有附件的系统邮件，例如添加到收藏中的项目通知。",
    ["SI_PM_SYSTEM_DELETE_EMPTY_TOOLTIP_QUICK"]  = { "启用该选项后，<<1>> 命令会删除任何没有附件的系统邮件，例如添加到收藏中的项目通知。", SI_PM_TAKE },
    ["SI_PM_SYSTEM_DELETE_EMPTY_FILTER"]         = "筛选不含附件的系统邮件",
    ["SI_PM_SYSTEM_DELETE_EMPTY_FILTER_TOOLTIP"] = { "当筛选非空时，<<1>>命令将只会删除不带附件的玩家邮件，如果其在发送人或主题中包含给定的单词或短语。<<2>>", SI_PM_TAKE_ALL, "SI_PM_SEPARATOR_HINT" },
    ["SI_PM_SYSTEM_DELETE_EMPTY_FILTER_TOOLTIP_QUICK"] = { "当筛选非空时，<<1>>命令将只会删除不带附件的玩家邮件，如果其在发送人或主题中包含给定的单词或短语。<<2>>", SI_PM_TAKE, "SI_PM_SEPARATOR_HINT" },
    ["SI_PM_PLAYER"]                             = "玩家邮件",
    ["SI_PM_PLAYER_TAKE_ATTACHED"]               = "带有附件的玩家邮件",
    ["SI_PM_PLAYER_TAKE_ATTACHED_TOOLTIP"]       = "启用此选项后，<<1>> 命令将从其他玩家的邮件中获取附件，并选择性删除非货到付款的邮件。",
    ["SI_PM_PLAYER_TAKE_ATTACHED_TOOLTIP_QUICK"] = { "启用此选项后，<<1>> 命令将从其他玩家的邮件中获取附件，并选择性删除非货到付款的邮件。", SI_PM_TAKE },
    ["SI_PM_PLAYER_TAKE_RETURNED"]               = "退回的邮件",
    ["SI_PM_PLAYER_TAKE_RETURNED_TOOLTIP"]       = "启用此选项后，<<1>> 命令会从其他玩家退回给您的邮件中获取附件，并选择性删除邮件。",
    ["SI_PM_PLAYER_TAKE_RETURNED_TOOLTIP_QUICK"] = { "启用此选项后，<<1>> 命令会从其他玩家退回给您的邮件中获取附件，并选择性删除邮件。", SI_PM_TAKE },
    ["SI_PM_PLAYER_DELETE_EMPTY"]                = "不含附件的玩家邮件",
    ["SI_PM_PLAYER_DELETE_EMPTY_TOOLTIP"]        = "启用该选项后，<<1>> 命令将删除来自其他玩家的任何不带附件的邮件。",
    ["SI_PM_PLAYER_DELETE_EMPTY_TOOLTIP_QUICK"]  = { "启用该选项后，<<1>> 命令将删除来自其他玩家的任何不带附件的邮件。", SI_PM_TAKE },
    ["SI_PM_PLAYER_DELETE_EMPTY_FILTER"]         = "筛选不含附件的玩家邮件",
    ["SI_PM_PLAYER_DELETE_EMPTY_FILTER_TOOLTIP"] = { "当筛选非空时，<<1>>命令将只删除在发件人或主题中含有给定单词或短语的不含附件的玩家邮件。<<2>>", SI_PM_TAKE_ALL, "SI_PM_SEPARATOR_HINT" },
    ["SI_PM_PLAYER_DELETE_EMPTY_FILTER_TOOLTIP_QUICK"] = { "当筛选非空时，<<1>>命令将只删除在发件人或主题中含有给定单词或短语的不含附件的玩家邮件。<<2>>", SI_PM_TAKE, "SI_PM_SEPARATOR_HINT" },
    ["SI_PM_COD"]                                = { "<<1>> 邮件", SI_MAIL_SEND_COD },
    ["SI_PM_COD_TOOLTIP"]                        = { "启用该选项后，<<1>> 命令将接收符合以下条件的<<2>>邮件", SI_PM_TAKE_ALL, SI_MAIL_SEND_COD },
    ["SI_PM_COD_TOOLTIP_QUICK"]                  = { "启用该选项后，<<1>> 命令将接收符合以下条件的<<2>>邮件", SI_PM_TAKE, SI_MAIL_SEND_COD },
    ["SI_PM_COD_LIMIT"]                          = { "<<1>> 限制", SI_MAIL_SEND_COD },
    ["SI_PM_COD_LIMIT_TOOLTIP"]                  = { "只有金额小于<<1>>的邮件才会被支付。设置为 0 代表无限制。", SI_MAIL_SEND_COD },
    ["SI_PM_MASTER_MERCHANT_WARNING"]            = "Master Merchant未启用",
    ["SI_PM_COD_MM_DEAL_0"]                      = "价格过高",
    ["SI_PM_COD_MM_DEAL_1"]                      = "价格可行",
    ["SI_PM_COD_MM_DEAL_2"]                      = "价格合理",
    ["SI_PM_COD_MM_DEAL_3"]                      = "价格不错",
    ["SI_PM_COD_MM_DEAL_4"]                      = "价格很好",
    ["SI_PM_COD_MM_DEAL_5"]                      = "买它买它！",
    ["SI_PM_COD_MM_MIN_DEAL"]                    = { "<<1>> 最低成交价", SI_MAIL_SEND_COD },
    ["SI_PM_COD_MM_MIN_DEAL_TOOLTIP"]            = { "依据Master Merchant市场价分析<<1>>邮件的附件，并只为所有附件均好于该选项的邮件付费", SI_MAIL_SEND_COD },
    ["SI_PM_COD_MM_NO_DATA"]                     = { "<<1>> 无Master Merchant数据", SI_MAIL_SEND_COD },
    ["SI_PM_COD_MM_NO_DATA_TOOLTIP"]             = { "启用此选项后，<<1>> 命令将接收没有Master Merchant定价数据的<<2>>邮件附件", SI_PM_TAKE_ALL, SI_MAIL_SEND_COD },
    ["SI_PM_COD_MM_NO_DATA_TOOLTIP_QUICK"]       = { "启用此选项后，<<1>> 命令将接收没有Master Merchant定价数据的<<2>>邮件附件", SI_PM_TAKE, SI_MAIL_SEND_COD },
    ["SI_PM_HELP_01"]                            = { "要与 <<1>> 互动，请打开收件箱", SI_PM_NAME },
    ["SI_PM_HELP_02"]                            = "使用在聊天栏中的|cFF00FF/pm|r或 |cFF00FF/postmaster|r作为该面板的快捷方式",
    ["SI_PM_HELP_03"]                            = { "<<1>>获取附件并删除|cEFEBBE当前选定|r的邮件", SI_PM_TAKE },
    ["SI_PM_HELP_04"]                            = "<<1>>获取附件并选择性删除|cEFEBBE所有以下|r的邮件",
    ["SI_PM_CRAFT_BLACKSMITH"]                   = "锻造原材料",
    ["SI_PM_CRAFT_CLOTHIER"]                     = "裁缝原材料",
    ["SI_PM_CRAFT_ENCHANTER"]                    = "附魔原材料",
    ["SI_PM_CRAFT_PROVISIONER"]                  = "烹饪原材料",
    ["SI_PM_CRAFT_WOODWORKER"]                   = "木匠原材料",
    ["SI_PM_GUILD_STORE_CANCELED"]               = "取消的交易品",
    ["SI_PM_GUILD_STORE_EXPIRED"]                = "过期的交易品",
    ["SI_PM_GUILD_STORE_PURCHASED"]              = "购买的物品",
    ["SI_PM_GUILD_STORE_SOLD"]                   = "卖出的物品",
    ["SI_PM_PVP_FOR_THE_WORTHY"]                 = "PVP奖励（Rewards for the Worthy!）",
    ["SI_PM_PVP_THANKS"]                         = "PVP奖励（Our Thanks, Warrior）",
    ["SI_PM_PVP_FOR_THE_ALLIANCE_1"]             = "PVP奖励（For the Dominion!）",
    ["SI_PM_PVP_FOR_THE_ALLIANCE_2"]             = "PVP奖励（For the Pact!）",
    ["SI_PM_PVP_FOR_THE_ALLIANCE_3"]             = "PVP奖励（For the Covenant!）",
    ["SI_PM_PVP_THE_ALLIANCE_THANKS_1"]          = "PVP奖励（The Dominion Thanks You）",
    ["SI_PM_PVP_THE_ALLIANCE_THANKS_2"]          = "PVP奖励（The Pact Thanks You）",
    ["SI_PM_PVP_THE_ALLIANCE_THANKS_3"]          = "PVP奖励（The Covenant Thanks You）",
    ["SI_PM_PVP_LOYALTY"]                        = "PVP奖励（Campaign Loyalty Reward）",
    ["SI_PM_UNDAUNTED_NPC_NORMAL"]               = "无畏者（Maj al-Ragath）",
    ["SI_PM_UNDAUNTED_NPC_VET"]                  = "无畏者（Glirion the Redbeard）",
    ["SI_PM_UNDAUNTED_NPC_TRIAL_1"]              = "无畏者（Turuk Redclaws）",
    ["SI_PM_UNDAUNTED_NPC_TRIAL_2"]              = "无畏者（Kailstig the Axe）",
    ["SI_PM_UNDAUNTED_NPC_TRIAL_3"]              = "无畏者（Mighty Mordra）",
    ["SI_PM_BATTLEGROUNDS_NPC"]                  = "战场（Battlemaster Rivyn）",
    ["SI_PM_DELETE_FAILED"]                      = "删除邮件出错，请重试",
    ["SI_PM_TAKE_ATTACHMENTS_FAILED"]            = "获取附件出错，请重试",
    ["SI_PM_READ_FAILED"]                        = "读取下一封邮件信息出错，请重试",
    ["SI_PM_MESSAGE"]                            = "信息",
    ["SI_PM_KEYBOARD"]                           = " (键盘)",
    ["SI_PM_KEYBIND_ENABLE_TOOLTIP"]             = { "启用自定义Postmaster键位：<<1>>和<<2>>", SI_LOOT_TAKE, SI_LOOT_TAKE_ALL },
    ["SI_PM_TAKE_ALL_BY_SUBJECT"]                = "按主题获取",
    ["SI_PM_TAKE_ALL_BY_SUBJECT_HELP_01"]        = "|cFF00FF按主题获取|r获取附件并删除|cEFEBBE所有|r和选定邮件具有相同主题的邮件",
    ["SI_PM_TAKE_ALL_BY_SENDER"]                 = "按发送者获取",
    ["SI_PM_TAKE_ALL_BY_SENDER_HELP_01"]         = "|cFF00FF按发送者或者|r 获取附件并删除|cEFEBBE所有|r和选定邮件具有相同发送者的邮件",
    ["SI_PM_TAKE_ALL_BY_FIELD_HELP_02"]          = { "可作为键盘上的<<1>>选项（见上文<<2>>部分）和游戏手柄<<3>>菜单中的选项。", SI_BINDING_NAME_UI_SHORTCUT_QUATERNARY, SI_KEYBINDINGS_BINDINGS, SI_GAMEPAD_MAIL_INBOX_OPTIONS },

    --Baertram - Mail Send save message settings
    ["SI_PM_SENDMAIL_MESSAGE_RECIPIENTS"]        = "保存收件人",
    ["SI_PM_SENDMAIL_MESSAGE_RECIPIENTS_TT"]     = "发送邮件后，自动保存最近发送的邮件收件人列表。在邮件收件人文本框上单击鼠标右键，即可显示列表并从中进行选择。",
    ["SI_PM_SENDMAIL_CLEAR_RECIPIENTS"]          = "清除保存的收件人",
    ["SI_PM_SENDMAIL_CLEAR_RECIPIENTS_SUCCESS"]  = "保存的收件人被成功清除",
    ["SI_PM_SENDMAIL_MESSAGE_SUBJECTS"]          = "保存邮件主题",
    ["SI_PM_SENDMAIL_MESSAGE_SUBJECTS_TT"]       = "发送邮件后，自动保存最近发送的邮件主题列表。在邮件主题文本框上单击鼠标右键，即可显示列表并从中进行选择。",
    ["SI_PM_SENDMAIL_CLEAR_SUBJECTS"]            = "清除保存的邮件主题",
    ["SI_PM_SENDMAIL_CLEAR_SUBJECTS_SUCCESS"]    = "保存的邮件主题被成功清除",
    ["SI_PM_SENDMAIL_MESSAGE_TEXT"]              = "保存邮件信息",
    ["SI_PM_SENDMAIL_MESSAGE_TEXT_TT"]           = "发送邮件后，自动保存最近发送的邮件信息。在邮件正文文本框上单击鼠标右键，即可显示列表并从中进行选择。",
    ["SI_PM_SENDMAIL_CLEAR_MESSAGES"]            = "清除保存的邮件信息",
    ["SI_PM_SENDMAIL_CLEAR_MESSAGES_SUCCESS"]    = "保存的邮件信息被成功清除",
    ["SI_PM_SENDMAIL_MESSAGE_RECENT_SUBJECTS"]   = "最近的邮件主题",
    ["SI_PM_SENDMAIL_MESSAGE_RECENT_TEXT"]       = "最近的邮件信息",
    ["SI_PM_SENDMAIL_AMOUNT"]                    = "要保存的最近条目数",
    ["SI_PM_SENDMAIL_PREVIEW_CHARS"]             = "最近邮件信息菜单的字符宽度",
  }
  --Special setting
  for stringId, value in pairs(POSTMASTER_STRINGS) do
    local stringValue
    if type(value) == "table" then
        if #value > 1 and value[2] ~= POSTMASTER_STRING_NO_FORMAT then
            for i=2,#value do
                if type(value[i]) == "string" then
                    value[i] = _G[value[i]]
                end
                value[i] = GetString(value[i])
            end
            stringValue = zo_strformat(unpack(value))
        else
            stringValue = value[1]
        end
    else
        stringValue = zo_strformat(value, GetString(SI_PM_TAKE_ALL))
    end
  ZO_CreateStringId(stringId, stringValue)
  end
  POSTMASTER_STRINGS = nil
return true end

--Potion Maker
--5.9.1
BB.AddonList["PotionMaker"] = function() if not PotMaker then return false end
  PotMaker:LoadLanguage {
    name = "zh",
    check_all = "禁止所有",
    uncheck_all = "允许所有",
    search = "搜索",
    search_again = "返回",
    only = "只使用选择的素材",
    potion2reagents = "只搜索双素材药剂",
    questpotionsonly = "只搜索任务限定的药剂",
    need_solvent = "需要溶剂",
    search_results = "搜索结果",
    combinations = "素材组合",
    favorites = "收藏",
    mark_favorite = "标记收藏",
    unmark_favorite = "取消标记收藏",
    skill = "技能",
    settings_short = "设定",
    settings_enableBtn = "ESO界面里显示/隐藏按钮",
    use_missing_reagents_short = "包含缺失素材", 
    use_missing_reagents_long = "选中此项, 搜索结果会包含尚未拥有的素材",
    use_missing_reagents_warning = "开启后将会关闭自动添加素材功能!",
    use_unknown_traits_short = "包含未知特性",
    use_unknown_traits_long = "选中此项, 搜索结果会包含未知特性",
    fake_third_slot_short = "包含三素材合成",
    fake_third_slot_long = "选中此项, 搜索结果会包含三素材合成",
    training_short = "只显示未知特性",
    training_long = "炼金时只合成尚未解锁的特性",
    training_warning = "选中此项将会隐藏所有已解锁特性的结果!",
    same_window_coords_short = "窗口相同位置",
    same_window_coords_long = "选中此项将会使搜索结果窗口和搜索窗口位置相同",
    show_xp_short = "显示经验值",
    show_xp_long = "炼金经验值获得时显示一条系统提示",
    reagent_stackorder_short = "按照素材数量排序",
    reagent_stackorder_long = "素材将按照数量而非名称排序",
    show_favorite_header = "收藏",
    show_favorite_short = "列表",
    show_favorite_long = "已标记的素材: 只显示标记的\n相同药剂: 所有能合成相同药剂的组合\n相同特性: 任意等级相同特性的药剂",
    show_favorite_reagents = "标记的素材",
    show_favorite_potion = "相同药剂",
    show_favorite_traits = "相同特性",
    filter_favorite_traits = "按特性过滤",
    filter_favorite_solvents = "按溶剂过滤",
    filter_favorite_reagents = "按素材过滤",
    show_mainmenu_item_short = "主菜单里显示",
    show_mainmenu_item_long = "显示在主菜单中, 用于切换 Potion Maker 窗口. 重载界面后生效.",
    show_as_default = "Potion Maker 作为默认",
    show_as_default_long = "在炼金实验台自动切换显示 Potion Maker.",
    item_saver_header = "FCOItemSaver & ItemSaver",
    use_item_saver = "使用(FCO)ItemSaver",
    use_item_saver_long = "不要使用 FCOItemSaver 或 ItemSaver 标记的素材/溶剂.",
    item_saver_protected = "物品受保护.",
    suppress_new_trait_dialog = "隐藏新特性提示",
    suppress_new_trait_dialog_long = "用提示替换新特性的弹出对话框.",
    auto_switch_tabs = "自动切换药水/毒药制造",
    auto_switch_tabs_long = "根据任务描述中的毒药关键词，将界面切换至药水或毒药制造",

    traitNames =
    {
      ["Restore Health"] =                "回复生命",
      ["Ravage Health"] =                 "损害生命",
      ["Restore Magicka"] =               "回复魔力",
      ["Ravage Magicka"] =                "损害魔力",
      ["Restore Stamina"] =               "回复耐力",
      ["Ravage Stamina"] =                "损害耐力",
      ["Increase Weapon Power"] =         "提高武器威力",
      ["Lower Weapon Power"] =            "致残",
      ["Increase Spell Power"] =          "提高法术威力",
      ["Lower Spell Power"] =             "怯懦",
      ["Weapon Crit"] =                   "武器暴击率",
      ["Lower Weapon Crit"] =             "虚弱",
      ["Spell Crit"] =                    "法术暴击率",
      ["Lower Spell Crit"] =              "混乱",
      ["Increase Armor"] =                "提高护甲",
      ["Lower Armor"] =                   "断裂",
      ["Increase Spell Resist"] =         "提高法术抗性",
      ["Lower Spell Resist"] =            "破甲",
      ["Unstoppable"] =                   "势不可挡",
      ["Stun"] =                          "诱捕",
      ["Speed"] =                         "速度",
      ["Reduce Speed"] =                  "阻碍",
      ["Invisible"] =                     "隐形",
      ["Detection"] =                     "侦测",

      ["Sustained Restore Health"] =      "绵长生命",
      ["Creeping Ravage Health"] =        "渐进生命损害",
      ["Vitality"] =                      "活力",
      ["Vulnerability"] =                 "脆弱",
      ["Protection"] =                    "保护",
      ["Defile"] =                        "亵渎",

      ["Heroism"] =                       "英勇",
      ["Timidity"] =                      "胆怯",
    },
  }
return true end

--[[ Template

--
--
BB.AddonList[""] = function() if not  then return false end

return true end

]]