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
    HR_PULL_COUNTDOWN = "发起倒计时",
    HR_MENU_ICONS_GRADIENT = "梯度渐变",
    
    HR_MENU_MISCULTIMATES = "其他终极技能",
    HR_MENU_STYLE_BERSERK_COLOR = "高级狂怒持续颜色",
    HR_MENU_EVENTS_DISABLED = "这个模块需要Hodor Reflexes被启用",
    HR_MENU_HORN_SHOW_PERCENT_TT = "显示经计算的号角终极点百分比",
    HR_MENU_ICONS_INTEGRITY = "完整性",
    HR_MENU_HORN_SHOW_RAW_TT = "显示玩家的原始终极点",
    HR_MENU_EVENTS = "事件",
    HR_MENU_ICONS_INTEGRITY_DESCRIPTION = "检查Hodor Reflexes图标的完整性",
    HR_MENU_ATRONACH_SHARE = "分享终极技能",
    HR_MENU_ATRONACH_SHOW_TT = "分享你的终极技能情况给队友",
    HR_MENU_COLOS_SHOW_PERCENT_TT = "显示经计算的死灵巨像终极点百分比",
    
    HR_MENU_COLOS_SHOW_RAW_TT = "显示玩家的原始终极点",
    HR_MENU_ATRONACH_SHOW_RAW_TT = "显示玩家的原始终极点",
    HR_MENU_MISCULTIMATES_SHARE = "分享其他终极技能",
    HR_MENU_ATRONACH_SHOW_PERCENT_TT = "显示经计算的风暴侍灵终极点百分比",
    HR_MENU_ICONS_VISIBILITY_MISCULTIMATES_TT = "在终极技能列表中显示玩家自定义图标",
    HR_MENU_MISCULTIMATES_SHOW_TT = "显示其他不支持的终极技能",
    HR_MENU_ATRONACH_SHOW_PERCENT = "显示百分比",
    HR_MENU_ICONS_INTEGRITY_CHECK = "检查",
    HR_MENU_MISCULTIMATES_SHARE_TT = "分享其他不支持的终极技能",
    HR_MENU_EVENTS_DESC = "这个模组在一年中的特定时间启用特殊特性",
    HR_MENU_COLOS_SHOW_PERCENT = "显示百分比",
    HR_MENU_COLOS_SHOW_RAW = "显示终极点",
    HR_MENU_ATRONACH_SHOW_RAW = "显示终极点",
    HR_MENU_MISC_DISABLEDEPENDENCYWARNING_TT = "开启/关闭 不兼容依赖警告",
    HR_MENU_HORN_SHOW_RAW = "显示终极点",
    HR_MENU_ICONS_VISIBILITY_MISCULTIMATES = "其他终极技能",
    HR_MENU_ICONS_VISIBILITY_ATRONACH_TT = "在风暴侍灵列表中显示玩家自定义图标",
    HR_MENU_ATRONACH_SHOW = "显示风暴侍灵",
    HR_MENU_HORN_SHOW_PERCENT = "显示百分比",
    HR_MENU_ATRONACH = "风暴侍灵",
    HR_MENU_STYLE_ATRONACH_COLOR = "风暴侍灵持续时间颜色",
    HR_MENU_ICONS_VISIBILITY_ATRONACH = "风暴侍灵图标",
    HR_MENU_MISC_DISABLEDEPENDENCYWARNING = "禁用依赖性警告",
    HR_MENU_ATRONACH_SHARE_TT = "将终极技能状态共享给队伍(仅当装备风暴侍灵时).",
    HR_MENU_MISCULTIMATES_SHOW = "显示其他终极技能",
    
    HR_MAJOR_FORCE = "高级力量",
    HR_MENU_STYLE_FORCE_COLOR = "高级力量持续时间颜色",
    HR_MENU_HORN_COUNTDOWN_TYPE_TT = "- 无：没有倒计时。\n- 自己：只对自己的号角/高级力量进行倒计时。\n- 全部：对所有人的号角/高级力量进行倒计时(队长模式).",
    HR_MENU_HORN_COUNTDOWN_TYPE_FORCE_SELF = "高级力量 (自己)",
    HR_MENU_HORN_COUNTDOWN_TYPE_FORCE_ALL = "高级力量 (全部)",
    
    HR_BINDING_HORN_SHARE = "切换战争号角分享",
    HR_BINDING_COLOS_SHARE = "切换死灵巨像分享",
    HR_BINDING_DPS_SHARE = "切换伤害分享",
    HR_BINDING_MISCULTIMATES_SHARE = "切换其他终极技能共享",
    HR_BINDING_COUNTDOWN = "倒计时",
    HR_BINDING_PULL_COUNTDOWN = "发起倒计时",
    HR_BINDING_EXIT_INSTANCE = "立刻退出队伍",
    HR_BINDING_SEND_EXIT_INSTANCE = "离开队伍",
    HR_BINDING_CLOSE_UPDATE_POPUP = "关闭更新弹窗",
  }
  
  --Special setting
  for id, val in pairs(strings) do
   ZO_CreateStringId(id, val)
   SafeAddVersion(id, 1)
  end
  
return true end