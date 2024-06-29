local BB = MABabel

--Untaunted
--1.1.5
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
  --Special Setting
  for stringId, stringValue in pairs(strings) do
    ZO_CreateStringId(stringId, stringValue)
    SafeAddVersion(stringId, 1)
  end
return true end

--Votan's Keybinder
--1.4.5
BB.AddonList["VotansKeybinder"] = function() if not SI_VOTANS_KEYBINDER_ACCOUNTWIDE then return false end
  ZO_CreateStringId("SI_VOTANS_KEYBINDER_ACCOUNTWIDE", "全账户角色共享键位设置")
  ZO_CreateStringId("SI_VOTANS_KEYBINDER_TOGGLE", "（取消）全选")
return true end

--Votan's Minimap
--2.0.7
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
--1.2.3
BB.AddonList["VotansMapPinColors"] = function() if not SI_VOTANS_MAPPIN_COLORS_SHOW_PLAYER_PIN then return false end
  ZO_CreateStringId("SI_VOTANS_MAPPIN_COLORS_PREFER_ASSISTED", "可重复任务使用聚焦颜色")
  ZO_CreateStringId("SI_VOTANS_MAPPIN_COLORS_PREFER_ASSISTED_TOOLTIP", "将选中的可重复任务的颜色切换为聚焦颜色")
  ZO_CreateStringId("SI_VOTANS_MAPPIN_COLORS_SHOW_PLAYER_PIN", "显示玩家图标")
  ZO_CreateStringId("SI_VOTANS_MAPPIN_COLORS_SHOW_PLAYER_PIN_TOOLTIP", "允许隐藏玩家图标，为硬核探索爱好者准备")
  ZO_CreateStringId("SI_VOTANS_MAPPIN_COLORS_PLAYER_PIN_VIBRATION", "玩家图标闪烁")
  ZO_CreateStringId("SI_VOTANS_MAPPIN_COLORS_PLAYER_PIN_VIBRATION_TOOLTIP", "打开地图时，短暂使玩家图标闪烁，方便寻找")
return true end

--Wizard's Wardrobe
--1.18.3
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

--WritWorthy
--7.4.8
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
  ,   ["header_tooltip_HaveCt"                 ] = "物品栏+银行+生产背包中有多少?"
  ,   ["header_tooltip_BuyCt"                  ] = "拥有的不够? 你还需要多少? (= 需求 - 拥有)"
  ,   ["header_tooltip_PriceEa"                ] = "每个材料价格"
  ,   ["header_tooltip_BuySubtotal"            ] = "总价格(= 购买 × 价格)"
  ,   ["header_tooltip_Q"                      ] = "加入制造队列"
  ,   ["header_tooltip_M"                      ] = "是否使用复制石?"
  ,   ["header_tooltip_V"                      ] = "委托券计数"
  ,   ["keybind_writworthy"                    ] = "切出窗口"
  ,   ["know_err_motif"                        ] = "样式 %s 未学会"
  ,   ["know_err_recipe"                       ] = "配方未学会"
  ,   ["know_err_skill_missing"                ] = "缺少技能: %s"
  ,   ["know_err_skill_not_maxed"              ] = "技能不足 '%s': %d/%d"
  ,   ["know_err_trait"                        ] = "特质 %s %s 未研究"
  ,   ["know_err_trait_ct_too_low"             ] = "需要 %d 的 %d 特质，以制造套装 %s"
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
  ,   ["tooltip_per_voucher"                   ] = "每张券"
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

--[[ Template

--
--
BB.AddonList[""] = function() if not  then return false end

return true end

]]