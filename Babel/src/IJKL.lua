local BB = MABabel

--ITTs Donation Bot
BB.AddonList["ITTSDonationBot"] = function() if not ITTsDonationBot then return false end
  BB.TableCopy({
    ITTDB_NAME = "ITT's Donation Bot",
    ITTDB_HEADER = "捐助",
    ITTDB_HEADER_GUILDS = "公会",
    ITTDB_HEADER_NOTIFY = "通知",
    -- time
    ITTDB_TIME_TODAY = "今天",
    ITTDB_TIME_YESTERDAY = "昨天",
    ITTDB_TIME_2_DAYS = "两天前",
    ITTDB_TIME_THIS_WEEK = "本周",
    ITTDB_TIME_LAST_WEEK = "上周",
    ITTDB_TIME_PRIOR_WEEK = "上上周",
    ITTDB_TIME_7_DAYS = "过去 7 天",
    ITTDB_TIME_10_DAYS = "过去 10 天",
    ITTDB_TIME_14_DAYS = "过去 14 天",
    ITTDB_TIME_30_DAYS = "过去 30 天",
    ITTDB_TIME_TOTAL = "总共",
    -- settings
    ITTDB_SETTINGS_DESC = [[如果您拥有某个公会的正确权限，该公会将在下方以切换选项的形式提供扫描。如果公会选项被禁用，则表示您没有正确的 "查看公会银行金币 "权限]],
    ITTDB_SETTINGS_SCAN_ERROR = "您没有扫描此公会的正确权限",
    ITTDB_SETTINGS_SCAN_PROMPT = "打开或关闭 ${guild} 的扫描功能",
    ITTDB_SETTINGS_SCAN_INFO = [[虽然我们会尽量自动处理，但也会有漏网之鱼。如果上述公会列表因最近的更改而不正确，您可能需要运行 /reloadui 命令]],
    ITTDB_SETTINGS_NOTIFY = [[通知仅适用于过去 24 小时内的任何内容]],
    ITTDB_SETTINGS_CHAT = "聊天通知",
    ITTDB_SETTINGS_SCREEN = "屏幕通知",
    ITTDB_SETTINGS_LOTTO_NAME = "乐透名单生成器",
    ITTDB_SETTINGS_LOTTO_DESC = [[单击以生成乐透名单中的公会成员名称栏和彩票数量栏。您可以在下面设置彩票的价值，默认值为 1k = 1 张彩票。结果基于当前 "本周"（即游戏内交易周）内的捐款。]],
    ITTDB_SETTINGS_LOTTO_SELECT = "选择工会",
    ITTDB_SETTINGS_LOTTO_GUILD = "参与乐透的公会成员",
    ITTDB_SETTINGS_LOTTO_VALUE = "乐透彩票价值",
    ITTDB_SETTINGS_LOTTO_EXAMPLE = "例如每彩票1k金币",
    ITTDB_SETTINGS_LOTTO_TIMEFRAME = "选择时间范围",
    ITTDB_SETTINGS_LOTTO_TIMEFRAME_2 = "乐透的时间范围",
    ITTDB_SETTINGS_LOTTO_GENERATE = "生成",
    ITTDB_SETTINGS_LOTTO_GENERATE_COL = "点击生成名单列表",
    ITTDB_SETTINGS_LOTTO_INFO_1 = "名称列的值，第 1 - 250 行",
    ITTDB_SETTINGS_LOTTO_INFO_2 = "彩票数量的值，第 1 - 250 行",
    ITTDB_SETTINGS_LOTTO_INFO_3 = "名称列的值，第 251 - 500 行",
    ITTDB_SETTINGS_LOTTO_INFO_4 = "彩票数量的值，第 251 - 500 行",
    ITTDB_SETTINGS_LOTTO_NAMES = "名称的值",
    ITTDB_SETTINGS_LOTTO_TICKETS = "彩票数量的值",
    ITTDB_SETTINGS_LOTTO_INFO_5 = "名称列在此生成",
    ITTDB_SETTINGS_LOTTO_INFO_6 = "数量列再次生成",
    ITTDB_LH_OPTIONS = "LibHistoire选项",
    ITTDB_LH_OPTION1_DESC = "缺失条目",
    ITTDB_LH_OPTION1_ENTRY = "这将扫描 LibHistoire，查找丢失的条目",
    ITTDB_LH_OPTION2_DESC = "全面扫描",
    ITTDB_LH_OPTION2_ENTRY = "这可能需要一些时间，取决于您缺少多少数据以及您在 LibHistoire 中存储了多少数据",
    ITTDB_LH_OPTION2_WARN = "这将扫描 LibHistoire 的全部数据（可能需要一些时间）",
    ITTDB_TRANSFER_OPTIONS = "导入选项",
    ITTDB_TRANSFER_TITLE = "转移旧记录",
    ITTDB_TRANSFER_DESC = "|cff0000警告 按此按钮前请备份已保存的变量",
    ITTDB_TRANSFER_WARN = "您备份过保存的变量吗？",
    ITTDB_TRANSFER_REMINDER = "|cffffff我们检测到您在更新前保存了数据！别担心，您的数据还在，请前往我们的插件菜单，点击<<导入选项>>并按照说明操作。谢谢！",
    -- Notifications
    ITTDB_NOTIFICATION = "${user} 在 ${time} 向 ${guild} 捐赠 ${amount}",
    -- Null
    ITTDB_NONE = "无",
    -- commands
    ITTDB_CMD_NO_GUILDS = "无法找到公会，请输入 1~5 之间的数字",
    ITTDB_CMD_GENERATED = "重新生成弹窗"
  }, ITTsDonationBot.i18n)

return true end

--LibAddonMenu-2.0
BB.AddonList["LibAddonMenu-2.0"] = function() if not LibAddonMenu2 then return false end
  local Table = {
    PANEL_NAME = "插件",
    AUTHOR = string.format("%s: <<X:1>>", GetString(SI_ADDON_MANAGER_AUTHOR)), -- "Author: <<X:1>>"
    VERSION = "版本: <<X:1>>",
    WEBSITE = "访问网站",
    FEEDBACK = "反馈",
    TRANSLATION = "翻译",
    DONATION = "捐助",
    PANEL_INFO_FONT = "$(CHAT_FONT)|14|soft-shadow-thin",
    RELOAD_UI_WARNING = "修改该设置后，需要重新加载UI使之生效",
    RELOAD_DIALOG_TITLE = "需要重新加载UI",
    RELOAD_DIALOG_TEXT = "部分修改，需要重新加载UI使之生效。你想现在就重新加载，或放弃修改吗？",
    RELOAD_DIALOG_RELOAD_BUTTON = "重载",
    RELOAD_DIALOG_DISCARD_BUTTON = "放弃",
  }
  LibAddonMenu2.util.L = BB.TableCopy(Table, LibAddonMenu2.util.L)
return true end

--LoreBooks
BB.AddonList["LoreBooks"] = function() if not LoreBooks then return false end
  local Strings = {
    [LBOOKS_QUEST_BOOK] = "任务 [%s]",
    [LBOOKS_QUEST_BOOK_ZONENAME] = "区域任务 %s [%s]",
    [LBOOKS_MAYBE_NOT_HERE] = "[书有可能不在这里]",
    [LBOOKS_QUEST_IN_ZONE] = "在 <<1>> 中的任务",
    [LBOOKS_SPECIAL_QUEST] = "特殊任务 <<1>>",
    [LBOOKS_LBPOS_OPEN_BOOK] = "使用/lbpos时，你必须正在阅读一本地图上的书",
    [LBOOKS_LBPOS_ERROR] = "制作技能书或与过目不忘或沙里多尔的图书馆无关",
    [LBOOKS_PIN_UPDATE] = "请帮助插件更新数据",

    --Camera Actions
    [LBOOKS_CLIMB] = "攀爬",

    --tooltips
    [LBOOKS_BOOKSHELF] = "书架",
    [LBOOKS_MOREINFO1] = "城镇",
    [LBOOKS_MOREINFO2] = GetString(SI_INSTANCEDISPLAYTYPE7),
    [LBOOKS_MOREINFO3] = GetString(SI_INSTANCEDISPLAYTYPE6),
    [LBOOKS_MOREINFO4] = "地下",
    [LBOOKS_MOREINFO5] = GetString(SI_INSTANCETYPE2),
    [LBOOKS_MOREINFO6] = "酒馆中",
    [LBOOKS_SET_WAYPOINT] = GetString(SI_WORLD_MAP_ACTION_SET_PLAYER_WAYPOINT) .. " : |cFFFFFF<<1>>|r",

    --settings menu header
    [LBOOKS_TITLE] = "LoreBooks 典籍",

    --appearance
    [LBOOKS_PIN_TEXTURE] = "选择地图标记图标",
    [LBOOKS_PIN_TEXTURE_EIDETIC] = "选择地图标记图标 (<<1>>)",
    [LBOOKS_PIN_TEXTURE_DESC] = "选择地图标记图标",
    [LBOOKS_PIN_GRAYSCALE] = " - 使用灰色滤镜",
    [LBOOKS_PIN_GRAYSCALE_DESC] = "对已收集的典籍使用灰色滤镜（只对'真实图标'起效）",
    [LBOOKS_PIN_GRAYSCALE_EIDETIC_DESC] = "对未收集的永恒记忆书本使用灰色滤镜（只对'真实图标'起效）",
    [LBOOKS_PIN_SIZE] = "标记尺寸",
    [LBOOKS_PIN_SIZE_DESC] = "设置地图标记的尺寸",
    [LBOOKS_PIN_LAYER] = "标志图层",
    [LBOOKS_PIN_LAYER_DESC] = "设置地图标志的图层",
    [LBOOKS_PIN_CLICK_MENU] = "启用设置书籍目的地",
    [LBOOKS_PIN_CLICK_MENU_DESC] = "允许在地图上左键单击书籍图标设置目的地标识",
    [LBOOKS_DUNGEON_TAG_MENU] = "在信息弹窗中添加地下城和区域名",
    [LBOOKS_DUNGEON_TAG_MENU_DESC] = "在地图中书籍图标展示的信息弹窗中添加地下城和区域名",
    [LBOOKS_QUESTINFO_MENU] = "在信息弹窗中添加任务名和地点",
    [LBOOKS_QUESTINFO_MENU_DESC] = "在地图中书籍图标展示的信息弹窗中添加任务名和地点",

    [LBOOKS_PIN_TEXTURE1] = "真实图标",
    [LBOOKS_PIN_TEXTURE2] = "书籍图标设置 1",
    [LBOOKS_PIN_TEXTURE3] = "书籍图标设置 2",
    [LBOOKS_PIN_TEXTURE4] = "Esohead的图标 (Rushmik)",

    --compass
    [LBOOKS_COMPASS_UNKNOWN] = "在罗盘上显示典籍",
    [LBOOKS_COMPASS_UNKNOWN_DESC] = "在罗盘上 显示/隐藏 未知典籍的图标",
    [LBOOKS_COMPASS_DIST] = "最大标记距离",
    [LBOOKS_COMPASS_DIST_DESC] = "标记在罗盘上出现的最大距离",

    --filters
    [LBOOKS_UNKNOWN] = "显示未知典籍",
    [LBOOKS_UNKNOWN_DESC] = "在地图上 显示/隐藏 未知典籍的图标",
    [LBOOKS_COLLECTED] = "显示已收集典籍",
    [LBOOKS_COLLECTED_DESC] = "在地图上 显示/隐藏 已收集典籍的图标",

    [LBOOKS_SHARE_DATA] = "与 LoreBooks 作者分享你的发现",
    [LBOOKS_SHARE_DATA_DESC] = "开启此选项将通过自动发送一个收集数据的游戏内邮件来与 LoreBooks 作者分享你的发现。\n此选项只对欧服玩家生效, 但收集到的数据会被分享给美服玩家\n请注意，当邮件发送时，您的技能可能会遇到一个小延迟。 每阅读30本书，邮件就自动发送一次。",

    [LBOOKS_EIDETIC] = "显示未知永恒记忆",
    [LBOOKS_EIDETIC_DESC] = "在地图上 显示/隐藏 未知永恒记忆卷轴。 这些卷轴是一些不计入法师公会进度的相关知识卷轴, 只提供一些与塔姆瑞尔世界观相关的信息",
    [LBOOKS_EIDETIC_COLLECTED] = "显示已知永恒记忆",
    [LBOOKS_EIDETIC_COLLECTED_DESC] = "在地图上 显示/隐藏 已知永恒记忆卷轴。 这些卷轴是一些不计入法师公会进度的相关知识卷轴, 只提供一些与塔姆瑞尔世界观相关的信息",

    [LBOOKS_BOOKSHELF_NAME] = "在地图上显示书架",
    [LBOOKS_BOOKSHELF_DESC] = "在地图上显示/隐藏书架。书架包含当前区域的随机书籍",
    [LBOOKS_COMPASS_EIDETIC] = "在罗盘上显示未知永恒记忆",
    [LBOOKS_COMPASS_EIDETIC_DESC] = "在罗盘上 显示/隐藏 未知永恒记忆卷轴。 这些卷轴是一些不计入法师公会进度的相关知识卷轴, 只提供一些与塔姆瑞尔世界观相关的信息",

    [LBOOKS_COMPASS_BOOKSHELF_NAME] = "在罗盘上显示书架",
    [LBOOKS_COMPASS_BOOKSHELF_DESC] = "在罗盘上显示/隐藏书架。书架包含当前区域的随机书籍",
    [LBOOKS_UNLOCK_EIDETIC] = "解锁永恒图书馆",
    [LBOOKS_UNLOCK_EIDETIC_DESC] = "即使你还没有完成法师公会的任务线，此选项依然能为您解锁永恒图书馆。此选项只对 英语/法语/德语 用户生效。",
    [LBOOKS_UNLOCK_EIDETIC_WARNING] = "该选项被禁用的原因是LoreBooks 尚未更新到最新版本，或您的语言不被支持",

    --worldmap filters
    [LBOOKS_FILTER_UNKNOWN] = "未知典籍",
    [LBOOKS_FILTER_COLLECTED] = "已收集典籍",
    [LBOOKS_FILTER_EICOLLECTED] = "<<1>> (已收集)",
    [LBOOKS_FILTER_BOOKSHELF] = "书架（Lorebooks插件）",

    --research
    [LBOOKS_SEARCH_LABEL] = "在典籍图书馆中搜索:",
    [LBOOKS_SEARCH_PLACEHOLDER] = "典籍名字",
    [LBOOKS_INCLUDE_MOTIFS_CHECKBOX] = "包含样式制作书",

    [LBOOKS_RANDOM_POSITION] = "[书架]",

    -- Report
    [LBOOKS_REPORT_KEYBIND_RPRT] = "报告",
    [LBOOKS_REPORT_KEYBIND_SWITCH] = "切换模式",
    [LBOOKS_REPORT_KEYBIND_COPY] = "复制",

    [LBOOKS_RS_FEW_BOOKS_MISSING] = "沙利多的图书馆中仍有部分书籍未找到..",
    [LBOOKS_RS_MDONE_BOOKS_MISSING] = "您已达到法师公会技能线最大级 ! 但是仍有部分书籍未找到",
    [LBOOKS_RS_GOT_ALL_BOOKS] = "你成功完成了所有沙利多的图书馆书籍收集。恭喜您 !",

    [LBOOKS_RE_FEW_BOOKS_MISSING] = "永恒记忆中仍有部分书籍未找到..",
    [LBOOKS_RE_THREESHOLD_ERROR] = "你需要收集更多一些书籍来获取永恒记忆报告..",

    -- Immersive Mode
    [LBOOKS_IMMERSIVE] = "开启沉浸模式基于",
    [LBOOKS_IMMERSIVE_DESC] = "基于您正在查看的当前区域以下目标的完成情况，未知典籍不会被显示",

    [LBOOKS_IMMERSIVE_CHOICE1] = "禁用",
    [LBOOKS_IMMERSIVE_CHOICE2] = "区域主线任务",
    [LBOOKS_IMMERSIVE_CHOICE3] = GetString(SI_MAPFILTER8),
    [LBOOKS_IMMERSIVE_CHOICE4] = GetAchievementCategoryInfo(6),
    [LBOOKS_IMMERSIVE_CHOICE5] = "区域任务",

    -- Quest Books
    [LBOOKS_USE_QUEST_BOOKS] = "使用任务书籍 (测试版)",
    [LBOOKS_USE_QUEST_BOOKS_DESC] = "收到新任务时，会尝试使用任务工具来避免错过只出现在物品栏的书籍。也可以使用地图之类的东西，因为书和其他可用的任务物品没有区别。",
  }
  
  BB.TableCopy({
    [1] = "城镇",
    [2] = GetString(SI_INSTANCEDISPLAYTYPE7),
    [3] = GetString(SI_INSTANCEDISPLAYTYPE6),
    [4] = "地下",
    [5] = GetString(SI_INSTANCETYPE2),
    [6] = "酒馆中",
    [7] = "客房", -- 1
    [8] = "阁楼", -- 2
    [9] = "隐藏地下室", -- 3
    [10] = "书架", -- 4
    [11] = "莱拉米尔的书房",
    [12] = "詹农的工坊",
    [13] = "废弃的实验室",
    [14] = "精工厅堂",
    }, LoreBooks.locationDetails
  )

  for k, v in pairs(Strings) do
    SafeAddString(k, v, 2)
  end

return true end

--Lucent Citadel Helper
BB.AddonList["LucentCitadelHelper"] = function() if not LCH then return false end
  local NewOption = {
    {
      type = "description",
      text = "卢晶堡垒试炼的计时器、警报器和提示器插件。该插件版本需要Code's Combat Alerts插件",
    },
    {
      type = "divider",
    },
    {
      type = "description",
      text = "部分机制显示需要 |cff0000OdySupportIcons|r 插件",
    },
    {
      type = "divider",
    },
    {
      type    = "checkbox",
      name    = "解锁UI",
    },
    {
      type = "description",
      text = "你也可以使用 /lch lock 和 /lch unlock 指令去设置UI位置",
    },
    {
      type    = "button",
      name    = "重设UI为默认位置",
      warning = "重置后需要重载UI",
    },
    {
      type    = "checkbox",
      name    = "隐藏聊天栏副本欢迎信息",
    },
    {
      type = "divider",
    },
    {
      type = "header",
      name = "齐利塞特 & 雷拉兹伯爵（一王）",
    },
    {
      type    = "checkbox",
      name    = "图标: 显示传送垫数字",
    },
    {
      type = "divider",
    },
    {
      type = "header",
      name = "神秘破裂碎片（二王）",
    },
    {
      type    = "checkbox",
      name    = "面板: 雷霆束缚（佐林传送）计时器",
    },
    {
      type    = "checkbox",
      name    = "面板: 闪电洪流（佐林电杖重击）计时器",
    },
    {
      type    = "checkbox",
      name    = "图标: 显示镜子数字",
    },
    {
      type = "divider",
    },
    {
      type = "header",
      name = "佐林（尾王）",
    },
    {
      type    = "checkbox",
      name    = "面板: 波动涌流（电圈）持有者",
    },
    {
      type    = "checkbox",
      name    = "面板: 波动涌流（电圈）计时器",
    },
    {
      type    = "checkbox",
      name    = "面板: 超载电流（电圈易伤）计时器",
    },
    {
      type    = "checkbox",
      name    = "显示 超载电流（电圈易伤） 图标",
    },
    {
      type = "divider",
    },
    {
      type = "header",
      name = "杂项",
    },
    {
      type = "description",
      text = "不推荐修改。解锁UI后才可调整缩放比例",
    },
    {
      type    = "slider",
      name    = "缩放尺寸",
      tooltip = "0.5很小，2很大",
      warning = "仅用于超大分辨率。最佳推荐比例为1"
    },
  }
  
  --Sepcial Setting
  BB.SetMenuPatch(LCH.name .. "Options", NewOption)
  
  LCH.data.zilyessetName = "雷拉兹伯爵"
  LCH.data.orphicName = "神秘破裂碎片"
  LCH.data.xorynName = "佐林"
  
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