local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["VotansFisherman"] = function() if not VOTANS_FISHERMAN then return false end
  local Strings = {
    [SI_FISHERMAN_SETTING_PIN_LEVEL] = "图标图层优先度",
    [SI_FISHERMAN_SETTING_PIN_SIZE] = "图标尺寸",
    [SI_FISHERMAN_SETTING_PIN_SHOW_POIS] = "显示兴趣点",
    [SI_FISHERMAN_SETTING_SHOW_LOOT_HUD] = "在用户界面显示掉落",
    [SI_FISHERMAN_SETTING_SHOW_LOOT_MAP] = "在地图上显示",
    [SI_FISHERMAN_SETTING_SHOW_DEFAULT_LOOT] = "显示通常掉落",
    [SI_FISHERMAN_SETTING_SHOW_REEL_IN] = "\"提竿\" 提示",
    [SI_FISHERMAN_SETTING_REEL_IN] = "提竿 - 事件",
    [SI_FISHERMAN_SETTING_REEL_IN_ANIM] = "动画",
    [SI_FISHERMAN_SETTING_REEL_IN_COLOR] = "颜色",
    [SI_FISHERMAN_SETTING_REEL_IN_SIZE] = "尺寸 (%)",
    [SI_FISHERMAN_SETTING_REEL_IN_SOUND] = "音效",
    [SI_FISHERMAN_SETTING_REEL_IN_NO_SOUND] = "无音效",
    [SI_FISHERMAN_SETTING_REEL_IN_RETURN] = "返回互动菜单",
    [SI_FISHERMAN_SETTING_REEL_IN_RETURN_TOOLTIP] = "像物品栏一样关闭菜单，并停止鼠标指针模式",
    [SI_FISHERMAN_SETTING_AUTO_SWITCH_BAIT] = "自动更换鱼饵",
    [SI_FISHERMAN_SETTING_AUTO_SWITCH_BAIT_TOOLTIP] = "首次与已知渔场互动时更换合适的鱼饵",
    [SI_FISHERMAN_SETTING_PREFER_BETTER_BAIT] = "偏好更好的鱼饵",
    [SI_FISHERMAN_SETTING_PREFER_BETTER_BAIT_TOOLTIP] = "如果自动切换合适鱼饵，偏好使用更好的",

    [SI_FISHERMAN_SETTING_EXTRAS] = "额外",
    [SI_FISHERMAN_SETTING_PIN_SHOW_DEBUG] = "显示调试",
    [SI_FISHERMAN_SETTING_PIN_SHOW_CONTEXTMENU] = "显示地图中 渔场图标 左键菜单",
    [SI_FISHERMAN_SETTING_PIN_SHOW_TOOLTIP] = "显示地图中 渔场图标 信息弹窗",
    [SI_FISHERMAN_SETTING_SHOW_HIDE_RFT] = "显示/隐藏 Rare Fish Tracker 插件",

    [SI_FISHERMAN_SETTING_DATA_RESTART] = "重新开始测量",
    [SI_FISHERMAN_SETTING_DATA_RESTART_HINT] = "每次你靠近或在渔场附近移动时，你的当前位置和朝向将被用于精确渔场位置。到达100%时渔场位置被固定",
    [SI_FISHERMAN_SETTING_DATA_RESTART_HINT2] = "在渔场附近按下按钮，将会重置其计数为1。数据不会丢失",
    [SI_FISHERMAN_SETTING_DATA_RESTART_BUTTON] = "重新开始",
    [SI_FISHERMAN_SETTING_DATA_RESTART_TOOLTIP] = "重新开始测量",

    [SI_FISHERMAN_SETTING_DATA_CAUGHT_LIST] = "清除捕获列表",
    [SI_FISHERMAN_SETTING_DATA_CAUGHT_LIST_HINT] = "清除附近渔场捕获的鱼类和物品清单。保留类型。",
    [SI_FISHERMAN_SETTING_DATA_CAUGHT_LIST_BUTTON] = "清除",
    [SI_FISHERMAN_SETTING_DATA_CAUGHT_LIST_TOOLTIP] = "清除捕获列表",

    [SI_FISHERMAN_SETTING_DATA_MERGE] = "合并渔场数据",
    [SI_FISHERMAN_SETTING_DATA_MERGE_HINT] = "将玩家附近可能错误侦测的假渔场合为一个",
    [SI_FISHERMAN_SETTING_DATA_MERGE_BUTTON_VERY_CLOSE] = "非常近",
    [SI_FISHERMAN_SETTING_DATA_MERGE_VERY_CLOSE] = "合并渔场 (25% 范围)",
    [SI_FISHERMAN_SETTING_DATA_MERGE_BUTTON_CLOSE] = "靠近的",
    [SI_FISHERMAN_SETTING_DATA_MERGE_CLOSE] = "合并渔场 (50% 范围)",
    [SI_FISHERMAN_SETTING_DATA_MERGE_BUTTON_NEAR] = "附近的",
    [SI_FISHERMAN_SETTING_DATA_MERGE_NEAR] = "合并渔场 (100% 范围)",
    [SI_FISHERMAN_SETTING_DATA_MERGE_BUTTON_RANGE] = "大范围",
    [SI_FISHERMAN_SETTING_DATA_MERGE_RANGE] = "合并渔场 (125% 范围)",
    [SI_FISHERMAN_SETTING_DATA_TO_PLAYER_POS] = "设置到玩家位置",
    [SI_FISHERMAN_SETTING_DATA_PLAYER_TOO_FAR] = "玩家离得太远",

    [SI_FISHERMAN_SETTING_DATA_ERASE] = "清除数据",
    [SI_FISHERMAN_SETTING_DATA_ERASE_HINT] = "清除附近的渔场",
    [SI_FISHERMAN_SETTING_DATA_ERASE_BUTTON] = "消除附近的",
    [SI_FISHERMAN_SETTING_DATA_ERASE_TOOLTIP] = "逝者已逝！",
    
    [SI_FISHERMAN_STATS_TOTAL] = "总共",
    [SI_FISHERMAN_STATS_UNKNOWN] = "未知",

    [SI_FISHERMAN_INTERACT1] = "脏水",
    [SI_FISHERMAN_INTERACT1B] = "油污",
    [SI_FISHERMAN_INTERACT2] = "河流",
    [SI_FISHERMAN_INTERACT3] = "湖泊",
    [SI_FISHERMAN_INTERACT4] = "咸水",
    [SI_FISHERMAN_INTERACT4B] = "神秘商人",

    [SI_FISHERMAN_ACTIONNAME1] = "脏水钓鱼",
    [SI_FISHERMAN_ACTIONNAME2] = "河流钓鱼",
    [SI_FISHERMAN_ACTIONNAME3] = "湖泊钓鱼",
    [SI_FISHERMAN_ACTIONNAME4] = "咸水钓鱼",
  }

  for stringId, stringValue in pairs(Strings) do
    SafeAddString(stringId, stringValue, 2)
  end
  
return true end