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
  
  --default.lua内容的汉化
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

  local function dailyResetFunction(till) 
    d(zo_strformat("<<1>> 小时 <<2>> 分钟后重置日常任务", till["hour"], till["minute"])) 
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
      ["place"]         = "<将货物放",
      ["sign"]          = "签订",
      ["masterPlace"]   = "我完成了",
      ["masterSign"]    = "<完工",
      ["masterStart"]   = "<接受契约",
      ["Rolis Hlaalu"]  = "罗利斯·哈拉鲁",
      ["Deliver"]       = "将货物送至",
      ["Acquire"]       = "获(.+)",
    }
  end
  
  local function masterWritSmithCraft(link, trait, style, quality, writName)
    local partialString = zo_strformat("<<t:5>>: 制作一件 <<t:1>> (CP150, <<t:2>>特性, <<t:3>> 风格，<<t:4>> 品质)", link, trait, style, quality, writName)
    return partialString
  end

--[[ 不需要写的内容，default中定义的，防止翻译缺失的元表操作
  WritCreater.missingTranslations = {}
  WritCreater.missingTranslationsOrder = {}
  local stringIndexTable = {}
  
  local findMissingTranslationsMetatable = {
    ["__newindex"] = function(t,k,v) 
      if not stringIndexTable[tostring(t)] then 
        stringIndexTable[tostring(t)] = {} 
      end
        stringIndexTable[tostring(t)][k] = v
        WritCreater.missingTranslations[k] = {k, v}
        WritCreater.missingTranslationsOrder[#WritCreater.missingTranslationsOrder+1] = {k, v}
      end,
    ["__index"] = function(t, k) 
      return stringIndexTable[tostring(t)][k] 
    end,
  }

  WritCreater.strings = {}
  setmetatable(WritCreater.strings, findMissingTranslationsMetatable)
]]

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
  WritCreater.strings["newMasterWritSmithToCraft"]	= masterWritSmithCraft
  WritCreater.strings["withdrawItem"]	= function(amount, link, remaining) 
    return "懒人制造 取出了 "..amount.." "..link.." (银行剩余"..remaining..")" 
  end
  WritCreater.strings['fullBag'] = "你没有足够的背包空间，请清理背包"
  WritCreater.strings['masterWritSave'] = "懒人制造 阻止了意外接受大师令状! 设置以禁用此选项"
  WritCreater.strings['missingLibraries'] = "懒人制造需要以下运行库。请下载、安装或打开这些运行库: "
  WritCreater.strings['resetWarningMessageText'] = "日常制造任务将在 <<1>> 小时 <<2>> 分钟 后刷新\n您可以在设置中自定义或关闭此警告"
  WritCreater.strings['resetWarningExampleText'] = "警告将是这样"
  WritCreater.strings['lowInventory'] = "\n你的背包剩余 <<1>> 格空间，可能装不下本次制作的物品。"
  
  WritCreater.strings['masterWritQueueCleared']		= "大师委托制作队列已清空"
  WritCreater.strings['multiplierCraftPrediction']	= "为 <<1[无/$d 个/$d 个]>>循环的委托制作 <<2>> 件物品"

  WritCreater.strings['alchemyNoCombo']				= "未找到足够便宜的炼金材料组合，请尝试获取其他种类的炼金材料"
  WritCreater.strings['alchemyMissing']				= function(missingTable)
    local missingOut = "你缺少 "
    for missingItemId, v in pairs(missing) do
      missingOut = missingOut..getItemLinkFromItemId(missingItemId).." "
    end
    missingOut = missingOut.." 作为最廉价的组合"
    return missingOut
  end
  WritCreater.strings['alchemyLowPassive']			= "你选择了制作整组物品，但未激活产量加成的被动技能"
  WritCreater.strings['alchemyCraftReqs']				= "制造将消耗 <<t:4>>x<<t:1>>, <<t:4>>x<<t:2>> 和 <<t:4>>x<<t:3>>"
  WritCreater.strings['alchemyMasterReqs']			= "<<t:1>>: 制作 <<t:2>> 将消耗 <<t:3>>, <<t:4>>, 和 <<t:5>>"
  WritCreater.strings['depositGold']					= "Writ Crafter: 存储 <<1>> 金币"
  WritCreater.strings['depositItemMissing']			= "Writ Crafter: 未找到 <<t:1>> 用于存储，物品可能被摧毁或移动"
  WritCreater.strings['depositItem']					= "Writ Crafter: 存储 <<t:1>>"
  WritCreater.strings['welcomeMessage']				= "感谢使用 Dolgubon's Lazy Writ Crafter! 请检查设置以自定义插件功能"
  WritCreater.strings['keybindStripBlurb']			= "制作委托物品"
  WritCreater.strings['pressToCraft']					= "\n按下 |t32:32:<<1>>|t 来制作"
  WritCreater.strings['goldenPursuitCraft']			= "为未完成的金典追觅制作套装物品？\n(可能无法制作，仅使用铁质材料制作 斧/弓/戒指/上衣)"
  WritCreater.strings['fullInventory']				= "你的背包已满"
  WritCreater.strings['provisioningUnknownRecipe']	= "你不知道 <<1>> 的配方"
  WritCreater.strings['provisioningCraft']			= "Writ Crafter 将制作 <<1>>"
  WritCreater.strings['transmuteLooted']				= "获得 <<1>> 个蜕变水晶 (当前拥有 <<2>> 个)"
  WritCreater.strings['transmuteLimitApproach']		= "你已接近蜕变水晶持有上限，若开启容器会超出上限，Writ Crafter将不会拾取蜕变水晶"
  WritCreater.strings['transmuteLimitHit']			= "拾取这些蜕变水晶将会超过持有上限，因此未拾取 <<1>> 个蜕变水晶"
  WritCreater.strings['lootingMarkJunk']				= "Writ Crafter: 标记 <<1>> 为废品"
  WritCreater.strings['lootingDestroyItem']			= "Writ Crafter: 摧毁 <<1>> (按照你的设置)"
  WritCreater.strings['lootingDeconItem']				= "Writ Crafter: 将 <<1>> 加入分解队列"
  WritCreater.strings['lootingDeposit']				= "Writ Crafter: <<1>> 件物品加入银行存储队列"
  WritCreater.strings['mailComplete']					= "Writ Crafter: 邮件拾取完毕"
  WritCreater.strings['mailNumLoot']					= "Writ Crafter: 发现 <<1>> 封雇员邮件"
  WritCreater.strings['masterRecipeUnknown']			= "<<t:1>>: 无法加入队列，因你不知道 <<t:2>> 的配方"
  WritCreater.strings['masterEnchantCraft']			= "<<t:1>>: 正在制作 <<t:2>>"
  WritCreater.strings['masterRecipeCraft']			= "<<t:1>>: 正在制作 <<t:3>>x<<t:2>>"
  WritCreater.strings['masterRecipeError']			= "<<1>>: 无法加入委托队列，你可能不知道所需配方"
  WritCreater.strings['masterQueueNotFound']			= "无法确定需制作的物品数量，请尝试接受该委托"
  WritCreater.strings['masterQueueBlurb']				= "制作委托"
  WritCreater.strings['masterQueueSummary']			= "Writ Crafter 将 <<1>> 个密封委托加入队列"
  WritCreater.strings['abandonQuestBanItem']			= "Writ Crafter 已丢弃 <<1>> ，因为它需要在设置中被禁用的 <<2>> 物品"
  WritCreater.strings['writBufferNotification']		= "Lazy Writ Crafter™ 的委托任务缓冲区正在阻止你接受此任务"
  WritCreater.strings['masterStopAcceptNoCraftSkill'] = "Lazy Writ Crafter™ 阻止你接受此委托，因你无法制作该物品"
  WritCreater.strings['stealingProtection'] 			= "Lazy Writ Crafter™ 阻止你在制作委托时进行盗窃！"
  WritCreater.strings['statsWitsDone']				= "已完成委托: 过去 <<2>> 天内完成 <<1>> 个"
  WritCreater.strings['deconstructSuccess']			= "Writ Crafter: 已分解 <<1>>"
  WritCreater.strings['potion']						= "药水"
  WritCreater.strings['poison']						= "毒药"
  
  --设置部分
  --[[ 同上，不需要写的元表操作部分
  WritCreater.optionStrings = {}
  setmetatable(WritCreater.optionStrings, findMissingTranslationsMetatable)
  ]]
  
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
  WritCreater.optionStrings["currencyReward"]	= "金币"
  WritCreater.optionStrings["currencyRewardTooltip"] = "如何处理金币奖励"

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
  WritCreater.optionStrings["status bar submenu"]	= "状态栏"
  WritCreater.optionStrings["status bar submenu tooltip"]	= "委托状态栏选项"
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
  WritCreater.optionStrings['craftHousePort']	= "传送至制造特化住宅"
  WritCreater.optionStrings['craftHousePortTooltip'] = "传送至一个公开可用的制造特化住宅"
  WritCreater.optionStrings['craftHousePortButton'] = "传送"
  WritCreater.optionStrings['reportBug'] = "汇报bug"
  WritCreater.optionStrings['reportBugTooltip']	= "发帖汇报插件bug，尤其是主机版本的。请确认该问题此前未被报告过。"
  WritCreater.optionStrings['openUrlButtonText'] = "打开链接"
  WritCreater.optionStrings['donate']	= "捐助"
  WritCreater.optionStrings['donateTooltip'] = "通过Paypal向Dolgubon捐助"
  WritCreater.optionStrings['writStats'] = "委托奖励统计"
  WritCreater.optionStrings['writStatsTooltip'] = "查看安装本插件后完成的委托奖励历史统计"
  WritCreater.optionStrings['writStatsButton'] = "打开窗口"
  
  WritCreater.optionStrings['queueWrits']	= "将所有密封委托加入队列"
  WritCreater.optionStrings['queueWritsTooltip'] = "将背包中所有密封委托加入制作队列"
  WritCreater.optionStrings['queueWritsButton']	= "加入队列"
  WritCreater.optionStrings['mainSettings']	= "主要设置"
  WritCreater.optionStrings['statusBarHorizontal']	= "水平位置"
  WritCreater.optionStrings['statusBarHorizontalTooltip']	= "状态条的水平位置"
  WritCreater.optionStrings['statusBarVertical'] = "垂直位置"
  WritCreater.optionStrings['statusBarVerticalTooltip'] = "状态条的垂直位置"
  WritCreater.optionStrings['keepItemWritFormat'] = "保留 <<1>>"
  WritCreater.optionStrings["npcStyleStoneReminder"] = "提示：你可以从任意制作类NPC商人处以每个15金币的价格购买基础种族的风格样式材料"
  
  ZO_CreateStringId("SI_BINDING_NAME_WRIT_CRAFTER_CRAFT_ITEMS", "制作物品")
  ZO_CreateStringId("SI_BINDING_NAME_WRIT_CRAFTER_OPEN", "显示委托制造状态窗口")
  ZO_CreateStringId("SI_CRAFT_SEALED_WRIT", "制作委托")
  
  --en.lua内容的内容
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