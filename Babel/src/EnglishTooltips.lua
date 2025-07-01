local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["EnglishTooltips"] = function() if not EnglishTooltips then return false end
  local Strings = {
    [SI_ENGLISHTOOLTIPS_TOOLTIP_FORMAT] = "弹窗中信息格式",
    [SI_ENGLISHTOOLTIPS_TOOLTIP_NEW_LINE] = "另起一行显示翻译",
    [SI_ENGLISHTOOLTIPS_EQUIPMENT] = "装备",
    [SI_ENGLISHTOOLTIPS_EQUIPMENT_DESC] = "装备 (护甲, 饰品 & 武器)",
    [SI_ENGLISHTOOLTIPS_EQUIPMENT_SETNAME] = "套装名",
    [SI_ENGLISHTOOLTIPS_EQUIPMENT_SETNAME_DESC] = "显示套装名而不是物品名",
    [SI_ENGLISHTOOLTIPS_EQUIPMENT_ENCHANTMENT] = "附魔",
    [SI_ENGLISHTOOLTIPS_EQUIPMENT_ENCHANTMENT_DESC] = "显示附魔名称",
    [SI_ENGLISHTOOLTIPS_EQUIPMENT_ENCHANTMENT_COLOR] = "附魔品质颜色",
    [SI_ENGLISHTOOLTIPS_EQUIPMENT_ENCHANTMENT_COLOR_DESC] = "在弹窗中显示附魔品质颜色",
    [SI_ENGLISHTOOLTIPS_EQUIPMENT_TRAIT] = "特质",
    [SI_ENGLISHTOOLTIPS_EQUIPMENT_TRAIT_DESC] = "显示特质名称",
    [SI_ENGLISHTOOLTIPS_CHAMPION_POINTS] = "冠军点数",
    [SI_ENGLISHTOOLTIPS_CHAMPION_POINTS_DESC] = "显示冠军点数技能名称",
    [SI_ENGLISHTOOLTIPS_ABILITIES] = "技能",
    [SI_ENGLISHTOOLTIPS_ABILITIES_DESC] = "显示技能名称",
    [SI_ENGLISHTOOLTIPS_MATERIALS] = "材料",
    [SI_ENGLISHTOOLTIPS_MATERIALS_DESC] = "材料, 原材料, 品质材料, 风格材料, 特质材料",
    [SI_ENGLISHTOOLTIPS_GLYPH] = "雕文",
    [SI_ENGLISHTOOLTIPS_GLYPH_DESC] = "护甲, 武器和饰品雕文",
    [SI_ENGLISHTOOLTIPS_CONSUMABLE] = "药水 & 毒药",
    [SI_ENGLISHTOOLTIPS_CONSUMABLE_DESC] = "药水, 毒药",
    [SI_ENGLISHTOOLTIPS_FOOD] = "食物 & 饮料",
    [SI_ENGLISHTOOLTIPS_FOOD_DESC] = "食物, 饮料",
    [SI_ENGLISHTOOLTIPS_TROPHIES] = "奖励",
    [SI_ENGLISHTOOLTIPS_TROPHIES_DESC] = "调查报告, 藏宝图, 博物馆藏品, 符文箱碎片, 收藏品碎片, 可调制作台, 各种容器",
    [SI_ENGLISHTOOLTIPS_CRAFTING_MOTIFS] = "制作样式",
    [SI_ENGLISHTOOLTIPS_CRAFTING_MOTIFS_DESC] = "显示制作样式名称",
    [SI_ENGLISHTOOLTIPS_FURNISHING] = "家具",
    [SI_ENGLISHTOOLTIPS_FURNISHING_DESC] = "显示可放置的家具名称",
    [SI_ENGLISHTOOLTIPS_RECIPES] = "配方",
    [SI_ENGLISHTOOLTIPS_RECIPES_DESC] = "显示配方名称",
    [SI_ENGLISHTOOLTIPS_MASTER_WRITS] = "大师委托",
    [SI_ENGLISHTOOLTIPS_MASTER_WRITS_DESC] = "显示大师委托的名称",
    [SI_ENGLISHTOOLTIPS_PVP] = "PvP相关",
    [SI_ENGLISHTOOLTIPS_PVP_DESC] = "攻城器械, 修理包, 传送石",
    [SI_ENGLISHTOOLTIPS_CROWN_ITEMS] = "王冠物品",
    [SI_ENGLISHTOOLTIPS_CROWN_ITEMS_DESC] = "王冠物品, 王冠修理包",
    [SI_ENGLISHTOOLTIPS_MISCELLANEOUS] = "杂项",
    [SI_ENGLISHTOOLTIPS_MISCELLANEOUS_DESC] = "修理包, 撬锁器, 灵魂宝石, 鱼, 鱼饵, 垃圾",
    [SI_ENGLISHTOOLTIPS_UPDATE_BUTTON] = "更新数据库",
    [SI_ENGLISHTOOLTIPS_UPDATE_BUTTON_DESC] = "在数据损坏或游戏发布新版本时，需要更新数据库",
    [SI_ENGLISHTOOLTIPS_UPDATE_BUTTON_WARNING] = "注意:\n该选项将会自动开始重载用户界面！",
    [SI_ENGLISHTOOLTIPS_UPDATE_MSG] = "请更新 \"English Tooltips\" 插件数据库！打开插件设置界面，并点击 更新数据库 按钮",
  }

  for stringId, stringValue in pairs(Strings) do
    SafeAddString(stringId, stringValue, 2)
  end
  
return true end