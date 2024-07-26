local BB = MABabel

--Untaunted
BB.AddonList["Untaunted"] = function() if not Untaunted then return false end
  local strings = {
    -- Menu --
    SI_UNTAUNTED_LANG = "zh", 	-- "en"
    SI_UNTAUNTED_FONT = "$(MEDIUM_FONT)",
    SI_UNTAUNTED_MENU_AW_NAME = "使用全账户设置", 	-- "Use Accountwide Settings"
    SI_UNTAUNTED_MENU_AW_NAME_TOOLTIP = "启用时，该账号所有角色使用相同设置", 	-- "If chosen all characters on this account will have the same Settings"
    SI_UNTAUNTED_MENU_MOVE_BUTTON = "移动", 	-- "Move"
    SI_UNTAUNTED_MENU_MOVE_BUTTON_TOOLTIP = "移动嘲讽框架", 	-- "Move the taunt frames"
    SI_UNTAUNTED_MENU_WINDOW_WIDTH = "宽度", 	-- "Width"
    SI_UNTAUNTED_MENU_WINDOW_WIDTH_TOOLTIP = "设置嘲讽框架的宽度", 	-- "Sets the width of the taunt frames"
    SI_UNTAUNTED_MENU_WINDOW_HEIGHT = "高度", 	-- "Height"
    SI_UNTAUNTED_MENU_WINDOW_HEIGHT_TOOLTIP = "设置嘲讽框架的高度", 	-- "Sets the height of the taunt frames"
    SI_UNTAUNTED_MENU_GROWTH_DIRECTION = "向上添加", 	-- "Add Frames Upwards"
    SI_UNTAUNTED_MENU_GROWTH_DIRECTION_TOOLTIP = "启用时，新单位将被添加在前一个的上方", 	-- "When selected, new frames are added above the previous ones"
    SI_UNTAUNTED_MENU_MAX_BARS = "最大行数", 	-- "Maximum Rows"
    SI_UNTAUNTED_MENU_MAX_BARS_TOOLTIP = "能显示的最大行数", 	-- "Maximum number of rows to show"
    SI_UNTAUNTED_MENU_BAR_DIRECTION = "颠倒计时条", 	-- "Invert Timer Bar"
    SI_UNTAUNTED_MENU_BAR_DIRECTION_TOOLTIP = "启用时，计时条向右减少", 	-- "When selected, the timer bar gets reduced to the right"
    SI_UNTAUNTED_MENU_SHOWMARKER = "敌方标记", 	-- "Show Enemy Markers"
    SI_UNTAUNTED_MENU_SHOWMARKER_TOOLTIP = "在与你交战的敌人上方显示标记（像小队标记那样）", 	-- "Show markers (like group pins) over enemies you engaged in combat"
    SI_UNTAUNTED_MENU_MARKERSIZE = "敌方标记大小", 	-- "Size of Enemy Markers"
    SI_UNTAUNTED_MENU_MARKERSIZE_TOOLTIP = "与你交战的敌方标记的大小", 	-- "Size of the markers over enemies you are engaged with in combat"
    SI_UNTAUNTED_MENU_TRACKONLYPLAYER = "仅玩家效果", 	-- "Only Player Effects"
    SI_UNTAUNTED_MENU_TRACKONLYPLAYER_TOOLTIP = "启用时，仅追踪玩家效果", 	-- "Select to track only Player Effects"
    SI_UNTAUNTED_MENU_TRACK = "追踪 %s", 	-- e.g. "Track Taunt"
    SI_UNTAUNTED_MENU_TRACK_TOOLTIP = "选择追踪 %s", 	-- e.g. "Select to track Taunt"
    SI_UNTAUNTED_MENU_CUSTOM = "自定义技能", 	-- "Custom Abilities"
    SI_UNTAUNTED_MENU_CUSTOM_TOOLTIP = '允许以英文逗号分隔的形式添加自定义技能ID（如 "12345, 23456, 99999"）', 	-- "Allows you to add custom ability IDs"
    -- Keybinds --
    SI_BINDING_NAME_UNTAUNTED_MARKERSIZE_TOGGLE = "切换敌方标记的大小",
  }

  for stringId, stringValue in pairs(strings) do
    ZO_CreateStringId(stringId, stringValue)
    SafeAddVersion(stringId, 1)
  end
return true end

--Votan's Fisherman
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
    [SI_FISHERMAN_SETTING_PIN_SHOW_CONTEXTMENU] = "显示地图渔场图标 左键菜单",
    [SI_FISHERMAN_SETTING_PIN_SHOW_TOOLTIP] = "显示地图渔场图标 信息弹窗",
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
    [SI_FISHERMAN_INTERACT2] = "河水",
    [SI_FISHERMAN_INTERACT3] = "湖水",
    [SI_FISHERMAN_INTERACT4] = "咸水",
    [SI_FISHERMAN_INTERACT4B] = "神秘商人",

    [SI_FISHERMAN_ACTIONNAME1] = "脏水钓鱼",
    [SI_FISHERMAN_ACTIONNAME2] = "河水钓鱼",
    [SI_FISHERMAN_ACTIONNAME3] = "湖水钓鱼",
    [SI_FISHERMAN_ACTIONNAME4] = "咸水钓鱼",
  }

  for stringId, stringValue in pairs(Strings) do
    SafeAddString(stringId, stringValue, 2)
  end
  
return true end

--Votan's Keybinder
BB.AddonList["VotansKeybinder"] = function() if not SI_VOTANS_KEYBINDER_ACCOUNTWIDE then return false end
  ZO_CreateStringId("SI_VOTANS_KEYBINDER_ACCOUNTWIDE", "全账户角色共享键位设置")
  ZO_CreateStringId("SI_VOTANS_KEYBINDER_TOGGLE", "（取消）全选")
return true end

--Votan's Minimap
BB.AddonList["VotansMiniMap"] = function() if not VOTANS_MINIMAP then return false end
  ZO_CreateStringId("SI_KEYBINDINGS_CATEGORY_VOTANS_MINIMAP", "小地图")
  ZO_CreateStringId("SI_BINDING_NAME_VOTANS_TOGGLE_MAP_SHOW", "切换显示地图")
  ZO_CreateStringId("SI_BINDING_NAME_VOTANS_TOGGLE_MAP_SHOW_HUD", "切换显示HUD")
  ZO_CreateStringId("SI_BINDING_NAME_VOTANS_TOGGLE_MAP_SHOW_SIEGE_HUD", "切换显示攻城器")
  ZO_CreateStringId("SI_BINDING_NAME_VOTANS_TOGGLE_MAP_SHOW_COMBAT", "切换战斗中显示地图")
  ZO_CreateStringId("SI_BINDING_NAME_VOTANS_TOGGLE_MAP_ZOOM_OUT", "最小")
  ZO_CreateStringId("SI_BINDING_NAME_VOTANS_TOGGLE_MAP_ZOOM_IN", "最大")
  ZO_CreateStringId("SI_BINDING_NAME_VOTANS_TOGGLE_MAP_ZOOM_PLUS", "放大")
  ZO_CreateStringId("SI_BINDING_NAME_VOTANS_TOGGLE_MAP_ZOOM_MINUS", "缩小")

  ZO_CreateStringId("SI_VOTANSMINIMAP_WORLD_MAP_TWEAKS", "世界地图调整")
  ZO_CreateStringId("SI_VOTANSMINIMAP_WORLD_MAP_TWEAKS_TOOLTIP", "启用调整功能，在一段时间内分散 CPU 负荷。")
  ZO_CreateStringId("SI_VOTANSMINIMAP_MINI_MAP", "小地图")
  ZO_CreateStringId("SI_VOTANSMINIMAP_MINI_MAP_TOOLTIP", "启用内置地图的小地图功能")
  ZO_CreateStringId("SI_VOTANSMINIMAP_APPLY_BUTTON", "应用")
  ZO_CreateStringId("SI_VOTANSMINIMAP_LOCK_POSITION", "锁定位置和尺寸")
  ZO_CreateStringId("SI_VOTANSMINIMAP_LOCK_POSITION_TOOLTIP", "使窗口不能被移动和缩放")
  ZO_CreateStringId("SI_VOTANSMINIMAP_ZOOM", "缩放")
  ZO_CreateStringId("SI_VOTANSMINIMAP_ZOOM_TOOLTIP", "相对于原始地图分辨率的缩放")
  ZO_CreateStringId("SI_VOTANSMINIMAP_MOUNTED_ZOOM", "骑乘时缩放比例")
  ZO_CreateStringId("SI_VOTANSMINIMAP_MOUNTED_ZOOM_TOOLTIP", "在坐骑上的相对缩放系数。值1为保持目前缩放")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SUB_ZONE_ZOOM", "子区域缩放")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SUB_ZONE_ZOOM_TOOLTIP", "如果在子区域内，相对于原始地图分辨率的缩放")
  ZO_CreateStringId("SI_VOTANSMINIMAP_DUNGEON_ZOOM", "地下城缩放")
  ZO_CreateStringId("SI_VOTANSMINIMAP_DUNGEON_ZOOM_TOOLTIP", "如果在地下城，相对于原始地图分辨率的缩放")
  ZO_CreateStringId("SI_VOTANSMINIMAP_BG_ZOOM", "战场缩放")
  ZO_CreateStringId("SI_VOTANSMINIMAP_BG_ZOOM_TOOLTIP", "如果在战场，相对于原始地图分辨率的缩放")
  ZO_CreateStringId("SI_VOTANSMINIMAP_UNIT_PINS_MINIMUM_SIZE", "单位图标最小尺寸")
  ZO_CreateStringId("SI_VOTANSMINIMAP_UNIT_PINS_MINIMUM_SIZE_TOOLTIP", "单位图标缩放不会小于该系数")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SHOW_MAP", "显示地图")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SHOW_MAP_TOOLTIP", "总是显示小地图")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SHOW_HUD", "在HUD中显示")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SHOW_HUD_TOOLTIP", "在世界行走时显示")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SHOW_LOOTING", "拾取掉落时显示")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SHOW_LOOTING_TOOLTIP", "减少隐藏和显示")
  ZO_CreateStringId("SI_VOTANSMINIMAP_ZOOM_TO_PLAYER", "将世界地图缩放到玩家")
  ZO_CreateStringId("SI_VOTANSMINIMAP_ZOOM_TO_PLAYER_TOOLTIP", "最大或最小缩放时显示世界地图")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SHOW_MOUNTED", "当骑乘时显示")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SHOW_MOUNTED_TOOLTIP", "在坐骑上时显示。该选项优先级高于战斗中显示")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SHOW_COMBAT", "战斗中显示")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SHOW_COMBAT_TOOLTIP", "当处于战斗中显示")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SHOW_SIEGE", "攻城器时显示")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SHOW_SIEGE_TOOLTIP", "当操作攻城器时显示")
  ZO_CreateStringId("SI_VOTANSMINIMAP_KEYBINDINGS_ZOOM", "缩放快捷键")
  ZO_CreateStringId("SI_VOTANSMINIMAP_ZOOM_OUT", "缩小")
  ZO_CreateStringId("SI_VOTANSMINIMAP_ZOOM_OUT_TOOLTIP", "缩小按键的缩放系数\n(按住键位)")
  ZO_CreateStringId("SI_VOTANSMINIMAP_ZOOM_IN", "放大")
  ZO_CreateStringId("SI_VOTANSMINIMAP_ZOOM_IN_TOOLTIP", "放大按键的缩放系数\n(按住键位)")
  ZO_CreateStringId("SI_VOTANSMINIMAP_APPEARANCE", "外观")
  ZO_CreateStringId("SI_VOTANSMINIMAP_BORDER_STYLE", "边框样式")
  ZO_CreateStringId("SI_VOTANSMINIMAP_BORDER_OPACITY", "边框不透明度")
  ZO_CreateStringId("SI_VOTANSMINIMAP_TITLE_FONT", "标题字体")
  ZO_CreateStringId("SI_VOTANSMINIMAP_TITLE_FONT_SIZE", "标题字体大小")
  ZO_CreateStringId("SI_VOTANSMINIMAP_TITLE_COLOR", "标题颜色")
  ZO_CreateStringId("SI_VOTANSMINIMAP_TITLE_POSITION", "标题位置")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SHOW_FULL_TITLE", "显示完整标题")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SHOW_FULL_TITLE_TOOLTIP", "显示完整标题。包括活动名称和难度，对于小地图窗口可能过长")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SHOW_CLOCK", "显示时钟")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SHOW_CLOCK_TOOLTIP", "在小地图中显示时钟")
  ZO_CreateStringId("SI_VOTANSMINIMAP_TIME_FORMAT", "时间格式")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SHOW_CLOCK0", "关闭")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SHOW_CLOCK1", "现实时间")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SHOW_CLOCK2", "游戏内时间")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SHOW_CLOCK3", "现实和游戏内时间")
  ZO_CreateStringId("SI_VOTANSMINIMAP_ALLOW_FLOOR_NAVIGATION", "允许楼层导航")
  ZO_CreateStringId("SI_VOTANSMINIMAP_ALLOW_FLOOR_NAVIGATION_TOOLTIP", "如果地图有楼层，则在小地图上显示楼层导航按钮")
  ZO_CreateStringId("SI_VOTANSMINIMAP_ZONE_CHANGE_ALERT", "区域变更警报")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SHOW_COMPASS", "显示/隐藏 罗盘")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SHOW_COMPASS_TOOLTIP", "如果显示小地图，则显示或隐藏罗盘，或者保持原样，让其他插件改变罗盘的可见性")
  ZO_CreateStringId("SI_VOTANSMINIMAP_FRAMEDROP_DEBUG", "框架调试")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SHOW_FREEZE_WARNING", "显示冻结警告")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SHOW_FREEZE_WARNING_TOOLTIP", "如果操作超过 60fps 的帧时间，则显示警告")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SHOW_CAMERA_HEADING", "显示游戏镜头朝向")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SHOW_CAMERA_HEADING_TOOLTIP", "在世界地图和小地图上，显示游戏镜头朝向")
  ZO_CreateStringId("SI_VOTANSMINIMAP_CAMERA_HEADING_ANGLE", "标记角度")
  ZO_CreateStringId("SI_VOTANSMINIMAP_CAMERA_HEADING_ANGLE_TOOLTIP", "标记线的角度")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SHOW_ON_TOP", "置顶显示")
  ZO_CreateStringId("SI_VOTANSMINIMAP_SHOW_ON_TOP_TOOLTIP", "使小地图显示在其他元素上方")

  ZO_CreateStringId("SI_VOTANSMINIMAP_ZONEALERTMODE_ALWAYS", "总是")
  ZO_CreateStringId("SI_VOTANSMINIMAP_ZONEALERTMODE_MAP_HIDDEN", "隐藏小地图")
  ZO_CreateStringId("SI_VOTANSMINIMAP_ZONEALERTMODE_NEVER", "从不")
  ZO_CreateStringId("SI_VOTANSMINIMAP_COMPASSMODE_UNTOUCHED", "保持原样")
  ZO_CreateStringId("SI_VOTANSMINIMAP_COMPASSMODE_HIDDEN", "隐藏")
  ZO_CreateStringId("SI_VOTANSMINIMAP_COMPASSMODE_SHOWN", "显示")

  ZO_CreateStringId("SI_VOTANSMINIMAP_KEEP_SQUARE", "保持方形")
  ZO_CreateStringId("SI_VOTANSMINIMAP_KEEP_SQUARE_TOOLTIP", "保持地图区域为正方形。默认。")

  ZO_CreateStringId("SI_BINDING_NAME_VOTANS_TOGGLE_MAP_OFFSET_FIX", "切换固定的小地图位置")

  ZO_CreateStringId("SI_VOTANSMINIMAP_ASYNC_UPDATE", "异步更新")
  ZO_CreateStringId("SI_VOTANSMINIMAP_ASYNC_UPDATE_TOOLTIP", "开（帧速率高于更新）；关（帧速率低于更新）")

  ZO_CreateStringId("SI_VOTANSMINIMAP_PINSIZE_KEEP_FAST_TRAVEL", "传送神龛")
  ZO_CreateStringId("SI_VOTANSMINIMAP_PINSIZE_KEEPS", "要塞")
  ZO_CreateStringId("SI_VOTANSMINIMAP_PINSIZE_DISTRICTS", "区域")
return true end

--Votan's Map Pin Colors
BB.AddonList["VotansMapPinColors"] = function() if not SI_VOTANS_MAPPIN_COLORS_SHOW_PLAYER_PIN then return false end
  ZO_CreateStringId("SI_VOTANS_MAPPIN_COLORS_PREFER_ASSISTED", "可重复任务使用聚焦颜色")
  ZO_CreateStringId("SI_VOTANS_MAPPIN_COLORS_PREFER_ASSISTED_TOOLTIP", "将选中的可重复任务的颜色切换为聚焦颜色")
  ZO_CreateStringId("SI_VOTANS_MAPPIN_COLORS_SHOW_PLAYER_PIN", "显示玩家图标")
  ZO_CreateStringId("SI_VOTANS_MAPPIN_COLORS_SHOW_PLAYER_PIN_TOOLTIP", "允许隐藏玩家图标，为硬核探索爱好者准备")
  ZO_CreateStringId("SI_VOTANS_MAPPIN_COLORS_PLAYER_PIN_VIBRATION", "玩家图标闪烁")
  ZO_CreateStringId("SI_VOTANS_MAPPIN_COLORS_PLAYER_PIN_VIBRATION_TOOLTIP", "打开地图时，短暂使玩家图标闪烁，方便寻找")
return true end

--Wizard's Wardrobe
BB.AddonList["WizardsWardrobe"] = function() if not WizardsWardrobe then return false end
  local Strings = {
    SI_BINDING_NAME_WW_HOTKEY_SETUP_CURRENT = "重新加载当前设置",
    SI_BINDING_NAME_WW_HOTKEY_SETUP_FIX = "尝试修复失败的配置交换",
    
    WW_LC_NAME = "卢晶堡垒",
    WW_LC_RYELAZ = "雷拉兹伯爵和齐利塞特",
    WW_LC_CAVOT_AGNAN = "卡沃特·阿格南",
    WW_LC_ORPHIC = "神秘碎晶魔形",
    WW_LC_KNOT = "奥术结",
    
    WW_MENU_COMPARISON_DEPTH = "物品比较深度",
    WW_MENU_COMPARISON_DEPTH_EASY = "简易",
    WW_MENU_COMPARISON_DEPTH_EASY_TT = "仅检测武器类型和套装",
    WW_MENU_COMPARISON_DEPTH_DETAILED = "详细",
    WW_MENU_COMPARISON_DEPTH_DETAILED_TT = "检测武器类型、套装、特质和品质",
    WW_MENU_COMPARISON_DEPTH_THOROUGH = "完全",
    WW_MENU_COMPARISON_DEPTH_THOROUGH_TT = "检测武器类型、套装、特质、附魔和品质",
    WW_MENU_COMPARISON_IGNORE_COSTUME_SLOTS = "忽略时装",
    WW_MENU_COMPARISON_IGNORE_COSTUME_SLOTS_TT = "开启时，忽略时装配置",
    WW_MENU_COMPARISON_IGNORE_POISON_SLOTS = "忽略毒药",
    WW_MENU_COMPARISON_IGNORE_POISON_SLOTS_TT = "开启时，忽略毒药配置",
    
    WW_MENU_ZONE_SELECTION = "使用传统区域选择",
    WW_MENU_ZONE_SELECTION_TT = "如果设置为'开'，将使用以前版本的网格下拉框；如果设置为'关'，将使用新的选择方法。",
    WW_MENU_KITCHOICE = "允许使用皇冠修理包",
    WW_MENU_KITCHOICE_TT = "如果您的库存中有皇冠修理包，在没有默认修理包的情况下也可以使用。关闭表示忽略皇冠修理包",
    WW_MENU_PRINTCHAT_ANNOUNCEMENT = "通知",
    
    WW_MENU_WEAPON_GEAR_FIX = "修复失败的装备交换",
    WW_MENU_WEAPON_GEAR_FIX_TT = "自动执行修复装备交换失败的步骤",
    WW_MENU_VALIDATION_DELAY = "验证延迟",
    WW_MENU_VALIDATION_DELAY_TT = "在此选择配置验证发生的延迟（毫秒）",
    WW_MENU_VALIDATION_DELAY_WARN = "延迟时间越长，出现误报的几率就越低。如果过低，可能会导致意外行为。",
    
    WW_MSG_SWAPFAIL = "您设置中的 %s 交换失败，正在尝试解决方法，请稍等片刻",
    WW_MSG_SWAPFAIL_DISABLED = "您设置中的 %s 交换失败",
    WW_MSG_SWAPSUCCESS = "成功加载配置",
    WW_MSG_SWAP_FIX_FAIL = "所有解决方法均已失败，请尝试手动解除卡住的装备",
    WW_MSG_BLOCK_WARN = "不要格挡！",
  }
  for key, value in pairs(Strings) do
    SafeAddVersion(key, 1)
    ZO_CreateStringId(key, value)
  end
  
  --Special setting
  WizardsWardrobe.zones.LC.name = GetString(WW_LC_NAME)
  WizardsWardrobe.zones.LC.bosses = {
    [1] = {name = GetString(WW_TRASH),},
    [2] = {name = GetString(WW_LC_RYELAZ),},
    [3] = {name = GetString(WW_LC_CAVOT_AGNAN),},
    [4] = {name = GetString( WW_LC_ORPHIC),},
    [5] = {name = GetString( WW_LC_KNOT ),},
  }
  BB.SetAfterPart(
    function()
      ZO_PostHookHandler(WizardsWardrobeWindowZoneScrollContainer, "OnEffectivelyShown",
        function()
          WizardsWardrobeWindowZoneScrollContainerScrollChildZO_IconChildlessHeader1Text:SetText("常规")
          WizardsWardrobeWindowZoneScrollContainerScrollChildZO_IconHeader1Text:SetText("试炼")
          WizardsWardrobeWindowZoneScrollContainerScrollChildZO_IconChildlessHeader2Text:SetText("竞技场")
          WizardsWardrobeWindowZoneScrollContainerScrollChildZO_IconChildlessHeader3Text:SetText("无尽档案塔")
          WizardsWardrobeWindowZoneScrollContainerScrollChildZO_IconHeader2Text:SetText("杂项")
        end
      )
    end
  )
return true end

--WPamA
BB.AddonList["WPamA"] = function() if not WPamA then return false end
  local Icon = WPamA.Consts.IconsW
  local OpenWindowText = GetString(SI_ENTER_CODE_CONFIRM_BUTTON)
  local L = {
    Lng = "ZH",
  -- DateTime settings
    DateTimePart = {dd = 2, mm = 1, yy = 0, },
    DateFrmt = 4, -- 1 default:m.d.yyy ; 2:yyyy-mm-dd; 3:dd.mm.yyyy; 4:yyyy/mm/dd; 5:dd.mm.yy; 6:mm/dd; 7:dd.mm
    DateFrmtList = {"ESO默认","yyyy-mm-dd","dd.mm.yyyy","yyyy/mm/dd","dd.mm.yy","mm/dd","dd.mm"},
    DayMarker = "日",
    MetricPrefix = {"K","M","G","T","P","E"},
    CharsOrderList = {"ESO默认","名称","联盟, 名称","最高等级, 名称","最低等级, 名称","联盟, 最高等级","联盟, 最低等级"},
  -- Marker (substring) in active quest step text for detect DONE stage
    DoneM = {
      [1] = "返回",
      [2] = "交谈",
      [3] = "回到",
    },
  -- Keybinding string
    KeyBindShowStr  = "显示/隐藏插件窗口",
    KeyBindChgWStr  = "更改插件窗口",
    KeyBindChgTStr  = "更改插件窗口模式",
    KeyBindChgAStr  = "更改插件窗口模式（可选）",
    KeyFavRadMenu   = "收藏夹选项卡的径向菜单",
    KeyBindCharStr  = "显示/隐藏角色窗口",
    KeyBindClndStr  = "显示/隐藏日历窗口", 
    KeyBindPostTd   = "将今天的誓约发到聊天（英语）",
    KeyBindPostTdCL = "将今天的誓约发到聊天（中文）",
    KeyBindWindow0  = OpenWindowText .. ": " .. "组队",
    KeyBindWindow1  = OpenWindowText .. ": " .. "试炼",
    KeyBindWindow2  = OpenWindowText .. ": " .. GetString(SI_ZONECOMPLETIONTYPE9),
    KeyBindWindow3  = OpenWindowText .. ": " .. "技能",
    KeyBindWindow4  = OpenWindowText .. ": " .. GetString(SI_BINDING_NAME_TOGGLE_INVENTORY),
    KeyBindWindow5  = OpenWindowText .. ": " .. GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKCATEGORIES1),
    KeyBindWindow6  = OpenWindowText .. ": " .. GetString(SI_MAPFILTER14),
    KeyBindWindow7  = OpenWindowText .. ": " .. GetString(SI_JOURNAL_MENU_ACHIEVEMENTS) ..
                      ", " .. GetString(SI_COLLECTIONS_MENU_ROOT_TITLE),
    KeyBindWindow8  = OpenWindowText .. ": " .. GetString(SI_QUEST_JOURNAL_GENERAL_CATEGORY),
    KeyBindRGLA     = "显示/隐藏 RGLA（团队队长助手）",
    KeyBindRGLASrt  = "RGLA: 开始",
    KeyBindRGLAStp  = "RGLA: 停止",
    KeyBindRGLAPst  = "RGLA: 发到聊天",
    KeyBindRGLAShr  = "RGLA: 共享任务",
    KeyBindLFGP     = "开启/关闭 GFP (誓约组队查找器)",
    KeyBindLFGPMode = "GFP模式选择 - 3/4/5/6钥匙",
  -- Caption
    Wind = {
      [0] = {
        Capt = "地下城",
        Tab = {
          [1] = {N="誓约", W=110,},
          [2] = {N="日历", W=95,},
          [3] = {N="随机活动", W=200,}, 
          [4] = {N=GetString(SI_ENDLESS_DUNGEON_LEADERBOARDS_CATEGORIES_HEADER), W=181,},
        },
      },
      [1] = {
        Capt = "试炼",
        Tab = {
          [1] = {N="AA, HRC, SO, MOL, CR, SS", W=200,},
          [2] = {N="HOF, AS, KA, RG, DSR, SE", W=192,},
          [3] = {N="LC", W=192,},
        },
      },
      [2] = {
        Capt = GetString(SI_ZONECOMPLETIONTYPE9), -- "World Bosses"
        Tab = {
          [1] = {N="|t24:24:esoui/art/treeicons/tutorial_idexicon_wrothgar_up.dds|t", W=28, S=true, A="沃斯加",},
          [2] = {N="|t24:24:esoui/art/treeicons/tutorial_idexicon_morrowind_up.dds|t", W=28, S=true, A="瓦登费尔",},
          [3] = {N="|t24:24:esoui/art/treeicons/tutorial_idexicon_darkbrotherhood_up.dds|t", W=28, S=true, A="黄金海岸",},
          [4] = {N="|t24:24:esoui/art/treeicons/tutorial_idexicon_summerset_up.dds|t", W=28, S=true, A="夏暮岛",},
          [5] = {N="|t24:24:esoui/art/treeicons/tutorial_idexicon_elsweyr_up.dds|t", W=28, S=true, A="北艾斯维尔",},
          [6] = {N="|t24:24:esoui/art/treeicons/tutorial_indexicon_greymoor_up.dds|t", W=28, S=true, A="西天际",},
          [7] = {N="|t24:24:esoui/art/treeicons/tutorial_idexicon_blackwood_up.dds|t", W=28, S=true, A="黑木",},
          [8] = {N="|t24:24:esoui/art/treeicons/tutorial_idexicon_highisle_up.dds|t", W=28, S=true, A="高岛",},
          [9] = {N="|t24:24:esoui/art/treeicons/tutorial_idexicon_necrom_up.dds|t", W=28, S=true, A="死灵之地",},
        },
      },
      [3] = {
        Capt = "技能",
        Tab = {
          [1] = {N="职业&联盟战争", W=90,},
          [2] = {N="制造", W=60,},
          [3] = {N="公会", W=50,},
          [4] = {N="世界", W=50,},
          [5] = {N="|t24:24:esoui/art/treeicons/tutorial_idexicon_mounts_up.dds|t", W=28, S=true, A=GetString(SI_STATS_RIDING_SKILL),},
          [6] = {N="|t24:24:esoui/art/treeicons/tutorial_idexicon_darkbrotherhood_up.dds|t", W=28, S=true, A="暗影供应者",},
          [7] = {N="|t22:22:esoui/art/champion/champion_points_stamina_icon.dds|t" ..
                   "|t22:22:esoui/art/champion/champion_points_magicka_icon.dds|t" ..
                   "|t22:22:esoui/art/champion/champion_points_health_icon.dds|t", W=70, S=true, A=GetString(SI_STAT_GAMEPAD_CHAMPION_POINTS_LABEL),},
        },
      },
      [4] = {
        Capt = GetString(SI_BINDING_NAME_TOGGLE_INVENTORY),
        Tab = {
          [1] = {N="货币", W=50,},
          [2] = {N="物品", W=70,},
          [3] = {N="|t24:24:esoui/art/icons/store_experiencescroll_001.dds|t", W=28, S=true, A="经验卷轴",},
          [4] = {N="|t24:24:esoui/art/icons/crafting_runecrafter_potion_sp_001.dds|t", W=28, S=true, A="蜕变晶石球",},
          [5] = {N="|t24:24:esoui/art/treeicons/tutorial_idexicon_items_up.dds|t", W=28, S=true,
                 A=GetString(SI_GAMEPAD_PLAYER_INVENTORY_CAPACITY_FOOTER_LABEL),},
          [6] = {N="|t24:24:esoui/art/icons/quest_scroll_001.dds|t", W=28, S=true,
                 A=GetString(SI_SPECIALIZEDITEMTYPE100) .. ", " .. GetString(SI_SPECIALIZEDITEMTYPE101),},
          [7] = {N="|t24:24:esoui/art/worldmap/map_indexicon_key_up.dds|t", W=28, S=true, A="钥匙",},
        },
      },
      [5] = {
        Capt = GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKCATEGORIES1),
        Tab = {
          [1] = {N=GetString(SI_CAMPAIGNRULESETTYPE1), W=80,},
          [2] = {N=GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKSUBCATEGORIES5), W=120,},
          [3] = {N=GetString(SI_DAILY_LOGIN_REWARDS_TILE_HEADER), W=120,},
          [4] = {N="奖励&标志", W=180,},
  --        [5] = {N=GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKSUBCATEGORIES4), W=100,},
        },
      },
      [6] = {
        Capt = GetString(SI_MAPFILTER14),
        Tab = {
          [1] = {N=GetString(SI_COMPANION_OVERVIEW_RAPPORT), W=84,},
          [2] = {N="|t24:24:esoui/art/progression/progression_indexicon_class_up.dds|t" ..
                   "|t24:24:esoui/art/icons/progression_tabicon_fightersguild_up.dds|t" ..
                   "|t24:24:esoui/art/tutorial/progression_tabicon_armorheavy_up.dds|t", W=70, S=true,
                 A="技能：职业、公会、护甲",},
          [3] = {N="|t24:24:esoui/art/progression/icon_2handed.dds|t" ..
                   "|t24:24:esoui/art/progression/icon_bows.dds|t" ..
                   "|t24:24:esoui/art/progression/icon_healstaff.dds|t", W=70, S=true,
                 A="技能：武器",},
          [4] = {N="|t24:24:esoui/art/tutorial/progression_tabicon_armormedium_up.dds|t" ..
                   "|t24:24:esoui/art/tutorial/progression_tabicon_armorheavy_up.dds|t" ..
                   "|t24:24:esoui/art/tutorial/progression_tabicon_armorlight_up.dds|t", W=70, S=true,
                 A=GetString(SI_ARMORY_EQUIPMENT_LABEL) .. ": " .. GetString(SI_EQUIPSLOTVISUALCATEGORY2),},
          [5] = {N="|t24:24:esoui/art/tradinghouse/tradinghouse_apparel_accessories_necklace_up.dds|t" ..
                   "|t24:24:esoui/art/progression/icon_2handed.dds|t" ..
                   "|t24:24:esoui/art/tradinghouse/tradinghouse_apparel_accessories_ring_up.dds|t", W=70, S=true,
                 A=GetString(SI_ARMORY_EQUIPMENT_LABEL) .. ": " .. GetString(SI_EQUIPSLOTVISUALCATEGORY1) .. ", " ..
                   GetString(SI_EQUIPSLOTVISUALCATEGORY3),},
        },
      },
      [7] = {
        Capt = GetString(SI_JOURNAL_MENU_ACHIEVEMENTS) .. ", " .. GetString(SI_COLLECTIONS_MENU_ROOT_TITLE),
        Tab = {
          [1] = {N="季节性庆典", W=100,},
          [2] = {N=GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKSUBCATEGORIES803), W=70,},
        },
      },
      [8] = {
        Capt = GetString(SI_QUEST_JOURNAL_GENERAL_CATEGORY), -- "Miscellaneous"
        Tab = {
          [1] = {N=GetString(SI_ACTIVITY_FINDER_CATEGORY_TIMED_ACTIVITIES), W=102,},
          [2] = {N="委托", W=48,},
          [3] = {N="|t24:24:esoui/art/tutorial/achievements_indexicon_darkanchors_up.dds|t", W=28, S=true,
                 A=GetString(SI_ZONECOMPLETIONTYPE8),}, -- World Events
          [4] = {N="|t28:28:esoui/art/help/help_tabicon_overview_up.dds|t", W=28, S=true,
                 A=GetString(SI_CUSTOMER_SERVICE_OVERVIEW),}, -- Overview
        },
      },
    },
    ModeSettings = {
      [25] = {
        HdT = {
          [1] = "全部",
          [2] = "使用中",
          [3] = "空闲",
        },
      },
  --------
      [42] = {
        HdT = {
          [1] = GetString(SI_COLLECTIBLERESTRICTIONTYPE1), -- Race
          [2] = GetString(SI_COLLECTIBLERESTRICTIONTYPE3), -- Class
          [3] = "SP", [4] = "上次登录", [5] = "游戏时间",
        },
      },
  --------
    }, -- ModeSettings
    SelModeWin = {x = 170, y = 2, dy = 24,},
  -- Labels
    TotalRow = {[1] = "银行",[2] = "总计",},
    HdrLvl = "等级",
    HdrName = "名称",
    HdrClnd = "日期",
    HdrMaj = "玛吉·阿尔拉加斯",
    HdrGlirion = "红胡子格利里恩",
    HdrUrgarlag = "乌尔加拉格·酋长克星",
    HdrLFGReward = "紫色奖励",
    HdrLFGRnd = "地下城",
    HdrLFGBG  = "战场",
    HdrLFGTrib = GetString(SI_ACTIVITY_FINDER_CATEGORY_TRIBUTE),
    HdrAvAReward = GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKSUBCATEGORIES705),
    SendInvTo = "向<<1>>发邀请",
    ShareSubstr = "共享",
    EndeavorTypeNames = { [1] = "日常勉励任务", [2] = "周常勉励任务", },
    NoWorldEventsHere = "此处无世界事件",
    WECalculating = "计算中",
    WEDistance = "距离",
  -- Pledge Quest Givers NPC names
    PledgeQGivers = {
      [1] = "玛吉·阿尔拉加斯",
      [2] = "红胡子格利里恩",
      [3] = "乌尔加拉格·酋长克星",
    },
  -- Shadowy-Supplier NPC name
    ShadowySupplier = {
      ["保持沉默"] = true,
    },
    ComeBackLater = "晚点再来",
  -- Replace text for long companion equipment names
    CompanionEquipRepl = {
     --- Trait names replacement ---
     --- Item names replacement ---
     --- Item types replacement ---
    },
  -- Addon Options Menu
  --> 1
    OptGeneralHdr = "一般设定",
    OptCharsOrder = "角色顺序",
    OptCharsOrderF = "选择在插件窗口中显示角色的顺序。需要重新加载UI。仅在插件加载时排序角色，之后顺序不会改变。",
    OptAlwaysMaxWinX  = "调整主窗口宽度",
    OptAlwaysMaxWinXF = "如启用，插件的主窗口在所有模式下将始终具有相同的宽度。如禁用，主窗口的宽度将根据模式而变化。",
    OptLocation = "显示地点而非地下城名称",
    OptENDungeon = "显示地下城的英文名称",  
    OptDontShowNone = "显示空白而非“无”",
    OptDontShowReady = "\"Ready\"显示空白而非“无”",
    OptTitleToolTip = "为窗口标题显示提示框",
    OptLargeCalend  = "誓约日历显示的天数",
    OptLargeCalendF = "选择在誓约日历界面显示多少天的信息",
    OptDateFrmt  = "日期格式",
    OptDateFrmtF = "选择日历窗口中显示的日期格式",
    OptShowTime  = "同时显示时间",
    OptLFGRndAvl  = "短时间段的格式",
    OptLFGRndAvlF = "选择短时间段（小于24小时）的形式，如随机活动的每日奖励、阴影供应商、骑行技能等.",
    OptTrialAvl  = "下个试炼奖励箱可获取时间...",
    OptTrialAvlF = "当试炼完成后的奖励容器可获取时，所显示的信息格式。可选项为“日期时间”和“倒计时”。",
    OptTimerList = {"倒计时","日期时间 (MM/DD hh:mi)","日期时间 (DD.MM hh:mi)"},
    OptRndDungDelay = "日常奖励等待时间",
    OptRndDungDelayF = "完成每日随机地下城后，等待游戏服务器通知日常奖励的延迟时间（秒）。默认设置（5秒），需要在重新登录或重新加载UI后倒计时显示“???”时才能修改。",	
    OptShowMonsterSetTT = "为怪物套显示提示框",
    OptShowMonsterSetTTF = "在“无畏者誓约”和“誓约日历”模式中为怪物套显示提示框",
    OptMouseModeUI = "显示鼠标指针",
    OptMouseModeUIF = "插件窗口打开时,显示鼠标指针",
    OptCharNamesMenu = "角色名称",
    OptCharNameColor = "以联盟颜色显示名称",
    OptCharNameAlign = "名称对齐",
    OptNamesAlignList = {"左", "中", "右"},
    OptCorrLongNames = "修改长名称的显示方式",
    OptNamesCorrList = {"默认", "字体大小", "裁切中间", "文本掩码"},
    OptNamesCorrRepl = {"在名称中查找此文本", "并替换为此文本"},
    OptCurrencyValThres = "将货币数值四舍五入到...",
    OptCurrencyValThresF = table.concat(
                         { "将货币数值四舍五入到什么单位\n",
                           GetString(SI_GAMEPAD_CURRENCY_SELECTOR_HUNDREDS_NARRATION),      " : 123 K\n",
                           GetString(SI_GAMEPAD_CURRENCY_SELECTOR_THOUSANDS_NARRATION),     " : 1234 K\n",
                           GetString(SI_GAMEPAD_CURRENCY_SELECTOR_TEN_THOUSANDS_NARRATION), " : 12345 K"
                         } ),
    OptCompanionRapport = "伙伴默契度显示模式...",
    OptCompanionRprtList = {"数字", "文本"},
    OptCompanionRprtMax = "同时显示最大值",
    OptCompanionEquip = "伙伴装备显示模式...",
    OptCompanionEquipList = {"装备名", "装备类型", "装备特质", "类型和特质"},
    OptEndeavorRewardMode = "勉励任务奖励显示模式...",
    OptEndeavorRewardList = {"单个", "当前", "最大"},
    OptEndeavorChatMsg  = "在聊天窗口中显示进度",
    OptEndeavorChatMsgF = "在聊天窗口中显示进度相关信息",
    OptEndeavorChatChnl = "聊天框通知进度",
    OptEndeavorChatChnlF = "在聊天窗口中通知进度相关信息",
  --> 2
    OptModeSetHdr = "选项和模式设置",
    OptAutoActionsHdr = "自动接日常任务",
    OptAutoTakeUpPledges = "自动誓约任务",
    OptAutoTakeUpPledgesF = "与无畏者NPC对话时自动接受誓约任务",
    OptAutoTakeDBSupplies = "自动打开黑暗兄弟会奖励",
    OptAutoTakeDBSuppliesF = "在与暗影供应者的对话中自动获得有益的物品(补给)",
    OptAutoTakeDBList = {"帐号", "角色"},
    OptChoiceDBSupplies = "接收物品类型",
    OptDBSuppliesList = {"默认", "毒药/药水", "不显示", "装备"},
    OptLFGPHdr = "GFP(誓约组队查找器)",
    OptLFGPOnOff = "允许使用GFP",
    OptLFGPMode = "同时将组队模式设置为...",
    OptLFGPModeList = {"总是3钥匙","总是4钥匙","总是5钥匙","总是6钥匙","依角色而定"},
    OptLFGPIgnPledge = "忽略“誓约已完成”检查标记",
    OptLFGPAlert = "屏幕中通知",
    OptLFGPChat = "聊天框通知",
  --> 3
    OptRGLAHdr = "RGLA设定(团队队长助手)",
    OptRGLAQAutoShare = "允许自动共享任务",
    OptRGLAQAlert = "屏幕中通知",
    OptRGLAQChat = "聊天框通知",
    OptRGLABossKilled = "BOSS被击杀后RGLA停止",
  --> 4
    CharsOnOffHdr = "显示/隐藏角色",
    CharsOnOffNote = "注意：您当前的角色总是忽略此设定。当前角色的相关信息在所有模式下都会显示。",
    OptCharOnOffTtip = "显示/隐藏角色“<<1>>”",
  --> 5
    ModesOnOffHdr = "显示/隐藏窗口模式",
    ModesOnOffNote = "注意：此设置仅影响顺序切换窗口模式。您可以隐藏任何窗口模式，但至少需要保留一个非隐藏窗口模式。您也可以从菜单直接选择指定窗口模式。",
    OptWindOnOffTtip = "显示/隐藏窗口\n“<<1>>”",
    OptModeOnOffTtip = "显示/隐藏窗口模式\n“<<1>>”",
  --> 6
    CustomModeKbdHdr  = "自定义按键设置",
    CustomModeKbdNote = "注意:此设置是帐户范围的。自定义模式呼叫键允许您为您选择的呼叫模式分配键。",
    OptCustomModeKbd  = GetString(SI_COLLECTIBLECATEGORYTYPE29) .. " <<1>> ...",
  --> 7
  --  ResetCharNote = "",
    ResetChar = "重置角色列表",
    ResetCharNote = "即使删除了角色，数据也会继续保存。为了删除不存在的角色的数据，需要点击下面的按钮。角色列表重置后，要取得新角色的数据需要重新登录。",
    ResetCharWarn = "删除所有角色的相关数据!可以吗？",
  -- LFGP texts
    LFGPSrchCanceled = "组队搜索已取消",
    LFGPSrchStarted  = "组队搜索已开始",
    LFGPAlrdyStarted = "其他活动已开始",
    LFGPQueueFailed  = "创建队列失败",
    LFGP_ErrLeader   = "您不是队长!",
    LFGP_ErrOverland = "您未身处大地图中!",
    LFGP_ErrGroupRole= "请设定组队角色!",
  -- RGLA text
    RGLABossKilled = "BOSS被打倒了。RGLA已停止。",
    RGLALeaderChanged = "队长已更改。RGLA已停止。",
    RGLAShare = "共享",
    RGLAStop = "停止",
    RGLAPost = "发布",
    RGLAStart = "开始",
    RGLAStarted = "已开始",
    RGLALangTxt = "到聊天频道",
  -- RGLA Errors
    RGLA_ErrLeader = "你不是队长!",
    RGLA_ErrAI = "未安装或未开启AutoInvite插件!",
    RGLA_ErrBoss = "BOSS已经被击杀。RGLA无法启动。",
    RGLA_ErrQuestBeg = "还没有接到日常任务",
    RGLA_ErrQuestEnd = ")!",
    RGLA_ErrLocBeg = "现在、", 
    RGLA_ErrLocEnd = "立刻!", 
    RGLA_Loc = {
      [ 0] = "沃斯加",
      [ 1] = "瓦登费尔",
      [ 2] = "黄金海岸",
      [ 3] = "夏暮岛",
      [ 4] = "北艾斯维尔",
      [ 5] = "西天际",
      [ 6] = "灰沼洞穴",
      [ 7] = "黑木",
      [ 8] = "高岛",
      [ 9] = "泰尔瓦尼半岛",
      [10] = "死灵之地",
    },
  -- Dungeons Status
    DungStDone = "完成",
    DungStNA = "无",
  -- Wrothgar Boss Status
    WWBStNone = "无",
    WWBStDone = "完成",
    WWBStCur  = "进行中",
  -- Trials Status
    TrialStNone = "无",
    TrialStActv = "进行中",
  -- LFG Random Dungeon Status
    LFGRewardReady = "就绪",
    LFGRewardNA = "无",
  -- Shadowy Supplier
    ShSuplUnkn = "？",
    ShSuplReady = "就绪",
    ShSuplNA = "无",
  -- Login Status
    LoginToday = "今天",
    Login1DayAgo = "昨天",
  }

  L.ToolTip = {
    [-1] = "",
    [ 0] = Icon.LMB .. " 关闭窗口",
    [ 1] = Icon.LMB .. " 显示选项窗口",
    [ 2] = Icon.LMB .. " 切换窗口\n" .. Icon.RMB .. " 选择窗口",
    [ 3] = Icon.LMB .. Icon.RMB .. "（英文/中文）发布当日誓约到聊天",
    [ 4] = "您当前在完成誓约方面的进展",
    [ 5] = "当前和将来的誓约任务日历",
    [ 6] = "您当前在完成日常任务方面的进展",
    [ 7] = "无畏者钥匙、开锁器、灵魂石及其他...",
    [ 8] = "您的角色在启迪状态",
    [ 9] = "您的角色未在启迪状态",
    [10] = Icon.LMB .. " " .. L.KeyBindLFGP .. "\n" .. Icon.RMB .. " " .. L.KeyBindLFGPMode,
    [11] = "蜕变水晶",
  --
    [12] = "您当前在世界技能方面的进展。",
    [13] = GetString(SI_STABLE_STABLES_TAB),
    [14] = GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKCATEGORIES1),
    [15] = "季节性庆典",
    [16] = "您当前在公会技能方面的进展。",
    [17] = "您当前在职业&联盟战争技能方面的进展。",
    [18] = "您当前在制造技能方面的进展。",
    [19] = "周常试炼奖励可用性",
    [20] = "随机地下城和战场日常奖励追踪器",
  -- WB Wrothgar
    [21] = "未完成的暗锚\n - 重生者赞达杜诺兹",
    [22] = "奈查莱夫特瀑布\n - 矮人百夫长奈查莱夫特",
    [23] = "酋长王的王座\n - 酋长王厄都",
    [24] = "疯狂食人魔祭坛\n - 疯乌尔卡兹布",
    [25] = "偷猎者营地\n - 老斯纳加拉",
    [26] = "被诅咒的繁殖场\n - “憎恶”科林萨克",
  --
    [27] = "成就倒计时",
    [29] = "当前GFP模式",
    [30] = "紫色奖励可获取",
  -- 31-39 Class skills + Guild skills
    [31] = "第一职业技能线",
    [32] = "第二职业技能线",
    [33] = "第三职业技能线",
    [34] = "斗士公会",
    [35] = "法师公会",
    [36] = "无畏者",
    [37] = "盗贼公会",
    [38] = "黑暗兄弟会",
    [39] = "塞伊克教团",
  -- 41-47 Craft skills
  -- 48-50 AvA skills
    [51] = "赫尔·拉要塞",
    [52] = "艾瑟瑞恩档案塔",
    [53] = "乌鞘蛇圣所",
    [54] = "洛克汗的巨口",
    [55] = "制造大厅",
    [56] = "庇护圣所",
    [57] = "云栖城",
    [58] = "太阳尖顶",
    [59] = "凯恩之盾",
  --
    [60] = GetString(SI_LEVEL_UP_REWARDS_SKILL_POINT_TOOLTIP_HEADER),
    [61] = "金币",
    [62] = "委托券",
    [63] = "联盟点数",
    [64] = "泰尔瓦石",
  --65-69 Item name
  -- WB Vvardenfell
    [71] = "米希尔-达达利特蛋矿\n - 女王的配偶",
    [72] = "塞洛珊的议会\n - 塞洛珊",
    [73] = "尼尔索格的幽谷\n - “坚不可摧”尼尔索格",
    [74] = "苏里彭德农场\n - 饿死鬼乌鲁乌斯",
    [75] = "杜比迪尔·阿拉尔塔\n - 欺骗者梅兹",
    [76] = "沉船湾\n - “鸣鸟”金布鲁希尔",
  -- WB Gold Coast
    [77] = "科瓦奇竞技场",
    [78] = "行政官的愚行\n - 里蒙那奥卢斯",
  -- WB Summerset
    [81] = "女王孵化场\n - 礁石女王",
    [82] = "龙骨撕裂者的巢穴\n - 龙骨撕裂者",
    [83] = "灵鹿乐园\n - 卡内瑞",
    [84] = "维伦金湾\n - 科尔根",
    [85] = "格拉维德的藏身处\n - 格拉维德",
    [86] = "狮鹫飞行场\n - 海利亚塔和纳格拉薇亚",
  -- Inventory
    [87] = "关于物品栏容量的信息",
    [88] = "物品栏总空间",
    [89] = "物品栏已使用空间",
    [90] = "物品栏可用空间",
  -- WB Northern Elsweyr
    [91] = "骨坑\n - 织骨者纳鲁兹",
    [92] = "伤痕边缘\n - 盗墓者丹纳尔",
    [93] = "血手洞穴\n - 阿库哈戈和扎维",
    [94] = "碎剑山丘\n - 剑术大师维斯拉杜",
    [95] = "利爪峡谷\n - 狡猾的基瓦",
    [96] = "噩梦高原\n - 扎尔希姆",
  -- Inventory Upgrades
    [97] = GetString(SI_INTERACT_OPTION_BUY_BAG_SPACE),
    [98] = GetString(SI_GAMEPAD_STABLE_TRAIN) .. " - " .. GetString(SI_RIDINGTRAINTYPE2),
    [99] = GetString(SI_COLLECTIBLECATEGORYTYPE3) .. " - " .. GetString(SI_BINDING_NAME_TOGGLE_INVENTORY),
  -- AvA Activity
    [100] = GetString(SI_CAMPAIGN_BROWSER_TOOLTIP_HOME_CAMPAIGN),
    [101] = GetString(SI_CAMPAIGN_SCORING_END_OF_CAMPAIGN_REWARD_TIER),
    [102] = GetString(SI_GAMEPAD_CAMPAIGN_SCORING_DURATION_REMAINING),
    [103] = GetString(SI_STATS_ALLIANCE_RANK),
    [104] = GetString(SI_LOOT_HISTORY_LEADERBOARD_SCORE) .. ".\n" .. GetString(SI_LEADERBOARDS_RANK_HELP_TOOLTIP),
    [105] = GetString(SI_DAILY_LOGIN_REWARDS_TILE_HEADER) .. " (联盟战争)",
  --
    [106] = GetString(SI_ACTIVITY_FINDER_CATEGORY_TIMED_ACTIVITIES),
    [107] = "暗影供应者",
    [108] = "暗影供应者冷却计时器",
    [109] = "伙伴默契度",
    [110] = GetString(SI_STAT_GAMEPAD_CHAMPION_POINTS_LABEL),
    [111] = GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKSUBCATEGORIES212),
  -- World Events
    [112] = "", -- an overridden string
    [113] = "", -- an overridden string
    [114] = "", -- an overridden string
    [115] = "|t24:24:esoui/art/progression/progression_tabicon_weapons_active.dds|t" ..
            "- 从检测到可用事件到现在已经过去了多长时间。\n" ..
            "|t28:28:esoui/art/progression/progression_crafting_delevel_up.dds|t" ..
            "- 从事件完成到现在已经过去了多长时间。",
    [116] = "活动进行了多长时间。\n（玩家完成活动用了多长时间）",
    [117] = "到世界事件可用的预计时间。\n" ..
            "至少需要完成 2 个事件才能计算时间。\n" ..
            "完成的事件越多，时间计算就越准确。",
    [118] = "HP % - 事件Boss的生命值等级。\n" ..
            "|t28:28:esoui/art/progression/progression_crafting_delevel_up.dds|t" ..
            "- 自事件完成以来已经过去了多少时间。",
    [119] = "到事件Boss的距离（以米为单位）。\n只有在距离Boss300米范围内才能获得关于Boss的准确信息。",
    [120] = "世界事件可用前的预计时间。\n" ..
            "取决于该地点玩家的数量和活跃状况。",
  -- WB Western Skyrim
    [121] = "伊斯加沙滩\n - 海巨人",
    [122] = "霍德雷克狩猎场\n - 狼人狩猎队",
    [123] = "勇士之环",
    [124] = "影母港湾\n - 影母",
  -- WB Blackreach: Greymoor Caverns
    [125] = "吸血鬼进食场\n - 进食场",
    [126] = "巨像充能站\n - 矮人巨像",
  --131-136 World skills
  -- Endless Dungeon progress
    [158] = "每日任务\n" ..
            Icon.Lock .. " - 指引任务未完成\n" ..
            Icon.Quest .. " - 任务可用\n" ..
            Icon.ChkM .. " - 任务已完成",
    [159] = "达到的最佳进展\n(所有在插件激活下进行的地下城)",
  --160-190 Item name
  -- Trials
    [191] = "石林",
    [192] = "恐帆礁石",
    [193] = "理智边缘",
    [194] = "卢晶堡垒",
  -- WB Blackwood
    [201] = "老死瘤的池塘\n - 老死瘤",
    [202] = "谢姆霍克的泻湖\n - 战利品掠夺者谢姆霍克",
    [203] = "苏尔山仪式地\n - 死亡制造者亚克哈特, 努库吉玛, 苏·莫克, 沼泽神秘人维莎",
    [204] = "破碎的石巢神庙\n - 先驱杰姆瓦斯",
    [205] = "沙尔丢斯的发掘地\n - 布朗姆",
    [206] = "蟾蜍之舌战争营地\n - 战争酋长扎斯莫兹",
  -- Crafting Writs
    [207] = GetQuestName(WPamA.DailyWrits.QuestIDs[1][1]),
    [208] = GetQuestName(WPamA.DailyWrits.QuestIDs[2][1]),
    [209] = GetQuestName(WPamA.DailyWrits.QuestIDs[3][1]),
    [210] = GetQuestName(WPamA.DailyWrits.QuestIDs[4][1]),
    [211] = GetQuestName(WPamA.DailyWrits.QuestIDs[5][1]),
    [212] = GetQuestName(WPamA.DailyWrits.QuestIDs[6][1]),
    [213] = GetQuestName(WPamA.DailyWrits.QuestIDs[7][1]),
  --214-229 Companion Skills
    [214] = "职业技能",
    [215] = "", -- an overridden string
    [216] = "", -- an overridden string
    [217] = "", -- an overridden string
    [218] = GetString(SI_EQUIPMENTFILTERTYPE1),
    [219] = GetString(SI_EQUIPMENTFILTERTYPE2),
    [220] = GetString(SI_EQUIPMENTFILTERTYPE3),
    [221] = GetString(SI_WEAPONCONFIGTYPE3),
    [222] = GetString(SI_WEAPONCONFIGTYPE1),
    [223] = GetString(SI_WEAPONCONFIGTYPE2),
    [224] = GetString(SI_WEAPONCONFIGTYPE4),
    [225] = GetString(SI_WEAPONCONFIGTYPE5),
    [226] = GetString(SI_WEAPONCONFIGTYPE6),
  --227-240 Companion Equips
    [227] = GetString(SI_EQUIPSLOT0),
    [228] = GetString(SI_EQUIPSLOT3),
    [229] = GetString(SI_EQUIPSLOT2),
    [230] = GetString(SI_EQUIPSLOT16),
    [231] = GetString(SI_EQUIPSLOT6),
    [232] = GetString(SI_EQUIPSLOT8),
    [233] = GetString(SI_EQUIPSLOT9),
    [234] = GetString(SI_EQUIPSLOT4),
    [235] = GetString(SI_EQUIPSLOT5),
    [236] = GetString(SI_EQUIPSLOT1),
    [237] = GetString(SI_EQUIPSLOT11),
    [238] = GetString(SI_EQUIPSLOT12),
  --239
  --240
  -- WB High Isle
    [241] = "巨蛇泥沼\n - 蛇魔召唤者温莎",
    [242] = "耶弗尔的大釜\n - 黑魔骑士",
    [243] = "黑石山谷\n - 上升行刑者, 上升掠夺者",
    [244] = "鹿人瀑布\n - 格莱米奥斯·野角",
    [245] = "阿梅诺斯水池\n - 冲动之斯凯拉德, 冲动之罗萨拉",
    [246] = "莫尔纳德瀑布\n - 海螯首领, 海螯配偶",
  --247-249 Books Category (Init by WPamA:InitLoreBookMode)
  -- Hireling mail and crafting profession certification
    [250] = "\n" .. Icon.Mail .. " - 可使用雇工邮件（需要重登游戏或更改位置）" ..
            "\n" .. Icon.NoCert .. " - 未完成生产认证任务",
  -- WB Necrom
    [251] = "梦魇巢穴\n - 行走的梦魇",
    [252] = "克拉莫拉普盆地\n - 制链者科里恩",
    [253] = "深层掠夺者沼地\n - 弗洛库尔萨",
    [254] = "西索恩广场\n - 瓦金纳兹·德克",
    [255] = "圣契大教堂\n - 首席编者",
    [256] = "符文大师卫城\n - 符文大师希奥马拉",
  }
  --
  L.ToolTip[215] = L.ToolTip[34]
  L.ToolTip[216] = L.ToolTip[35]
  L.ToolTip[217] = L.ToolTip[36]
  --
  L.RGLAMsg = {
    [1] = "区域：寻找队员...",
    [2] = "区域：寻找队员（缩短）",
    [3] = "区域：1分钟后开始",
    [4] = "组队：1分钟后开始",
    [5] = "组队：开始",
    [6] = "区域：BOSS被打倒了",
    [7] = "组队：您已完成了",
    [8] = "关于插件",
  }
  -- In Dungeons structure:
  -- Q - Quest name which indicates the dungeon
  -- N - Short name of the dungeon displayed by the addon
  L.Dungeons = {
  -- Virtual dungeon
    [1] = { -- None
      N = "无",
    },
    [2] = { -- Unknown
      N = "未知",
    },
  -- First location dungeons
    [3] = { -- AD, Auridon, Banished Cells I
      N = "放逐地牢1",
    },
    [4] = { -- EP, Stonefalls, Fungal Grotto I
      N = "真菌岩洞1",
    },
    [5] = { -- DC, Glenumbra, Spindleclutch I
      N = "蛛丝之握洞穴1",
    },
    [6] = { -- AD, Auridon, Banished Cells II
      N = "放逐地牢2",
    },
    [7] = { -- EP, Stonefalls, Fungal Grotto II
      N = "真菌岩洞2",
    },
    [8] = { -- DC, Glenumbra, Spindleclutch II
      N = "蛛丝之握洞穴2",
    },
  -- Second location dungeons
    [9] = { -- AD, Grahtwood, Elden Hollow I
      N = "艾尔登洞穴1",
    },
    [10] = { -- EP, Deshaan, Darkshade Caverns I
      N = "暗影洞穴1",
    },
    [11] = { -- DC, Stormhaven, Wayrest Sewers I
      N = "途歇城下水道1",
    },
    [12] = { -- AD, Grahtwood, Elden Hollow II
      N = "艾尔登洞穴2",
    },
    [13] = { -- EP, Deshaan, Darkshade Caverns II
      N = "暗影洞穴2",
    },
    [14] = { -- DC, Stormhaven, Wayrest Sewers II
      N = "途歇城下水道2",
    },
  -- 3 location dungeons
    [15] = { -- AD, Greenshade, City of Ash I
      N = "灰烬之城1",
    },
    [16] = { -- EP, Shadowfen, Arx Corinium
      N = "科林涅姆堡垒",
    },
    [17] = { -- DC, Rivenspire, Crypt of Hearts I
      N = "心灵地穴1",
    },
    [18] = { -- AD, Greenshade, City of Ash II
      N = "灰烬之城2",
    },
    [19] = { -- DC, Rivenspire, Crypt of Hearts II
      N = "心灵地穴2",
    },
  -- 4 location dungeons
    [20] = { -- AD, Malabal Tor, Tempest Island
      N = "风暴岛",
    },
    [21] = { -- EP, Eastmarch, Direfrost Keep
      N = "恐霜要塞",
    },
    [22] = { -- DC, Alik`r Desert, Volenfell
      N = "沃伦费尔",
    },
  -- 5 location dungeons
    [23] = { -- AD, Reaper`s March, Selene`s Web
      N = "夕月之网",
    },
    [24] = { -- EP, The Rift, Blessed Crucible
      N = "受佑熔炉",
    },
    [25] = { -- DC, Bangkorai, Blackheart Haven 
      N = "黑心港口",
    },
  -- 6 location dungeons
    [26] = { -- Any, Coldharbour, Vaults of Madness
      N = "疯狂密室",
    },
  -- 7 location dungeons
    [27] = { -- Any, Imperial City, IC Prison
      N = "帝都监狱",
    },
    [28] = { -- Any, Imperial City, WG Tower
      N = "白金塔",
    },
  -- Shadows of the Hist DLC dungeons
    [29] = { -- EP, Shadowfen, Ruins of Mazzatun
      N = "谜城遗迹",
    },
    [30] = { -- EP, Shadowfen, Cradle of Shadows
      N = "暗影摇篮",
    },
  -- Horns of the Reach DLC dungeons
    [31] = { -- Any, Craglorn, Bloodroot Forge
      N = "血根熔炉",
    },
    [32] = { -- Any, Craglorn, Falkreath Hold
      N = "佛克瑞斯领地",
    },
  -- Dragon Bones DLC dungeons
    [33] = { -- DC, Bangkorai, Fang Lair
      N = "獠牙巢穴",
    },
    [34] = { -- DC, Stormhaven, Scalecaller Peak
      N = "唤鳞者之巅",
    },
  -- Wolfhunter DLC dungeons
    [35] = { -- AD, Reaper`s March, Moon Hunter Keep
      N = "月狩要塞",
    },
    [36] = { -- AD, Greenshade, March of Sacrifices
      N = "献祭之境",
    },
  -- Wrathstone DLC dungeons
    [37] = { -- EP, Eastmarch, Frostvault
      N = "冰霜宝库",
    },
    [38] = { -- Any, Gold Coast, Depths of Malatar
      N = "马拉塔深渊",
    },
  -- Scalebreaker DLC dungeons
    [39] = { -- Any, Elsweyr, Moongrave Fane
      N = "月墓神庙",
    },
    [40] = { -- AD, Grahtwood, Lair of Maarselok
      N = "马塞洛克巢穴",
    },
  -- Harrowstorm DLC dungeons
    [41] = { -- Any, Wrothgar, Icereach
      N = "冰境",
    },
    [42] = { -- DC, Bangkorai, Unhallowed Grave
      N = "亵渎坟墓",
    },
  -- Stonethorn DLC dungeons
    [43] = { -- Any, Blackreach, Stone Garden
      N = "石之花园",
    },
    [44] = { -- Any, Western Skyrim, Castle Thorn
      N = "荆棘城堡",
    },
  -- Flames of Ambition DLC dungeons
    [45] = { -- Any, Gold Coast, Black Drake Villa
      N = "黑德雷克庄园",
    },
    [46] = { -- EP, Deshaan, The Cauldron
      N = "大釜",
    },
  -- Waking Flame DLC dungeons
    [47] = { -- DC, Glenumbra, Red Petal Bastion
      N = "红花堡",
    },
    [48] = { -- Any, Blackwood, The Dread Cellar
      N = "恐惧地牢",
    },
  -- Ascending Tide DLC dungeons
    [49] = { -- Any, Summerset, Coral Aerie
      N = "珊瑚鹫巢",
    },
    [50] = { -- DC, Rivenspire, Shipwright's Regret
      N = "船工之憾地牢",
    },
  -- Lost Depths DLC dungeons
    [51] = { -- Any, High Isle, Earthen Root Enclave
      N = "地根飞地",
    },
    [52] = { -- Any, High Isle, Graven Deep
      N = "铭深岛",
    },
  -- Scribes of Fate DLC dungeons
    [53] = { -- EP -> Stonefalls - Bal Sunnar
      N = "巴尔桑纳",
    },
    [54] = { -- EP -> The Rift - Scrivener's Hall
      N = "书吏大厅",
    },
  -- Scions of Ithelia DLC dungeons
    [55] = { -- Any -> The Reach - Oathsworn Pit
      N = "誓约者之渊",
    },
    [56] = { -- Any -> Wrothgar - Bedlam Veil
      N = "癫狂之幕",
    },
  }
  L.DailyBoss = {
  -- Wrothgar
    [1]  = {C = "击败重生者赞达杜诺兹",}, -- ZANDA
    [2]  = {C = "击败奈查莱夫特",}, -- NYZ
    [3]  = {C = "击败酋长王厄都",}, -- EDU
    [4]  = {C = "击败食人魔疯乌尔卡兹布",}, -- OGRE
    [5]  = {C = "制止偷猎者",}, -- POA
    [6]  = {C = "击败“憎恶”科林萨克",}, -- CORI
  -- Vvardenfell
    [7]  = {C = "击败女王的配偶",}, -- QUEEN
    [8]  = {C = "击败演讲者塞洛珊",}, -- SAL
    [9]  = {C = "击败“坚不可摧”尼尔索格",}, -- NIL
    [10] = {C = "击败乌鲁乌斯",}, -- WUY
    [11] = {C = "阻止杜比迪尔·阿拉尔的实验",}, -- DUB 
    [12] = {C = "击败“鸣鸟”金布鲁希尔",}, -- SIREN
  -- Gold Coast
    [13] = {C = "征服科瓦奇竞技场",}, -- ARENA
    [14] = {C = "清理挖掘现场",}, -- MINO
  -- Summerset
    [15] = {C = "击败礁石女王",}, -- QUEEN
    [16] = {C = "击败龙骨撕裂者",}, -- KEEL
    [17] = {C = "击败卡内瑞",}, -- CAAN
    [18] = {C = "击败科尔根",}, -- KORG 
    [19] = {C = "击败格拉维德",}, -- GRAV
    [20] = {C = "击败海利亚塔和纳格拉薇亚",}, -- GRYPH 
  -- Northern Elsweyr
    [21] = {C = "击败织骨者纳鲁兹",}, -- NARUZ
    [22] = {C = "击败盗墓者丹纳尔",}, -- THAN
    [23] = {C = "击败阿库哈戈和扎维",}, -- ZAVI
    [24] = {C = "击败剑术大师维斯拉杜",}, -- VHYS
    [25] = {C = "击败狡猾的基瓦",}, -- KEEVA
    [26] = {C = "击败扎尔希姆",}, -- ZAL
  -- Western Skyrim
    [27] = {C = "击败伊斯加",}, -- YSM
    [28] = {C = "击败狼人",}, -- WWOLF
    [29] = {C = "击败不败的斯克雷格",}, -- SKREG
    [30] = {C = "击败影母",}, -- SHADE
  -- Blackreach: Greymoor Caverns
    [31] = {C = "肃清吸血鬼进食场",}, -- VAMP
    [32] = {C = "击败拆卸者锻莫巨像",}, -- DISM
  -- Blackwood
    [33] = {C = "击败老死瘤",}, -- FROG
    [34] = {C = "击败战利品掠夺者谢姆霍克",}, -- XEEM
    [35] = {C = "击败苏尔山祭司",}, -- SUL
    [36] = {C = "击败先驱杰姆瓦斯",}, -- RUIN
    [37] = {C = "击败布朗姆-科斯卡",}, -- BULL
    [38] = {C = "击败战争酋长扎斯莫兹",}, -- ZATH
  -- High Isle
    [39] = {C = "击败蛇魔召唤者温莎",}, -- VIN
    [40] = {C = "击败黑魔骑士",}, -- SAB
    [41] = {C = "击败飞升教团的狂热分子",}, -- SHAD
    [42] = {C = "击败格莱米奥斯·野角",}, -- WILD
    [43] = {C = "击败长老团神师",}, -- ELD
    [44] = {C = "击败海螯主母",}, -- HAD
  -- Necrom
    [45] = {C = "击败行走的梦魇",}, -- WNM
    [46] = {C = "击败制链者科里恩",}, -- CORL
    [47] = {C = "击败弗洛库尔萨",}, -- VRO
    [48] = {C = "击败瓦金纳兹·德克",}, -- DEK
    [49] = {C = "击败首席编者",}, -- CATL
    [50] = {C = "击败符文大师希奥马拉",}, -- XIOM
  }
  L.DayOfWeek = {
    [0] = "周日",
    [1] = "周一",
    [2] = "周二",
    [3] = "周三",
    [4] = "周四",
    [5] = "周五",
    [6] = "周六",
  }
  L.Chat = {
    Today = "今日誓约: (<<1>> <<2>>): ",
    Anyday = "誓约: (<<1>> <<2>>): ",
    Loot  = " (可获取 <<1>>)",
    Addon = " (插件 <<1>> v<<X:2>>)",
    Dlmtr = "；",
  }
  L.RGLA = {
    CZ = "/z",
    CL = "/g1",
    CP = "/p",
    F1 = "<<1>>寻找<<2>>队员，可共享任务。",
    F2 = "输入 <<1>> 自动邀请并自动共享任务",
    F3 = "输入 <<1>> 自动邀请",
  --F4 = "",
    F5 = " ( <<1>> ).",
    F6 = "<<1>>寻找“<<2>>”队员，自动邀请，自动共享任务",
    F7 = "<<1>>寻找“<<2>>”队员，自动邀请",
    F8 = "<<1>> <<2>> 1分钟后开始",
    F9 = "/p 开始 <<1>>",
    F10 = "<<1>> <<2>> 已倒下",
    F11 = "/p 任务已自动共享。如未接到可能您还有其他Boss任务未完成，或者您今天已完成过该任务。",
    F12 = "ESOUI.COM插件 <<1>> v<<2>>：誓约、试炼和世界Boss日常追踪，自动邀请和自动分享任务。",
  }

  --Special Setting
  WPamA.i18n = BB.TableCopy(L, WPamA.i18n)

return true end

--WritWorthy
BB.AddonList["WritWorthy"] = function() if not WritWorthy then return false end
  WritWorthy.I18N['static']['zh'] = {
      ["ags_label"                             ] = "WritWorthy 每张委托券花费"
  ,   ["button_dequeue_all"                    ] = "所有移出队列"
  ,   ["button_enqueue_all"                    ] = "所有加入队列"
  ,   ["button_sort_by_station"                ] = "按套装台排序"
  ,   ["count_writs_vouchers"                  ] = "%d 委托, %s 券"
  ,   ["currency_suffix_gold"                  ] = "金"
  ,   ["currency_suffix_gold_per_voucher"      ] = "金/券"
  ,   ["currency_suffix_voucher"               ] = "券"
  ,   ["empty"                                 ] = ""
  ,   ["enchanting_cp150"                      ] = "超级"
  ,   ["enchanting_cp160"                      ] = "真正超凡"
  ,   ["err_could_not_parse"                   ] = "无法解析。"
  ,   ["glyph_absorb_health"                   ] = "吸取生命"
  ,   ["glyph_absorb_magicka"                  ] = "吸取魔法"
  ,   ["glyph_absorb_stamina"                  ] = "吸取耐力"
  ,   ["glyph_bashing"                         ] = "猛击"
  ,   ["glyph_crushing"                        ] = "粉碎"
  ,   ["glyph_decrease_health"                 ] = "削减生命"
  ,   ["glyph_decrease_physical_harm"          ] = "减少物理损害"
  ,   ["glyph_decrease_spell_harm"             ] = "减少法术损害"
  ,   ["glyph_disease_resist"                  ] = "疾病抗性"
  ,   ["glyph_flame"                           ] = "火焰"
  ,   ["glyph_flame_resist"                    ] = "火焰抗性"
  ,   ["glyph_foulness"                        ] = "肮脏"
  ,   ["glyph_frost"                           ] = "寒霜"
  ,   ["glyph_frost_resist"                    ] = "寒霜抗性"
  ,   ["glyph_hardening"                       ] = "硬化"
  ,   ["glyph_health"                          ] = "生命"
  ,   ["glyph_health_recovery"                 ] = "生命回复"
  ,   ["glyph_increase_magical_harm"           ] = "提高魔法损害"
  ,   ["glyph_increase_physical_harm"          ] = "提高物理损害"
  ,   ["glyph_magicka"                         ] = "魔力"
  ,   ["glyph_magicka_recovery"                ] = "魔力回复"
  ,   ["glyph_poison"                          ] = "毒素"
  ,   ["glyph_poison_resist"                   ] = "毒素抗性"
  ,   ["glyph_potion_boost"                    ] = "药水提升"
  ,   ["glyph_potion_speed"                    ] = "药水速度"
  ,   ["glyph_prismatic_defense"               ] = "棱镜防御"
  ,   ["glyph_prismatic_onslaught"             ] = "棱镜猛攻"
  ,   ["glyph_reduce_feat_cost"                ] = "降低武艺消耗"
  ,   ["glyph_reduce_spell_cost"               ] = "降低法术消耗"
  ,   ["glyph_shielding"                       ] = "支撑"
  ,   ["glyph_shock"                           ] = "电击"
  ,   ["glyph_shock_resist"                    ] = "电击抗性"
  ,   ["glyph_stamina"                         ] = "耐力"
  ,   ["glyph_stamina_recovery"                ] = "耐力回复"
  ,   ["glyph_weakening"                       ] = "削弱"
  ,   ["glyph_weapon_damage"                   ] = "武器伤害"
  ,   ["header_Detail 1"                       ] = "详细 1"
  ,   ["header_Detail 2"                       ] = "详细 2"
  ,   ["header_Detail 3"                       ] = "详细 3"
  ,   ["header_Detail 4"                       ] = "详细 4"
  ,   ["header_Q"                              ] = "队"
  ,   ["header_M"                              ] = "石"
  ,   ["header_Quality"                        ] = "品质"
  ,   ["header_Type"                           ] = "类型"
  ,   ["header_V"                              ] = "券"
  ,   ["header_Name"                           ] = "名称"
  ,   ["header_RequiredCt"                     ] = "需求"
  ,   ["header_HaveCt"                         ] = "拥有"
  ,   ["header_BuyCt"                          ] = "购买"
  ,   ["header_PriceEa"                        ] = "价格"
  ,   ["header_BuySubtotal"                    ] = "总共"
  ,   ["header_tooltip_RequiredCt"             ] = "委托需要多少?"
  ,   ["header_tooltip_HaveCt"                 ] = "物品栏 + 银行 + 生产背包中有多少?"
  ,   ["header_tooltip_BuyCt"                  ] = "拥有的不够? 你还需要多少? (= 需求 - 拥有)"
  ,   ["header_tooltip_PriceEa"                ] = "每个材料价格"
  ,   ["header_tooltip_BuySubtotal"            ] = "总价格(= 购买 × 价格)"
  ,   ["header_tooltip_Q"                      ] = "加入制造队列"
  ,   ["header_tooltip_M"                      ] = "是否使用复制石?"
  ,   ["header_tooltip_V"                      ] = "委托券计数"
  ,   ["keybind_writworthy"                    ] = "切出窗口"
  ,   ["know_err_motif"                        ] = "样式 [%s] 未学会"
  ,   ["know_err_recipe"                       ] = "配方未学会"
  ,   ["know_err_skill_missing"                ] = "缺少技能: [%s]"
  ,   ["know_err_skill_not_maxed"              ] = "技能不足 [%s]: %d / %d"
  ,   ["know_err_trait"                        ] = "特质 [%s] (%s) 未研究"
  ,   ["know_err_trait_ct_too_low"             ] = "特质研究数 ( %d / %d ) [%s]"
  ,   ["know_err_llc_too_old"                  ] = "懒人制造插件 %s 需要升级以设置 %d %s"
  ,   ["lam_banked_vouchers_desc"              ] = "扫描银行并在可用委托列表中包含这些委托以自动制造。\n|cFF3333注意！如果你在多个角色上进行制造的话，其他的角色在制造同一个银行中的委托时WritWorthy将不会提醒你。|r"
  ,   ["lam_banked_vouchers_title"             ] = "在自动制造窗口中包含银行中的委托"
  ,   ["lam_force_en_desc"                     ] = "无视客户端语言设置并使用 EN 英文显示所有WritWorthy文本。"
  ,   ["lam_force_en_title"                    ] = "强制使用 EN 英文"
  ,   ["lam_mat_list_alchemy_only"             ] = "仅炼金"
  ,   ["lam_mat_list_all"                      ] = "所有"
  ,   ["lam_mat_list_desc"                     ] = "每当大师委托提示框出现时，在聊天窗口中写入若干行材料文本。"
  ,   ["lam_mat_list_off"                      ] = "关"
  ,   ["lam_mat_list_title"                    ] = "在聊天窗显示材料列表"
  ,   ["lam_mat_price_tt_desc"                 ] = "在提示框中加入文本，显示制造此委托将消耗的所有材料的花费。"
  ,   ["lam_mat_price_tt_title"                ] = "在提示框中显示材料价格"
  ,   ["lam_mm_fallback_desc"                  ] = "当LibPrice无法从 MM/ATT/TTC 等插件获取某些材料的价格时:\n* 使用15金作为基础风格材料的默认价格，例如钼\n* 使用5金作为普通特质材料的默认价格，例如石英"
  ,   ["lam_mm_fallback_title"                 ] = "当没有LibPrice数据时使用固定的价格"
  ,   ["lam_lib_price_desc"                    ] = "用 MM/ATT/TTC 检查材料价格。需要LibPrice。"
  ,   ["lam_lib_price_title"                   ] = "为材料价格使用LibPrice"
  ,   ["lam_station_colors_desc"               ] = "在WritWorthy窗口中为 锻造, 制衣, 木工 项目使用不同的颜色。"
  ,   ["lam_station_colors_title"              ] = "窗口中的制作台颜色"
  ,   ["lam_cmw_desc"                          ] = "如果你希望使用Marify's Confirm大师委托提示框的话，关闭此选项以隐藏WritWorthy的多余警告提示框。"
  ,   ["lam_cmw_title"                         ] = "显示副本提示框"
  ,   ["lam_mat_tooltip_title"                 ] = "在提示框中显示原材料"
  ,   ["lam_mat_tooltip_desc"                  ] = "在提示框中显示原材料列表"
  ,   ["lam_mat_tooltip_off"                   ] = "关"
  ,   ["lam_mat_tooltip_all"                   ] = "全部"
  ,   ["lam_mat_tooltip_missing_only"          ] = "仅缺失"
  ,   ["mat_ui_filter_all_mats"                ] = "显示所有已加入队列的大师委托的所有材料"
  ,   ["mat_ui_filter_missing_mats"            ] = "显示所有已加入队列的大师委托的缺失材料"
  ,   ["mat_ui_filter_missing_motifs"          ] = "显示未加入队列的大师委托的缺失样式"
  ,   ["max_gold_per_voucher"                  ] = "每张券最大金币:"
  ,   ["msg_port_house"                        ] = "传送到拥有者:%s  房屋:%s"
  ,   ["slash_auto"                            ] = "自动"
  ,   ["slash_auto_desc"                       ] = "自动接受从物品栏发起的任务。"
  ,   ["slash_count"                           ] = "计数"
  ,   ["slash_count_desc"                      ] = "在此角色的 物品栏/银行 中有多少大师委托？"
  ,   ["slash_discover"                        ] = "发现"
  ,   ["slash_discover_desc"                   ] = "在日志中将item_link委托域导入表格"
  ,   ["slash_forget"                          ] = "忘掉"
  ,   ["slash_forget_desc"                     ] = "忘掉此角色已制造的大师委托"
  ,   ["slash_port"                            ] = "传送"
  ,   ["slash_port_desc"                       ] = "传送到一间制造房"
  ,   ["slash_mat"                             ] = "材料"
  ,   ["slash_mat_desc"                        ] = "显示/隐藏 材料清单窗口。"
  ,   ["slash_writworthy_desc"                 ] = "显示/隐藏 WritWorthy窗口"
  ,   ["status_discover"                       ] = "正在扫描委托域..."
  ,   ["status_forget"                         ] = "正在忘掉此角色已经制造的所有东西..."
  ,   ["status_list_empty_no_writs"            ] = "此角色物品栏中没有密封的大师委托。"
  ,   ["summary_completed_average_voucher_cost"] = "平均已完成委托券花费"
  ,   ["summary_completed_mat_cost"            ] = "已完成总材料"
  ,   ["summary_completed_voucher_ct"          ] = "已完成总券数"
  ,   ["summary_completed_writ_ct"             ] = "已完成总委托数"
  ,   ["summary_queued_average_voucher_cost"   ] = "平均已列入委托券花费"
  ,   ["summary_queued_mat_cost"               ] = "队列总材料"
  ,   ["summary_queued_voucher_ct"             ] = "队列总券数"
  ,   ["summary_queued_writ_ct"                ] = "队列总委托数"
  ,   ["title_writ_inventory_player"           ] = "委托库存: %s"
  ,   ["title_writ_inventory_player_bank"      ] = "委托库存: %s + 银行"
  ,   ["tooltip_crafted"                       ] = "制造完成"
  ,   ["tooltip_mat_total"                     ] = "总材料"
  ,   ["tooltip_per_voucher"                   ] = "每券"
  ,   ["tooltip_purchase"                      ] = "购买"
  ,   ["tooltip_queued"                        ] = "已加入制造队列"
  ,   ["tooltip_sell_for"                      ] = "以 %s 金出售"
  ,   ["tooltip_sell_for_cannot"               ] = "无法以 %s 金出售"
  ,   ["header_reset_window_pos"               ] = "重置窗口位置"
  ,   ["name_reset_window_pos"                 ] = "重置窗口位置"
  ,   ["tooltip_reset_window_pos"              ] = "重新设置窗口位置."
  }

  --Special Setting for Control Text
	WritWorthyInventoryList_HeaderInit(WritWorthyUIInventoryListHeadersType     , "Type"      , "类别"   , "ui_type")
	WritWorthyInventoryList_HeaderInit(WritWorthyUIInventoryListHeadersVoucherCt, "VoucherCt" , "卷"     , "ui_voucher_ct")
	WritWorthyInventoryList_HeaderInit(WritWorthyUIInventoryListHeadersDetail1  , "Detail1"   , "详情 1" , "ui_detail1")
	WritWorthyInventoryList_HeaderInit(WritWorthyUIInventoryListHeadersDetail2  , "Detail2"   , "详情 2" , "ui_detail2")
	WritWorthyInventoryList_HeaderInit(WritWorthyUIInventoryListHeadersMimic    , "Mimic"     , "M"      , "ui_use_mimic")
  WritWorthyInventoryList_HeaderInit(WritWorthyUIInventoryListHeadersDetail3  , "Detail3"   , "详情 3" , "ui_detail3")
	WritWorthyInventoryList_HeaderInit(WritWorthyUIInventoryListHeadersDetail4  , "Detail4"   , "详情 4" , "ui_detail4")
	WritWorthyInventoryList_HeaderInit(WritWorthyUIInventoryListHeadersDetail5  , "Detail5"   , "品质"   , "ui_detail5")
	WritWorthyInventoryList_HeaderInit(WritWorthyUIInventoryListHeadersEnqueue  , "Enqueue"   , "Q"      , "ui_is_queued")

return true end

--[[ Template 1, "" = folder name

--
BB.AddonList[""] = function() if not  then return false end

return true end

]]

--[[ Template 2, "" = folder name

--
do if not BB.SV.BanList[""] then

end end

BB.AddonList[""] = function() if not  then return false end

return true end

]]