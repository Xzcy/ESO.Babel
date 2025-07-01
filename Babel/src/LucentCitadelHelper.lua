local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["LucentCitadelHelper"] = function() if not LCH then return false end
  --
  local NewOption = {
    {
      type = "description",
      text = "卢晶堡垒试炼的计时器、警报器和提示器插件。该插件版本需要Code's Combat Alerts插件",
    },
    {
      type = "divider",
    },
    {
      type = "description",
      text = "部分机制显示需要 |cff0000OdySupportIcons|r 插件",
    },
    {
      type = "divider",
    },
    {
      type    = "checkbox",
      name    = "解锁UI",
    },
    {
      type = "description",
      text = "你也可以使用 /lch lock 和 /lch unlock 指令去设置UI位置",
    },
    {
      type    = "button",
      name    = "重设UI为默认位置",
      warning = "重置后需要重载UI",
    },
    {
      type    = "checkbox",
      name    = "隐藏聊天栏副本欢迎信息",
    },
    {
      type = "divider",
    },
    {
      type = "header",
      name = "齐利塞特 & 雷拉兹伯爵（一王）",
    },
    {
      type    = "checkbox",
      name    = "图标: 显示传送垫数字",
    },
    {
      type = "divider",
    },
    {
      type = "header",
      name = "神秘破裂碎片（二王）",
    },
    {
      type    = "checkbox",
      name    = "面板: 雷霆束缚（佐林传送）计时器",
    },
    {
      type    = "checkbox",
      name    = "面板: 闪电洪流（佐林电杖重击）计时器",
    },
    {
      type    = "checkbox",
      name    = "图标: 显示镜子数字",
    },
    {
      type = "divider",
    },
    {
      type = "header",
      name = "佐林（尾王）",
    },
    {
      type    = "checkbox",
      name    = "面板: 波动涌流（电圈）持有者",
    },
    {
      type    = "checkbox",
      name    = "面板: 波动涌流（电圈）计时器",
    },
    {
      type    = "checkbox",
      name    = "面板: 超载电流（电圈易伤）计时器",
    },
    {
      type    = "checkbox",
      name    = "显示 超载电流（电圈易伤） 图标",
    },
    {
      type    = "checkbox",
      name    = "面板: 穿刺光束（小怪）计时器",
    },
    {
      type    = "checkbox",
      name    = "面板: 玻璃化（小怪）计时器和警告",
    },
    {
      type    = "checkbox",
      name    = "死灵漫天（过桥）警告",
    },
    {
      type = "divider",
    },
    {
      type = "header",
      name = "杂项",
    },
    {
      type = "description",
      text = "不推荐修改。解锁UI后才可调整缩放比例",
    },
    {
      type    = "slider",
      name    = "缩放尺寸",
      tooltip = "0.5很小，2很大",
      warning = "仅用于超大分辨率。最佳推荐比例为1"
    },
  }
  
  --Sepcial Setting
  BB.SetMenuPatch(LCH.name .. "Options", NewOption)
  
  LCH.data.zilyessetName = "雷拉兹伯爵"
  LCH.data.orphicName = "神秘破裂碎片"
  LCH.data.xorynName = "佐林"
  
return true end