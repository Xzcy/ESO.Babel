local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

do if not BB.SV.BanList["CraftStoreFixedAndImproved"] then
  local CS = CraftStoreFixedAndImprovedLongClassName
  local lmb,rmb,mmb = '|t16:16:CraftStoreFixedAndImproved/DDS/lmb.dds|t','|t16:16:CraftStoreFixedAndImproved/DDS/rmb.dds|t','|t16:16:CraftStoreFixedAndImproved/DDS/mmb.dds|t'
  local i,o = GetString('SI_ITEMTRAITTYPE',ITEM_TRAIT_TYPE_ARMOR_INTRICATE),GetString('SI_ITEMTRAITTYPE',ITEM_TRAIT_TYPE_ARMOR_ORNATE)
  local L = {
    options = {
      showbutton = '显示CraftStore按钮',
      lockbutton = '锁定CraftStore按钮',
      lockelements = '锁定CraftStore元素',
      closeonmove = '移动时关闭CraftStore窗口',
      useartisan = '使用CraftStore工匠 (未准备好)',
      useflask = '使用CraftStore烧瓶 (未准备好)',
      usequest = '使用CraftStore任务',
      usequestTooltip = '打开制作台时显示当前活动的制作令状任务',
      usecook = '使用CraftStore烹饪',
      usecookTooltip = '用 Craftstore UI 替换烹饪站的默认用户界面',
      userune = '使用CraftStore附魔',
      useruneTooltip = '用 Craftstore UI 替换附魔表的默认用户界面',
      displaystyles = '在详细框中显示物品风格',
      markitems = '标记需要的物品',
      showsymbols = '显示 '..i..'/'..o..'-标志',
      marksetitems = '套装物品可以被标记为可研究',
      showstock = '在提示框中显示物品库存',
      stacksplit = '预选择物品堆叠分割',
      markduplicates = '允许标记复制品为可研究',
      displayrunelevel = '在提示框显示附魔符文等级',
      displaymm = '在提示框中显示Master Merchant插件',
      displayttc = '在提示框中显示TTC插件',
      timeralarm = '显示计时器提醒',
      mountalarm = '显示骑术提醒',
      researchalarm = '显示研究提醒',
      playrunevoice = '播放附魔符文语音',
      advancedcolorgrid = '研究列表使用高级颜色',
      lockprotection = '开启锁定保护',
      inspirationgain = '显示获得的灵感',
      sortsets = '排序套装',
      sortstyles = '排序风格',
      bulkcraftlimit = '批量制造限制',
      overviewstyle = '角色概览风格',
      userunecreation = '使用CraftStore符文制造',
      userunecreationTooltip = '用 Craftstore UI 替换符文制作的默认用户界面',
      useruneextraction = '使用CraftStore符文分解',
      useruneextractionTooltip = '将符文提取的默认用户界面替换为 Craftstore UI',
      userunerecipe = '使用CraftStore符文家具',
      userunerecipeTooltip = '使用Craftstore UI替换附魔台上家具蓝图制作的默认用户界面。',
      displayunknown = '在提示框中显示未知',
      displayknown = '在提示框中显示已知',
      displaycount = '在工具提示中显示已知/未知计数',
    },
    suboptions = {
      sortstyles = {
        [1] = "字母顺序",
        [2] = "风格页 #",
        [3] = "内置顺序 #",
      },
      sortsets = {
        [1] = "字母顺序",
        [2] = "特性",
      },
      alarms = {
        [1] = "通告",
        [2] = "聊天",
        [3] = "两者",
        [4] = "关闭",
      },
      overviewstyle = {
        [1] = "完全",
        [2] = "缩减",
        [3] = "最小",
      },
    },
    TT = {
      '|cFFFFFF<<C:1>>|r\n'..lmb..' 选择/取消 研究\n\n|t20:20:<<2>>|t |cFFFFFF全部 <<C:3>>|r\n'..rmb..' 选择/取消 研究',
      '|cE8DFAF'..lmb..' 制造 x <<1>>|r',
      '|cE8DFAF'..rmb..' 制造 x <<1>>|r',
      '|cE8DFAF'..mmb..' 标记到收藏夹 |r|t16:16:esoui/art/characterwindow/equipmentbonusicon_full.dds|t',
      '|cE8DFAF'..lmb..' 选择|r',
      '|cE8DFAF'..rmb..' 链接到聊天框|r',
      '|cE8DFAF'..mmb..' 标记材料|r',
      '|cE8DFAF'..lmb..' 分解附魔雕文|r',
      '|cE8DFAF'..lmb..' 分解所有非制造的附魔雕文\n'..rmb..' 分解所有可找到的附魔雕文|r',
      '|cE8DFAF'..lmb..' 选择此角色\n'..rmb..' 设置此角色为主要角色\n'..mmb..' 删除此角色',
      '收藏夹',
      '符文模式制造',
      '追踪已知风格',
      '追踪已知食谱',
      '显示CraftStore',
      '可用销赃交易数和今天的进账',
      '法师公会 - 艾维雅 - 在最近的法师公会建筑中使用传送门',
      '战士公会 - 大地熔炉 - 在最近的战士公会建筑中使用传送门',
      '点击前往离此套装制造站最近的指路祭坛',
      '|cFFFFFF骑术|r\n负重, 耐力\n和速度',
      {'任何水域','污水','河水','湖水','海水'},
      '分解所有附魔雕文',
      '状令',
      '家具',
      '追踪已知特性',
      '|cE8DFAF'..lmb..' 家具预览|r',
      '|cE8DFAF'..rmb..' 家具预览|r',
      '|cE8DFAF'..rmb..' 分解堆叠|r',
      '|cFFFFFF技能点|r\n未花费/总共获得',--29
      '|cFFFFFFSP|r ',--30
      '|cFFFFFF天空碎片|r\n已收集/总数',--31
      '追踪已知蓝图',--32
      '|cE8DFAF'..mmb..' 研究|r',
      '|cE8DFAF'..lmb..' 追踪|r',
      '片鱼',
    },
    nobagspace = '|cFF0000背包空间不足!|r',
    noSlot = '|cFF0000没有空闲研究槽或物品无法使用!|r',
    noItemPreview = '|cFF0000需要物品预览!|r',
    noFurnitureData = '|cFF0000Item物品预览缺乏此物品|r',
    blueprintSearchLimit = '|cFF0000缩小搜索范围以显示所有结果|r',
    removeCurrentCharacter = '|cFF0000无法移除当前角色|r',
    searchfor = '搜索: ',
    finished = '已完成',
    level = '等级',
    rank = '技能级数',
    bank = '银行',
    housebank = '房屋银行 ',
    guildbank = '公会银行',
    craftbag = '生产背包',
    chars = '角色概览',
    set = '选择套装...',
    unknown = '未知',
    knownStyles = '已知风格',
    finishResearch = '<<C:1>> 已完成 |c00FF00<<C:2>>|r |c00FF88(<<C:3>>)|r 研究.',
    finishMount = '<<C:1>> 完成了骑术研究',
    finish12 = '12 小时倒计时已结束',
    finish24 = '24 小时倒计时已结束',
    itemsearch = '\n谁有 <<c:2>> 特性的 <<C:1>> ？',
    hideStyles = '隐藏简单风格',
    hideCrownStyles = '隐藏皇冠风格',
    hideKnown = "隐藏已知",
    hideUnknown = "隐藏未知",
    unselectedWayshrine = "|cFF0000选择一种可制造的套装|r",
    unknownWayshrine = "|cFF0000不能传送到未发现的指路祭坛|r", 
    previewType = {"重甲", "中甲", "轻甲 + 长袍", "轻甲 + 衬衫"},
    provisioningWritOffset = 7,
    styleNames = {}, 
    reload = "需要重新载入",
  }

  --Specail Setting
  BB.SetGlobalHook(function() BB.TableCopy(L, CraftStoreFixedAndImprovedLongClassName.Loc) end, "CraftStoreFixedAndImprovedLongClassName", "Quality")

end end

BB.AddonList["CraftStoreFixedAndImproved"] = function()
  if not CraftStoreFixedAndImprovedLongClassName then return false end
  return true 
end