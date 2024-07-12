local BB = MABabel

--Furniture Catalogue
--4.83.0
BB.AddonList["FurnitureCatalogue"] = function() if not FurC then return false end
  local filterDisabled = "禁用此过滤器"
  local strings = {
    FURC_AV_RAZ = "拉祖法",
    FURC_AV_MUL = "穆尔维瑟·瓦林",

    FURC_AV_NAR = "纳瓦文德",
    FURC_AV_ALI = "阿里诺尔, 河边集市",
    FURC_AV_UNW = "安沃尔蒂",
    FURC_AV_CUR = "库瑞威",
    FURC_AV_NAL = "纳利瑟文",
    FURC_AV_TAR = "塔米姆",
    FURC_AV_LTS = "听汪海",
    FURC_AV_HER = "赫拉达·加斯克罗夫特",
    FURC_AV_FRO = "雪发弗罗希尔德",
    FURC_AV_LOT = "洛佐图斯克",
    FURC_AV_ROH = "罗齐卡",
    FURC_AV_ATH = "马瑟拉各",
    FURC_AV_MAL = "马拉迪克",
    FURC_AV_KRR = "拉兹特布",
    FURC_AV_HAR = "汉武夫",
    FURC_KITTY_LATHA = "拉萨西姆",
    FURC_KITTY_YATAVA = "亚塔瓦",
    FURC_SKYRIM_MASELA = "玛瑟拉",
    FURC_SKYRIM_NETINDELL = "玛瑟拉",
    FURC_AV_ADO = "阿多萨·维拉洛",
    FURC_AV_ENC = "附魔师",
    FURC_AV_ALC = "炼金术士",
    FURC_AV_OUT = "罪犯避难所, 商人",
    FURC_AV_COO = "厨师",
    FURC_AV_CLO = "制衣师",
    FURC_AV_CAR = "木匠",
    FURC_AV_BSM = "铁匠",
    FURC_AV_ARTAEUM = "阿蒂姆",
    FURC_AV_CAPITAL = "任何阵营首都",

    -- Furniture Shopping List
    SI_FURC_ONE_TO_SHOPPINGLIST =         "添加 1 到购物清单",
    SI_FURC_FIVE_TO_SHOPPINGLIST =        "添加 5 到购物清单",
    SI_FURC_TOGGLE_SHOPPINGLIST =         " 切换购物清单",

    -- GUI and debug
    SI_FURC_MENU_HEADER =                 "- |cD3B830家具|r:",
    SI_FURC_REMOVE_FAVE =                 " 移除收藏夹",
    SI_FURC_ADD_FAVE =                     " 添加收藏夹",
    SI_FURC_POST_ITEMSOURCE =             " 发布项目来源",
    SI_FURC_POST_RECIPE =                 " 发布食谱",
    SI_FURC_POST_ITEM =                   " 发布项目",
    SI_FURC_POST_MATERIAL =               " 发布材料",
    SI_FURC_DIALOGUE_RESET_DB_HEADER =    "真的要重新创建家具数据库吗？",
    SI_FURC_DIALOGUE_RESET_DB_BODY =      "这将从头开始重新创建 FurnitureCatalogue 数据库",
    SI_FURC_TEXTBOX_FILTER_DEFAULT =      "按文本搜索过滤",
    SI_FURC_DEBUG_CHARSCANCOMPLETE =      "家具目录：字符扫描完成...",
    SI_FURC_VERBOSE_STARTUP =             "家具目录：如果您错过任何食谱，请点击 UI 中的刷新按钮触发对您的家具工匠的扫描.",
    SI_FURC_VERBOSE_DB_UPTODATE =         "家具目录：数据库是最新的。",
    SI_FURC_VERBOSE_SCANNING_DATA_FILE =  "家具目录：扫描数据文件...",
    SI_FURC_VERBOSE_SCANNING_CHARS =      "不是扫描文件，现在扫描角色知识...",
    SI_FURC_ITEMSOURCE_EMPTY =            "项目来源未知。\n尝试重新扫描文件（刷新按钮右键单击）.\n如果该物品仍然未知 - 并且不是周末家具商当前库存的一部分 - 请将带有物品链接和来源的邮件发送至@berylbones。",
    SI_FURC_RUMOUR_SOURCE_RECIPE =        "此配方已被数据挖掘，但未在游戏中出现",
    SI_FURC_RUMOUR_SOURCE_ITEM =          "该物品已被数据挖掘，但未在游戏中出现",
    SI_FURC_STRING_CRAFTABLE_BY =         "可以制作 ",
    SI_FURC_STRING_CANNOT_CRAFT =         "你还不能制作这个",
    SI_FURC_STRING_VENDOR =               "所售 <<1>> in <<2>> (<<3>><<4>>)",
    SI_FURC_STRING_AP =                   " AP",
    SI_FURC_STRING_ASSHOLE =              "扎尼尔·瑟兰",
    SI_FURC_STRING_HC =                   "空洞之城",
    SI_FURC_STRING_WASSOLDBY =            "被卖给 <<1>> in <<2>> (<<3>>) <<4>>",
    SI_FURC_STRING_WEEKEND_AROUND =       "(大约 <<1>>)",
    SI_FURC_REQUIRES_ACHIEVEMENT =        ", 要求 ",
    SI_FURC_PSIJIC_RANK =                 "赛伊克教团等级 ",
    SI_FURC_STRING_WRIT_VENDOR =          "大师令状供应商",
    SI_FURC_STRING_WRIT_VENDOR_TT =       "可在您联盟的首都获得大师令状",
    SI_FURC_STRING_ROLIS =                "所售 |cd68957罗利斯·哈拉鲁|r <<1>>",
    SI_FURC_STRING_FAUSTINA =             "所售 |cd68957法斯提纳·库里奥|r <<1>>",
    SI_FURC_STRING_FOR_VOUCHERS =         "for <<1>> 券",
    SI_FURC_FESTIVAL_DROP =               "期间可以获得 <<1>> (<<2>>)",
    SI_FURC_WW_DUNGEON_DROP =             "怪物猎手要塞掉落/献祭之境",
    SI_FURC_DOM_DUNGEON_DROP =            "掉落在马拉塔深渊",
    SI_FURC_STRING_RECIPELEARNED =        "配方学习： <<1>> <<2>> <<3>>",
    SI_FURC_STRING_RECIPESFORCHAR =       "食谱 <<1>>",
    SI_FURC_STRING_VOUCHER_VENDOR =       "由任一者出售 罗利斯·哈拉鲁 or 法斯提纳·库里奥",
    SI_FURC_QUESTREWARD =                 "任务奖励 ",
    SI_FURC_GEYSER =                      "夏暮岛上的间歇泉奖励蛤蜊掉落",
    SI_FURC_GIANT_CLAM =                  "夏暮岛上的巨蛤和间歇泉奖励蛤蜊掉落",
    SI_FURC_ELF_PIC =                     "很少从夏暮岛的宝箱中掉落",
    SI_FURC_LEVELUP =                     "可以作为升级奖励获得",
    SI_FURC_SLAVES_DAILY =                "来自 幽暗沼泽 每日任务奖励箱",
    
    -- =============================== --
    -- ============ MENU ============= --
    -- =============================== --

    SI_FURC_STRING_MENU_DEBUG =               "启用调试输出",
    SI_FURC_STRING_MENU_RESET_DB_NAME =       "|cFF0000重置数据库",
    SI_FURC_STRING_MENU_RESET_DB_TT =         "这将重置家具数据库。",
    SI_FURC_STRING_MENU_RESET_DB_WARNING =    "您的所有数据都将被重置。 只会考虑此角色的配方知识。",
    SI_FURC_STRING_MENU_RESCAN_RUMOUR_NAME =  "重新扫描谣言食谱",
    SI_FURC_STRING_MENU_RESCAN_RUMOUR_TT =    "将根据更新列表更新谣言食谱",
    SI_FURC_STRING_MENU_SCAN_FILES_NAME =     "扫描文件",
    SI_FURC_STRING_MENU_SCAN_FILES_TT =       "将对家具目录文件中的数据进行全面扫描",
    SI_FURC_STRING_MENU_SCAN_CHAR_NAME =      "扫描角色",
    SI_FURC_STRING_MENU_SCAN_CHAR_TT =        "将对您已知的家具配方进行全面扫描并相应地更新数据库",
    SI_FURC_STRING_MENU_DELETE_CHAR_NAME =    "删除角色",
    SI_FURC_STRING_MENU_DELETE_CHAR_TT =      "从数据库中删除该角色的所有知识。 \n下次启用加载项登录时，将再次扫描角色。 \n 如果他们不知道任何食谱，角色名称将不会出现在下拉列表中！",
    SI_FURC_STRING_MENU_DELETE_CHAR_WARNING = "角色知识会被立即抹去",
    SI_FURC_STRING_MENU_ENABLE_SHOPPINGLIST = "启用集成？",
    SI_FURC_STRING_MENU_SKIP_INITIALSCAN =    "跳过初始扫描？",
    SI_FURC_STRING_MENU_SKIP_INITIALSCAN_TT = "选中此项以在登录时不扫描角色的食谱。 \n多亏了 votan 出色的 LibAsync，无论如何，延迟现在都消失了。",
    SI_FURC_STRING_MENU_HEADER_ICONS =        "库存和银行图标",
    SI_FURC_STRING_MENU_ADD_ITEMS_NAME =      "将项目添加到已知/未知的食谱？",
    SI_FURC_STRING_MENU_ADD_ITEMS_TT =        "您不应该注意到任何延迟",
    SI_FURC_STRING_MENU_IT_UNKNOWN_NAME =     "只标记未知的食谱？",
    SI_FURC_STRING_MENU_IT_THIS_ONLY =        "只针对这个角色？",
    SI_FURC_STRING_MENU_IT_THIS_ONLY_TT =     "否则将在整个帐户范围内。",
    SI_FURC_STRING_MENU_USETINY =             "使用微小的界面？",
    SI_FURC_STRING_MENU_USETINY_TT =          "使用更小的界面 (像Craft Store). \n您可以通过单击 +/- 按钮从 UI 切换它。",

    SI_FURC_STRING_MENU_STARTSILENT =         "静静地开始?",
    SI_FURC_STRING_MENU_STARTSILENT_TT =      "抑制启动消息",
    SI_FURC_STRING_MENU_SHOWICONONLEFT =      "在左侧显示已知/未知图标?",
    SI_FURC_STRING_MENU_SHOWICONONLEFT_TT =   "在库存项目的左侧或右侧显示绿色复选/红色 X 图标（需要重新加载）",
    SI_FURC_STRING_MENU_FONTSIZE =            "字体大小",
    SI_FURC_STRING_MENU_FONTSIZE_TT =         "在此处调整 FurnitureCatalogue 的字体大小",
    SI_FURC_STRING_MENU_DEFAULT_DD =          "默认下拉列表值",
    SI_FURC_STRING_MENU_DEFAULT_DD_USE =      "将在初始启动时设置",
    SI_FURC_STRING_MENU_DEFAULT_DD_USE_TT =   "如果您打开和关闭 UI，这些不会重置",
    SI_FURC_STRING_MENU_DEFAULT_DD_RESET =    "关闭 UI 时重置过滤器?",
    SI_FURC_STRING_MENU_DEFAULT_DD_RESET_TT = "如果您选中此项，打开和关闭将导致过滤器重置为您在下面设置的任何值。",
    SI_FURC_STRING_MENU_DEFAULT_DD_SOURCE =   "默认源过滤器",
    SI_FURC_STRING_MENU_DEFAULT_DD_CHAR =     "默认字符过滤器",
    SI_FURC_STRING_MENU_DEFAULT_DD_VERSION =  "默认版本过滤器",
    SI_FURC_STRING_MENU_FILTERING =           "目录过滤",
    SI_FURC_STRING_MENU_FILTER_BOOKS =        "魔法公会书籍",
    SI_FURC_STRING_MENU_FILTER_BOOKS_N =      "把书藏起来？",
    SI_FURC_STRING_MENU_FILTER_BOOKS_TT =     "一个真正的书迷知道每件事都在心里。 隐藏家具目录中的书籍？",
    SI_FURC_STRING_MENU_LUXURY =              "豪华家具",
    SI_FURC_STRING_MENU_LUXURY_N =            "将奢侈品视为可购买的物品？",
    SI_FURC_STRING_MENU_LUXURY_TT =           "这将显示 扎尼尔·瑟兰 出售的所有商品 '可购买' 并停用自定义筛选器",
    SI_FURC_STRING_MENU_LUXURY_WARN =         "隐藏下拉条目需要重新加载 UI（为了您的方便不会自动发生）",
    SI_FURC_STRING_MENU_RUMOUR =              "传闻食谱",
    SI_FURC_STRING_MENU_RUMOUR_DESC =         "家具数据库包含我已通过数据挖掘的食谱列表。\n然而，并不是所有这些都在游戏中出现过。\n启用此选项可将它们从默认过滤器中排除。\n您仍然可以使用他们自己的过滤器查看它们，您可以在下面禁用它们。",
    SI_FURC_STRING_CONTEXTMENU_INVENTORY =    "禁用库存中的上下文菜单？",
    SI_FURC_STRING_CONTEXTMENU_INVENTORY_TT = "禁用库存项目的上下文，例如发布材料和添加到收藏夹。",
    SI_FURC_STRING_CONTEXTMENU_DIVIDER =      "不要在上下文菜单中使用分隔符？",
    SI_FURC_STRING_CONTEXTMENU_DIVIDER_TT =   "在 - 家具条目上方的上下文菜单中添加分隔符。 勾选禁用",
      
    SI_FURC_SHOW_RUMOUR_TT =                  "仅确认项目。 点击显示谣言项目。",
    SI_FURC_HIDE_RUMOUR_TT =                  "显示谣言（未经证实）的项目。 点击隐藏。",
    
    SI_FURC_SHOW_CROWN_TT =                   "隐藏的皇冠商店。 点击显示。",
    SI_FURC_HIDE_CROWN_TT =                   "显示皇冠商店。 点击隐藏。",
      
    SI_FURC_STRING_MENU_RUMOUR_N =            "隐藏谣言食谱？",
    
    SI_FURC_STRING_MENU_CROWN =               "皇冠商店物品",
    SI_FURC_STRING_MENU_CROWN_N =             "隐藏皇冠商店物品?",
    SI_FURC_STRING_MENU_CROWN_DESC =          "每当工具提示显示家具项目时，家具数据库就会更新。 \n有些物品只能通过皇冠商店获得。\n选中此框可将它们排除在默认过滤器之外 (您仍然可以通过从源下拉列表中选择“皇冠商店”来查看它们）.",
    SI_FURC_STRING_MENU_FALL_HIDE_UI_BUTTON = "在搜索框中隐藏 UI 按钮?", 

      -- Filter text search
    SI_FURC_STRING_MENU_HEADER_F_ALL_ON_TEXT =  "文本搜索的过滤器设置",
    SI_FURC_STRING_MENU_F_ALL_ON_TEXT =         "配置此过滤器",
    SI_FURC_STRING_MENU_HEADER_F_ALL_DESC =     "使用禁用的下拉菜单为文本搜索配置过滤器设置。 \n这些设置只有在您没有设置来源、字符或版本过滤器时才会生效。",

    SI_FURC_STRING_MENU_FILTER_ALL_ON_TEXT =    "在没有设置下拉过滤器的情况下进行文本搜索时搜索过滤的项目?",
    SI_FURC_STRING_MENU_FILTER_ALL_ON_TEXT_TT = "在没有任何下拉菜单的情况下进行文本搜索时 ",
    SI_FURC_STRING_MENU_FALL_HIDE_BOOKS =       "仍然隐藏书籍",
    SI_FURC_STRING_MENU_FALL_HIDE_BOOKS_TT =    "即使过滤所有项目，仍然隐藏书籍?",
    SI_FURC_STRING_MENU_FALL_HIDE_CROWN =       "无论如何隐藏皇冠商店物品",
    SI_FURC_STRING_MENU_FALL_HIDE_CROWN_TT =    "即使过滤所有物品，仍然隐藏皇冠商店物品？",
    SI_FURC_STRING_MENU_FALL_HIDE_RUMOUR =      "无论如何隐藏谣言项目",
    SI_FURC_STRING_MENU_FALL_HIDE_RUMOUR_TT =   "即使在过滤所有项目时，仍然隐藏谣言项目?",
    
      -- Hide menu entries
    SI_FURC_STRING_MENU_HIDE_MENU =               "隐藏菜单项?",
    SI_FURC_STRING_MENU_HIDE_MENU_TT =            "从下拉菜单中隐藏“皇冠商店”和“谣言食谱”\n默认情况下为皇冠商店激活，因为还没有任何项目",
    SI_FURC_STRING_MENU_HIDE_MENU_RUMOUR =        "隐藏“谣言食谱”下拉条目?",
    SI_FURC_STRING_MENU_HIDE_MENU_CROWN =         "隐藏“皇冠商店”下拉条目？",
    SI_FURC_STRING_MENU_HIDE_MENU_TT =            "需要重新加载 UI (为了您的方便，不会自动发生)",
    SI_FURC_STRING_MENU_TOOLTIP =                 "启用工具提示?",
    SI_FURC_STRING_MENU_TOOLTIP_COLOR =           "为工具提示着色以使其清晰?",
    SI_FURC_STRING_MENU_TOOLTIP_COLOR_TT =        "将区分颜色“能”和“不能”",
    SI_FURC_STRING_MENU_TOOLTIP_HIDE_KNOWN =      "从工具提示中隐藏项目知识",
    SI_FURC_STRING_MENU_TOOLTIP_HIDE_KNOWN_TT =   "从工具提示中隐藏“可以由...制作”",
    SI_FURC_STRING_MENU_TOOLTIP_HIDE_UNKNOWN =    "如果项目未知则隐藏",
    SI_FURC_STRING_MENU_TOOLTIP_HIDE_UNKNOWN_TT = "隐藏'你还不能制作这个'",
    SI_FURC_STRING_MENU_TOOLTIP_HIDE_SOURCE =     "隐藏物品来源?",
    SI_FURC_STRING_MENU_TOOLTIP_HIDE_STATION =    "隐藏制作站?",

    -- =============================== --
    -- ==== GUI: Dropdown entries ==== --
    -- =============================== --

    SI_FURC_NONE =                "源过滤器：关闭",
    SI_FURC_FAVE =                "收藏夹",
    SI_FURC_CRAFTING =            "可制作：全部",
    SI_FURC_CRAFTING_KNOWN =      "可制作：已知",
    SI_FURC_CRAFTING_UNKNOWN =    "可制作：未知",
    SI_FURC_VENDOR =              "可购买（金币）",
    SI_FURC_PVP =                 "可购买 (AP)",
    SI_FURC_CROWN =               "皇冠商店",
    SI_FURC_RUMOUR =              "谣言项目",
    SI_FURC_LUXURY =              "奢侈品",
    SI_FURC_RUMOUR =              "谣言项目",

    SI_FURC_FILTER_VERSION_OFF =      "版本过滤器: 关",
    SI_FURC_FILTER_VERSION_HS =       "家园",
    SI_FURC_FILTER_VERSION_M =        "晨风",
    SI_FURC_FILTER_VERSION_R =        "瑞驰号角",
    SI_FURC_FILTER_VERSION_CC =       "发条城",
    SI_FURC_FILTER_VERSION_DRAGON =   "龙骨",
    SI_FURC_FILTER_VERSION_ALTMER =   "夏暮岛",
    SI_FURC_FILTER_VERSION_WEREWOLF = "猎狼人",
    SI_FURC_FILTER_VERSION_SLAVES =   "幽暗沼泽",
    SI_FURC_FILTER_VERSION_WOTL =     "怒灵石",
    SI_FURC_FILTER_VERSION_KITTY =    "艾斯维尔",
    SI_FURC_FILTER_VERSION_SCALES =   "断鳞者",
    SI_FURC_FILTER_VERSION_DRAGON2 =  "龙之要塞",
    SI_FURC_FILTER_VERSION_HARROW =   "血疫风暴",
    SI_FURC_FILTER_VERSION_SKYRIM =   "灰沼",
    SI_FURC_FILTER_VERSION_STONET =   "石与荆棘",
    SI_FURC_FILTER_VERSION_MARKAT =   "马卡斯城",
    SI_FURC_FILTER_VERSION_FLAMES =   "野心之火",
    SI_FURC_FILTER_VERSION_BLACKW =   "黑木",
    SI_FURC_FILTER_VERSION_DEADL =    "死地",
    SI_FURC_FILTER_VERSION_TIDES = 	"潮起",
    SI_FURC_FILTER_VERSION_BRETON = 	"高岛",
    SI_FURC_FILTER_VERSION_DEPTHS = 	"失落深渊",
    SI_FURC_FILTER_VERSION_DRUID = 	"焱歌",
    SI_FURC_FILTER_VERSION_SCRIBE = 	"命运书写师",
    SI_FURC_FILTER_VERSION_NECROM = 	"死灵之地",
    SI_FURC_FILTER_VERSION_BASED = "基础游戏补丁",
    SI_FURC_FILTER_VERSION_ENDLESS = "泰尔瓦尼的秘密",

    -- =============================== --
    -- = GUI: Dropdown entry tooltip = --
    -- =============================== --

    SI_FURC_NONE_TT =             "禁用此过滤器",
    SI_FURC_FAVE_TT =             "显示您的收藏夹",
    SI_FURC_CRAFTING_TT =         "显示所有可制作的物品",
    SI_FURC_CRAFTING_KNOWN_TT =   "仅显示已知的可制作物品",
    SI_FURC_CRAFTING_UNKNOWN_TT = "仅显示未知的可制作物品",
    SI_FURC_VENDOR_TT =           "仅显示无法制作的物品",
    SI_FURC_PVP_TT =              "以联盟点数出售的物品",
    SI_FURC_CROWN_TT =            "显示只能从皇冠商店获得的物品",
    SI_FURC_RUMOUR_TT =           "已被数据挖掘但尚未确认存在的物品和配方",
    SI_FURC_LUXURY_TT =           "某些时候由 扎尼尔·瑟兰, 西塞罗的一般杂货铺, 冷港 出售的物品",
    SI_FURC_OTHER_TT =            "显示可以采集/偷窃/找到的物品",
          
    SI_FURC_FILTER_VERSION_OFF_TT =       filterDisabled,
    SI_FURC_FILTER_VERSION_HS_TT =        "家园 更新中发布的项目", 
    SI_FURC_FILTER_VERSION_M_TT =         "YOU N\'WAH!", 
    SI_FURC_FILTER_VERSION_R_TT =         "因为我们所需要的只是更多的瑞驰人n", 
    SI_FURC_FILTER_VERSION_CC_TT =        "飞轮转动的地方，黄铜很漂亮", 
    SI_FURC_FILTER_VERSION_DRAGON_TT =    "如果你从 纳西斯·德伦 那里得到这个，那么......", 
    SI_FURC_FILTER_VERSION_ALTMER_TT =    "还是觉得丹莫不好？",
    SI_FURC_FILTER_VERSION_WEREWOLF_TT =  "在狩猎场, 狼人追杀你",
    SI_FURC_FILTER_VERSION_SLAVES_TT =    "亚龙人的孩子在学校学什么？希思特树.",
    SI_FURC_FILTER_VERSION_WOTL_TT =      "怒灵石!",
    SI_FURC_FILTER_VERSION_KITTY_TT =     "虎人的家具, 如果你有金币!",
    SI_FURC_FILTER_VERSION_SCALES_TT =    "Fus Ro Dah?",
    SI_FURC_FILTER_VERSION_DRAGON2_TT =   "现在有更多的龙",
    SI_FURC_FILTER_VERSION_HARROW_TT =    "气候变化是真实的",
    SI_FURC_FILTER_VERSION_SKYRIM_TT =    "他们在卖天际 *再一次*!",
    SI_FURC_FILTER_VERSION_STONET_TT =    "这不是真的石头",
    SI_FURC_FILTER_VERSION_MARKAT_TT =	"使用 矮人 管道",
    SI_FURC_FILTER_VERSION_FLAMES_TT =	"Mildly 易燃的",
    SI_FURC_FILTER_VERSION_BLACKW_TT =	"梅鲁涅斯 永远学不会",
    SI_FURC_FILTER_VERSION_DEADL_TT =		"这是什么地方有闪闪发光的肉?",
    SI_FURC_FILTER_VERSION_TIDES_TT =		"红卫. 结构. 家具 (有点儿?)",
    SI_FURC_FILTER_VERSION_BRETON_TT = 	"这里是海盗",
    SI_FURC_FILTER_VERSION_DEPTHS_TT =	"潘格瑞到底是什么?",
    SI_FURC_FILTER_VERSION_DRUID_TT = 	"记住什么时候我们可以阻止?",
    SI_FURC_FILTER_VERSION_SCRIBE_TT = 	"书籍和事物",
    SI_FURC_FILTER_VERSION_NECROM_TT = 	"这么多触手",
    SI_FURC_FILTER_VERSION_BASED_TT = "当你没有名字的时候",
    SI_FURC_FILTER_VERSION_ENDLESS_TT = "现在有了无限的触手",

    SI_FURC_FILTER_CHAR_OFF =     "字符过滤器: 关", 
    SI_FURC_FILTER_CHAR_OFF_TT =  filterDisabled, 
    
    -- =============================== --
    -- ========= GUI: Heading ======== -- 
    -- =============================== --
    
    SI_FURC_LABEL_ENTRIES =       " 条目 -", 
      
      -- =============================== --
    -- ========= Item Sources ======== -- 
    -- =============================== --
    SI_FURC_CANBEPICKED =           "可以被扒窃",
    SI_FURC_CANBESTOLEN =           "可以被偷",
    SI_FURC_CANBESCRYED =           "来自探知",
    SI_FURC_CROWNSTORESOURCE =      "皇冠商店 ",
    SI_FURC_CANBEFISHED =           "可以钓鱼",
    SI_FURC_HARVEST =               "从收获节点",
    SI_FURC_WW =                    "偶尔在木材点中发现",
    SI_FURC_PLANTS =                "从收获植物",
    SI_FURC_SCAMBOX =               "皇冠箱",
    SI_FURC_SCAMBOX_GEMS =          "皇冠箱宝石",
    SI_FURC_HOUSE =                 "来自带家具的购买 <<1>>",
    SI_FURC_AUTOMATON =             "来自 机械体",
    SI_FURC_TOMBS =                 "瓦登费尔的祖先墓葬和遗址",
    SI_FURC_DAEDRA_SOURCE =         "来自 魔族 和 暗锚 的宝箱",
    SI_FURC_DB =                    "黑暗兄弟会物资供应商分发这些 ",
    SI_FURC_DB_POISON =             "用毒药",
    SI_FURC_DB_STEALTH =            "作为一种不那么引人注目的方法",
    SI_FURC_DB_EQUIP =			  "有装备",
    SI_FURC_DAILY_ASH =             "灰原之民 每日任务奖励",
    SI_FURC_DAILY_ELSWEYR =         "艾斯维尔每日任务奖励",
    SI_FURC_EVENT_ELSWEYR =         "艾斯维尔龙事件",
    SI_FURC_PLUNDERSKULL =          "女巫节期间掠夺头骨掉落",
    SI_FURC_VV_PAINTING =           "极少来自 瓦登费尔 的箱子或锁箱",
    SI_FURC_DROP =                  "此商品为掉落物 ", 
    SI_FURC_DROP_ALTMER =           "该物品是夏暮岛的掉落物", 
    SI_FURC_FLAME_ATRONACH =        "烈焰侍灵",
    SI_FURC_DWEMER = "矮人",
    SI_FURC_REAPER =                "收割者的收获",
    SI_FURC_CHESTS =                "来自宝箱",
    SI_FURC_ITEMSOURCE_SAFEBOX =    "极少来自保险箱",
    SI_FURC_CHEST_VV =              "极少来自 瓦登费尔 的箱子",
    SI_FURC_DRAGON_DUNGEON_DROP =   "獠牙巢穴/唤鳞者之巅",
    SI_FURC_DATAMINED_UNCLEAR =     "该物品已在游戏中出现，但尚不清楚您可以在何处获得它。",
    SI_FURC_ITEMSOURCE_ITEMPACK =   "皇冠商店物品包的一部分 [<<1>>] ",
    SI_FURC_EVENT_BLACKWOOD = 	    "来自参与黑木之宝事件",
    SI_FURC_TRIBUTE = 			        "来自 礼赞传说 奖励金库",
    SI_FURC_TRIBUTE_RANKED = 			  "来自 礼赞传说排位赛 (系统奖励邮件)",
    
    SI_FURC_SEEN_IN_GUILDSTORE =    "在公会商店看到",
    SI_FURC_OTHER = "其他",
    SI_FURC_FILTER_VERSION_SCIONS_TT = "是的老白, 后裔！",
    SI_FURC_FILTER_VERSION_SCIONS = "伊瑟利亚的后裔",
    SI_FURC_STRING_MENU_TOOLTIP_HIDE_MATERIAL = "隐藏材料？",
    SI_FURC_STRING_MENU_DEBUG_TT = "只有启用调试日志记录器时才会生效",
    SI_FURC_STRING_MENU_TOOLTIP_DATEFORMAT_TT = "影响豪华家具信息",
    SI_FURC_STRING_MENU_TOOLTIP_DATEFORMAT = "首选日期格式",
  }
  for stringId, stringValue in pairs(strings) do
    ZO_CreateStringId(stringId, stringValue)
    SafeAddVersion(stringId, 1)
  end
return true end

--GuildDonate
--1.4.11
BB.AddonList["GuildDonate"] = function() if not GuildDonate then return false end
  ZO_CreateStringId("GD_DEBUG_LOG",   "显示调试日记")
  ZO_CreateStringId("GD_AUTO",        "自动向所有公会捐款")
  ZO_CreateStringId("GD_WEEKLY",      "每周 (从 <<1>> 至 ...)")
  ZO_CreateStringId("GD_MONDAY",      "周一")
  ZO_CreateStringId("GD_TUESDAY",     "周二")
  ZO_CreateStringId("GD_WEDNESDAY",   "周三")
  ZO_CreateStringId("GD_THURSDAY",    "周四")
  ZO_CreateStringId("GD_FRIDAY",      "周五")
  ZO_CreateStringId("GD_SATURDAY",    "周六")
  ZO_CreateStringId("GD_SUNDAY",      "周日")
  ZO_CreateStringId("GD_HISTORY",     "历史")
  ZO_CreateStringId("GD_DATE",        "日期")
  ZO_CreateStringId("GD_MAX_HISTORY", "历史记录的最大数量")
return true end

--Guild Hall Button
--2.3.16
do if not BB.SV.BanList["GuildHallButton"] then
  local function Fun()
    local Strings = {
      [SI_GUILDHALLBUTTON_ADD_ON_COMPATIBILITY_IS_AND_7D8F8298C885E6090] = '插件兼容性为 <<1>> 和 <<2>>',
      [SI_GUILDHALLBUTTON_ADD_ON_MENU_CALL_FAILED_00111DF3F9FE114E68529] = '插件菜单调用失败: ',
      [SI_GUILDHALLBUTTON_ADD_ON_MENU_LIBRARY_LIBADDONMENU_UNAV_B27E5A9] = 'LibAddonMenu-2.0不可用或版本过低',
      [SI_GUILDHALLBUTTON_ADD_ON_VERSION_IS_5291C2A5F3AB8A534B4548167A0] = '插件版本 <<1>>.<<2>>.<<3>>+<<4>>',
      [SI_GUILDHALLBUTTON_AND_NOT_JUST_THEIR_PRINCIPAL_RESIDENC_F5C9A18] = '不仅是他们的主要住所。但如果您没有访问权限，则只会收到一条错误信息，',
      [SI_GUILDHALLBUTTON_API_VERSION_IS_004E3AEED6FF731AA19AD7DE9853CE] = 'API版本 <<1>>',
      [SI_GUILDHALLBUTTON_ATTEMPT_TO_ESTABLISH_CASTELLAN_OF_GUI_CC4B320] = '尝试建立大厅持有者失败（公会 编号 <<1>> ID <<2>> )：',
      [SI_GUILDHALLBUTTON_BUTTON_PRESS_FAILED_58F2A2731EFB8ADB0A00380C7] = '按钮触发失败：',
      [SI_GUILDHALLBUTTON_CAN_T_IDENTIFY_AS_A_GUILD_MEMBER_CHEC_4AB3D5C] = '无法识别公会成员 "<<1>>" : 请检查拼写和 ',
      [SI_GUILDHALLBUTTON_CAN_T_IDENTIFY_AS_A_GUILD_MEMBER_CHEC_66E96E4] = '无法识别公会成员 "<<1>>" : 请检查拼写和大小写',
      [SI_GUILDHALLBUTTON_CAN_T_IDENTIFY_AS_A_PLAYER_NAME_CHECK_76A9A7C] = '无法识别玩家名 "<<1>>" : 检查配置设置',
      [SI_GUILDHALLBUTTON_CAN_T_IDENTIFY_AS_A_PLAYER_NAME_CHECK_861DA12] = '无法识别玩家名 "<<1>>" : 检查配置 ',
      [SI_GUILDHALLBUTTON_CAN_T_IDENTIFY_AS_A_VALID_PLACE_TO_GO_E51FE3A] = '无法确定 <<1>> 为有效位置',
      [SI_GUILDHALLBUTTON_CAN_T_IDENTIFY_A_SUITABLE_HOUSE_AS_GU_7E3FF7F] = '找不到合适的房屋作为 <<1>> 的公会大厅，无法前往',
      [SI_GUILDHALLBUTTON_CAN_T_IDENTIFY_THE_GUILD_HALL_YET_D94246312D6] = '尚未确定公会大厅',
      [SI_GUILDHALLBUTTON_CAN_T_MATCH_WITH_ANY_HOUSE_NAME_A1F61693F689F] = '无法将 <<1>> 与任何房屋名称匹配',
      [SI_GUILDHALLBUTTON_CASTELLAN_OFFICER_71F06C6EBA715C8542DCAE0BB06] = '大厅持有人',
      [SI_GUILDHALLBUTTON_COMMAND_GUILDHALL_INVALID_EXPECTING_A_209A738] = '指令 /guildhall <<1>> 无效: 需要公会编号 1..5 (或 ',
      [SI_GUILDHALLBUTTON_COMMAND_GUILDHALL_INVALID_EXPECTING_A_6A17FFE] = '指令 /guildhall <<1>> 无效: 需要公会编号 1..5 (或 空)',
      [SI_GUILDHALLBUTTON_COMMAND_GUILDHALL_INVALID_EXPECTING_A_6F6ED75] = '指令 /guildhall <<1>> 无效: 需要公会编号 1..5 (非 ',
      [SI_GUILDHALLBUTTON_COMMAND_GUILDHALL_INVALID_YOU_DO_NOT__8A5B05B] = '指令 /guildhall <<1>> 无效: 你没有编号的公会 ',
      [SI_GUILDHALLBUTTON_COMMAND_GUILDHALL_INVALID_YOU_DO_NOT__DDF0A2B] = '指令 /guildhall <<1>> 无效: 你没有编号的公会 <<1>>',
      [SI_GUILDHALLBUTTON_CONFIGURATION_REPORT_FAILED_32D073A88E532C36A] = '配置报告失败：',
      [SI_GUILDHALLBUTTON_COULD_NOT_IDENTIFY_AS_A_HOUSE_IGNORIN_8A1AA1C] = '无法将 <<1>> 识别为房屋：忽略它',
      [SI_GUILDHALLBUTTON_COULD_NOT_SET_GUILD_HALL_NAME_FOR_36F4E3BF265] = '无法为 <<1>> 设置公会大厅名称： ',
      [SI_GUILDHALLBUTTON_DEFAULT_GUILD_HALL_IS_GUILD_LEADER_S__343533A] = '默认公会大厅是公会会长的主要住所。启用覆盖功能可指定不同的内容。',
      [SI_GUILDHALLBUTTON_DEFAULT_GUILD_HALL_IS_GUILD_LEADER_S__FBB32DB] = '默认公会大厅是公会会长的主要住所。启用 ',
      [SI_GUILDHALLBUTTON_DESTINATIONS_201376A014EB6075E874622EAB261986] = '目的地',
      [SI_GUILDHALLBUTTON_DISPLAY_TRACEBACK_N_IN_A_UI_ERROR_WIN_6B73666] = '在用户界面错误窗口中显示跟踪记录，从新到旧',
      [SI_GUILDHALLBUTTON_ENABLE_VISIT_COMMAND_66801F4064B19943409289CA] = '启用 /visit 指令',
      [SI_GUILDHALLBUTTON_END_OF_TRACEBACK_4F6563DA25EEBEA7B9157AD45627] = '追踪结束 <<1>>',
      [SI_GUILDHALLBUTTON_ERROR_WHILE_EXECUTING_COMMAND_E6CC53DD796BE01] = '执行命令时出错 ',
      [SI_GUILDHALLBUTTON_ERROR_WHILE_EXECUTING_COMMAND_VISIT_B6388D7B9] = '执行 /visit 命令时出错 ',
      [SI_GUILDHALLBUTTON_EX_GUILD_96D2B2882E8EAF999C8D4AED6505588C_000] = '前公会',
      [SI_GUILDHALLBUTTON_FAILED_TO_PROCESS_JOINED_GUILD_EVENT_2D458D53] = '处理加入公会事件失败：',
      [SI_GUILDHALLBUTTON_FAILED_TO_PROCESS_JOINED_GUILD_EVENT_A0F9509C] = '处理加入公会事件失败：',
      [SI_GUILDHALLBUTTON_FAILED_TO_PROCESS_LEFT_GUILD_EVENT_92EF764328] = '处理离开公会事件失败：',
      [SI_GUILDHALLBUTTON_FAILED_TO_PROCESS_LEFT_GUILD_EVENT_BD8C059BAB] = '处理离开公会事件失败：',
      [SI_GUILDHALLBUTTON_FAILED_TO_RETRIEVE_CONFIGURED_HOUSE_N_664FB85] = '检索已配置的房屋名称失败：',
      [SI_GUILDHALLBUTTON_FAILED_TO_RETRIEVE_CONFIGURED_HOUSE_N_7BFA8A6] = '检索已配置的房屋名称失败：',
      [SI_GUILDHALLBUTTON_GH_58C1A39F0D84CF0A66EE05448A7267A7_000000000] = '/gh',
      [SI_GUILDHALLBUTTON_GH_TRACEBACK_B5CC4EC82980C9D53FE5E3B1FE5E885B] = '/gh traceback',
      [SI_GUILDHALLBUTTON_GUILDHALL_5C3DEEE0E8CAB6EB2989E7B210FEC61B_00] = '/guildhall',
      [SI_GUILDHALLBUTTON_GUILDHALL_E92A91F2910C5C17F2B63FBB99F866D3_00] = '/guildhall <<1>>',
      [SI_GUILDHALLBUTTON_GUILDHALL_F5F658A21522BF8EEB59D12485DD8A58_00] = '/guildhall <<1>> <<2>>',
      [SI_GUILDHALLBUTTON_GUILD_186E1B907496E328562844EA16A01BA8_000000] = '公会 <<1>>',
      [SI_GUILDHALLBUTTON_GUILD_HALL_BD3549AC09EB9DD7E98ADC80BBC51E87_0] = '<<1>> 公会大厅',
      [SI_GUILDHALLBUTTON_GUILD_HALL_BUTTON_A1BB155E045F550CBF963FAAE85] = 'Guild Hall Button',
      [SI_GUILDHALLBUTTON_GUILD_HALL_BUTTON_CANNOT_REGISTER_ANY_154E1C7] = 'Guild Hall Button 无法注册 <<1[any/the following/the ',
      [SI_GUILDHALLBUTTON_GUILD_HALL_BUTTON_CANNOT_REGISTER_ANY_8D488C2] = 'Guild Hall Button 无法注册 <<1[any/the following/the following]>> slash <<1[command/command/commands]>> 由于 <<1[conflicts/a conflict/conflicts]>>: <<2>> 无法正常工作，因为 <<1[it has/it has/they have]>> 已被注册或 <<1[.../another add-on/other add-ons]>>.',
      [SI_GUILDHALLBUTTON_GUILD_HALL_BUTTON_TRACEBACK_FROM_97C6E05173B0] = 'Guild Hall Button 追踪 <<1>> 从 <<2>>',
      [SI_GUILDHALLBUTTON_GUILD_HALL_BUTTON_TRACEBACK_FROM_IDEN_74242CC] = 'Guild Hall Button 追踪 <<1>> 从 <<2>>: 相同于追踪 <<3>> ',
      [SI_GUILDHALLBUTTON_GUILD_HALL_BUTTON_TRACEBACK_FROM_IDEN_EB02DB1] = 'Guild Hall Button 追踪 <<1>> 从 <<2>>: 相同于追踪 ',
      [SI_GUILDHALLBUTTON_GUILD_HALL_CEFFA39898CBD2ACE5339DBB4750CCF9_0] = '公会大厅 <<1>>',
      [SI_GUILDHALLBUTTON_GUILD_HALL_DAA0E11C3F5AD09A5CFA0E3E5F7CE0E0_0] = '公会大厅',
      [SI_GUILDHALLBUTTON_GUILD_HALL_G_3253A38A280D24AF21D3D09AFF0ACFCA] = '公会大厅 <<G:1>>',
      [SI_GUILDHALLBUTTON_GUILD_LEADER_282636F0BFB2DA3BE6370AD4EA292296] = '公会会长',
      [SI_GUILDHALLBUTTON_GUILD_LEADER_90E5A1A286AAA741EC3CE1B060C60ECA] = '(公会会长)',
      [SI_GUILDHALLBUTTON_GUILD_LEADER_S_HOUSE_1D20F2D72501178F16DBD137] = '公会会长的房子',
      [SI_GUILDHALLBUTTON_IDENTIFIED_AS_HOUSE_ID_E5333A37F7DEC36BA81350] = '确定 <<1>> 为房屋 ID <<2>>： <<3>>',
      [SI_GUILDHALLBUTTON_IF_IN_DOUBT_LEAVE_THESE_OPTIONS_SWITC_8402CC2] = '如有疑问，请关闭这些选项',
      [SI_GUILDHALLBUTTON_LIST_10AE9FC7D453B0DD525D0EDF2EDE7961_0000000] = '列表',
      [SI_GUILDHALLBUTTON_NAME_OF_GUILD_HALL_8E78D14941704F91BFD3B0A368] = '公会大厅的名称',
      [SI_GUILDHALLBUTTON_NAME_OF_THE_GUILD_OFFICER_WHO_IS_THE__98E12BC] = '正式拥有公会大厅的公会成员姓名',
      [SI_GUILDHALLBUTTON_NO_TRACEBACK_NUMBERED_IS_AVAILABLE_F26D90C3D1] = '没有编号为 <<1>> 的追踪记录',
      [SI_GUILDHALLBUTTON_OR_IF_YOU_TRY_TO_VISIT_A_HOUSE_THE_PL_4532305] = '或者，如果你试图访问玩家并不拥有的房子。',
      [SI_GUILDHALLBUTTON_OVERRIDE_DEFAULT_GUILD_HALL_39BCB7E69E761919F] = '覆盖默认公会大厅',
      [SI_GUILDHALLBUTTON_PRINCIPAL_RESIDENCE_36D90080A5B25024E5AEE830E] = '主要住所',
      [SI_GUILDHALLBUTTON_PRINCIPAL_RESIDENCE_78EC4E220CF3D0743E140FA7F] = '(主要住所)',
      [SI_GUILDHALLBUTTON_RELOAD_UI_ON_JOINING_A_NEW_GUILD_CA066F65A25F] = '加入公会时重新加载UI',
      [SI_GUILDHALLBUTTON_RELOAD_UI_ON_LEAVING_A_GUILD_B9D56C736C853187] = '离开公会时重新加载UI',
      [SI_GUILDHALLBUTTON_REPORT_ADD_ON_GUILD_CONFIGURATION_C33080ECFDF] = '报告插件公会配置',
      [SI_GUILDHALLBUTTON_REPORT_ADD_ON_VERSION_AND_COMPATIBILI_AD2F13B] = '报告插件版本和兼容性',
      [SI_GUILDHALLBUTTON_SHORT_NAME_MATCHES_N_DIFFERENT_HOUSES_8568A2E] = '简称 <<1>> 匹配 <<n:2>> 不同的房屋： <<3>>',
      [SI_GUILDHALLBUTTON_SPECIFY_WHEN_THE_GUILD_HALL_IS_NOT_TH_3806928] = '指明，当公会大厅不是寨主成员的主要住所',
      [SI_GUILDHALLBUTTON_SPECIFY_WHEN_THE_GUILD_HALL_IS_NOT_TH_CC3B44E] = '指明，当公会大厅不是寨主成员的主要 ',
      [SI_GUILDHALLBUTTON_SWITCH_ON_TO_AUTOMATICALLY_ISSUE_A_RE_4670B3B] = '加入公会后自动发出 /reloadui 命令。如果连续加入 2 个公会，将收到 2 个 /reloadui 命令。这可能不是您想要的',
      [SI_GUILDHALLBUTTON_SWITCH_ON_TO_AUTOMATICALLY_ISSUE_A_RE_B3BBD1A] = '打开开关，以代表自动发出 /reloadui 命令 ',
      [SI_GUILDHALLBUTTON_SWITCH_ON_TO_AUTOMATICALLY_ISSUE_A_RE_E43C442] = '离开公会后自动发出 /reloadui 命令。如果连续离开 2 个公会，将收到 2 个 /reloadui 命令。这可能不是您想要的',
      [SI_GUILDHALLBUTTON_SWITCH_ON_TO_ENABLE_THE_VISIT_COMMAND_64BC609] = '打开 /visit 命令。这不仅允许您访问公会大厅，还允许您访问任何玩家的房屋，',
      [SI_GUILDHALLBUTTON_SWITCH_ON_TO_ENABLE_THE_VISIT_COMMAND_65E801F] = '打开以启用 /visit 命令',
      [SI_GUILDHALLBUTTON_THIS_HAPPENS_WHEN_YOU_LOG_OUT_OR_ISSU_4733C41] = '重新登录或使用 /reloadui 命令可刷新信息。',
      [SI_GUILDHALLBUTTON_TO_SEE_THE_TRACEBACK_F9049B53E0EBFA176BE850E8] = '以查看追踪结果: ',
      [SI_GUILDHALLBUTTON_TRACEBACK_756563A5EFEAF4D400B526843A8570EA_00] = '追踪',
      [SI_GUILDHALLBUTTON_TRANSLATION_VERSION_298B3874E461321DA828F865C] = '$Id: en.lua 911 2022-03-14 22:58:16Z paulk $',
      [SI_GUILDHALLBUTTON_TRANSLATION_VERSION_98252F5CD90D00AD9997604D6] = '文本版本 <<1>> <<2>> <<3>>',
      [SI_GUILDHALLBUTTON_TRAVELING_TO_C_S_HOUSE_AT_A614E93F6DC98ADC724] = '传送至 <<C:1>> 在 <<2>> 的房屋',
      [SI_GUILDHALLBUTTON_TRAVELING_TO_C_S_HOUSE_L_C79CEBD4996B18D20E2E] = '传送至 <<C:1>> 在 <<2>> 的房屋',
      [SI_GUILDHALLBUTTON_TRAVELING_TO_THE_GUILD_HALL_B279E35A01DA3A10F] = '传送至 <<1>> 的公会大厅 <<2>>',
      [SI_GUILDHALLBUTTON_TRAVELING_TO_YOUR_HOUSE_AT_6182CC27C860F0760D] = '传送至 你在 <<1>> 的房屋',
      [SI_GUILDHALLBUTTON_TRAVELING_TO_YOUR_HOUSE_L_7AF705F3135F6A1A55B] = '传送至 你在 <<1>> 的房屋',
      [SI_GUILDHALLBUTTON_TRAVEL_L_F68A5C5D8DBEE3FEC8A44B00F3847891_000] = '传送至 <<1>> (<<2>>)',
      [SI_GUILDHALLBUTTON_TRAVEL_TO_570AFA648090A8DFA32AE1D5BCC11830_00] = '传送至 <<1>> (<<2>>)',
      [SI_GUILDHALLBUTTON_TRAVEL_TO_GUILD_HALL_62037739554C73EFB0A3327B] = '传送至公会大厅',
      [SI_GUILDHALLBUTTON_VERSION_2AF72F100C356273D46284F6FD1DFC08_0000] = '版本',
      [SI_GUILDHALLBUTTON_VERSION_INFORMATION_9D11E23779D9604067DD20E35] = '版本信息',
      [SI_GUILDHALLBUTTON_VISITING_C_S_HOUSE_D1C9CCB9C9BC05CEA78075A5EB] = '拜访 <<C:1>> 的房屋',
      [SI_GUILDHALLBUTTON_VISITING_C_S_HOUSE_L_BAA1050C3487F904AC18303C] = '拜访 <<C:1>> 在 <<2>> 的房屋',
      [SI_GUILDHALLBUTTON_VISITING_YOUR_HOUSE_L_FEF218F331CFB2D9C49457F] = '拜访你在 <<1>> 的房屋',
      [SI_GUILDHALLBUTTON_VISIT_89B0F4A089D457D7FEC4E29BD987543D_000000] = '/visit',
      [SI_GUILDHALLBUTTON_VISIT_ANYONE_S_HOUSE_5082C66C9F0FA0FAEBC5151D] = '拜访任何人的房屋',
      [SI_GUILDHALLBUTTON_VISIT_A_PLAYER_S_HOUSE_B7AA090447E6AE8E6230A8] = '拜访某人的房屋',
      [SI_GUILDHALLBUTTON_VISIT_B4C0AE96A2003D3DA92E3A709B854322_000000] = '/visit <<1>>',
      [SI_GUILDHALLBUTTON_WHEN_LEAVING_AND_JOINING_GUILDS_64B318ABDED04] = '离开和加入公会时',
      [SI_GUILDHALLBUTTON_WHEN_YOU_LEAVE_A_GUILD_OR_JOIN_A_NEW__945F71F] = '当您离开或加入公会时，该界面不会自动更新。',
      [SI_GUILDHALLBUTTON_WHEN_YOU_LEAVE_A_GUILD_OR_JOIN_A_NEW__E576C17] = '离开公会或加入新公会时，此界面将不会显示 ',
      [SI_GUILDHALLBUTTON_YOU_CAN_CHOOSE_TO_HAVE_THE_GUILD_HALL_320D2F0] = '您可以选择在离开或加入公会时让 Guild Hall Button 自动重新加载用户界面。',
      [SI_GUILDHALLBUTTON_YOU_CAN_CHOOSE_TO_HAVE_THE_GUILD_HALL_4C21598] = '您可以选择让 Guild Hall Button 自动进入用户界面 ',
      [SI_GUILDHALLBUTTON__935DFC8294ACC5E24C96FD80891549B2_00000000000] = '<<1>><<2>><<3>><<4>><<5>>',
    }
    
    for k,v in pairs(Strings) do
      SafeAddString(k, v, 2)
    end
    
  end

  --Special Setting
  BB.SetGlobalHook(function() Fun() end, "GuildHallButton", "name")

end end

BB.AddonList["GuildHallButton"] = function() 
  if not GuildHallButton then return false end
  return true
end

--Harven's Improved Skills Window
--2.0.8
BB.AddonList["HarvensImprovedSkillsWindow"] = function()
  BB.SetAfterPart(
    function()
      if ZO_SkillsHarvensShowTotalLabel then
        ZO_SkillsHarvensShowTotalLabel:SetText("显示 技能线升级进度")
        ZO_SkillsHarvensShowDetailsLabel:SetText("显示 技能详细升级进度")
        BB.ActiveAddons["HarvensImprovedSkillsWindow"] = true
      end
    end
  )
return false end

--Harvest
--3.15.13
BB.AddonList["HarvestMap"] = function() if not Harvest then return false end
  Harvest.localizedStrings = {
    -- top level description
    esouidescription = "有关插件描述和常见问题，请访问esoui.com上的插件页面",
    openesoui = "打开ESOUI",
    exchangedescription2 = "你可以通过安装HarvestMap-Data插件来获取最新的资源位置信息。更多有关这方面的信息，请参阅ESOUI上的插件描述信息。",

    notifications = "通知和警告",
    notificationstooltip = "在屏幕右上角显示通知和警告。",
    moduleerrorload = " <<1>> 插件被禁用了。\n此区域没有可用数据。",
    moduleerrorsave = " <<1>> 插件被禁用了。\n此节点的位置信息没有被保存。",

    -- outdated data settings
    outdateddata = "过时的数据设置",
    outdateddatainfo = "这些数据相关的设置在这台计算机上的所有帐户和角色之间共享.",
    timedifference = "只保存最近的数据",
    timedifferencetooltip = "HarvestMap 收获地图将只保存最近X天的数据。\n这可以防止显示可能已经过时的旧数据。\n设置为0以保存任何数据，不论其时间.",
    applywarning = "旧数据一旦删除，就无法恢复!",

    -- account wide settings
    account = "账户全局设置",
    accounttooltip = "下面的所有设置对每个角色都是相同的",
    accountwarning = "更改此设置将重新加载UI.",

    -- map pin settings
    mapheader = "地图标记设置",
    mappins = "在主地图上启用标记",
    minimappins = "在小地图上启用标记",
    minimappinstooltip = "支持的小地图插件: Votan, Fyrakin 和 AUI",
    level = "在地点图标之上显示标记",
    hasdrawdistance = "只显示附近的地图标记",
    hasdrawdistancetooltip = "开启时, HarvestMap 收获地图只为靠近玩家的采集地点创建地图标记.\n此设置只影响游戏内地图。小地图上则会自动启用此选项!",
    hasdrawdistancewarning = "此设置只影响游戏内地图。小地图上则会自动启用此选项!",
    drawdistance = "地图标记距离",
    drawdistancetooltip = "绘制地图标记的距离阈值。此设置也影响小地图!",
    drawdistancewarning = "此设置也影响小地图",

    visiblepintypes = "可见的标志类型",
    custom_profile = "自定义",
    same_as_map = "与地图设置相同",

    -- compass settings
    compassheader = "罗盘设置",
    compass = "启用罗盘标记显示",
    compassdistance = "最大标记距离",
    compassdistancetooltip = "显示在罗盘上标记的最大距离(以米为单位).",

    -- 3d pin settings
    worldpinsheader = "3D标记设置",
    worldpins = "开启3D标记",
    worlddistance = "最大3D标记距离",
    worlddistancetooltip = "显示采集位置的最大距离(以米为单位)。当一个位置较远时, 则不会显示3D标记。",
    worldpinwidth = "3D标记宽度",
    worldpinwidthtooltip = "3D标记的宽度，单位为厘米。",
    worldpinheight = "3D标记高度",
    worldpinheighttooltip = "3D标记的高度，单位为厘米。",
    worldpinsdepth = "为3D标记使用深度提升",
    worldpinsdepthtooltip = "关闭时, 3D标记将不会隐藏在其他物体后面。",
    worldpinsdepthwarning = "由于一个游戏BUG, 当在游戏的视频选项中将二次取样质量设置为中等或者低时，此选项无法生效。",


    -- respawn timer settings
    visitednodes = "访问节点和采集助手",
    rangemultiplier = "访问的节点范围",
    rangemultipliertooltip = "在X米内的节点才会被刷新计时器和采集助手访问。",
    usehiddentime = "隐藏最近访问的节点",
    usehiddentimetooltip = "隐藏您最近访问过的标记位置。",
    hiddentime = "隐藏的持续时间",
    hiddentimetooltip = "最近访问的节点将被隐藏X分钟。",
    hiddenonharvest = "只在采集之后隐藏节点",
    hiddenonharvesttooltip = "开启后只当你采集完成时隐藏标记。关闭后当你访问时标记也将被隐藏",

    -- spawn filter
    spawnfilter = "已生成资源筛选",
    nodedetectionmissing = "仅当NodeDetection库启用时，以下选项方有效",
    spawnfilterdescription = "当启用时，HarvestMap将会隐藏未生成资源的图标。\r\n举例来说，如果其他玩家已经采集该资源点，此处的图标将被隐藏直到资源再生。\r\n该选项仅对可收获的制造材料有效。HarvestMap无法检测生成的地图容器，如箱子，重麻袋和塞伊克传送门等。\r\n如果其他插件隐藏或重新缩放罗盘，该筛选将失效。",
    spawnfilter_map = "在主地图上应用筛选",
    spawnfilter_minimap = "在小地图上应用筛选",
    spawnfilter_compass = "在罗盘上应用筛选",
    spawnfilter_world = "在3D标记上应用筛选",
    spawnfilter_pintype = "对以下类型启用筛选：",

    -- pin type options
    pinoptions = "标记类型选项",
    pinsize = "标记尺寸",
    pinsizetooltip = "设置地图上的标记尺寸",
    pincolor = "标记颜色",
    pincolortooltip = "设置地图和罗盘上标记的颜色",
    savepin = "保存位置",
    savetooltip = "启用在发现资源时保存它们的位置",
    pintexture = "标记图标",

    -- pin type names
    pintype1 = "锻造和首饰",
    pintype2 = "纤维织物",
    pintype3 = "符文石和赛伊克传送门",
    pintype4 = "蘑菇",
    pintype13 = "草药/花朵",
    pintype14 = "水生植物",
    pintype5 = "木材",
    pintype6 = "宝箱",
    pintype7 = "溶剂",
    pintype8 = "钓鱼点",
    pintype9 = "重麻袋",
    pintype10 = "盗贼的宝藏",
    pintype11 = "审判容器",
    pintype12 = "隐藏物品",
    pintype15 = "巨型水蚌",
    -- pin type 16, 17 used to be jewlry and psijic portals 
    -- but the locations are the same as smithing and runes
    pintype18 = "未知节点",
    pintype19 = "猩红奈恩根",

    -- extra map filter buttons
    deletepinfilter = "删除HarvestMap标记",
    filterheatmap = "热力地图模式",

    -- localization for the farming helper
    goldperminute = "每分钟的金币:",
    farmresult = "HarvestFarm 结果",
    farmnotour = "HarvestFarm 不能基于设定的最小路线长度计算出一个良好的收割路线",
    farmerror = "HarvestFarm 错误",
    farmnoresources = "没有找到资源。\n此地图上没有资源，或者您没有选择任何资源类型。",
    farmsuccess = "HarvestFarm 计算出了一条每公里 <<1>> 节点的收割线路。\n\n按一下其中一个路线标记以设定路线的起点。",
    farmdescription = "HarvestFarm 将计算出一条非常高效的资源收割线路。\n在生成一条线路之后, 点击其中一个被选择的资源来设置线路的起点。",
    farmminlength = "最小路径长度",
    farmminlengthdescription = "路线越长, 当您开始下一个循环时，资源重新出现的机会就越大。\n然而，一个较短的线路将获得更高的收割效率。",
    tourpin = "你线路的下一个目标",
    calculatetour = "计算线路",
    showtourinterface = "显示路线界面",
    canceltour = "取消线路",
    reverttour = "恢复线路方向",
    resourcetypes = "资源类型",
    skiptarget = "跳过当前目标",
    removetarget = "删除当前目标",
    nodesperminute = "每分钟的节点数",
    distancetotarget = "到下一个资源的距离",
    showarrow = "显示方向",
    removetour = "删除路线",
    undo = "撤消最后的变动",
    tourname = "线路名：",
    defaultname = "未命名的线路",
    savedtours = "此地图已保存的线路：",
    notourformap = "此地图没有已保存线路",
    load = "载入",
    delete = "删除",
    saveexiststitle = "请确认",
    saveexists = "此地图已有一个以 <<1>> 命名的线路了。您要覆盖它吗?",
    savenotour = "没有可保存的线路",
    loaderror = "此线路无法被载入",
    removepintype = "您想从路线中删除 <<1>> 吗?",
    removepintypetitle = "确认删除",

    -- extra harvestmap menu
    farmmenu = "收割线路编辑器",
    editordescription = "在此菜单中，您可以创建和编辑线路。\r\n如果目前没有其他被激活的线路, 您可以通过点击地图标记创建一个线路。\r\n如果有被激活的线路, 您可以通过替换其中一部分来编辑线路:\r\n- 首先点击您线路(红色)中的一个标记。\r\n- 然后，点击你想添加到路线中的标记。 (一条绿色线路将会出现)\r\n- 最后，再次点击你的红色线路中的标记。\r\n现在绿色线路将被插入红色线路。",
    editorstats = "节点数量: <<1>>\r\n长度: <<2>> 米\r\n每公里节点数: <<3>>",

    -- filter profiles
    filterprofilebutton = "打开筛选配置菜单",
    filtertitle = "筛选配置菜单",
    filtermap = "地图标记的筛选配置",
    filtercompass = "罗盘标记的筛选配置",
    filterworld = "3D标志的筛选配置",
    unnamedfilterprofile = "未命名配置",
    defaultprofilename = "默认筛选配置",

    -- SI names to fit with ZOS api
    SI_BINDING_NAME_SKIP_TARGET = "跳过目标",
    SI_BINDING_NAME_TOGGLE_WORLDPINS = "切换3D标记",
    SI_BINDING_NAME_TOGGLE_MAPPINS = "切换地图标记",
    SI_BINDING_NAME_TOGGLE_MINIMAPPINS = "切换小地图标记",
    SI_BINDING_NAME_HARVEST_SHOW_PANEL = "打开HarvestMap地图编辑器",
    SI_BINDING_NAME_HARVEST_SHOW_FILTER = "打开HarvestMap筛选菜单",
    HARVESTFARM_GENERATOR = "生成新线路",
    HARVESTFARM_EDITOR = "编辑线路",
    HARVESTFARM_SAVE = "保存/载入 线路",
  }

  --Sepcial Setting
  local default = Harvest.defaultLocalizedStrings
  local current = Harvest.localizedStrings or {}
  function Harvest.GetLocalization(tag)
    return (current[ tag ] or default[ tag ]) or tag
  end
return true end

--HodorReflexes
--2024.05.24
BB.AddonList["HodorReflexes"] = function() if not HodorReflexes then return false end
  local strings = {
    HR_MENU_MISCULTIMATES = "其他终极技能",
    HR_MENU_STYLE_BERSERK_COLOR = "高级狂怒持续颜色",
    HR_MENU_EVENTS_DISABLED = "这个模块需要Hodor Reflexes被启用",
    HR_MENU_HORN_SHOW_PERCENT_TT = "显示经计算的号角终极点百分比",
    HR_MENU_ICONS_INTEGRITY = "完整性",
    HR_MENU_HORN_SHOW_RAW_TT = "显示玩家的原始终极点",
    HR_MENU_EVENTS = "事件",
    HR_MENU_ICONS_INTEGRITY_DESCRIPTION = "检查HodorReflexes图标的完整性",
    HR_MENU_ATRONACH_SHARE = "分享终极技能",
    HR_MENU_ATRONACH_SHOW_TT = "分享你的终极技能情况给队友",
    HR_MENU_COLOS_SHOW_PERCENT_TT = "显示经计算的死灵巨像终极点百分比",
    HR_BINDING_MISCULTIMATES_SHARE = "切换其他终极技能共享",
    HR_MENU_COLOS_SHOW_RAW_TT = "显示玩家的原始终极点",
    HR_MENU_ATRONACH_SHOW_RAW_TT = "显示玩家的原始终极点",
    HR_MENU_MISCULTIMATES_SHARE = "分享其他终极技能",
    HR_MENU_ATRONACH_SHOW_PERCENT_TT = "显示经计算的风暴侍灵终极点百分比",
    HR_MENU_ICONS_VISIBILITY_MISCULTIMATES_TT = "在终极技能列表中显示玩家自定义图标",
    HR_MENU_MISCULTIMATES_SHOW_TT = "显示其他不支持的终极技能",
    HR_MENU_ATRONACH_SHOW_PERCENT = "显示百分比",
    HR_MENU_ICONS_INTEGRITY_CHECK = "检查",
    HR_MENU_MISCULTIMATES_SHARE_TT = "分享其他不支持的终极技能",
    HR_MENU_EVENTS_DESC = "这个模组在一年中的特定时间启用特殊特性",
    HR_MENU_COLOS_SHOW_PERCENT = "显示百分比",
    HR_MENU_COLOS_SHOW_RAW = "显示终极点",
    HR_MENU_ATRONACH_SHOW_RAW = "显示终极点",
    HR_MENU_MISC_DISABLEDEPENDENCYWARNING_TT = "开启/关闭 不兼容依赖警告",
    HR_MENU_HORN_SHOW_RAW = "显示终极点",
    HR_MENU_ICONS_VISIBILITY_MISCULTIMATES = "其他终极技能",
    HR_MENU_ICONS_VISIBILITY_ATRONACH_TT = "在风暴侍灵列表中显示玩家自定义图标",
    HR_MENU_ATRONACH_SHOW = "显示风暴侍灵",
    HR_MENU_HORN_SHOW_PERCENT = "显示百分比",
    HR_MENU_ATRONACH = "风暴侍灵",
    HR_MENU_STYLE_ATRONACH_COLOR = "风暴侍灵持续时间颜色",
    HR_MENU_ICONS_VISIBILITY_ATRONACH = "风暴侍灵图标",
    HR_MENU_MISC_DISABLEDEPENDENCYWARNING = "禁用依赖性警告",
    HR_MENU_ATRONACH_SHARE_TT = "将终极技能状态共享给队伍(仅当装备风暴侍灵时).",
    HR_MENU_MISCULTIMATES_SHOW = "显示其他终极技能",
    HR_BINDING_HORN_SHARE = "切换战争号角分享",
    HR_BINDING_COLOS_SHARE = "切换死灵巨像分享",
    HR_BINDING_DPS_SHARE = "切换伤害分享",
  }
  --Special setting
  for id, val in pairs(strings) do
   ZO_CreateStringId(id, val)
   SafeAddVersion(id, 1)
  end
return true end

--[[ Template 1, "" = folder name

--
--
BB.AddonList[""] = function() if not  then return false end

return true end

]]

--[[ Template 2, "" = folder name

--
--
do if not BB.SV.BanList[""] then

end end

BB.AddonList[""] = function() if not  then return false end

return true end

]]