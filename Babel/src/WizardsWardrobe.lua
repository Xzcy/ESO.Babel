local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

do if not BB.SV.BanList["WizardsWardrobe"] then
  local function Fun()
    local Strings = {
      -- MESSAGES
      WW_MSG_FIRSTSTART =
      "如果这是你首次使用Wizard's Wardrobe, 请查看 %s 页面的常见问题与功能列表， 大部分的问题都可以在这里找到解答",
      WW_MSG_ENOENT = "未找到对应条目",
      WW_MSG_ERROR = "错误!",
      WW_MSG_LOADSETUP = "加载配装 [%s] ~ [%s].",
      WW_MSG_LOADINFIGHT = "脱战后，加载配装 [%s] ~ [%s]",
      WW_MSG_SAVESETUP = "保存配装 [%s]",
      WW_MSG_DELETESETUP = "删除配装 [%s]",
      WW_MSG_EMPTYSETUP = "配装为空",
      WW_MSG_FOODENOENT = "无法在背包中找到对应的增益食物!",
      WW_MSG_NOFOODRUNNING = "未检测到生效的食物，食用食物后再次尝试, 或将食物拖动至食物图标",
      WW_MSG_NOTFOOD = "该物品不是增益食物, 或还不被支持",
      WW_MSG_LOADSKILLS = "加载技能 %s ~ [%s].",
      WW_MSG_SAVESKILLS = "保存技能至配装 %s.",
      WW_MSG_SKILLENOENT = "无法装载技能 [%s]，技能尚未解锁",
    WW_MSG_SKILLSTUCK = "无法装载技能 [%s]",
      WW_MSG_LOADGEAR = "加载装备 %s ~ [%s].",
      WW_MSG_SAVEGEAR = "保存装备至配装 %s.",
      WW_MSG_GEARENOENT = "无法在背包中找到 %s !",
      WW_MSG_GEARSTUCK = "无法移动物品 %s",
      WW_MSG_FULLINV = "你的背包已满，装备可能未被正确转移.",
      WW_MSG_LOADCP = "加载CP点 %s ~ [%s].",
      WW_MSG_SAVECP = "保存CP点至配装 %s.",
      WW_MSG_CPENOENT = "无法装载 [%s]，CP未解锁.",
      WW_MSG_CPNOTSLOTTABLEINFO = "无法装在 [%s]. 该CP目前不需要装备",
      WW_MSG_CPCOOLDOWN = "将在 %s 秒后应用CP点变更.",
      WW_MSG_CPCOOLDOWNOVER = "CP点已变更",
      WW_MSG_TELEPORT_PLAYER = "传送至 %s",
      WW_MSG_TELEPORT_WAYSHRINE = "传送至神龛",
      WW_MSG_TELEPORT_WAYSHRINE_ERROR = "神龛未解锁",
      WW_MSG_TELEPORT_HOUSE = "传送至主住所",
      WW_MSG_TOGGLEAUTOEQUIP = "%s 自动换装",
      WW_MSG_TOGGLEAUTOEQUIP_ON = "启用",
      WW_MSG_TOGGLEAUTOEQUIP_OFF = "禁用",
      WW_MSG_CLEARQUEUE = "清除了 %d 条队列中的条目",
      WW_MSG_NOREPKITS = "无法在背包中找到修理箱!",
      WW_MSG_NOTENOUGHREPKITS = "无法在背包中找到足够的修理箱!",
      WW_MSG_NOSOULGEMS = "无法在背包中找到灵魂石!",
      WW_MSG_NOTENOUGHSOULGEMS = "无法在背包中找到足够的灵魂石!",
      WW_MSG_NOPOISONS = "无法在背包中找到毒药!",
      WW_MSG_IMPORTSUCCESS = "所有物品成功导入",
      WW_MSG_IMPORTGEARENOENT =
      "不是所有物品都能被导入。请确保你在背包或银行中留有所有物品，特性并不重要",
       WW_MSG_WITHDRAW_SETUP = "正在从银行取出配装 [%s]",
      WW_MSG_WITHDRAW_PAGE = "正在从银行取出配装页 [%s] 中的所有配装",
      WW_MSG_WITHDRAW_FULL = "无法取出物品. 请确保你的背包有足够空间",
      WW_MSG_WITHDRAW_ENOENT = "未能在银行中找到所有的所需物品",
      WW_MSG_DEPOSIT_SETUP = "正在向银行存入配装 [%s]",
      WW_MSG_DEPOSIT_PAGE = "正在向银行存入配装页 [%s] 中的所有配装.",
      WW_MSG_DEPOSIT_ALL = "正在向银行存入任意角色保存的配装",
      WW_MSG_DEPOSIT_FULL = "无法存入物品. 请确保你的银行有足够空间",
      WW_MSG_TRANSFER_FINISHED = "所有物品已成功转移",
      WW_MSG_TRANSFER_TIMEOUT = "有物品未被成功操作，请重试",
      WW_MSG_FOOD_FADED = "食物增益已过期，请享用 %s !",
      WW_MSG_FOOD_COMBAT =
      "食物增益刚在战斗中过期，脱战后若还需要，Wizard将为你提供 %s",
      WW_MSG_NOFOOD = "无法在背包中找到对应的增益食物!",
      WW_MSG_SWAPFAIL = "配装中的 %s 切换失败，正在尝试解决，稍等片刻",
      WW_MSG_SWAPFAIL_DISABLED = "配装中的 %s 切换失败",
      WW_MSG_SWAPSUCCESS = "成功加载配装",
      WW_MSG_SWAP_FIX_FAIL =
      "所有尝试均已失败，请手动脱下卡主的装备，或在成功换装后重新保存配装",
      WW_MSG_BLOCK_WARN = "不要格挡!",

      -- ADDON MENU
      WW_MENU_GENERAL = "常规",
      WW_MENU_PRINTCHAT = "输出信息",
      WW_MENU_PRINTCHAT_TT =
      "在聊天栏、警告或屏幕中央公告处，输出加载配装的信息",
      WW_MENU_PRINTCHAT_OFF = "禁用",
      WW_MENU_PRINTCHAT_CHAT = "聊天栏",
      WW_MENU_PRINTCHAT_ALERT = "警告",
      WW_MENU_PRINTCHAT_ANNOUNCEMENT = "中央公告",
      WW_MENU_OVERWRITEWARNING = "覆盖配装时警告",
      WW_MENU_OVERWRITEWARNING_TT = "当一个已保存的配装将要被覆盖时，进行警告",
      WW_MENU_INVENTORYMARKER = "背包标记",
      WW_MENU_INVENTORYMARKER_TT = "在背包中标记处于配装中的物品",
      WW_MENU_LOCKSAVEDGEAR = "自动上锁",
      WW_MENU_LOCKSAVEDGEAR_TT = "当装备被保存进配装时，自动上锁",
      WW_MENU_UNEQUIPEMPTY = "卸下空栏位装备",
    WW_MENU_UNEQUIPEMPTY_TT = "如果配装中的某个装备栏/cp/技能被保存为空栏位, 那当这个配装被加载时对应的栏位也会被卸空",
      WW_MENU_IGNORE_TABARDS = "忽略外观栏空位",
      WW_MENU_IGNORE_TABARDS_TT = "如果配装中的外观栏留空，加载时不要移除当前外观栏物品",
      WW_MENU_ZONE_SELECTION = "旧版配装页切换UI",
      WW_MENU_ZONE_SELECTION_TT =
      "启用时，窗口上的配装页切换按钮将被替换成旧版的下拉选框",
      
      WW_MENU_COMPARISON_DEPTH = "匹配深度",
      WW_MENU_COMPARISON_DEPTH_EASY = "简易",
      WW_MENU_COMPARISON_DEPTH_EASY_TT = "仅匹配武器类型和套装",
      WW_MENU_COMPARISON_DEPTH_DETAILED = "具体",
      WW_MENU_COMPARISON_DEPTH_DETAILED_TT = "匹配武器类型、套装、特性、品质",
      WW_MENU_COMPARISON_DEPTH_THOROUGH = "完全",
      WW_MENU_COMPARISON_DEPTH_THOROUGH_TT = "匹配武器类型、套装、特性、品质、附魔",
      WW_MENU_VALIDATION_DELAY = "校验延迟",
      WW_MENU_VALIDATION_DELAY_TT = "选择校验开始后的延迟时间(毫秒)",
      WW_MENU_VALIDATION_DELAY_WARN =
      "该数值越大，校验越准确。设置过低，可能导致意外行为。",
      WW_MENU_COMPARISON_IGNORE_COSTUME_SLOTS = "无视外观收藏品",
      WW_MENU_COMPARISON_IGNORE_COSTUME_SLOTS_TT = "启用时，外观收藏品将在校验时被无视",
      WW_MENU_COMPARISON_IGNORE_POISON_SLOTS = "无视毒药",
      WW_MENU_COMPARISON_IGNORE_POISON_SLOTS_TT = "启用时，毒药将在校验时被无视",
      WW_MENU_RESETUI = "重置UI",
      WW_MENU_RESETUI_TT =
      "|cFF0000重置窗口及其在屏幕上的位置|r\n 你需要使用聊天栏指令 /wizard 或快捷键再次打开窗口",
      
      WW_MENU_AUTOEQUIP = "自动装备",
      WW_MENU_AUTOEQUIP_DESC = "这些选项决定，加载或保存配装时，应用的物品范围",
      WW_MENU_AUTOEQUIP_GEAR = "装备",
      WW_MENU_AUTOEQUIP_SKILLS = "技能",
      WW_MENU_AUTOEQUIP_CP = "CP点",
      WW_MENU_AUTOEQUIP_BUFFFOOD = "增益食物",
      
      WW_MENU_AUTO_ZONE_SELECT = "自动区域选择",
      WW_MENU_AUTO_ZONE_SELECT_DESCRIPTION = "当角色进入受支持的区域时，自动切换到对应的配装页",
      WW_MENU_AUTO_SELECT_INSTANCE = "自动切换 (试炼)",
      WW_MENU_AUTO_SELECT_INSTANCE_TT = "进入试炼时，自动切换到对应的配装页",
      WW_MENU_AUTO_SELECT_GENERAL = "自动切换 (常规)",
      WW_MENU_AUTO_SELECT_GENERAL_TT = "进入一个没有独立配装页的区域时，自动切换到常规配装页",
      
      WW_MENU_SUBSTITUTE = "备选套装",
      WW_MENU_SUBSTITUTE_WARNING =
      "启用时，将在支持的区域以外加载备用套装。目前为 |cFF0000实验性功能|r ，并不对所有Boss生效。该功能对较新的地下城支持更好。",
      WW_MENU_SUBSTITUTE_OVERLAND = "大地图",
      WW_MENU_SUBSTITUTE_OVERLAND_TT = "包含洞穴和公共地下城",
      WW_MENU_SUBSTITUTE_DUNGEONS = "地下城",
      
      WW_MENU_PANEL = "信息面板",
      WW_MENU_PANEL_ENABLE = "启用面板",
      WW_MENU_PANEL_ENABLE_TT =
      "显示当前的区域、配置页和配装\n |cF8FF70黄色|r 表示该配装的加载被延后\n |cFF7070红色|r 表示当前配装与保存的不匹配",
      WW_MENU_PANEL_MINI = "简易模式",
      WW_MENU_PANEL_MINI_TT = "隐藏图标并缩小面板尺寸",
      WW_MENU_PANEL_LOCK = "锁定位置",
      
      WW_MENU_MODULES = "功能模块",
      WW_MENU_CHARGEWEAPONS = "自动充能武器",
      WW_MENU_REPAIRARMOR = "自动修复护甲",
      WW_MENU_REPAIRARMOR_TT = "包含商店内修复和使用装备修理包",
      WW_MENU_KITCHOICE = "允许使用王冠修理包",
      WW_MENU_KITCHOICE_TT =
      "启用时，将允许使用王冠修理包，优先级低于普通装备修理包",
      WW_MENU_FILLPOISONS = "自动补充毒药",
      WW_MENU_FILLPOISONS_TT =
      "自动尝试从背包补充毒药\n|H1:item:76827:308:50:0:0:0:0:0:0:0:0:0:0:0:0:36:1:0:0:0:138240|h|h 和 |H1:item:79690:6:1:0:0:0:0:0:0:0:0:0:0:0:1:36:0:1:0:0:0|h|h 被视作同一种物品",
      WW_MENU_BUFFFOOD = "自动补充食物增益",
      WW_MENU_BUFFFOOD_TT =
      "当食物增益过期时，自动食用对应的食物。仅在地下城和试炼中有效\n可以在 \"WizardsWardrobeConst.lua\" 文件中查看支持的食物",
      WW_MENU_FIXES_FIXSURFINGWEAPONS = "修复武器显示Bug",
      WW_MENU_FIXES_FIXSURFINGWEAPONS_TT =
      "启用后，每次切换区域时将切换 \"隐藏变形头盔\" 设置两次，以修复武器显示Bug",
      WW_MENU_WEAPON_GEAR_FIX = "修复失败的装备切换",
      WW_MENU_WEAPON_GEAR_FIX_TT = "自动执行修复失败的装备切换的步骤",
      
      -- USER INTERFACE
      WW_CHANGELOG = "注意! 本次更新包含了一些重大改动. 请阅读更新日志以了解功能变动",
      WW_BUTTON_HELP = "|cFFFFFF[左键]|r 打开wiki",
      WW_BUTTON_SETTINGS = "配置",
      WW_BUTTON_CLEARQUEUE = "重载队列\n(在队列中的配装更改过多时使用)",
      WW_BUTTON_UNDRESS = "卸下装备",
      WW_BUTTON_PREBUFF = "Prebuff",
      WW_BUTTON_LABEL = "|cFFFFFF[左键]|r 装载配装",
      WW_BUTTON_BANKING = "|cFFFFFF[左键]|r 取出装备,\n|cFFFFFF[Shift + 左键]|r 存入装备",
      WW_BUTTON_BANKALL = "|cFFFFFF[Shift + 左键]|r 存入任意角色保存的配装",
      WW_BUTTON_PREVIEW = "预览",
      WW_BUTTON_SAVE = "保存",
      WW_BUTTON_MODIFY = "修改",
      WW_BUTTON_RENAME = "重命名",
      WW_BUTTON_REARRANGE_PAGES = "重排页面",
      WW_BUTTON_REARRANGE_SETUPS = "重排配装",
      WW_BUTTON_TELEPORT = "传送",
      WW_BUTTON_TOGGLEAUTOEQUIP = "启用自动换装",
      WW_BUTTON_ADDPAGE = "新增配装页",
      WW_BUTTON_ADDSETUP = "新增配装",
      WW_BUTTON_GEAR =
      "未保存装备!\n通过 |cFFFFFF[Shift + 左键]|r 保存当前装备，或将装备拖动至本按钮保存",
      WW_BUTTON_SKILLS =
      "未保存技能!\n通过 |cFFFFFF[Shift + 左键]|r 保存当前技能栏，或将技能拖动至本按钮保存",
      WW_BUTTON_CP = "未保存CP点!\n通过 |cFFFFFF[Shift + 左键]|r 保存当前装备的CP点",
      WW_BUTTON_BUFFFOOD =
      "未保存增益食物!\n通过 |cFFFFFF[Shift + 左键]|r 保存当前食物，或将食物拖动至本按钮保存",
      WW_RENAME_PAGE = "为配装页输入新名称:",
      WW_DELETEPAGE_WARNING = "确定要删除配装页 [%s]?",
      WW_OVERWRITESETUP_WARNING = "确定覆盖配装 [%s]?",
      WW_DELETE = "删除",
      WW_ENABLE = "启用",
      WW_DISABLE = "禁用",
      WW_MISSING_GEAR_TT = "以下物品缺失:\n\n%s\n\n|cFFFFFF[左键]|r 以刷新",
      WW_SUBSTITUTE_EXPLAIN =
      "如果对应试炼的页面中没有配装，这些备用配装将被使用\n如果你不想使用这项功能, 将其留空即可",
      WW_CONDITION_NAME = "配装名",
      WW_CONDITION_BOSS = "Boss",
      WW_CONDITION_AFTER = "战后切换",
      WW_CONDITION_NONE = "无",
      WW_CONDITION_EVERYWHERE = "所有地点",
      WW_IMPORT = "导入",
      WW_IMPORT_HELP =
      "在此处按 |cFFFFFF[CTRL + V]|r 粘贴导出的文本。手动改动文本容易导入失败.\n你需要在背包里留有所有物品，优先采用正确特性的装备，特性错误的相同装备也会被采用",
      WW_IMPORT_TT = "|cFF0000注意! 这将覆盖被选中的配装|r",
      WW_EXPORT = "导出",
      WW_EXPORT_HELP =
      "按下 |cFFFFFF[CTRL + C]|r 复制选中的文本并与他人分享.\n这以压缩文本形式导出了装备, 技能与CP点信息",
      WW_CUSTOMCODE = "Lua 代码",
      WW_CUSTOMCODE_HELP = "该代码将在配装装备后运行",
      WW_CUSTOMCODE_EDITBOX =
      "在这里输入你的代码\n你可以在ESOUI或Github上学到如何使用其他库\n例子:\nSetCurrentQuickslot(4) → 修改当前快捷栏选中的物品，4是轮盘上方，8是轮盘下方，逆时针顺序\nchat:Print(`hello`) → LibChatMessage库\ncodeTask → LibAsync库\nlogger:Debug / logger:Error → LibDebugLogger库\n\n这里的代码将在尝试加载配装时执行，并忽略是否在战斗状态中。如果你想要代码在脱战后执行，只需要用 << >> 将代码括起来即可",
      WW_DUPLICATE = "复制",
      WW_DUPLICATE_NAME = "复制自 %s",
      WW_LINK_IMPORT = "添加到 Wardrobe",
      WW_PREBUFF_HELP =
      "拖动技能至prebuff栏\n手动切回 启用时，需要再次使用prebuff快捷键来切回原本的技能。否则，prebuff技能将在释放后自动切回\n\"普通\" 技能释放需要约500ms, 引导类技能则更长",

      -- BOSS & TRIAL NAMES
      WW_PAGE = "第 %s 页",
      WW_EMPTY = "空",
      WW_UNNAMED = "未命名",
      WW_TRASH = "Trash",

      WW_GENERAL = "常规",

      WW_SUB_NAME = "备选配装",
      WW_SUB_BOSS = "备选BOSS配装",
      WW_SUB_TRASH = "备选Trash配装",

      WW_PVP_NAME = "PvP",

      WW_AA_NAME = "艾瑟瑞恩档案塔",
      WW_AA_STORMATRO = "闪电风暴侍灵",
      WW_AA_STONEATRO = "石头侍灵基座",
      WW_AA_VARLARIEL = "瓦尔拉瑞尔",
      WW_AA_MAGE = "法师星",

      WW_SO_NAME = "乌鞘蛇圣所",
      WW_SO_MANTIKORA = "被灵魂附体的蝎尾蜥",
      WW_SO_TROLL = "碎石者",
      WW_SO_OZARA = "奥拉扎",
      WW_SO_SERPENT = "蝮蛇座",

      WW_HRC_NAME = "赫尔·拉要塞",
      WW_HRC_RAKOTU = "拉·阔图",
      WW_HRC_LOWER = "尤可达·洛克顿",
      WW_HRC_UPPER = "尤可达·凯",
      WW_HRC_WARRIOR = "战士座",

      WW_MOL_NAME = "洛克汗的巨口",
      WW_MOL_ZHAJHASSA = "遗忘者扎哈撒",
      WW_MOL_TWINS = "双子",
      WW_MOL_RAKKHAT = "拉卡特",

      WW_HOF_NAME = "制造大厅",
      WW_HOF_HUNTERKILLER = "猎杀者聂佳特里克斯",
      WW_HOF_HUNTERKILLER_DN = "猎杀者",
      WW_HOF_FACTOTUM = "巅峰机械人",
      WW_HOF_SPIDER = "大监管者",
      WW_HOF_COMMITEE = "反应器人",
      WW_HOF_COMMITEE_DN = "委员会",
      WW_HOF_GENERAL = "组装将军",

      WW_AS_NAME = "庇护圣所",
      WW_AS_OLMS = "公正圣徒奥尔姆斯",
      WW_AS_FELMS = "鲁莽圣徒菲尔姆斯",
      WW_AS_LLOTHIS = "虔诚圣徒洛提斯",

      WW_CR_NAME = "云栖城",
      WW_CR_GALENWE = "加伦韦幽影",
      WW_CR_RELEQUEN = "瑞利昆恩幽影",
      WW_CR_SIRORIA = "希罗利亚幽影",
      WW_CR_ZMAJA = "泽玛亚",

      WW_SS_NAME = "太阳尖顶",
      WW_SS_LOKKESTIIZ = "洛克提兹",
      WW_SS_YOLNAHKRIIN = "尤尔纳克林",
      WW_SS_NAHVIINTAAS = "纳温塔丝",

      WW_KA_NAME = "凯恩之盾",
      WW_KA_YANDIR = "屠夫扬迪尔",
      WW_KA_VROL = "威若船长",
      WW_KA_FALGRAVN = "法尔格拉文领主",

      WW_RG_NAME = "石林",
      WW_RG_OAXILTSO = "奥西索",
      WW_RG_BAHSEI = "烈焰先驱巴塞",
      WW_RG_XALVAKKA = "夏尔瓦卡",
      WW_RG_SNAKE = "蛇浴",
      WW_RG_ASHTITAN = "灰烬泰坦",

      WW_DSR_NAME = "恐帆礁石",
      WW_DSR_LYLANARTURLASSIL = "莱拉纳尔",
      WW_DSR_LYLANARTURLASSIL_DN = "莱拉纳尔和图拉塞尔",
      WW_DSR_GUARDIAN = "礁石守护者",
      WW_DSR_TALERIA = "泰德伯恩·塔勒里亚",
      WW_DSR_SAILRIPPER = "破帆者",
      WW_DSR_BOWBREAKER = "折弓者",

      WW_SE_NAME = "理智边缘",
      WW_SE_DESCENDER = "下沉漩涡",
      WW_SE_YASEYLA = "主教亚赛拉",
      WW_SE_TWELVANE = "首席巫师特尔乌万",
      WW_SE_ANSUUL = "折磨者安苏尔",

      WW_LC_NAME = "卢晶堡垒",
      WW_LC_RYELAZ = "雷拉兹伯爵和齐利塞特",
      WW_LC_CAVOT_AGNAN = "卡沃特·阿格南",
      WW_LC_ORPHIC = "神秘碎晶魔形",
      WW_LC_KNOT = "奥术结",

      WW_OC_NAME = "骨笼",
      WW_OC_RED_WITCH_GEDNA_RELVEL = "红女巫杰德纳·瑞尔维尔",
      WW_OC_HALL_OF_FLESHCRAFT = "血肉大厅",
      WW_OC_TORTURED_RANYU = "受折磨的拉恩于",
      WW_OC_JYNORAH_AND_SKORKHIF = "吉诺拉与斯科尔基弗",
      WW_OC_BLOOD_DRINKER_THISA = "饮血者斯萨",
      WW_OC_OVERFIEND_KAZPIAN = "魂摄魔灵卡兹皮安",

      WW_MSA_NAME = "漩涡竞技场",
      WW_VH_NAME = "瓦特什兰洞穴",
      WW_DSA_NAME = "龙星竞技场",

      WW_BRP_NAME = "黑玫瑰监狱",
      WW_BRP_FIRST = "战斗法师埃诺迪乌斯",
      WW_BRP_SECOND = "驯兽者",
      WW_BRP_THIRD = "米纳拉夫人",
      WW_BRP_FOURTH = "他们所有人",
      WW_BRP_FIFTH = "被解放的德拉基",
      WW_BRP_FINALROUND = "最终回合",

      -- KEYBINDS
      SI_BINDING_NAME_WW_HOTKEY_SHOW_UI = "打开 Wizard's Wardrobe",
      SI_BINDING_NAME_WW_HOTKEY_FIXES_FLIP_SHOULDERS = "修复肩甲",
      SI_BINDING_NAME_WW_HOTKEY_SETUP_1 = "配装 01(Trash)",
      SI_BINDING_NAME_WW_HOTKEY_SETUP_2 = "配装 02",
      SI_BINDING_NAME_WW_HOTKEY_SETUP_3 = "配装 03",
      SI_BINDING_NAME_WW_HOTKEY_SETUP_4 = "配装 04",
      SI_BINDING_NAME_WW_HOTKEY_SETUP_5 = "配装 05",
      SI_BINDING_NAME_WW_HOTKEY_SETUP_6 = "配装 06",
      SI_BINDING_NAME_WW_HOTKEY_SETUP_7 = "配装 07",
      SI_BINDING_NAME_WW_HOTKEY_SETUP_8 = "配装 08",
      SI_BINDING_NAME_WW_HOTKEY_SETUP_9 = "配装 09",
      SI_BINDING_NAME_WW_HOTKEY_SETUP_10 = "配装 10",
      SI_BINDING_NAME_WW_HOTKEY_SETUP_11 = "配装 11",
      SI_BINDING_NAME_WW_HOTKEY_SETUP_12 = "配装 12",
      SI_BINDING_NAME_WW_HOTKEY_SETUP_13 = "配装 13",
      SI_BINDING_NAME_WW_HOTKEY_SETUP_14 = "配装 14",
      SI_BINDING_NAME_WW_HOTKEY_SETUP_15 = "配装 15",
      SI_BINDING_NAME_WW_HOTKEY_SETUP_16 = "配装 16",
      SI_BINDING_NAME_WW_HOTKEY_SETUP_17 = "配装 17",
      SI_BINDING_NAME_WW_HOTKEY_SETUP_18 = "配装 18",
      SI_BINDING_NAME_WW_HOTKEY_SETUP_19 = "配装 19",
      SI_BINDING_NAME_WW_HOTKEY_SETUP_20 = "配装 20",
      SI_BINDING_NAME_WW_HOTKEY_SETUP_21 = "配装 21",
      SI_BINDING_NAME_WW_HOTKEY_SETUP_22 = "配装 22",
      SI_BINDING_NAME_WW_HOTKEY_SETUP_23 = "配装 23",
      SI_BINDING_NAME_WW_HOTKEY_SETUP_24 = "配装 24",
      SI_BINDING_NAME_WW_HOTKEY_SETUP_25 = "配装 25",
      SI_BINDING_NAME_WW_HOTKEY_PREBUFF_1 = "Prebuff 1",
      SI_BINDING_NAME_WW_HOTKEY_PREBUFF_2 = "Prebuff 2",
      SI_BINDING_NAME_WW_HOTKEY_PREBUFF_3 = "Prebuff 3",
      SI_BINDING_NAME_WW_HOTKEY_PREBUFF_4 = "Prebuff 4",
      SI_BINDING_NAME_WW_HOTKEY_PREBUFF_5 = "Prebuff 5",

      SI_BINDING_NAME_WW_HOTKEY_UNDRESS = "卸下装备",
      SI_BINDING_NAME_WW_HOTKEY_SETUP_PREVIOUS = "装备前一套配装",
      SI_BINDING_NAME_WW_HOTKEY_SETUP_CURRENT = "重载当前配装",
      SI_BINDING_NAME_WW_HOTKEY_SETUP_NEXT = "装备下一套配装",
      SI_BINDING_NAME_WW_HOTKEY_SETUP_FIX = "尝试修复失败的套装切换"
    }
    
    for key, value in pairs(Strings) do
      SafeAddVersion(key, 1)
      ZO_CreateStringId(key, value)
    end
    
    return Strings.WW_EMPTY
  end

  --Special Setting
  BB.SetFunHook(function(ID)
    if WizardsWardrobe and WW_EMPTY == ID then
      return Fun()
    end
  end, _G, "GetString", true)

end end

BB.AddonList["WizardsWardrobe"] = function() if not WizardsWardrobe then return false end
  
  --Special Setting
  local WW = WizardsWardrobe
  function WW.gui.tree.GetCategoryName(categoryKey)
    if not WW.ACTIVITIES then return "error" end
    local dict = {
      [WW.ACTIVITIES.GENERAL]      = "常规",
      [WW.ACTIVITIES.TRIALS]       = "试炼",
      [WW.ACTIVITIES.DUNGEONS]     = "地下城",
      [WW.ACTIVITIES.DLC_DUNGEONS] = "DLC地下城",
      [WW.ACTIVITIES.ARENAS]       = "竞技场",
      [WW.ACTIVITIES.MISC]         = "杂项",
      [WW.ACTIVITIES.ENDLESS]      = "无尽档案塔",
    }
    return dict[categoryKey]
  end
  
  local list = {
    ["text"] = {
      ["Throw all your setups into the wardrobe and let the wizard equip them exactly when you need it."] = "把你所有的配装丢进衣柜，然后让巫师在需要的时候准确切换他们吧",
    },
    ["name"] = {
      ["Setup Validation"] = "配装校验",
      ["Delete log"] = "删除记录",
      ["Delete"] = "删除",
    },
  }
  BB.SetMenuReplace("WizardsWardrobeMenu", list)
  
  ZO_PostHook(WizardsWardrobe.prebuff, "CreatePrebuffWindow", function()
    if WizardsWardrobePrebuffBox1CheckBox then
      WizardsWardrobePrebuffBox1CheckBoxLabel:SetText("手动切回")
      WizardsWardrobePrebuffBox2CheckBoxLabel:SetText("手动切回")
      WizardsWardrobePrebuffBox3CheckBoxLabel:SetText("手动切回")
      WizardsWardrobePrebuffBox4CheckBoxLabel:SetText("手动切回")
      WizardsWardrobePrebuffBox5CheckBoxLabel:SetText("手动切回")
      WizardsWardrobePrebuffBox1EditBoxLabel:SetText("延迟ms")
      WizardsWardrobePrebuffBox2EditBoxLabel:SetText("延迟ms")
      WizardsWardrobePrebuffBox3EditBoxLabel:SetText("延迟ms")
      WizardsWardrobePrebuffBox4EditBoxLabel:SetText("延迟ms")
      WizardsWardrobePrebuffBox5EditBoxLabel:SetText("延迟ms")
    end
  end)

return true end