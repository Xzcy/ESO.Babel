local BB = MABabel

--[[pChat
--10.0.5.3
BB.AddonList["pChat"] = function() if not pChat then return false end

return true end]]

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