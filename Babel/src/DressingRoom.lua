local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["DressingRoom"] = function() if not DressingRoom then return false end
  ZO_CreateStringId("SI_BINDING_NAME_DRESSINGROOM_TOGGLE", "显示/隐藏 窗口")
  for i = 1, 12 do
    ZO_CreateStringId("SI_BINDING_NAME_DRESSINGROOM_SET_"..i, "切换 配装 "..i)
  end
  DressingRoom._msg = {
    weaponType = {
      [WEAPONTYPE_AXE] = "斧头",
      [WEAPONTYPE_BOW] = "弓",
      [WEAPONTYPE_DAGGER] = "匕首",
      [WEAPONTYPE_FIRE_STAFF] = "炼狱法杖",
      [WEAPONTYPE_FROST_STAFF] = "寒冰法杖",
      [WEAPONTYPE_HAMMER] = "钉锤",
      [WEAPONTYPE_HEALING_STAFF] = "恢复法杖",
      [WEAPONTYPE_LIGHTNING_STAFF] = "闪电法杖",
      [WEAPONTYPE_NONE] = "无",
      [WEAPONTYPE_RUNE] = "卢恩",
      [WEAPONTYPE_SHIELD] = "盾牌",
      [WEAPONTYPE_SWORD] = "剑",
      [WEAPONTYPE_TWO_HANDED_AXE] = "战斧",
      [WEAPONTYPE_TWO_HANDED_HAMMER] = "重槌",
      [WEAPONTYPE_TWO_HANDED_SWORD] = "巨剑",
    },
    skillBarSaved = "技能配置 %d 栏 %d 已保存",
    skillBarLoaded = "技能配置 %d 栏 %d 已加载",
    skillBarDeleted = "技能配置 %d 栏 %d 已删除",
    gearSetSaved = "装备配置 %d 已储存",
    gearSetLoaded = "装备配置 %d 已加载",
    gearSetDeleted = "装备配置 %d 已加载",
    noGearSaved = "配置 %d 无装备记录",

    options = {
      reloadUIWarning = "需要重新加载UI",
      reloadUI = "重新加载UI",
      clearEmptyGear = {
        name = "卸载 空装备格",
        tooltip = "当加载含空格的装备配置时，卸载先前的装备",
      },
      clearEmptySkill = {
        name = "卸载 空技能格",
        tooltip = "当加载含空格的技能配置时，卸载先前的技能",
      },
      activeBarOnly = {
        name = "仅为激活技能栏显示技能配置按钮",
        tooltip = "只为当前激活的技能栏，显示技能配置按钮",
      },
      fontSize = {
        name = "字体大小",
        tooltip = "交互界面的字体大小",
      },
      btnSize = {
        name = "技能图标尺寸",
        tooltip = "技能图标尺寸",
      },
      columnMajorOrder = {
        name = "优先为配置使用列排序",
        tooltip = "在交互界面中为配置，使用列排列（垂直）而不是行排列（水平）",
      },
      openWithSkillsWindow = {
        name = "随技能窗口开启",
        tooltip = "打开技能窗口时自动显示界面",
      },
      openWithInventoryWindow = {
        name = "随物品栏窗口开启",
        tooltip = "打开物品栏窗口时自动显示界面",
      },
      numRows = {
        name = "行数量",
        tooltip = "窗口中每列的行数",
      },
      numCols = {
        name = "列数量",
        tooltip = "窗口中每行的列数",
      },
      showChatMessages = {
        name = "聊天栏信息输出",
        tooltip = "当存储、装备、删除配置和技能按钮时，在聊天栏输出信息",
      },
      singleBarToCurrent = {
        name = "将单栏配置加载至激活的技能栏",
        tooltip = "加载单栏且无装备的配置时，更新激活的技能栏并忽略空的技能栏。（译注：截止0.12.1版本存在Bug，不推荐启用）",
      },
      alwaysChangePageOnZoneChanged = {
        name = "如果无匹配区域，返回默认页面",
        tooltip = "如果没有为你抵达的新区域提前配置，且当前页面没有被手动选择，返回默认（第一）页",
      },
    },
    barBtnText = "点击 加载单栏技能配置\nShift + 点击 保存配置\nCtrl + 点击 删除配置",
    gearBtnText = "点击 加载装备配置\nShift + 点击 保存配置\nCtrl + 点击 删除配置",
    setBtnText = "点击 加载装备和技能配置",
  }
return true end