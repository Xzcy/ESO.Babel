local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["HodorReflexes"] = function() if not HodorReflexes then return false end
  --[[
  Translation Files:
    HodorReflexes\lang\en.lua
  ]]
  local strings = {
    HR_MENU_GENERAL_ENABLED_TT = "启用/禁用 此插件",
    HR_PULL_COUNTDOWN = "发起倒计时",
    
    HR_MENU_EVENTS = "事件",
    HR_MENU_EVENTS_DISABLED = "这个模块需要Hodor Reflexes被启用",
    HR_MENU_EVENTS_DESC = "这个模组在一年中的特定时间启用特殊特性",
    
    HR_MENU_HORN_SHOW_PERCENT = "显示百分比",
    HR_MENU_HORN_SHOW_PERCENT_TT = "显示经计算的号角终极点百分比",
    HR_MENU_HORN_SHOW_RAW = "显示终极点",
    HR_MENU_HORN_SHOW_RAW_TT = "显示原始终极点",
    HR_MAJOR_FORCE = "高级力量",
    HR_MENU_HORN_COUNTDOWN_TYPE_TT = "- 无：没有倒计时。\n- 自己：只对自己的号角/高级力量进行倒计时。\n- 全部：对所有人的号角/高级力量进行倒计时(队长模式).",
    HR_MENU_HORN_COUNTDOWN_TYPE_FORCE_SELF = "高级力量 (自己)",
    HR_MENU_HORN_COUNTDOWN_TYPE_FORCE_ALL = "高级力量 (全部)",
    
    HR_MENU_ATRONACH = "风暴侍灵",
    HR_MENU_ATRONACH_SHOW = "显示风暴侍灵",
    HR_MENU_ATRONACH_SHOW_TT = "分享你的终极技能情况给队友",
    HR_MENU_ATRONACH_SHOW_PERCENT = "显示百分比",
    HR_MENU_ATRONACH_SHOW_PERCENT_TT = "显示经计算的风暴侍灵终极点百分比",
    HR_MENU_ATRONACH_SHOW_RAW = "显示终极点",
    HR_MENU_ATRONACH_SHOW_RAW_TT = "显示原始终极点",
    HR_MENU_ATRONACH_SHARE = "分享终极技能",
    HR_MENU_ATRONACH_SHARE_TT = "将终极技能状态共享给队伍(仅当装备风暴侍灵时).",
    
    HR_MENU_COLOS_SHOW_PERCENT = "显示百分比",
    HR_MENU_COLOS_SHOW_PERCENT_TT = "显示经计算的死灵巨像终极点百分比",
    HR_MENU_COLOS_SHOW_RAW = "显示原始终极点",
    HR_MENU_COLOS_SHOW_RAW_TT = "显示玩家的原始终极点",
    
    HR_MENU_MISC_DISABLEDEPENDENCYWARNING = "禁用依赖性警告",
    HR_MENU_MISC_DISABLEDEPENDENCYWARNING_TT = "开启/关闭 不兼容依赖警告",
    
    HR_MENU_ICONS_VISIBILITY_MISCULTIMATES = "其他终极技能",
    HR_MENU_ICONS_VISIBILITY_MISCULTIMATES_TT = "在终极技能列表中显示玩家自定义图标",
    
    HR_MENU_ICONS_VISIBILITY_ATRONACH = "风暴侍灵图标",
    HR_MENU_ICONS_VISIBILITY_ATRONACH_TT = "在风暴侍灵列表中显示玩家自定义图标",
    
    HR_MENU_STYLE_FORCE_COLOR = "高级力量持续时间颜色",
    HR_MENU_STYLE_BERSERK_COLOR = "高级狂怒持续颜色",
    HR_MENU_STYLE_ATRONACH_COLOR = "风暴侍灵持续时间颜色",
    
    HR_MENU_MISCULTIMATES = "其他终极技能",
    HR_MENU_MISCULTIMATES_SHOW = "显示其他终极技能",
    HR_MENU_MISCULTIMATES_SHOW_TT = "显示其他不支持的终极技能",
    HR_MENU_MISCULTIMATES_SHARE = "分享其他终极技能",
    HR_MENU_MISCULTIMATES_SHARE_TT = "分享其他不支持的终极技能",
    HR_MENU_MISCULTIMATES_SHOW_PERCENT = "显示百分比",
    HR_MENU_MISCULTIMATES_SHOW_PERCENT_TT = "显示经计算的技能终极点百分比",
    HR_MENU_MISCULTIMATES_SHOW_RAW = "显示原始终极点",
    HR_MENU_MISCULTIMATES_SHOW_RAW_TT = "显示玩家的原始终极点",
    
    HR_BINDING_HORN_SHARE = "切换战争号角分享",
    HR_BINDING_COLOS_SHARE = "切换死灵巨像分享",
    HR_BINDING_DPS_SHARE = "切换伤害分享",
    HR_BINDING_MISCULTIMATES_SHARE = "切换其他终极技能共享",
    HR_BINDING_COUNTDOWN = "倒计时",
    HR_BINDING_PULL_COUNTDOWN = "发起倒计时",
    HR_BINDING_EXIT_INSTANCE = "立刻退出队伍",
    HR_BINDING_SEND_EXIT_INSTANCE = "离开队伍",
    HR_BINDING_CLOSE_UPDATE_POPUP = "关闭更新弹窗",
    
    LCN_MENU_NAME_VAL = "自定义名称",
    LCN_MENU_NAME_VAL_TT = "设置自定义名称",
    LCN_MENU_GRADIENT = "渐变",
    LCN_MENU_GRADIENT_TT = "根据下方选择的颜色创建渐变",
    LCN_MENU_COLOR1 = "起始颜色",
    LCN_MENU_COLOR2 = "终点颜色",
    LCN_MENU_PREVIEW = "预览",
    
    HR_MENU_ICONS_SECTION_CUSTOM = "自定义名称&图标",
    HR_MENU_ICONS_NOLIBSINSTALLED = "为了完整的HodorReflexes体验，请安装以下支持库:\n\n - |cFFFF00LibCustomIcons|r – 启用自定义图标\n - |cFFFF00LibCustomNames|r – 显示自定义名称\n\n这些支持库是可选的，不会影响HodorReflexes的基础功能",
    HR_MENU_ICONS_README_1 = "请首先阅读本指南！这将确保你能获得期望的结果\n",
    HR_MENU_ICONS_HEADER_ICONS = "图标 & 动图 – 要求:",
    HR_MENU_ICONS_README_2 = "遵循以下规格限制:\n\n- 最大尺寸: 32×32 像素\n- 动图: 最多50帧\n- 可用文件格式: .dds, .jpg, .png, .gif, .webp\n",
    HR_MENU_ICONS_HEADER_TIERS = "捐赠等级:",
    HR_MENU_ICONS_README_3 = "拥有不同奖励的三档捐赠等级:\n\n1. 500w金币 – 自定义名称\n2. 700w金币 – 自定义名称 + 静态图标\n3. 1000w金币 – 自定义名称 + 静态图标 + 动图\n\n你可以用以下的滑条选择想要的档位\n",
    HR_MENU_ICONS_HEADER_CUSTOMIZE = "自定义名称:",
    HR_MENU_ICONS_README_4 = "在此自定义你的名称\n",
    HR_MENU_ICONS_HEADER_TICKET = "在Discord频道创建申请表",
    HR_MENU_ICONS_README_5 = "1. 点击以下包含LUA代码的文本框\n2. 按下 CTRL+A 全选内容\n3. 按下 CTRL+C 复制内容",
    HR_MENU_ICONS_README_6 = "\n下一步，在我们的Discord频道中，选择你的捐赠档位、黏贴LUA代码和图标",
    HR_MENU_ICONS_HEADER_DONATION = "发送捐赠:",
    HR_MENU_ICONS_README_7 = "在Discord频道上创建申请表后:\n\n1. 点击 \"%s\" 按钮\n2. 输入你的申请表的序号 (位于 ticket-XXXXX 区域)\n3. 根据你选择的捐赠档位，寄送金币",
    HR_MENU_ICONS_HEADER_INFO = "说明:",
    HR_MENU_ICONS_INFO = "- 这是一项基于捐赠的服务\n- 你并不是购买了图标，或获取了它们的所有权\n- 这是自愿捐赠，在使用了LibCustomNames和LibCustomIcons库的插件中，你将获得这一外观奖励\n- 你需要遵守Zos的要求，不合适的名称和图标会被拒绝！\n- 你可以在Github上提交包含你的名称和图标的PRs，而不需要捐赠，只要你知道如何写这部分代码",
    HR_MENU_ICONS_CONFIGURATOR_DISCORD = "加入discord频道",
    HR_MENU_ICONS_CONFIGURATOR_DISCORD_TT = "加入HodorReflexes的频道，创建申请表",
    HR_MENU_ICONS_README_DONATION_TIER = "捐赠等级: ",
    HR_MENU_ICONS_README_DONATION_TIER_TT = "修改捐赠等级后，下方生成的LUA代码也会相应变化",
    HR_MENU_ICONS_CONFIGURATOR_LUA_TT = "点击进入文本框，按下 ctrl+a 全选，接着按下 ctrl+c 复制内容",
    HR_MENU_ICONS_CONFIGURATOR_DONATE_TT = "打开邮件窗口，并输入一些文本",
    
    HR_MISSING_LIBS_TITLE = "获取完整的HodorReflexes体验！",
    HR_MISSING_LIBS_TEXT = "|c00FF00你正在错失完整的HodorReflexes体验！|r\n\n安装 |cFFFF00LibCustomIcons|r 和 |cFFFF00LibCustomNames|r 库，来显示自定义图标、名称和风格！\n\n这是可选的，不影响HodorReflexes的基础功能",
    HR_MISSING_LIBS_OK = "好",
    HR_MISSING_LIBS_DONTSHOWAGAIN = "不再显示",
  }
  
  --Special setting
  for id, val in pairs(strings) do
   ZO_CreateStringId(id, val)
   SafeAddVersion(id, 1)
  end
  
return true end