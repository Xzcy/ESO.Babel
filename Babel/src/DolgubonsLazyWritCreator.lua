local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["DolgubonsLazyWritCreator"] = function() if not WritCreater then return false end
  --default.lua

  local function proper(str)
    if type(str)== "string" then
      return zo_strformat("<<C:1>>",str)
    else
      return str
    end
  end
  
  WritCreater.hirelingMailSubjects["铁匠原材料"] = true
  WritCreater.hirelingMailSubjects["制衣匠材料"] = true
  WritCreater.hirelingMailSubjects["木匠原材料"] = true
  WritCreater.hirelingMailSubjects["附魔师原材料"] = true
  WritCreater.hirelingMailSubjects["烹饪师原材料"] = true

  local function runeMissingFunction(ta, essence, potency)
    local missing = {}
    if not ta["bag"] then
      missing[#missing + 1] = "|r塔|cf60000"
    end
    if not essence["bag"] then
      missing[#missing + 1] =  "|cffcc66"..essence["slot"].."|cf60000"
    end
    if not potency["bag"] then
      missing[#missing + 1] = "|c0066ff"..potency["slot"].."|r"
    end
    local text = ""
    for i = 1, #missing do
      if i == 1 then
        text = "|cff3333附魔无法制造，你缺少 "..proper(missing[i])
      else
        text = text.." 和 "..proper(missing[i])
      end
    end
    return text
  end

  local function dailyResetFunction(till, stamp)
    if till["hour"]==0 then
      if till["minute"]==1 then
        return "还有 1 分钟后日常重置!"
      elseif till["minute"]==0 then
        if stamp==1 then
          return "日常重置还剩 "..stamp.." 秒!"
        else
          return "真的... 别问了。你真有那么着急么??? 它会在一秒内重置! *哼~哼*"
        end
      else
        return till["minute"].." 分钟后日常将重置!"
      end		
    else
      return till["hour"].." 小时 "..till["minute"].." 分钟 后日常重置"
    end 
  end

  function WritCreater.langWritNames()
    return {
      ["G"] = "委托",
      [CRAFTING_TYPE_ENCHANTING]      = "附魔",
      [CRAFTING_TYPE_BLACKSMITHING]   = "铁匠",
      [CRAFTING_TYPE_CLOTHIER]        = "制衣",
      [CRAFTING_TYPE_PROVISIONING]    = "烹饪",
      [CRAFTING_TYPE_WOODWORKING]     = "木匠",
      [CRAFTING_TYPE_ALCHEMY]         = "炼金",
      [CRAFTING_TYPE_JEWELRYCRAFTING] = "珠宝",
    }
  end
  
  function WritCreater.writCompleteStrings()
    return {
      ["Deliver"]       = "将货物送至",
      ["Acquire"]       = "获(.+)",
      ["place"]         = "<将货物放",
      ["sign"]          = "签订",
      
      ["masterStart"]   = "<接受契约",
      ["Rolis Hlaalu"]  = "罗利斯·哈拉鲁",
      ["masterPlace"]   = "我完成了",
      ["masterSign"]    = "<完工",
    }
  end
  
  local function masterWritEnchantToCraft(link, trait, style, quality, writName)
    local partialString = zo_strformat("<<t:5>>: 制作一件 <<t:1>> (CP150, <<t:2>>特性, <<t:3>> 风格，<<t:4>> 品质)", link, trait, style, quality, writName)
    return partialString
  end
  
  WritCreater.strings["runeReq"] = function (essence, potency, taStack, essenceStack, potencyStack)
    return zo_strformat("|c2dff00制造需要 1/<<3>> 个 |r塔|c2dff00, 1/<<4>> 个 |cffcc66<<1>>|c2dff00 和 1/<<5>> 个|c0066ff<<2>>|r", essence, potency, taStack, essenceStack, potencyStack)
  end
  WritCreater.strings["runeMissing"] = runeMissingFunction 
  WritCreater.strings["notEnoughSkill"]	= "你没有足够的制造技能来制造所需的装备"
  WritCreater.strings["smithingMissing"] = "\n|cf60000你没有足够的材料|r"
  WritCreater.strings["craftAnyway"] = "先制造再说"
  WritCreater.strings["smithingEnough"] = "\n|c2dff00你的材料充足|r"
  WritCreater.strings["craft"] = "|c00ff00制造|r"
  WritCreater.strings["crafting"] = "|c00ff00制造中...|r"
  WritCreater.strings["craftIncomplete"] = "|cf60000制造无法完成。\n你需要更多材料。|r"
  WritCreater.strings["moreStyle"] = "|cf60000您没有任何可用的风格材料。\n检查你的物品栏, 成就, 和设置。|r"
  WritCreater.strings["moreStyleSettings"] = "|cf60000您没有任何可用的风格材料。\n您可能需要在设置菜单中允许更多|r"
  WritCreater.strings["moreStyleKnowledge"]	= "|cf60000您没有任何可用的风格材料。\n您可能需要学习更多的风格|r"
  WritCreater.strings["dailyreset"] = dailyResetFunction
  WritCreater.strings["complete"] = "|c00FF00委托完成|r"
  WritCreater.strings["craftingstopped"] = "制造终止。请检查以确保插件正在制作正确的物品"
  WritCreater.strings["smithingReqM"] = function (amount, type, more)
    return zo_strformat("制造将使用 <<1>> <<2>> (|cf60000你需要 <<3>>|r)", amount, type, more)
  end
  WritCreater.strings["smithingReq"] = function (amount, type, current) 
    return zo_strformat( "制造将使用 <<1>> <<2>> (|c2dff00<<3>> 可用|r)"  ,amount, type, zo_strformat(SI_NUMBER_FORMAT, ZO_AbbreviateNumber(current, NUMBER_ABBREVIATION_PRECISION_TENTHS, USE_LOWERCASE_NUMBER_SUFFIXES))) 
  end
  WritCreater.strings["lootReceived"] = "<<3>> <<1>> 被收到 (你有 <<2>>)"
  WritCreater.strings["lootReceivedM"] = "<<1>> 被收到 "
  WritCreater.strings["countSurveys"]	= "你有 <<1>> 调查报告"
  WritCreater.strings["countVouchers"] = "你有 <<1>> 未获得的大师令券"
  WritCreater.strings["includesStorage"] = function(type) 
    local a= {"调查报告", "大师委托"}
    a = a[type]
    return zo_strformat("包括 <<1>> 房屋储存", a)
  end
  WritCreater.strings["surveys"] = "制造调查报告"
  WritCreater.strings["sealedWrits"] = "密封的委托"
  WritCreater.strings["masterWritEnchantToCraft"] = function(lvl, type, quality, writCraft, writName, generalName)
    return zo_strformat("<<t:4>> <<t:5>> <<t:6>>: 正在制造一个 <<t:2>> 等级 <<t:3>> 类型的 <<t:1>> 附魔", lvl, type, quality, writCraft, writName, generalName)
  end
  WritCreater.strings["newMasterWritSmithToCraft"]	= masterWritEnchantToCraft
  WritCreater.strings["withdrawItem"]	= function(amount, link, remaining) 
    return "懒人制造 取出了 "..amount.." "..link.." (银行剩余"..remaining..")" 
  end
  WritCreater.strings['fullBag'] = "你没有足够的背包空间，请清理背包"
  WritCreater.strings['masterWritSave'] = "懒人制造 阻止了意外接受大师令状! 设置以禁用此选项"
  WritCreater.strings['missingLibraries'] = "懒人制造需要以下运行库。请下载、安装或打开这些运行库: "
  WritCreater.strings['resetWarningMessageText'] = "日常制造任务将在 <<1>> 小时 <<2>> 分钟 后刷新\n您可以在设置中自定义或关闭此警告"
  WritCreater.strings['resetWarningExampleText'] = "警告将是这样"
  WritCreater.strings['lowInventory'] = "\n你的背包剩余 <<1>> 格空间，可能装不下本次制作的物品。"
  
  WritCreater.optionStrings.nowEditing = "你正在更改 %s 设置"
  WritCreater.optionStrings.accountWide = "账户全局"
  WritCreater.optionStrings.characterSpecific = "角色独立"
  WritCreater.optionStrings.useCharacterSettings = "使用角色设置"
  WritCreater.optionStrings.useCharacterSettingsTooltip = "仅对该角色使用独立于其他角色的设置"
  WritCreater.optionStrings["style tooltip"] = function (styleName, styleStone) 
    return zo_strformat("允许 <<1>> 风格, 将使用 <<2>> 风格材料用于制造", styleName, styleStone) 
  end 
  WritCreater.optionStrings["show craft window"] = "显示制造窗口"
  WritCreater.optionStrings["show craft window tooltip"] = "当制造工作台打开时显示制造窗口"
  WritCreater.optionStrings["autocraft"] = "自动制造"
  WritCreater.optionStrings["autocraft tooltip"] = "启用后，进入工作台后将立即开始制造"
  WritCreater.optionStrings["blackmithing"] = "锻造"
  WritCreater.optionStrings["blacksmithing tooltip"] = "为锻造打开此插件"
  WritCreater.optionStrings["clothing"]	= "制衣"
  WritCreater.optionStrings["clothing tooltip"]	= "为制衣打开此插件"
  WritCreater.optionStrings["enchanting"] = "附魔"
  WritCreater.optionStrings["enchanting tooltip"] = "为附魔打开此插件"
  WritCreater.optionStrings["alchemy"] = "炼金"
  WritCreater.optionStrings["alchemy tooltip"] = "为炼金打开此插件。推荐预先批量合成任务物品"
  WritCreater.optionStrings["alchemyChoices"] = {"关闭", "所有功能", "跳过自动合成"}
  WritCreater.optionStrings["provisioning"] = "烹饪"
  WritCreater.optionStrings["provisioning tooltip"] = "为烹饪打开此插件。推荐预先批量合成任务物品"
  WritCreater.optionStrings["woodworking"] = "木工"
  WritCreater.optionStrings["woodworking tooltip"] = "为木工打开此插件"
  WritCreater.optionStrings["jewelry crafting"] = "珠宝制造"
  WritCreater.optionStrings["jewelry crafting tooltip"] = "为珠宝制造打开此插件"
  WritCreater.optionStrings["writ grabbing"] = "取出委托所需物品"
  WritCreater.optionStrings["writ grabbing tooltip"] = "从银行获取制造所需的物品 (如奈恩根, 塔等)"
  WritCreater.optionStrings["style stone menu"] = "风格材料"
  WritCreater.optionStrings["style stone menu tooltip"]	= "选择插件可使用的风格材料"
  WritCreater.optionStrings["send data"] = "发送委托奖励信息"
  WritCreater.optionStrings["send data tooltip"] = "在聊天栏输出从委托奖励中获取的物品"
  WritCreater.optionStrings["exit when done"] = "退出制造窗口"
  WritCreater.optionStrings["exit when done tooltip"] = "完成所有的制造后退出制造窗口"
  WritCreater.optionStrings["automatic complete"] = "自动接交任务"
  WritCreater.optionStrings["automatic complete tooltip"]	= "在公告板和货物箱处自动接受和完成任务"
  WritCreater.optionStrings["new container"] = "保持新物品状态"
  WritCreater.optionStrings["new container tooltip"] = "将委托奖励容器保持为新物品的状态"
  WritCreater.optionStrings["master"] = "大师委托"
  WritCreater.optionStrings["master tooltip"]	= "启用后，将制造接取的大师委托任务"
  WritCreater.optionStrings["right click to craft"] = "右键制造"
  WritCreater.optionStrings["right click to craft tooltip"] = "启用后，右键大师委托物品将令插件制作相应物品。需要开启 LibCustomMenu 插件"
  WritCreater.optionStrings["crafting submenu"]	= "日常制造委托"
  WritCreater.optionStrings["crafting submenu tooltip"]	= "关闭插件对特定物品种类的制造"
  WritCreater.optionStrings["timesavers submenu"] = "节约时间助手"
  WritCreater.optionStrings["timesavers submenu tooltip"]	= "各种节省时间的小功能"
  WritCreater.optionStrings["loot container"]	= "收到容器时打开"
  WritCreater.optionStrings["loot container tooltip"]	= "当收到委托奖励容器时打开他们"
  WritCreater.optionStrings["master writ saver"] = "保存大师委托"
  WritCreater.optionStrings["master writ saver tooltip"] = "阻止接取大师委托任务"
  WritCreater.optionStrings["loot output"] = "高价值奖励提示"
  WritCreater.optionStrings["loot output tooltip"] = "当从委托奖励中收到高价值物品时，输出消息"
  WritCreater.optionStrings["autoloot behaviour"] = "自动开箱行为"
  WritCreater.optionStrings["autoloot behaviour tooltip"] = "选择插件何时开启容器"
  WritCreater.optionStrings["autoloot behaviour choices"]	= {
    "随当前游戏设置", 
    "自动开箱", 
    "不开箱"
  }
  WritCreater.optionStrings["hide when done"] = "完成时隐藏"
  WritCreater.optionStrings["hide when done tooltip"] = "所有物品都已制作完成时，隐藏插件窗口"
  WritCreater.optionStrings['reticleColour'] = "改变准星颜色"
  WritCreater.optionStrings['reticleColourTooltip']	= "如果你在工作台有未完成或已完成的委托，改变准星颜色"
  WritCreater.optionStrings['autoCloseBank'] = "自动银行对话"
  WritCreater.optionStrings['autoCloseBankTooltip']	= "如有要取出的物品，在银行对话框自动进入和退出"
  WritCreater.optionStrings['despawnBanker'] = "解散银行助手 (取出)"
  WritCreater.optionStrings['despawnBankerTooltip'] = "取出物品后自动解散银行助手"
  WritCreater.optionStrings['despawnBankerDeposit']	= "解散银行助手（存储）"
  WritCreater.optionStrings['despawnBankerDepositTooltip'] = "存储物品后自动解散银行助手"
  WritCreater.optionStrings['dailyResetWarnTime']	= "距任务重置剩余分钟"
  WritCreater.optionStrings['dailyResetWarnTimeTooltip'] = "在日常任务重置前多少分钟显示警告"
  WritCreater.optionStrings['dailyResetWarnType']	= "日常重置提醒"
  WritCreater.optionStrings['dailyResetWarnTypeTooltip'] = "当每日重置即将发生时，应该显示哪种类型的警告"
  WritCreater.optionStrings['dailyResetWarnTypeChoices'] = { 
    "无",
    "公告",
    "警告",
    "聊天栏",
    "弹窗",
    "所有类型"
  }
  WritCreater.optionStrings['stealingProtection']	= "偷窃保护"
  WritCreater.optionStrings['stealingProtectionTooltip'] = "当持有制作委托时，阻止偷窃行为"
  WritCreater.optionStrings['noDELETEConfirmJewelry']	= "简易珠宝大师委托销毁"
  WritCreater.optionStrings['noDELETEConfirmJewelryTooltip'] = "在二次确认弹窗中，自动添加'DELETE'文本"
  WritCreater.optionStrings['suppressQuestAnnouncements'] = "隐藏制作委托任务的告示信息"
  WritCreater.optionStrings['suppressQuestAnnouncementsTooltip'] = "隐藏接取、进展、完成制作委托任务时，在屏幕中央显示的提示信息"
  WritCreater.optionStrings["questBuffer"] = "委托任务缓冲"
  WritCreater.optionStrings["questBufferTooltip"]	= "预留任务空位，确保可以接取制造委托任务"
  WritCreater.optionStrings["craftMultiplier"] = "批量制造(装备和雕文)"
  WritCreater.optionStrings["craftMultiplierTooltip"] = "制作多份物品以便下次相同委托提交"
  WritCreater.optionStrings["craftMultiplierConsumables"] = "批量制造(炼金和烹饪)"
  WritCreater.optionStrings["craftMultiplierConsumablesTooltip"] = "制作1组需要点满增加产物的制造技能"
  WritCreater.optionStrings["craftMultiplierConsumablesChoices"] = {
    "制作1次",
    "制作1组"
  }
  WritCreater.optionStrings['hireling behaviour'] = "雇员邮件"
  WritCreater.optionStrings['hireling behaviour tooltip']	= "如何处理雇员邮件"
  WritCreater.optionStrings['hireling behaviour choices']	= { 
    "无",
    "获取并删除", 
    "仅获取"
  }
  WritCreater.optionStrings["allReward"] = "所有类型"
  WritCreater.optionStrings["allRewardTooltip"] = "对所有制造类型进行的操作"
  WritCreater.optionStrings['sameForALlCrafts'] = "相同设置"
  WritCreater.optionStrings['sameForALlCraftsTooltip'] = "启用后，所有制造类型按相同设置处理"
  WritCreater.optionStrings['1Reward'] = "锻造"
  WritCreater.optionStrings['2Reward'] = "对所有使用"
  WritCreater.optionStrings['3Reward'] = "对所有使用"
  WritCreater.optionStrings['4Reward'] = "对所有使用"
  WritCreater.optionStrings['5Reward'] = "对所有使用"
  WritCreater.optionStrings['6Reward'] = "对所有使用"
  WritCreater.optionStrings['7Reward'] = "对所有使用"

  WritCreater.optionStrings["matsReward"]	= "材料奖励"
  WritCreater.optionStrings["matsRewardTooltip"] = "如何处理制造材料奖励"
  WritCreater.optionStrings["surveyReward"]	= "调查报告奖励"
  WritCreater.optionStrings["surveyRewardTooltip"] = "如何处理调查报告奖励"
  WritCreater.optionStrings["masterReward"]	= "大师委托奖励"
  WritCreater.optionStrings["masterRewardTooltip"] = "如何处理大师委托奖励"
  WritCreater.optionStrings["repairReward"]	= "修理箱奖励"
  WritCreater.optionStrings["repairRewardTooltip"] = "如何处理修理箱奖励"
  WritCreater.optionStrings["ornateReward"] = "华丽特质装备奖励"
  WritCreater.optionStrings["ornateRewardTooltip"] = "如何处理华丽特质装备奖励"
  WritCreater.optionStrings["intricateReward"] = "精巧特质装备奖励"
  WritCreater.optionStrings["intricateRewardTooltip"] = "如何处理精巧特质装备奖励"
  WritCreater.optionStrings["soulGemReward"] = "空灵魂石"
  WritCreater.optionStrings["soulGemTooltip"]	= "如何处理空灵魂石"
  WritCreater.optionStrings["glyphReward"] = "雕文"
  WritCreater.optionStrings["glyphRewardTooltip"] = "如何处理雕文"
  WritCreater.optionStrings["recipeReward"]	= "配方"
  WritCreater.optionStrings["recipeRewardTooltip"] = "如何处理配方"
  WritCreater.optionStrings["fragmentReward"]	= "塞伊克珍馐配方碎片"
  WritCreater.optionStrings["fragmentRewardTooltip"] = "如何处理塞伊克珍馐配方碎片"

  WritCreater.optionStrings["writRewards submenu"] = "委托奖励处理"
  WritCreater.optionStrings["writRewards submenu tooltip"] = "如何处理完成委托获得的奖励"
  WritCreater.optionStrings["jubilee"] = "打开 周年纪念/泽尼萨尔 容器"
  WritCreater.optionStrings["jubilee tooltip"] = "自动打开周年纪念和泽尼萨尔活动的容器"
  WritCreater.optionStrings["skin"] = "UI皮肤"
  WritCreater.optionStrings["skinTooltip"] = "懒人制造UI界面的皮肤"
  WritCreater.optionStrings["skinOptions"] = {"默认", "奶酪", "山羊"}
  WritCreater.optionStrings["goatSkin"]	= "山羊"
  WritCreater.optionStrings["cheeseSkin"]	= "奶酪"
  WritCreater.optionStrings["defaultSkin"] = "默认"
  WritCreater.optionStrings["rewardChoices"] = {
    "无",
    "储存",
    "标记废品", 
    "摧毁", 
    "分解"
  }
  WritCreater.optionStrings["scan for unopened"] = "登录时打开容器"
  WritCreater.optionStrings["scan for unopened tooltip"] = "登录时，检测包中的容器并尝试打开"

  WritCreater.optionStrings["smart style slot save"] = "优先使用量少的样式材料"
  WritCreater.optionStrings["smart style slot save tooltip"] = "如果不是 ESO会员，将尝试优先使用数量较少的样式材料，尽量减少占用背包空间"
  WritCreater.optionStrings["abandon quest for item"]	= "需要 <<1>> 的委托"
  WritCreater.optionStrings["abandon quest for item tooltip"]	= "如果关闭，将自动放弃需要直接提交 <<1>> 的委托任务。而需要以 <<1>> 制作所需物品的委托任务不会被放弃。"
  WritCreater.optionStrings["status bar submenu"]	= "状态栏选项"
  WritCreater.optionStrings["status bar submenu tooltip"]	= "状态栏选项"
  WritCreater.optionStrings['showStatusBar'] = "显示制造委托状态栏"
  WritCreater.optionStrings['showStatusBarTooltip']	= "显示或隐藏该状态栏"
  WritCreater.optionStrings['statusBarIcons']	= "使用图标"
  WritCreater.optionStrings['statusBarIconsTooltip'] = "显示对应的图标而不是文字缩写"
  WritCreater.optionStrings['transparentStatusBar']	= "状态栏透明度"
  WritCreater.optionStrings['transparentStatusBarTooltip'] = "将状态栏背景设置为透明"
  WritCreater.optionStrings['statusBarInventory']	= "背包跟踪器"
  WritCreater.optionStrings['statusBarInventoryTooltip'] = "在状态栏中显示背包总容量及已使用量"
  WritCreater.optionStrings['incompleteColour']	= "未完成委托颜色"
  WritCreater.optionStrings['completeColour']	= "已完成委托颜色"
  WritCreater.optionStrings['smartMultiplier'] = "智能批量日常委托"
  WritCreater.optionStrings['smartMultiplierTooltip'] = "启用时，将尝试制造3天内的日常委托，并会将已有的物品纳入计算。关闭时，仅制造当天日常委托的物品。"
  
  ZO_CreateStringId("SI_BINDING_NAME_WRIT_CRAFTER_CRAFT_ITEMS", "制作物品")
  ZO_CreateStringId("SI_BINDING_NAME_WRIT_CRAFTER_OPEN", "显示委托制造状态窗口")
  ZO_CreateStringId("SI_CRAFT_SEALED_WRIT", "制作委托")
  
  --en.lua
  function WritCreater.langCraftKernels()
    return {
      [CRAFTING_TYPE_ENCHANTING]      = "附魔",
      [CRAFTING_TYPE_BLACKSMITHING]   = "锻造",
      [CRAFTING_TYPE_CLOTHIER]        = "制衣",
      [CRAFTING_TYPE_PROVISIONING]    = "烹饪",
      [CRAFTING_TYPE_WOODWORKING]     = "木(.+)",
      [CRAFTING_TYPE_ALCHEMY]         = "炼金",
      [CRAFTING_TYPE_JEWELRYCRAFTING] = "珠宝",
    }
  end

  function WritCreater.langMasterWritNames()
    return {
      ["M"] 							          = "大师级的",
      ["M1"]							          = "工艺精湛的",
      [CRAFTING_TYPE_ALCHEMY]			  = "调和物",
      [CRAFTING_TYPE_ENCHANTING]		= "雕文",
      [CRAFTING_TYPE_PROVISIONING]	= "盛宴",
      ["plate"]						          = "护甲",
      ["tailoring"]					        = "剪裁",
      ["leatherwear"]					      = "皮衣",
      ["weapon"]						        = "武器",
      ["shield"]						        = "盾牌",
    }
  end

  function WritCreater.masterWritQuality()
    return {
      {"史诗", 4},
      {"传说", 5}
    }
  end

  function WritCreater.questExceptions(condition)
    condition = string.gsub(condition, " "," ")
    return condition
  end

  function WritCreater.enchantExceptions(condition)
    condition = string.gsub(condition, " "," ")
    return condition
  end

  function WritCreater.langTutorial(i) 
    local t = {
      [5]="还有一些事情你应该知道。\n首先, /dailyreset 此命令会告诉你\n距离下一次服务器日常任务重置还有多久。",
      [4]="最后, 您也可以选择\n为每个专业停用或激活此插件。\n一般来说，所有可用制造都是默认开启的\n如果您想关闭其中的某些，请查看设置。",
      [3]="接下来，您需要选择当您使用工作台的时候\n是否希望看到此窗口。\n此窗口会告诉你完成令状需要多少材料, 以及你现在有多少。",
      [2]="要选择的第一个设置是\n您是否想使用自动制造。\n如果开启, 当您打开工作台时, 插件将自动开始制造。",
      [1]="欢迎使用懒人令状!\n首先，您应该选择几个设置。\n 您可以随时从设置菜单更改设置。",
    }
    return t[i]
  end

  function WritCreater.langTutorialButton(i,onOrOff)
    local tOn = {
      [1]="使用默认",
      [2]="开",
      [3]="显示",
      [4]="继续",
      [5]="完成",
    }
    local tOff= {
      [1]="继续",
      [2]="关",
      [3]="不显示",
    }
    if onOrOff then
      return tOn[i]
    else
      return tOff[i]
    end
  end

  function WritCreater.langStationNames()
    return {
      ["锻造台"]                               = 1, 
      ["制衣台"]                               = 2, 
      ["附魔台"]                               = 3,
      ["炼金台"]                               = 4, 
      ["烹饪火焰"]                             = 5, 
      ["木工台"]                               = 6, 
      ["珠宝制作台"]                           = 7,
    }
  end

  WritCreater.lang = "zh"
  WritCreater.langIsMasterWritSupported = true

return true end