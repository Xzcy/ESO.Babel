local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["PithkaAchievementTracker"] = function() if not PITHKA then return false end
  --\data\achievements.lua
  local dict = {
    --HRC
    ["Hel Ra Citadel"] = "赫尔拉要塞",
    ["Celest. Warrior"] = "战士星",
    --AA
    ["Aetherian Archive"] = "艾瑟瑞恩档案塔",
    ["Celest. Mage"] = "法师星",
    --SO
    ["Sanctum Ophidia"] = "乌鞘蛇圣所",
    ["Celest. Serpent"] = "蝮蛇星",
    --MoL
    ["Maw of Lorkhaj"] = "洛克汗的巨口",
    ["Rakkhat"] = "拉卡特",
    ["Dro-m'Athra Destroyer"] = "堕落虎人毁灭者",
    --HoF
    ["Halls of Fabrication"] = "制造大厅",
    ["Assembly Gen."] = "组装将军",
    ["Tick-Tock Tormentor"] = "时间苔魔",
    ["The Dynamo"] = "精力充沛的",
    --AS
    ["Asylum Sanctorium"] = "庇护圣所",
    ["+Llothis"] = "+洛提斯",
    ["+Felms"] = "+菲尔姆斯",
    ["Saintly Savior"] = "圣洁的救星",
    ["Immortal Redeemer"] = "不朽的救世主",
    --CR
    ["Cloudrest"] = "云栖城",
    ["Gryphon Heart"] = "狮鹫之心",
    ["Welkynar Liberator"] = "威尔肯纳尔解放者",
    --SS
    ["Sunspire"] = "太阳尖顶",
    ["Yolna"] = "尤尔纳克林",
    ["Lokke"] = "洛克提兹",
    ["Nahvi"] = "纳温塔丝",
    ["Godslayer"] = "屠神者",
    ["Hand of Alkosh"] = "艾尔克许之手",
    --KA
    ["Kyne's Aegis"] = "凯恩之盾",
    ["Yandir"] = "杨迪尔",
    ["Vrol"] = "威若",
    ["Falgravn"] = "法尔格拉文",
    ["Kyne's Wrath"] = "凯恩盛怒",
    ["Dawnbringer"] = "黎明使者",
    --RG
    ["Rockgrove"] = "石林",
    ["Oaxiltso"] = "奥西索",
    ["Bahsei"] = "巴塞",
    ["Xalvakka"] = "夏尔瓦卡",
    ["Planesbreaker"] = "位面破坏者",
    ["Daedric Bane"] = "魔族克星",
    --DSR
    ["Dreadsail Reef"] = "恐帆礁石",
    ["Twins"] = "双子",
    ["Reef"] = "礁石守护",
    ["Taleria"] = "塔勒里亚",
    ["Soul of the Squall"] = "飑之魂",
    ["Swashbuckler Supreme"] = "至高欺凌者",
    --SE
    ["Sanity's Edge"] = "理智边缘",
    ["Yaseyla"] = "亚赛拉",
    ["Twelvane"] = "特尔乌万",
    ["Ansuul"] = "安苏尔",
    ["Dream Master"] = "梦境大师",
    ["Mindmender"] = "思维修理者",
    --LC
    ["Lucent Citadel"] = "卢晶堡垒",
    ["Count"] = "镜像",
    ["Orphic"] = "碎晶",
    ["Arcane Knot"] = "奥术结",
    ["Unstoppable"] = "无敌先锋",
    ["Arcane Stabilizer"] = "奥术稳定者",
    --OG
    ["Ossein Cage"] = "骨笼",
    ["Shapers"] = "血肉塑型",
    ["Jynorah"] = "吉诺拉",
    ["Kazpian"] = "卡兹皮安",
    ["Misery's Master"] = "厄运之主",
    ["Cista Breaker"] = "破匣者",
    
    --Infinity Archive
    ["Solo"] = "单人",
    ["Duo"] = "多人",
    
    --MSA
    ["Maelstrom Arena"] = "漩涡竞技场",
    --DSA
    ["Dragonstar Arena"] = "龙星竞技场",
    --BRP
    ["Blackrose Prison"] = "黑玫瑰监狱",
    ["Unchained"] = "未受约束",
    ["A Thrilling Trifecta"] = "刺激的三连杀",
    --VSA
    ["Vateshran Arena"] = "瓦特什兰洞穴",
    ["Spirit Slayer"] = "灵魂杀戮者",
    ["Hero of Undying Song"] = "不死之歌",
    
    ["Fang Lair"] = "獠牙巢穴",
    ["Leave No Bone Unbroken"] = "片骨不留",
    ["Minimal Animosity"] = "敌意最小化",
    
    ["Scalecaller Peak"] = "唤鳞者之巅",
    ["Mountain God"] = "山之神",
    ["Daedric Deflector"] = "魔族偏转者",
    
    ["Moon Hunter Keep"] = "月狩要塞",
    ["Pure Lunacy"] = "纯粹的疯狂",
    ["Strangling Cowardice"] = "扼杀怯懦",
    
    ["March of Sacrifices"] = "献祭之境",
    ["Apex Predator"] = "顶端捕食者",
    ["Mist Walker"] = "雾中行者",
    
    ["Frostvault"] = "冰霜宝库",
    ["Relentless Raider"] = "无情的掠夺者",
    ["Cold Potato"] = "冻成冰棍",
    
    ["Depths of Malatar"] = "马拉塔深渊",
    ["Depths Defier"] = "深渊蔑视者",
    ["Lackluster"] = "黯淡",
    
    ["Lair of Maarselok"] = "马塞洛克巢穴",
    ["Nature's Wrath"] = "自然之怒",
    ["Shagrath's Shield"] = "沙迦的护盾",
    
    ["Moongrave Fane"] = "月墓古庙",
    ["Defanged the Devourer"] = "拔除吞噬者之牙",
    ["Drop the Block"] = "丢下方块",
    
    ["Icereach"] = "冰境",
    ["Storm Foe"] = "风暴之敌",
    ["Prodigous Pacification"] = "奇妙的和解",
    
    ["Unhallowed Grave"] = "亵渎坟墓",
    ["Bonecaller's Bane"] = "唤骨者的克星",
    ["Relentless Dogcatcher"] = "无情的捕犬者",
    
    ["Stone Garden"] = "石之花园",
    ["True Genius"] = "真正的天才",
    ["Old Fashioned"] = "老派做法",
    
    ["Castle Thorn"] = "荆棘城堡",
    ["Bane of Thorns"] = "荆棘的祸根",
    ["Guardian Preserved"] = "守护者的存活",
    
    ["Black Drake Villa"] = "黑德雷克庄园",
    ["Ardent Bibliophile"] = "狂热藏书家",
    ["Salley-oop"] = "火蜥蜴接力",
    
    ["The Cauldron"] = "大釜",
    ["Subterranean Smasher"] = "地下粉碎者",
    ["Can't Catch Me"] = "抓不住我！",
    
    ["Red Petal Bastion"] = "红花堡",
    ["of the Silver Rose"] = "银玫瑰",
    ["Terror Billy"] = "狡诈之怖",
    
    ["Dread Cellar"] = "恐惧地牢",
    ["the Dreaded"] = "恐惧的",
    ["Settling Scores"] = "解决纠纷",
    
    ["Coral Aerie"] = "珊瑚鹫巢",
    ["Coral Caretaker"] = "珊瑚看管者",
    ["Tentacless Triumph"] = "鹫巢攀登者",
    
    ["Shipwright's Regret"] = "船工之憾",
    ["Privateer"] = "私掠者",
    ["Sans Spirit Support"] = "船工",
    
    ["Earthen Root Enclave"] = "地根飞地",
    ["Invaders' Bane"] = "入侵者的克星",
    ["Scourge of Archdruid"] = "大德鲁伊德维里克的天灾",
    
    ["Graven Deep"] = "铭深岛",
    ["Fist of Tava"] = "塔瓦之拳",
    ["Pressure in the Deep"] = "深层高压",
    
    ["Bal Sunnar"] = "巴尔桑纳",
    ["Temporal Tempest"] = "时空风暴",
    ["No Time to Waste"] = "争分夺秒",
    
    ["Scrivener's Hall"] = "书吏大厅",
    ["Curator's Champion"] = "馆长的勇士",
    ["Harsh Edit"] = "苛刻的编辑",
    ["Oathsworn Pit"] = "誓约者深渊",
    ["Oathsworn"] = "誓约者",
    ["Dogged Avenger"] = "顽固复仇者",
    
    ["Bedlam Veil"] = "癫狂之慕",
    ["Bedlam's Desciple"] = "癫狂信徒",
    ["Martial Gift"] = "物力馈赠",
    
    ["Exiled Redoubt"] = "流亡哨站",
    ["Revenge Breaker"] = "正义者",
    ["Exposed to the Elements"] = "元素暴露",
    
    ["Lep Seclusa"] = "秀跃隐修院",
    ["Sic Semper"] = "圣蛾信赖者",
    ["Fight the Darkness"] = "对抗黑暗",
    
    ["Fungal Grotto I"] = "真菌岩洞I",
    ["Fungal Grotto II"] = "真菌岩洞II",
    ["Banished Cells I"] = "放逐地牢I",
    ["Banished Cells II"] = "放逐地牢II",
    ["Elden Hollow I"] = "艾尔登洞穴I",
    ["Elden Hollow II"] = "艾尔登洞穴II",
    ["City of Ash I"] = "灰烬之城I",
    ["City of Ash II"] = "灰烬之城II",
    ["Crypt of Hearts I"] = "心灵地穴I",
    ["Crypt of Hearts II"] = "心灵地穴II",
    ["Darkshade Caverns I"] = "暗影洞穴I",
    ["Darkshade Caverns II"] = "暗影洞穴II",
    ["Spindleclutch I"] = "蛛丝之握洞穴I",
    ["Spindleclutch II"] = "蛛丝之握洞穴II",
    ["Wayrest Sewers I"] = "途歇城下水道I",
    ["Wayrest Sewers II"] = "途歇城下水道II",
    ["Arx Corinium"] = "科林涅姆堡垒",
    ["Blackheart Haven"] = "黑心港口",
    ["Blessed Crucible"] = "受佑熔炉",
    ["Direfrost Keep"] = "恐霜要塞",
    ["Selene's Web"] = "夕月之网",
    ["Tempest Island"] = "风暴岛",
    ["Vaults of Madness"] = "疯狂密室",
    ["Volenfell"] = "沃伦费尔",
    ["White Gold Tower"] = "白金塔",
    ["Imperial City Prison"] = "帝都监狱",
    ["Ruins of Mazzatun"] = "马扎顿遗迹",
    ["Cradle of Shadows"] = "暗影摇篮",
    ["Falkreath Hold"] = "血根熔炉",
    ["Bloodroot Forge"] = "佛克瑞斯领地",
  }
  
  local exDict = {
    ["Starter Dungeons"] = "地下城(无三合一)",
    ["4 Man Trifectas"] = "地下城",
    ["Trials"] = "试炼",
    ["All Scores and Tris"] = "分数/三合一",
    
    ["Dungeons with I/II"] = "地下城",
    
    ["TRIFECTA DUNGEONS"] = "地下城",
    ["CHALLENGER & TRIFECTA"] = "挑战者 ＆ 三合一",
    ["EXTRAS"] = "特殊",
    
    ["TRIALS"] = "试炼",
    ["BEST SCORE"] = "最高分",
    ["PARTIAL HM"] = "道中困难模式",
    ["HARDMODE"] = "尾王困难模式",
    ["TRIFECTA"] = "三合一",
    ["EXTRA"] = "额外",
    
    ["ARENAS"] = "竞技场",
    ["INFINITE ARCHIVE"] = "无尽档案塔",
    ["TRIFECTAS"] = "三合一",
    
    ["does not exist"] = "不存在",

    ["Click name to queue or teleport, click achievement to link or group, /pgf for group finder."] = "点击 副本名/成就，打开菜单; /pgf 打开队伍招募; VET 老兵 HM 困难 SR 速通 ND 不死",
    ["This encodes the clears on this page into a format that's easily readable by a bot to help tag clears."] = "此二维码包含了账户与成就信息",
    ["Used by discord bot ESOClearsBot to auto update clears.  Click for Discord link."] = "在Discord机器人 ESOClearsBot 中用于自动更新成就，点击获取该机器人链接",
    ["Toggle Watermark And QR For Export"] = "显示/关闭 防盗用水印与二维码",
  }
  
  --Special Setting
  if not PITHKA.data then return end
  if not PITHKA.data.achievements then return end
  
  local function Replace(table)
    for k, v in pairs(table) do
      if type(v) == "table" then
        table[k] = Replace(v)
      else
        table[k] = dict[v] or v
      end
    end
    return table
  end
  
  PITHKA.data.achievements = Replace(PITHKA.data.achievements)
  
  local Label = PITHKA.ui.label.basic
  local Icon = PITHKA.ui.icon.basic
  local Button = PITHKA.ui.button.basic
  local Other = PITHKA.ui.other.qrCode
  
  local function ReplaceEx (settings)
    if settings.text then settings.text = exDict[settings.text] or settings.text end
    if settings.tooltipText then settings.tooltipText = exDict[settings.tooltipText] or settings.tooltipText end
    return settings
  end
  
  PITHKA.ui.label.basic = function(settings)
    settings = ReplaceEx(settings)
    return Label(settings)
  end
  
  PITHKA.ui.icon.basic = function(settings)
    settings = ReplaceEx(settings)
    return Icon(settings)
  end
  
  PITHKA.ui.button.basic = function(settings)
    settings = ReplaceEx(settings)
    return Button(settings)
  end
  
  PITHKA.ui.other.qrCode = function(settings)
    settings = ReplaceEx(settings)
    return Other(settings)
  end
  
  BB.SetMenuItemPatch("Queue Vet", "排本 (老兵)")
  BB.SetMenuItemPatch("Queue Normal", "排本 (普通)")
  BB.SetMenuItemPatch("Port to Vet", "传本 (老兵)")
  BB.SetMenuItemPatch("Port to Normal", "传本 (普通)")
  BB.SetMenuItemPatch("Link in Chat", "链接到聊天室")
  BB.SetMenuItemPatch("Open Journal", "成就跳转")
  BB.SetMenuItemPatch("Create Group Finder", "创建队伍招募")
  
  SecurePostHook(PITHKA, "Initialize",
    function()
      s1.title = "地下城(无三合一)"
      s2.title = "地下城"
      s3.title = "试炼"
      s4.title = "分数/三合一"
    end
  )
  
return true end