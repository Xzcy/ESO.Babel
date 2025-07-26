local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["WPamA"] = function() if not WPamA then return false end
  --[[
  Translation Files:
    WPamA\i18n\EN.lua
  ]]
  local Icon = WPamA.Consts.IconsW
  local GetIcon = WPamA.Textures.GetTexture
  local OpenWindowText = GetString(SI_ENTER_CODE_CONFIRM_BUTTON)
  local L = {
    Lng = "ZH",
  -- DateTime settings
    DateTimePart = {dd = 1, mm = 0, yy = 2, },
    DateFrmt = 2, -- 1 default:m.d.yyy ; 2:yyyy-mm-dd; 3:dd.mm.yyyy; 4:yyyy/mm/dd; 5:dd.mm.yy; 6:mm/dd; 7:dd.mm
    DateFrmtList = {"ESO默认","yyyy-mm-dd","dd.mm.yyyy","yyyy/mm/dd","dd.mm.yy","mm/dd","dd.mm"},
    DayMarker = "日",
    MetricPrefix = {"K","M","G","T","P","E"},
    CharsOrderList = {"ESO默认","名称","联盟, 名称","最高等级, 名称","最低等级, 名称","联盟, 最高等级","联盟, 最低等级"},
  -- Marker (substring) in active quest step text for detect DONE stage
    DoneM = {
      [1] = "返回",
      [2] = "交谈",
      [3] = "回到",
    },
  -- Keybinding string
    KeyBindShowStr  = "显示/隐藏插件窗口",
    KeyBindChgWStr  = "更改插件窗口",
    KeyBindChgTStr  = "更改插件窗口模式",
    KeyBindChgAStr  = "更改插件窗口模式（可选）",
    KeyFavRadMenu   = "收藏夹选项卡的径向菜单",
    KeyBindCharStr  = "显示/隐藏角色窗口",
    KeyBindClndStr  = "显示/隐藏日历窗口", 
    KeyBindPostTd   = "将今天的无畏者誓约发到聊天（英语）",
    KeyBindPostTdCL = "将今天的无畏者誓约发到聊天（中文）",
    KeyBindWindow0  = OpenWindowText .. ": " .. "组队",
    KeyBindWindow1  = OpenWindowText .. ": " .. "试炼",
    KeyBindWindow2  = OpenWindowText .. ": " .. GetString(SI_ZONECOMPLETIONTYPE9),
    KeyBindWindow3  = OpenWindowText .. ": " .. "技能",
    KeyBindWindow4  = OpenWindowText .. ": " .. GetString(SI_BINDING_NAME_TOGGLE_INVENTORY),
    KeyBindWindow5  = OpenWindowText .. ": " .. GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKCATEGORIES1),
    KeyBindWindow6  = OpenWindowText .. ": " .. GetString(SI_MAPFILTER14),
    KeyBindWindow7  = OpenWindowText .. ": " .. GetString(SI_JOURNAL_MENU_ACHIEVEMENTS) ..
                      ", " .. GetString(SI_COLLECTIONS_MENU_ROOT_TITLE),
    KeyBindWindow8  = OpenWindowText .. ": " .. GetString(SI_QUEST_JOURNAL_GENERAL_CATEGORY),
    KeyBindRGLA     = "显示/隐藏 RGLA（团队队长助手）",
    KeyBindRGLASrt  = "RGLA: 开始",
    KeyBindRGLAStp  = "RGLA: 停止",
    KeyBindRGLAPst  = "RGLA: 发到聊天",
    KeyBindRGLAShr  = "RGLA: 共享任务",
    KeyBindLFGP     = "GFP：开始/取消 排本",
    KeyBindLFGPMode = "GFP：模式选择",
  -- Caption
    Wind = {
      [0] = {
        Capt = "地下城",
        Tab = {
          [1] = {N="誓约", W=65},
          [2] = {N="日历", W=72},
          [3] = {N="随机活动", W=124}, 
          [4] = {N=GetString(SI_ENDLESS_DUNGEON_LEADERBOARDS_CATEGORIES_HEADER), W=181},
        },
      },
      [1] = {
        Capt = "试炼",
        Tab = {
          [1] = {N="AA, HRC, SO, MOL, CR, SS", W=192},
          [2] = {N="HOF, AS, KA, RG, DSR, SE", W=192},
          [3] = {N="LC, OC", W=192},
        },
      },
      [2] = {
        Capt = GetString(SI_ZONECOMPLETIONTYPE9), -- "World Bosses"
        Tab = {
          [ 1] = {N=GetIcon(18,28), NC=GetIcon(18,28,true), W=28, S=true, A="沃斯加"},
          [ 2] = {N=GetIcon(25,28), NC=GetIcon(25,28,true), W=28, S=true, A="瓦登费尔"},
          [ 3] = {N=GetIcon(22,28), NC=GetIcon(22,28,true), W=28, S=true, A="黄金海岸"},
          [ 4] = {N=GetIcon(26,26), NC=GetIcon(26,26,true), W=28, S=true, A="夏暮岛"},
          [ 5] = {N=GetIcon(28,26), NC=GetIcon(28,26,true), W=28, S=true, A="北艾斯维尔"},
          [ 6] = {N=GetIcon(30,28), NC=GetIcon(30,28,true), W=28, S=true, A="西天际"},
          [ 7] = {N=GetIcon(34,28), NC=GetIcon(34,28,true), W=28, S=true, A=GetString(SI_CHAPTER5)}, -- "Blackwood"
          [ 8] = {N=GetIcon(40,28), NC=GetIcon(40,28,true), W=28, S=true, A=GetString(SI_CHAPTER6)}, -- "High Isle"
          [ 9] = {N=GetIcon(42,28), NC=GetIcon(42,28,true), W=28, S=true, A=GetString(SI_CHAPTER7)}, -- "Necrom"
          [10] = {N=GetIcon(43,28), NC=GetIcon(43,28,true), W=28, S=true, A=GetString(SI_CHAPTER8)}, -- "The Gold Road"
          [11] = {N=GetIcon(66,28), NC=GetIcon(66,28,true), W=28, S=true, A=GetString(SI_CHAPTER9)}, -- "Solstice"
        },
      },
      [3] = {
        Capt = "技能",
        Tab = {
          [1] = {N="职业&联盟战争", W=95},
          [2] = {N="制造", W=41,},
          [3] = {N="公会", W=43,},
          [4] = {N="世界", W=50,},
          [5] = {N=GetIcon(27,28), NC=GetIcon(27,28,true), W=28, S=true, A=GetString(SI_STATS_RIDING_SKILL)},
          [6] = {N=GetIcon(22,28), NC=GetIcon(22,28,true), W=28, S=true, A="暗影供应者"},
          [7] = {N=zo_strformat("<<1>><<2>><<3>>", GetIcon(57,22), GetIcon(58,22), GetIcon(59,22)),
                 NC=zo_strformat("<<1>><<2>><<3>>", GetIcon(57,22,true), GetIcon(58,22,true), GetIcon(59,22,true)),
                 W=70, S=true, A=GetString(SI_STAT_GAMEPAD_CHAMPION_POINTS_LABEL)},
        },
      },
      [4] = {
        Capt = GetString(SI_BINDING_NAME_TOGGLE_INVENTORY),
        Tab = {
          [1] = {N="货币", W=74,},
          [2] = {N="物品", W=46,},
          [3] = {N=GetIcon(32,24), NC=GetIcon(32,24,true), W=28, S=true, A="经验卷轴"},
          [4] = {N=GetIcon(60,24), NC=GetIcon(60,24,true), W=28, S=true, A="蜕变晶石球"},
          [5] = {N=GetIcon(31,28), NC=GetIcon(31,28,true), W=28, S=true,
                 A=GetString(SI_GAMEPAD_PLAYER_INVENTORY_CAPACITY_FOOTER_LABEL)},
          [6] = {N=GetIcon(61,24), NC=GetIcon(61,24,true), W=28, S=true,
                 A=zo_strformat("<<1>>, <<2>>", GetString(SI_SPECIALIZEDITEMTYPE100), GetString(SI_SPECIALIZEDITEMTYPE101))},
          [7] = {N=GetIcon(65,28), NC=GetIcon(65,28,true), W=28, S=true, A=GetString(SI_ITEMTYPEDISPLAYCATEGORY26)}, -- "Containers"
        },
      },
      [5] = {
        Capt = GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKCATEGORIES1),
        Tab = {
          [1] = {N=GetString(SI_CAMPAIGNRULESETTYPE1), W=61},
          [2] = {N=GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKSUBCATEGORIES5), W=112},
          [3] = {N=GetString(SI_DAILY_LOGIN_REWARDS_TILE_HEADER), W=112},
          [4] = {N="奖励&标志", W=132},
  --      [5] = {N=GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKSUBCATEGORIES4), W=100,},
        },
      },
      [6] = {
        Capt = GetString(SI_MAPFILTER14),
        Tab = {
          [1] = {N=GetIcon(45, 24) .. "1", NC=GetIcon(45, 24, true) .. "1", W=70, S=true, A=GetString(SI_COMPANION_OVERVIEW_RAPPORT)},
          [2] = {N=GetIcon(45, 24) .. "2", NC=GetIcon(45, 24, true) .. "1", W=70, S=true, A=GetString(SI_COMPANION_OVERVIEW_RAPPORT)},
          [3] = {N=zo_strformat("<<1>><<2>><<3>>", GetIcon(24, 24), GetIcon(35, 24), GetIcon(39, 24)),
                 NC=zo_strformat("<<1>><<2>><<3>>", GetIcon(24, 24, true), GetIcon(35, 24, true), GetIcon(39, 24, true)),
                 W=70, S=true, A="技能：职业、公会、护甲"},
          
          [4] = {N=zo_strformat("<<1>><<2>><<3>>", GetIcon(48, 24), GetIcon(51, 24), GetIcon(53, 24)),
                 NC=zo_strformat("<<1>><<2>><<3>>", GetIcon(48, 24, true), GetIcon(51, 24, true), GetIcon(53, 24, true)),
                 W=70, S=true, A="技能：武器"},
          [5] = {N=zo_strformat("<<1>><<2>><<3>>", GetIcon(38, 24), GetIcon(39, 24), GetIcon(37, 24)),
                 NC=zo_strformat("<<1>><<2>><<3>>", GetIcon(38, 24, true), GetIcon(39, 24, true), GetIcon(37, 24, true)),
                 W=70, S=true,
                 A=GetString(SI_ARMORY_EQUIPMENT_LABEL) .. ": " .. GetString(SI_EQUIPSLOTVISUALCATEGORY2)},
          [6] = {N=zo_strformat("<<1>><<2>><<3>>", GetIcon(54, 24), GetIcon(48, 24), GetIcon(55, 24)),
                 NC=zo_strformat("<<1>><<2>><<3>>", GetIcon(54, 24, true), GetIcon(48, 24, true), GetIcon(55, 24, true)),
                 W=70, S=true,
                 A=zo_strformat("<<1>>: <<2>>, <<3>>", GetString(SI_ARMORY_EQUIPMENT_LABEL),
                      GetString(SI_EQUIPSLOTVISUALCATEGORY1), GetString(SI_EQUIPSLOTVISUALCATEGORY3))},
        },
      },
      [7] = {
        Capt = GetString(SI_JOURNAL_MENU_ACHIEVEMENTS) .. ", " .. GetString(SI_COLLECTIONS_MENU_ROOT_TITLE),
        Tab = {
          [1] = {N="季节性庆典", W=146},
          [2] = {N=GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKSUBCATEGORIES803), W=70},
        },
      },
      [8] = {
        Capt = GetString(SI_QUEST_JOURNAL_GENERAL_CATEGORY), -- "Miscellaneous"
        Tab = {
          [1] = {N=GetString(SI_ACTIVITY_FINDER_CATEGORY_TIMED_ACTIVITIES), W=102,},
          [2] = {N="委托", W=48,},
          [3] = {N=GetIcon(12,28), NC=GetIcon(12,28,true), W=28, S=true, A=GetString(SI_ZONECOMPLETIONTYPE8)}, -- World Events
          [4] = {N=GetIcon(56,28), NC=GetIcon(56,28,true),
                 W=28, S=true, A=GetString(SI_CUSTOMER_SERVICE_OVERVIEW)}, -- Overview
        },
      },
    },
    ModeSettings = {
      [25] = {
        HdT = {
          [1] = "全部",
          [2] = "使用中",
          [3] = "空闲",
        },
      },
  --------
      [42] = {
        HdT = {
          [1] = GetString(SI_COLLECTIBLERESTRICTIONTYPE1), -- Race
          [2] = GetString(SI_COLLECTIBLERESTRICTIONTYPE3), -- Class
          [3] = "SP", [4] = "上次登录", [5] = "游戏时间",
        },
      },
  --------
    }, -- ModeSettings
    SelModeWin = {x = 220, y = 2, dy = 24,},
  -- Labels
    TotalRow = {[1] = "银行",[2] = "总计",},
    HdrLvl = "等级",
    HdrName = "名称",
    HdrClnd = "日期",
    HdrMaj = "玛吉·阿尔拉加斯",
    HdrGlirion = "红胡子格利里恩",
    HdrUrgarlag = "乌尔加拉格·酋长克星",
    HdrLFGReward = "紫色奖励",
    HdrLFGRnd = "地下城",
    HdrLFGBG  = "战场",
    HdrLFGTrib = GetString(SI_ACTIVITY_FINDER_CATEGORY_TRIBUTE),
    HdrAvAReward = GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKSUBCATEGORIES705),
    SendInvTo = "向<<1>>发邀请",
    ShareSubstr = "共享",
    EndeavorTypeNames = { [1] = "日常勉励任务", [2] = "周常勉励任务", },
    PromoEventName = GetIcon(47, 20, true) ..
                     GetString(SI_ACTIVITY_FINDER_CATEGORY_PROMOTIONAL_EVENTS) .. " : <<1>>", -- "Golden Pursuits"
    NoWorldEventsHere = "此处无世界事件",
    WECalculating = "计算中",
    WEDistance = "距离",
  -- Pledge Quest Givers NPC names
    PledgeQGivers = {
      [1] = "玛吉·阿尔拉加斯",
      [2] = "红胡子格利里恩",
      [3] = "乌尔加拉格·酋长克星",
    },
  -- Shadowy-Supplier NPC name
    ShadowySupplier = {
      ["保持沉默"] = true,
    },
    ComeBackLater = "晚点再来",
  -- Replace text for long companion equipment names
    CompanionEquipRepl = {
     --- Trait names replacement ---
     --- Item names replacement ---
     --- Item types replacement ---
    },
  -- Addon Options Menu
  --> 1
    OptGeneralHdr = "一般设定",
    OptCharsOrder = "角色顺序",
    OptCharsOrderF = "选择在插件窗口中显示角色的顺序。需要重新加载UI。仅在插件加载时排序角色，之后顺序不会改变。",
    OptAlwaysMaxWinX  = "调整主窗口宽度",
    OptAlwaysMaxWinXF = "启用时，插件的主窗口在所有模式下将始终具有相同的宽度。禁用后，主窗口的宽度将根据模式而变化。",
    OptLocation = "显示地点而非地下城名称",
    OptENDungeon = "显示地下城的英文名称",  
    OptDontShowNone = "显示空白而非“无”",
    OptDontShowReady = "\"Ready\"显示空白而非“无”",
    OptTitleToolTip = "为窗口标题显示提示框",
    OptHintUncomplPlg  = "为未完成的地下城提示誓约",
    OptHintUncomplPlgF = table.concat( {
                       "如果今日誓约的地下城未完成，在无畏者誓约窗口中提示\n",
                       "未完成地下城：技能点任务未完成/未击杀所有\n",
                       "(地下城需要在当前账户/角色可用或已解锁)",
                       } ),
    OptLargeCalend  = "誓约日历显示的天数",
    OptLargeCalendF = "选择在誓约日历界面显示多少天的信息",
    OptDateFrmt  = "日期格式",
    OptDateFrmtF = "选择日历窗口中显示的日期格式",
    OptShowTime  = "同时显示时间",
    OptLFGRndAvl  = "短时间段的格式",
    OptLFGRndAvlF = "选择短时间段（小于24小时）的形式，如随机活动的每日奖励、阴影供应商、骑行技能等.",
    OptTrialAvl  = "下个试炼奖励箱可获取时间...",
    OptTrialAvlF = "当试炼完成后的奖励容器可获取时，所显示的信息格式。可选项为“日期时间”和“倒计时”。",
    OptTimerList = {"倒计时","日期时间 (MM/DD hh:mi)","日期时间 (DD.MM hh:mi)"},
    OptRndDungDelay = "日常奖励等待时间",
    OptRndDungDelayF = "完成每日随机地下城后，等待游戏服务器通知日常奖励的延迟时间（秒）。默认设置（5秒），需要在重新登录或重新加载UI后倒计时显示“???”时才能修改。",	
    OptShowMonsterSetTT = "为怪物套显示提示框",
    OptShowMonsterSetTTF = "在“无畏者誓约”和“誓约日历”模式中为怪物套显示提示框",
    OptMouseModeUI = "显示鼠标指针",
    OptMouseModeUIF = "插件窗口打开时,显示鼠标指针",
    OptCharNamesMenu = "角色名称",
    OptCharNameColor = "以联盟颜色显示名称",
    OptCharNameAlign = "名称对齐",
    OptNamesAlignList = {"左", "中", "右"},
    OptCorrLongNames = "修改长名称的显示方式",
    OptNamesCorrList = {"默认", "字体大小", "裁切中间", "文本掩码"},
    OptNamesCorrRepl = {"在名称中查找此文本", "并替换为此文本"},
    OptCurrencyValThres = "将货币数值四舍五入到...",
    OptCurrencyValThresF = table.concat(
                         { "将货币数值四舍五入到什么单位\n",
                           GetString(SI_GAMEPAD_CURRENCY_SELECTOR_HUNDREDS_NARRATION),      " : 123 K\n",
                           GetString(SI_GAMEPAD_CURRENCY_SELECTOR_THOUSANDS_NARRATION),     " : 1234 K\n",
                           GetString(SI_GAMEPAD_CURRENCY_SELECTOR_TEN_THOUSANDS_NARRATION), " : 12345 K"
                         } ),
    OptCompanionRapport = "伙伴默契度显示模式...",
    OptCompanionRprtList = {"数字", "文本"},
    OptCompanionRprtMax = "同时显示最大值",
    OptCompanionEquip = "伙伴装备显示模式...",
    OptCompanionEquipList = {"装备名", "装备类型", "装备特质", "类型和特质"},
  --> 2
    OptModeSetHdr = "选项和模式设置",
    OptAutoActionsHdr = "自动接日常任务",
    OptAutoTakeUpPledges = "自动誓约任务",
    OptAutoTakeUpPledgesF = "与无畏者NPC对话时自动接受誓约任务",
    OptAutoTakeDBSupplies = "自动打开黑暗兄弟会奖励",
    OptAutoTakeDBSuppliesF = "在与暗影供应者的对话中自动获得有益的物品(补给)",
    OptAutoTakeDBList = {"帐号", "角色"},
    OptChoiceDBSupplies = "接收物品类型",
    OptDBSuppliesList = {"默认", "毒药/药水", "不显示", "装备"},
    ---
    --OptEndeavorRewardMode = "勉励任务奖励显示模式...",
    --OptEndeavorRewardList = {"单个", "当前", "最大"},
    OptEndeavorChatMsg  = "在聊天窗口中显示勉励任务进度",
    OptEndeavorChatMsgF = "在聊天窗口中显示勉励任务进度相关信息",
    OptEndeavorChatChnl = "显示进度的聊天频道",
    OptEndeavorChatChnlF = "用于显示勉励进度相关信息的聊天频道",
    OptPursuitChatMsg  = "在聊天窗口中显示金典追觅进度",
    OptPursuitChatMsgF = "在聊天窗口中显示金典追觅进度相关信息",
    OptPursuitChatCamp  = "直到获取金典追觅奖励",
    OptPursuitChatCampF = "启用时，将在获取奖励前显示金典追觅进度\n禁用后，始终显示金典追觅进度",
    OptPursuitChatChnlF = "用于显示金典追觅进度相关信息的聊天频道",
    OptPursuitAutoClaim = "自动获取金典追觅奖励",
    ---
    OptLFGPHdr = "GFP(誓约组队查找器)",
    OptLFGPOnOff = "允许使用GFP",
    OptLFGPMode = "同时将组队模式设置为...",
    OptLFGPModeList = {
      zo_strformat("总是 <<1>><<1>><<1>> (<<2>>)", Icon.Norm, Icon.LfgpKeys[1]),              -- NNN
      zo_strformat("总是 <<1>><<1>><<2>> (<<3>>)", Icon.Vet,  Icon.Minus, Icon.LfgpKeys[2]),  -- VV-
      zo_strformat("总是 <<1>><<1>><<2>> (<<3>>)", Icon.Vet,  Icon.Norm, Icon.LfgpKeys[3]),   -- VVN
      zo_strformat("总是 <<1>><<1>><<1>> (<<2>>)", Icon.Vet,  Icon.LfgpKeys[4]),              -- VVV
      "依角色而定"
    },
    OptLFGPIgnPledge = "忽略“誓约已完成”检查标记",
    OptLFGPAlert = "屏幕中通知",
    OptLFGPChat = "聊天框通知",
  --> 3
    OptRGLAHdr = "RGLA设定(团队队长助手)",
    OptRGLAQAutoShare = "允许自动共享任务",
    OptRGLAQAlert = "屏幕中通知",
    OptRGLAQChat = "聊天框通知",
    OptRGLABossKilled = "BOSS被击杀后RGLA停止",
  --> 4
    CharsOnOffHdr = "显示/隐藏角色",
    CharsOnOffNote = "注意：您当前的角色总是忽略此设定。当前角色的相关信息在所有模式下都会显示。",
    OptCharOnOffTtip = "显示/隐藏角色“<<1>>”",
  --> 5
    ModesOnOffHdr = "显示/隐藏窗口模式",
    ModesOnOffNote = "注意：此设置仅影响顺序切换窗口模式。您可以隐藏任何窗口模式，但至少需要保留一个非隐藏窗口模式。您也可以从菜单直接选择指定窗口模式。",
    OptWindOnOffTtip = "显示/隐藏窗口\n“<<1>>”",
    OptModeOnOffTtip = "显示/隐藏窗口模式\n“<<1>>”",
  --> 6
    CustomModeKbdHdr  = "自定义按键设置",
    CustomModeKbdNote = "注意:此设置是帐户范围的。自定义模式呼叫键允许您为您选择的呼叫模式分配键。",
    OptCustomModeKbd  = GetString(SI_COLLECTIBLECATEGORYTYPE29) .. " <<1>> ...",
  --> 7
  --  ResetCharNote = "",
    ResetChar = "重置角色列表",
    ResetCharNote = "即使删除了角色，数据也会继续保存。为了删除不存在的角色的数据，需要点击下面的按钮。角色列表重置后，要取得新角色的数据需要重新登录。",
    ResetCharWarn = "删除所有角色的相关数据!可以吗？",
  -- LFGP texts
    LFGPSrchCanceled = "组队搜索已取消",
    LFGPSrchStarted  = "组队搜索已开始",
    LFGPAlrdyStarted = "其他活动已开始",
    LFGPQueueFailed  = "创建队列失败",
    LFGP_ErrLeader   = "您不是队长!",
    LFGP_ErrOverland = "您未身处大地图中!",
    LFGP_ErrGroupRole= "请设定组队角色!",
  -- RGLA text
    RGLABossKilled = "BOSS被打倒了。RGLA已停止。",
    RGLALeaderChanged = "队长已更改。RGLA已停止。",
    RGLAShare = "共享",
    RGLAStop = "停止",
    RGLAPost = "发布",
    RGLAStart = "开始",
    RGLAStarted = "已开始",
    RGLALangTxt = "到聊天频道",
  -- RGLA Errors
    RGLA_ErrLeader = "你不是队长!",
    RGLA_ErrAI = "未安装或未开启AutoInvite插件!",
    RGLA_ErrBoss = "BOSS已经被击杀。RGLA无法启动。",
    RGLA_ErrQuestBeg = "还没有接到日常任务",
    RGLA_ErrQuestEnd = ")!",
    RGLA_ErrLocBeg = "现在、", 
    RGLA_ErrLocEnd = "立刻!", 
    RGLA_Loc = {
      [ 0] = "沃斯加",
      [ 1] = "瓦登费尔",
      [ 2] = "黄金海岸",
      [ 3] = "夏暮岛",
      [ 4] = "北艾斯维尔",
      [ 5] = "西天际",
      [ 6] = "灰沼洞穴",
      [ 7] = "黑木",
      [ 8] = "高岛",
      [ 9] = "泰尔瓦尼半岛",
      [10] = "死灵之地",
      [11] = "至日岛",
    },
  -- Dungeons Status
    DungStDone = "完成",
    DungStNA = "无",
  -- Wrothgar Boss Status
    WWBStNone = "无",
    WWBStDone = "完成",
    WWBStCur  = "进行中",
  -- Trials Status
    TrialStNone = "无",
    TrialStActv = "进行中",
  -- LFG Random Dungeon Status
    LFGRewardReady = "就绪",
    LFGRewardNA = "无",
  -- Shadowy Supplier
    ShSuplUnkn = "？",
    ShSuplReady = "就绪",
    ShSuplNA = "无",
  -- Login Status
    LoginToday = "今天",
    Login1DayAgo = "昨天",
  }

  L.ToolTip = {
    [-1] = "",
    [ 0] = Icon.LMB .. " 关闭窗口",
    [ 1] = Icon.LMB .. " 显示选项窗口",
    [ 2] = Icon.LMB .. " 切换窗口\n" .. Icon.RMB .. " 选择窗口",
    [ 3] = Icon.LMB .. Icon.RMB .. "（英文/中文）发布当日誓约到聊天",
    [ 4] = "您当前在完成誓约方面的进展",
    [ 5] = "当前和将来的誓约任务日历",
    [ 6] = "您当前在完成日常任务方面的进展",
    [ 7] = "无畏者钥匙、开锁器、灵魂石及其他...",
    [ 8] = "您的角色在启迪状态",
    [ 9] = "您的角色未在启迪状态",
    [10] = table.concat({ "无畏者誓约队伍查找器\n", Icon.LMB, " ", WPamA.i18n.KeyBindLFGP, "\n", Icon.RMB, " ", WPamA.i18n.KeyBindLFGPMode }),
    [11] = "蜕变水晶",
  --
    [12] = "您当前在世界技能方面的进展。",
    [13] = GetString(SI_STABLE_STABLES_TAB),
    [14] = GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKCATEGORIES1),
    [15] = "季节性庆典",
    [16] = "您当前在公会技能方面的进展。",
    [17] = "您当前在职业&联盟战争技能方面的进展。",
    [18] = "您当前在制造技能方面的进展。",
    [19] = "周常试炼奖励可用性",
    [20] = "随机地下城和战场日常奖励追踪器",
  -- WB Wrothgar
    [21] = "未完成的暗锚\n - 重生者赞达杜诺兹",
    [22] = "奈查莱夫特瀑布\n - 矮人百夫长奈查莱夫特",
    [23] = "酋长王的王座\n - 酋长王厄都",
    [24] = "疯狂食人魔祭坛\n - 疯乌尔卡兹布",
    [25] = "偷猎者营地\n - 老斯纳加拉",
    [26] = "被诅咒的繁殖场\n - “憎恶”科林萨克",
  --
    [27] = "成就倒计时",
    [29] = table.concat({ "无畏者誓约队伍查找器\n",
           Icon.Minus, " - GFP 在插件设置中未启用\n",
           GetIcon(62,18), " - 钥匙的可能数量 (包含HM)\n",
           Icon.Norm, "/", Icon.Vet, " - 队伍查找器模式 (在地下城名称之前)" }),
    [30] = "日常奖励可获取",
  -- 31-39 Class skills + Guild skills
    [31] = "第一职业技能线",
    [32] = "第二职业技能线",
    [33] = "第三职业技能线",
    [34] = "斗士公会",
    [35] = "法师公会",
    [36] = "无畏者",
    [37] = "盗贼公会",
    [38] = "黑暗兄弟会",
    [39] = "塞伊克教团",
  -- 41-47 Craft skills
  -- 48-50 AvA skills
    [51] = "赫尔·拉要塞",
    [52] = "艾瑟瑞恩档案塔",
    [53] = "乌鞘蛇圣所",
    [54] = "洛克汗的巨口",
    [55] = "制造大厅",
    [56] = "庇护圣所",
    [57] = "云栖城",
    [58] = "太阳尖顶",
    [59] = "凯恩之盾",
  --
    [60] = GetString(SI_LEVEL_UP_REWARDS_SKILL_POINT_TOOLTIP_HEADER),
    [61] = "金币",
    [62] = "委托券",
    [63] = "联盟点数",
    [64] = "泰尔瓦石",
  --65-70 Item name
  -- WB Vvardenfell
    [71] = "米希尔-达达利特蛋矿\n - 女王的配偶",
    [72] = "塞洛珊的议会\n - 塞洛珊",
    [73] = "尼尔索格的幽谷\n - “坚不可摧”尼尔索格",
    [74] = "苏里彭德农场\n - 饿死鬼乌鲁乌斯",
    [75] = "杜比迪尔·阿拉尔塔\n - 欺骗者梅兹",
    [76] = "沉船湾\n - “鸣鸟”金布鲁希尔",
  -- WB Gold Coast
    [77] = "科瓦奇竞技场",
    [78] = "行政官的愚行\n - 里蒙那奥卢斯",
  -- WB Summerset
    [81] = "女王孵化场\n - 礁石女王",
    [82] = "龙骨撕裂者的巢穴\n - 龙骨撕裂者",
    [83] = "灵鹿乐园\n - 卡内瑞",
    [84] = "维伦金湾\n - 科尔根",
    [85] = "格拉维德的藏身处\n - 格拉维德",
    [86] = "狮鹫飞行场\n - 海利亚塔和纳格拉薇亚",
  -- Inventory
    [87] = "关于物品栏容量的信息",
    [88] = "物品栏总空间",
    [89] = "物品栏已使用空间",
    [90] = "物品栏可用空间",
  -- WB Northern Elsweyr
    [91] = "骨坑\n - 织骨者纳鲁兹",
    [92] = "伤痕边缘\n - 盗墓者丹纳尔",
    [93] = "血手洞穴\n - 阿库哈戈和扎维",
    [94] = "碎剑山丘\n - 剑术大师维斯拉杜",
    [95] = "利爪峡谷\n - 狡猾的基瓦",
    [96] = "噩梦高原\n - 扎尔希姆",
  -- Inventory Upgrades
    [97] = GetString(SI_INTERACT_OPTION_BUY_BAG_SPACE),
    [98] = GetString(SI_GAMEPAD_STABLE_TRAIN) .. " - " .. GetString(SI_RIDINGTRAINTYPE2),
    [99] = GetString(SI_COLLECTIBLECATEGORYTYPE3) .. " - " .. GetString(SI_BINDING_NAME_TOGGLE_INVENTORY),
  -- AvA Activity
    [100] = GetString(SI_CAMPAIGN_BROWSER_TOOLTIP_HOME_CAMPAIGN),
    [101] = GetString(SI_CAMPAIGN_SCORING_END_OF_CAMPAIGN_REWARD_TIER),
    [102] = GetString(SI_GAMEPAD_CAMPAIGN_SCORING_DURATION_REMAINING),
    [103] = GetString(SI_STATS_ALLIANCE_RANK),
    [104] = GetString(SI_LOOT_HISTORY_LEADERBOARD_SCORE) .. ".\n" .. GetString(SI_LEADERBOARDS_RANK_HELP_TOOLTIP),
    [105] = GetString(SI_DAILY_LOGIN_REWARDS_TILE_HEADER) .. " (联盟战争)",
  --
    [106] = GetString(SI_ACTIVITY_FINDER_CATEGORY_TIMED_ACTIVITIES),
    [107] = "暗影供应者",
    [108] = "暗影供应者冷却计时器",
    [109] = "伙伴默契度",
    [110] = GetString(SI_STAT_GAMEPAD_CHAMPION_POINTS_LABEL),
    [111] = GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKSUBCATEGORIES212),
  -- World Events
    [112] = "", -- an overridden string
    [113] = "", -- an overridden string
    [114] = "", -- an overridden string
    [115] = table.concat({
              GetIcon(14, 24), "- 从检测到可用事件到现在已经过去了多长时间。\n",
              GetIcon(13, 28), "- 从事件完成到现在已经过去了多长时间。" }
            ),
    [116] = "活动进行了多长时间。\n（玩家完成活动用了多长时间）",
    [117] = "到世界事件可用的预计时间。\n" ..
            "至少需要完成 2 个事件才能计算时间。\n" ..
            "完成的事件越多，时间计算就越准确。",
    [118] = "HP % - 事件Boss的生命值等级。\n" ..
            GetIcon(13, 28) .. "- 自事件完成以来已经过去了多少时间。",
    [119] = "到事件Boss的距离（以米为单位）。\n只有在距离Boss300米范围内才能获得关于Boss的准确信息。",
    [120] = "世界事件可用前的预计时间。\n" ..
            "取决于该地点玩家的数量和活跃状况。",
  -- WB Western Skyrim
    [121] = "伊斯加沙滩\n - 海巨人",
    [122] = "霍德雷克狩猎场\n - 狼人狩猎队",
    [123] = "勇士之环",
    [124] = "影母港湾\n - 影母",
  -- WB Blackreach: Greymoor Caverns
    [125] = "吸血鬼进食场\n - 进食场",
    [126] = "巨像充能站\n - 矮人巨像",
  --131-136 World skills
  -- Endless Dungeon progress
    [158] = "每日任务\n" ..
            Icon.Lock .. " - 指引任务未完成\n" ..
            Icon.Quest .. " - 任务可用\n" ..
            Icon.ChkM .. " - 任务已完成",
    [159] = "达到的最佳进展\n(所有在插件激活下进行的地下城)",
  --160-190 Item name
  -- Trials
    [191] = "石林",
    [192] = "恐帆礁石",
    [193] = "理智边缘",
    [194] = "卢晶堡垒",
    [195] = "骨笼",
  -- WB Blackwood
    [201] = "老死瘤的池塘\n - 老死瘤",
    [202] = "谢姆霍克的泻湖\n - 战利品掠夺者谢姆霍克",
    [203] = "苏尔山仪式地\n - 死亡制造者亚克哈特, 努库吉玛, 苏·莫克, 沼泽神秘人维莎",
    [204] = "破碎的石巢神庙\n - 先驱杰姆瓦斯",
    [205] = "沙尔丢斯的发掘地\n - 布朗姆",
    [206] = "蟾蜍之舌战争营地\n - 战争酋长扎斯莫兹",
  -- Crafting Writs
    [207] = GetQuestName(WPamA.DailyWrits.QuestIDs[1][1]),
    [208] = GetQuestName(WPamA.DailyWrits.QuestIDs[2][1]),
    [209] = GetQuestName(WPamA.DailyWrits.QuestIDs[3][1]),
    [210] = GetQuestName(WPamA.DailyWrits.QuestIDs[4][1]),
    [211] = GetQuestName(WPamA.DailyWrits.QuestIDs[5][1]),
    [212] = GetQuestName(WPamA.DailyWrits.QuestIDs[6][1]),
    [213] = GetQuestName(WPamA.DailyWrits.QuestIDs[7][1]),
  --214-229 Companion Skills
    [214] = "职业技能",
    [215] = "", -- an overridden string
    [216] = "", -- an overridden string
    [217] = "", -- an overridden string
    [218] = GetString(SI_EQUIPMENTFILTERTYPE1),
    [219] = GetString(SI_EQUIPMENTFILTERTYPE2),
    [220] = GetString(SI_EQUIPMENTFILTERTYPE3),
    [221] = GetString(SI_WEAPONCONFIGTYPE3),
    [222] = GetString(SI_WEAPONCONFIGTYPE1),
    [223] = GetString(SI_WEAPONCONFIGTYPE2),
    [224] = GetString(SI_WEAPONCONFIGTYPE4),
    [225] = GetString(SI_WEAPONCONFIGTYPE5),
    [226] = GetString(SI_WEAPONCONFIGTYPE6),
  --227-240 Companion Equips
    [227] = GetString(SI_EQUIPSLOT0),
    [228] = GetString(SI_EQUIPSLOT3),
    [229] = GetString(SI_EQUIPSLOT2),
    [230] = GetString(SI_EQUIPSLOT16),
    [231] = GetString(SI_EQUIPSLOT6),
    [232] = GetString(SI_EQUIPSLOT8),
    [233] = GetString(SI_EQUIPSLOT9),
    [234] = GetString(SI_EQUIPSLOT4),
    [235] = GetString(SI_EQUIPSLOT5),
    [236] = GetString(SI_EQUIPSLOT1),
    [237] = GetString(SI_EQUIPSLOT11),
    [238] = GetString(SI_EQUIPSLOT12),
  --239
  --240
  -- WB High Isle
    [241] = "巨蛇泥沼\n - 蛇魔召唤者温莎",
    [242] = "耶弗尔的大釜\n - 黑魔骑士",
    [243] = "黑石山谷\n - 上升行刑者, 上升掠夺者",
    [244] = "鹿人瀑布\n - 格莱米奥斯·野角",
    [245] = "阿梅诺斯水池\n - 冲动之斯凯拉德, 冲动之罗萨拉",
    [246] = "莫尔纳德瀑布\n - 海螯首领, 海螯配偶",
  --247-249 Books Category (Init by WPamA:InitLoreBookMode)
  -- Hireling mail and crafting profession certification'
    [250] = table.concat({ "\n", Icon.Mail, " - 可使用雇工邮件（需要重登游戏或更改位置）",
                           "\n", Icon.NoCert, " - 未完成生产认证任务" }),
  -- WB Necrom
    [251] = "梦魇巢穴\n - 行走的梦魇",
    [252] = "克拉莫拉普盆地\n - 制链者科里恩",
    [253] = "深层掠夺者沼地\n - 弗洛库尔萨",
    [254] = "西索恩广场\n - 瓦金纳兹·德克",
    [255] = "圣契大教堂\n - 首席编者",
    [256] = "符文大师卫城\n - 符文大师希奥马拉",
  --257-260
  -- WB Gold Road
    [261] = "法尔林地\n - 织工厄森迪尔",
    [262] = "破碎之径洞穴\n - 命运吞食者斯特里",
    [263] = "百夫长高地\n - 獠牙和利爪",
    [264] = "好运峭壁\n - 恶毒海瑟达兹",
    [265] = "弗朗蒂尔发源地\n - 追忆军团首领",
    [266] = "奥洛湖\n - 橡木爪",
-- WB Solstice
    [267] = "潮涤浅滩\n - 恶潮蟹",
    [268] = "突尼利亚遗迹\n - 高姆",
    [269] = "瓦坎神龛\n - 沃斯科罗娜守护者",
  }
  --
  L.ToolTip[215] = L.ToolTip[34]
  L.ToolTip[216] = L.ToolTip[35]
  L.ToolTip[217] = L.ToolTip[36]
  --
  L.RGLAMsg = {
    [1] = "区域：寻找队员...",
    [2] = "区域：寻找队员（缩短）",
    [3] = "区域：1分钟后开始",
    [4] = "组队：1分钟后开始",
    [5] = "组队：开始",
    [6] = "区域：BOSS被打倒了",
    [7] = "组队：您已完成了",
    [8] = "关于插件",
  }
  -- In Dungeons structure:
  -- Q - Quest name which indicates the dungeon
  -- N - Short name of the dungeon displayed by the addon
  L.Dungeons = {
  -- Virtual dungeon
    [1] = { -- None
      N = "无",
    },
    [2] = { -- Unknown
      N = "未知",
    },
  -- First location dungeons
    [3] = { -- AD, Auridon, Banished Cells I
      N = "放逐地牢1",
    },
    [4] = { -- EP, Stonefalls, Fungal Grotto I
      N = "真菌岩洞1",
    },
    [5] = { -- DC, Glenumbra, Spindleclutch I
      N = "蛛丝之握洞穴1",
    },
    [6] = { -- AD, Auridon, Banished Cells II
      N = "放逐地牢2",
    },
    [7] = { -- EP, Stonefalls, Fungal Grotto II
      N = "真菌岩洞2",
    },
    [8] = { -- DC, Glenumbra, Spindleclutch II
      N = "蛛丝之握洞穴2",
    },
  -- Second location dungeons
    [9] = { -- AD, Grahtwood, Elden Hollow I
      N = "艾尔登洞穴1",
    },
    [10] = { -- EP, Deshaan, Darkshade Caverns I
      N = "暗影洞穴1",
    },
    [11] = { -- DC, Stormhaven, Wayrest Sewers I
      N = "途歇城下水道1",
    },
    [12] = { -- AD, Grahtwood, Elden Hollow II
      N = "艾尔登洞穴2",
    },
    [13] = { -- EP, Deshaan, Darkshade Caverns II
      N = "暗影洞穴2",
    },
    [14] = { -- DC, Stormhaven, Wayrest Sewers II
      N = "途歇城下水道2",
    },
  -- 3 location dungeons
    [15] = { -- AD, Greenshade, City of Ash I
      N = "灰烬之城1",
    },
    [16] = { -- EP, Shadowfen, Arx Corinium
      N = "科林涅姆堡垒",
    },
    [17] = { -- DC, Rivenspire, Crypt of Hearts I
      N = "心灵地穴1",
    },
    [18] = { -- AD, Greenshade, City of Ash II
      N = "灰烬之城2",
    },
    [19] = { -- DC, Rivenspire, Crypt of Hearts II
      N = "心灵地穴2",
    },
  -- 4 location dungeons
    [20] = { -- AD, Malabal Tor, Tempest Island
      N = "风暴岛",
    },
    [21] = { -- EP, Eastmarch, Direfrost Keep
      N = "恐霜要塞",
    },
    [22] = { -- DC, Alik`r Desert, Volenfell
      N = "沃伦费尔",
    },
  -- 5 location dungeons
    [23] = { -- AD, Reaper`s March, Selene`s Web
      N = "夕月之网",
    },
    [24] = { -- EP, The Rift, Blessed Crucible
      N = "受佑熔炉",
    },
    [25] = { -- DC, Bangkorai, Blackheart Haven 
      N = "黑心港口",
    },
  -- 6 location dungeons
    [26] = { -- Any, Coldharbour, Vaults of Madness
      N = "疯狂密室",
    },
  -- 7 location dungeons
    [27] = { -- Any, Imperial City, IC Prison
      N = "帝都监狱",
    },
    [28] = { -- Any, Imperial City, WG Tower
      N = "白金塔",
    },
  -- Shadows of the Hist DLC dungeons
    [29] = { -- EP, Shadowfen, Ruins of Mazzatun
      N = "马扎顿遗迹",
    },
    [30] = { -- EP, Shadowfen, Cradle of Shadows
      N = "暗影摇篮",
    },
  -- Horns of the Reach DLC dungeons
    [31] = { -- Any, Craglorn, Bloodroot Forge
      N = "血根熔炉",
    },
    [32] = { -- Any, Craglorn, Falkreath Hold
      N = "佛克瑞斯领地",
    },
  -- Dragon Bones DLC dungeons
    [33] = { -- DC, Bangkorai, Fang Lair
      N = "獠牙巢穴",
    },
    [34] = { -- DC, Stormhaven, Scalecaller Peak
      N = "唤鳞者之巅",
    },
  -- Wolfhunter DLC dungeons
    [35] = { -- AD, Reaper`s March, Moon Hunter Keep
      N = "月狩要塞",
    },
    [36] = { -- AD, Greenshade, March of Sacrifices
      N = "献祭之境",
    },
  -- Wrathstone DLC dungeons
    [37] = { -- EP, Eastmarch, Frostvault
      N = "冰霜宝库",
    },
    [38] = { -- Any, Gold Coast, Depths of Malatar
      N = "马拉塔深渊",
    },
  -- Scalebreaker DLC dungeons
    [39] = { -- Any, Elsweyr, Moongrave Fane
      N = "月墓神庙",
    },
    [40] = { -- AD, Grahtwood, Lair of Maarselok
      N = "马塞洛克巢穴",
    },
  -- Harrowstorm DLC dungeons
    [41] = { -- Any, Wrothgar, Icereach
      N = "冰境",
    },
    [42] = { -- DC, Bangkorai, Unhallowed Grave
      N = "亵渎坟墓",
    },
  -- Stonethorn DLC dungeons
    [43] = { -- Any, Blackreach, Stone Garden
      N = "石之花园",
    },
    [44] = { -- Any, Western Skyrim, Castle Thorn
      N = "荆棘城堡",
    },
  -- Flames of Ambition DLC dungeons
    [45] = { -- Any, Gold Coast, Black Drake Villa
      N = "黑德雷克庄园",
    },
    [46] = { -- EP, Deshaan, The Cauldron
      N = "大釜",
    },
  -- Waking Flame DLC dungeons
    [47] = { -- DC, Glenumbra, Red Petal Bastion
      N = "红花堡",
    },
    [48] = { -- Any, Blackwood, The Dread Cellar
      N = "恐惧地牢",
    },
  -- Ascending Tide DLC dungeons
    [49] = { -- Any, Summerset, Coral Aerie
      N = "珊瑚鹫巢",
    },
    [50] = { -- DC, Rivenspire, Shipwright's Regret
      N = "船工之憾地牢",
    },
  -- Lost Depths DLC dungeons
    [51] = { -- Any, High Isle, Earthen Root Enclave
      N = "地根飞地",
    },
    [52] = { -- Any, High Isle, Graven Deep
      N = "铭深岛",
    },
  -- Scribes of Fate DLC dungeons
    [53] = { -- EP -> Stonefalls - Bal Sunnar
      N = "巴尔桑纳",
    },
    [54] = { -- EP -> The Rift - Scrivener's Hall
      N = "书吏大厅",
    },
  -- Scions of Ithelia DLC dungeons
    [55] = { -- Any -> The Reach - Oathsworn Pit
      N = "誓约者之渊",
    },
    [56] = { -- Any -> Wrothgar - Bedlam Veil
      N = "癫狂之幕",
    },
    [57] = { -- Any -> The Gold Road - Exiled Redoubt
      N = "流亡哨所",
    },
    [58] = { -- Any -> Hew's Bane - Lep Seclusa
      N = "秀跃隐修院",
    },
  }
  L.DailyBoss = {
  -- Wrothgar
    [1]  = {C = "击败重生者赞达杜诺兹",}, -- ZANDA
    [2]  = {C = "击败奈查莱夫特",}, -- NYZ
    [3]  = {C = "击败酋长王厄都",}, -- EDU
    [4]  = {C = "击败食人魔疯乌尔卡兹布",}, -- OGRE
    [5]  = {C = "制止偷猎者",}, -- POA
    [6]  = {C = "击败“憎恶”科林萨克",}, -- CORI
  -- Vvardenfell
    [7]  = {C = "击败女王的配偶",}, -- QUEEN
    [8]  = {C = "击败演讲者塞洛珊",}, -- SAL
    [9]  = {C = "击败“坚不可摧”尼尔索格",}, -- NIL
    [10] = {C = "击败乌鲁乌斯",}, -- WUY
    [11] = {C = "阻止杜比迪尔·阿拉尔的实验",}, -- DUB 
    [12] = {C = "击败“鸣鸟”金布鲁希尔",}, -- SIREN
  -- Gold Coast
    [13] = {C = "征服科瓦奇竞技场",}, -- ARENA
    [14] = {C = "清理挖掘现场",}, -- MINO
  -- Summerset
    [15] = {C = "击败礁石女王",}, -- QUEEN
    [16] = {C = "击败龙骨撕裂者",}, -- KEEL
    [17] = {C = "击败卡内瑞",}, -- CAAN
    [18] = {C = "击败科尔根",}, -- KORG 
    [19] = {C = "击败格拉维德",}, -- GRAV
    [20] = {C = "击败海利亚塔和纳格拉薇亚",}, -- GRYPH 
  -- Northern Elsweyr
    [21] = {C = "击败织骨者纳鲁兹",}, -- NARUZ
    [22] = {C = "击败盗墓者丹纳尔",}, -- THAN
    [23] = {C = "击败阿库哈戈和扎维",}, -- ZAVI
    [24] = {C = "击败剑术大师维斯拉杜",}, -- VHYS
    [25] = {C = "击败狡猾的基瓦",}, -- KEEVA
    [26] = {C = "击败扎尔希姆",}, -- ZAL
  -- Western Skyrim
    [27] = {C = "击败伊斯加",}, -- YSM
    [28] = {C = "击败狼人",}, -- WWOLF
    [29] = {C = "击败不败的斯克雷格",}, -- SKREG
    [30] = {C = "击败影母",}, -- SHADE
  -- Blackreach: Greymoor Caverns
    [31] = {C = "肃清吸血鬼进食场",}, -- VAMP
    [32] = {C = "击败拆卸者锻莫巨像",}, -- DISM
  -- Blackwood
    [33] = {C = "击败老死瘤",}, -- FROG
    [34] = {C = "击败战利品掠夺者谢姆霍克",}, -- XEEM
    [35] = {C = "击败苏尔山祭司",}, -- SUL
    [36] = {C = "击败先驱杰姆瓦斯",}, -- RUIN
    [37] = {C = "击败布朗姆-科斯卡",}, -- BULL
    [38] = {C = "击败战争酋长扎斯莫兹",}, -- ZATH
  -- High Isle
    [39] = {C = "击败蛇魔召唤者温莎",}, -- VIN
    [40] = {C = "击败黑魔骑士",}, -- SAB
    [41] = {C = "击败飞升教团的狂热分子",}, -- SHAD
    [42] = {C = "击败格莱米奥斯·野角",}, -- WILD
    [43] = {C = "击败长老团神师",}, -- ELD
    [44] = {C = "击败海螯主母",}, -- HAD
  -- Necrom
    [45] = {C = "击败行走的梦魇",}, -- WNM
    [46] = {C = "击败制链者科里恩",}, -- CORL
    [47] = {C = "击败弗洛库尔萨",}, -- VRO
    [48] = {C = "击败瓦金纳兹·德克",}, -- DEK
    [49] = {C = "击败首席编者",}, -- CATL
    [50] = {C = "击败符文大师希奥马拉",}, -- XIOM
  -- Gold Road
    [51] = {C = "击败织工厄森迪尔",}, -- URTH
    [52] = {C = "击败命运吞食者斯特里",}, -- STRI
    [53] = {C = "击败獠牙和利爪",}, -- FANG
    [54] = {C = "击败恶毒海瑟达兹",}, -- HESS
    [55] = {C = "击败追忆军团首领",}, -- RECO
    [56] = {C = "击败橡木爪",}, -- OAK
  -- Solstice
    [57] = {C = "击败恶潮蟹"}, -- TIDE
    [58] = {C = "击败高姆"}, -- GAULM
    [59] = {C = "击败沃斯科罗娜守护者"}, -- VOSK
  }
  L.DayOfWeek = {
    [0] = "周日",
    [1] = "周一",
    [2] = "周二",
    [3] = "周三",
    [4] = "周四",
    [5] = "周五",
    [6] = "周六",
  }
  L.Chat = {
    Today = "今日誓约: (<<1>> <<2>>): ",
    Anyday = "誓约: (<<1>> <<2>>): ",
    Loot  = " (可获取 <<1>>)",
    Addon = " (插件 <<1>> v<<X:2>>)",
    Dlmtr = "；",
  }
  L.RGLA = {
    CZ = "/z",
    CL = "/g1",
    CP = "/p",
    F1 = "<<1>>寻找<<2>>队员，可共享任务。",
    F2 = "输入 <<1>> 自动邀请并自动共享任务",
    F3 = "输入 <<1>> 自动邀请",
  --F4 = "",
    F5 = " ( <<1>> ).",
    F6 = "<<1>>寻找“<<2>>”队员，自动邀请，自动共享任务",
    F7 = "<<1>>寻找“<<2>>”队员，自动邀请",
    F8 = "<<1>> <<2>> 1分钟后开始",
    F9 = "/p 开始 <<1>>",
    F10 = "<<1>> <<2>> 已倒下",
    F11 = "/p 任务已自动共享。如未接到可能您还有其他Boss任务未完成，或者您今天已完成过该任务。",
    F12 = "ESOUI.COM插件 <<1>> v<<2>>：誓约、试炼和世界Boss日常追踪，自动邀请和自动分享任务。",
  }

  --Special Setting
  WPamA.i18n = BB.TableCopy(L, WPamA.i18n)

return true end