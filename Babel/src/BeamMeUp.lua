local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["BeamMeUp"] = function() if not BMU then return false end
  local mkstr = function(Id, String)
    if not Id then return end
    ZO_CreateStringId(Id, String)
  end
  local SI = BMU.SI
  --SI.lua
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
  mkstr(SI.TELE_SETTINGS_HEADER_CHAT_OUTPUT, "聊天栏输出")
  mkstr(SI.TELE_SETTINGS_OUTPUT_FAST_TRAVEL, "快速旅行信息")
  mkstr(SI.TELE_SETTINGS_OUTPUT_FAST_TRAVEL_TOOLTIP, "即将执行的快速旅行的信息输出。错误信息始终会显示在聊天栏。")
  mkstr(SI.TELE_SETTINGS_OUTPUT_ADDITIONAL, "辅助信息")
  mkstr(SI.TELE_SETTINGS_OUTPUT_ADDITIONAL_TOOLTIP, "更多该插件功能的辅助信息输出")
  mkstr(SI.TELE_SETTINGS_OUTPUT_UNLOCK, "自动发现信息")
  mkstr(SI.TELE_SETTINGS_OUTPUT_UNLOCK_TOOLTIP, "自动发现过程中的信息输出（解锁的神龛、获得的经验等）")
  mkstr(SI.TELE_SETTINGS_OUTPUT_DEBUG, "Debug信息")
  mkstr(SI.TELE_SETTINGS_OUTPUT_DEBUG_TOOLTIP, "用于排查插件故障的技术信息输出，这会导致大量聊天栏信息，普通玩家请勿开启！")
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
  mkstr(SI.TELE_KEYBINDING_WAYSHRINE_FAVORITE, "神龛收藏")
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
  
  --Special Setting
  BB.SetKeybindingsReplace("BMU_ANY_ZONE", "传送至任意区域")
  
return true end

