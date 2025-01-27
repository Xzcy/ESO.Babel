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

--Vestige's Epic Quest
BB.AddonList["VEQ"] = function() if not VEQ then return false end
  --[[
  Translation Files: 大部分已由AK-ESO汉化完成，仅做补充及修缮
    
  ]]
  local L = {
  -- Menu
    ["lang_quests_category_view_settings"] = "分类区域视图设置",
    ["lang_class_show_zone"] = "在类类别区域视图中显示区域",
    ["lang_class_show_zone_tip"] = "当使用分类区域视图显示职业任务的区域",
    ["lang_craft_show_zone"] = "在工艺类别区域视图中显示区域",
    ["lang_craft_show_zone_tip"] = "当使用分类区域视图显示制作任务的区域",
    ["lang_Group_show_zone"] = "在组类别区域视图中显示区域",
    ["lang_Group_show_zone_tip"] = "当使用分类区域视图时显示小组任务的区域",
    ["lang_Dungeon_show_zone"] = "在地下城类别区域视图中显示区域",
    ["lang_Dungeon_show_zone_tip"] = "当使用分类区域视图显示副本任务的区域",
    ["lang_Raid_show_zone"] = "在 Raid 类别区域视图中显示区域",
    ["lang_Raid_show_zone_tip"] = "当使用分类区域视图显示突袭任务的区域",
    ["lang_HideOptObjective"] = "隐藏可选目标",
    ["lang_HideOptObjective_tip"] = "隐藏任务可选目标",
    ["lang_HideOptionalInfo"] = "隐藏可选信息",
    ["lang_HideOptionalInfo_tip"] = "隐藏任务可选信息",
    ["lang_HideHintsOption"] = "隐藏任务提示",
    ["lang_HideHintsOption_tip"] = "隐藏任务提示",
    ["lang_HideHiddenOptions"] = "隐藏隐藏任务提示",
    ["lang_HideHiddenOptions_tip"] = "隐藏隐藏的任务提示。",
    ["lang_HintColor"] = "任务提示颜色",
    ["lang_HintColor_tip"] = "任务提示的颜色",
    ["lang_HintCompleteColor"] = "任务提示完成颜色",
    ["lang_HintCompleteColor_tip"] = "任务提示完成颜色。",
    ["lang_HideInCombat"] = "战斗时隐藏追踪器",
    ["lang_HideInCombat_tip"] = "战斗时隐藏追踪器",
    ["lang_QuestObjIcon"] = "显示任务步骤图标",
    ["lang_QuestObjIcon_tip"] = "显示任务步骤图标而不是文本符号。",
    ["lang_HideObjOption"] = "隐藏所有任务的目标，除了",
    ["lang_HideObjOption_tip"] = "隐藏除三个选项之外的所有目标的选项。禁用将忽略此选项，重点任务将隐藏除重点任务之外的所有目标，重点区域将隐藏除重点任务所在区域之外的所有目标。 ",
    ["lang_Miscellaneous"] = "杂项",
    ["lang_Toggle_AutoHide_off"] = "自动隐藏区域/类别设置为关闭",
    ["lang_Toggle_AutoHide_on"] = "自动隐藏区域/类别设置为开",
    ["lang_Collaspe_All_Zones"] = "Collaspe 所有区域/类别",
    ["lang_Expand_All_Zones"] = "扩展所有区域/类别",
    ["lang_Toggle_Category_off"] = "切换到区域视图",
    ["lang_Toggle_Category_on"] = "切换到类别视图",
    ["lang_Toggle_NotFocusTrans_on"] = "未聚焦透明度设置为开",
    ["lang_Toggle_NotFocusTrans_off"] = "未聚焦透明度设置为关闭",
    ["lang_Toggle_HintsHidden_on"] = "隐藏提示和打开的隐藏提示",
    ["lang_Toggle_HintsHidden_off"] = "隐藏提示和隐藏的关闭提示",
    ["lang_Toggle_HideObjOption_Disabled"] = "所有任务的目标",
    ["lang_Toggle_HideObjOption_FocusedQuest"] = "目标仅适用于重点任务",
    ["lang_Toggle_HideObjOption_FocusedZone"] = "聚焦区域任务的目标",

    ["lang_Chat_AddonMessages"] = "为插件启用聊天消息",
    ["lang_Chat_AddonMessages_tip"] = "启用聊天消息、来自插件的关于键绑定、错误等更改的消息",
    ["lang_Chat_QuestInfo"] = "为任务信息启用聊天消息",
    ["lang_Chat_QuestInfo_tip"] = "为任务信息启用聊天消息。",
    ["lang_chat_settings"] = "聊天设置",
    ["lang_Chat_AddonMessage_HeaderColor"] = "插件消息标题颜色",
    ["lang_Chat_AddonMessage_HeaderColor_tip"] = "设置插件消息的标题颜色。",
    ["lang_Chat_AddonMessage_MsgColor"] = "插件消息消息颜色",
    ["lang_Chat_AddonMessage_MsgColor_tip"] = "设置插件消息的消息颜色。",
    ["lang_Chat_QuestInfo_HeaderColor"] = "任务信息标题颜色",
    ["lang_Chat_QuestInfo_HeaderColor_tip"] = "设置插件消息的标题颜色。",
    ["lang_Chat_QuestInfo_MsgColor"] = "任务信息消息颜色",
    ["lang_Chat_QuestInfo_MsgColor_tip"] = "设置任务信息的消息颜色。",
    
    ["lang_quests_timer_settings"] = "任务计时器设置",
    ["lang_quests_timer_settings_Tip"] = "启用/禁用任务计时器并设置字体和颜色。",
    ["lang_veq_settings"] = "Vestige's Epic Quest (VEQ)",
    ["lang_global_settings"] = "全局设置",
    
    ["lang_language_settings"] = "语言",
    ["lang_preset_settings"] = "预设",
    ["lang_quests_filtered_settings"] = "显示任务类型",
    ["lang_overall_transparency"] = "整体透明度",
    ["lang_overall_width"] = "总宽度",
    ["lang_position_lock"] = "锁定背景位置",
    ["lang_backgroundcolor_opt"] = "启用背景颜色",
    ["lang_backgroundcolor_value"] = "背景颜色",
    ["lang_intelligent_background"] = "智能背景",
    ["lang_intelligent_background_tip"] = "当你移动或进入战斗时，使背景逐渐消失",

    ["lang_mouse_settings"] = "鼠标控制设置",
    ["lang_mouse_1"] = "鼠标左键",
    ["lang_mouse_2"] = "鼠标中心按钮",
    ["lang_mouse_3"] = "鼠标右键",
    ["lang_mouse_4"] = "鼠标按钮 4",
    ["lang_mouse_5"] = "鼠标按钮 5",

    ["lang_timer_title_font"] = "任务计时器字体",
    ["lang_timer_title_font_tip"] = "任务计时器的字体显示在有计时器的焦点任务上。",
    ["lang_timer_title_style"] = "任务计时器字体样式",
    ["lang_timer_title_style_tip"] = "任务计时器上使用的字体样式显示在有计时器的焦点任务上。",
    ["lang_timer_title_size"] = "任务计时器字体大小",
    ["lang_timer_title_size_tip"] = "任务计时器的字体大小显示在有计时器的焦点任务上。",
    ["lang_timer_title_color"] = "任务计时器字体颜色",
    ["lang_timer_title_color_tip"] = "任务计时器的字体颜色显示在具有 ",
    
    ["lang_area_settings"] = "区域任务设置",
    ["lang_area_name"] = "显示任务区域/类别名称",
    ["lang_area_font"] = "区域/类别字体",
    ["lang_area_style"] = "区域/类别字体样式",
    ["lang_area_size"] = "区域/类别字体大小",
    ["lang_area_padding"] = "区域/类别填充大小",
    ["lang_area_color"] = "区域/类别颜色",
    ["lang_autohidequestzone_option"] = "启用自动隐藏区域",
    ["lang_questzone_option"] = "仅在当前区域显示任务",
    ["lang_quests_guild"] = "显示公会任务",
    ["lang_quests_mainstory"] = "显示主要故事任务",
    ["lang_quests_cyrodiil"] = "显示西罗帝尔任务",

    ["lang_quests_class"] = "显示职业任务",
    ["lang_quests_class_tip"] = "切换职业任务是否可见。",
    ["lang_quests_crafting"] = "显示制作任务",
    ["lang_quests_crafting_tip"] = "切换制作任务是否可见。",
    ["lang_quests_group"] = "显示小组任务",
    ["lang_quests_group_tip"] = "切换组任务可见。",
    ["lang_quests_dungeon"] = "显示副本任务",
    ["lang_quests_dungeon_tip"] = "切换地下城任务是否可见。",
    ["lang_quests_raid"] = "显示Raid任务",
    ["lang_quests_raid_tip"] = "切换Raid任务可见。",
    ["lang_quests_AVA"] = "显示 AVA 任务",
    ["lang_quests_AVA_tip"] = "切换 AVA 任务是否可见。",
    ["lang_quests_event"] = "显示活动/假日任务",
    ["lang_quests_event_tip"] = "切换活动/假日任务是否可见。",
    ["lang_quests_BG"] = "显示战场任务",
    ["lang_quests_BG_tip"] = "切换战场任务是否可见。",
    ["lang_area_hybrid"] = "显示类别区域视图",
    ["lang_area_hybrid_tip"] = "在经典分类视图中显示区域，例如，公会任务列在其自己的类别中，而不是它们所在的区域。",

    ["lang_no_trans_focused_zone"] = "重点任务区透明度",
    ["lang_no_trans_focused_zone_tip"] = "重点任务所在的区域或类别，不会使用不重点透明度",
    
    ["lang_quests_settings"] = "任务设置",
    ["lang_quests_sort"] = "按...排序任务",
    ["lang_quests_nb"] = "显示同一区域的任务",
    ["lang_quests_show_timer"] = "显示任务计时器",
    ["lang_quests_show_timer_tip"] = "当有完成计时器时，显示焦点任务的任务计时器。请注意会出现一个空白字段",
    
    ["lang_quests_hide_obj"] = "隐藏目标/提示，除非专注",
    ["lang_quests_hide_obj_tip"] = "隐藏所有任务的任务目标和提示，重点任务除外。",
    
    ["lang_quests_hide_obj_optional"] = "隐藏已完成的提示和目标",
    ["lang_quests_hide_obj_optional_tip"] = "隐藏所有任务的可选目标/提示。",
    
    ["lang_quests_level"] = "显示任务等级",
    ["lang_quests_optinfos"] = "隐藏所有提示和可选信息",
    ["lang_quests_autoshare"] = "自动分享任务",
    ["lang_quests_autountrack"] = "自动取消追踪隐藏任务",
    ["lang_icon_opt"] = "启用任务图标",
    ["lang_icon_texture"] = "任务图标纹理",
    ["lang_icon_size"] = "任务图标大小",
    ["lang_icon_color"] = "任务图标颜色",
    ["lang_quests_transparency_opt"] = "为不专注的任务启用透明度。",
    ["lang_quests_transparency"] = "不专注于任务透明度",

    ["lang_titles_settings"] = "任务名称设置",
    ["lang_titles_font"] = "任务名称字体",
    ["lang_titles_style"] = "任务名称字体样式",
    ["lang_titles_size"] = "任务名称字体大小",
    ["lang_titles_padding"] = "任务名称填充大小",
    ["lang_titles_default"] = "默认任务名称颜色",
    ["lang_titles_custom"] = "自定义标题颜色",
    ["lang_titles_veasy"] = "非常简单的任务的任务名称颜色",
    ["lang_titles_easy"] = "简单任务的任务名称颜色",
    ["lang_titles_normal"] = "普通任务的任务名称颜色",
    ["lang_titles_hard"] = "困难任务的任务名称颜色",
    ["lang_titles_vhard"] = "非常困难任务的任务名称颜色",

    ["lang_obj_settings"] = "目标/提示设置",
    ["lang_obj_font"] = "目标字体",
    ["lang_obj_style"] = "目标字体样式",
    ["lang_obj_size"] = "目标字体大小",
    ["lang_obj_padding"] = "目标填充大小",
    ["lang_obj_color"] = "目标字体颜色",
    ["lang_obj_ccolor"] = "完成的目标字体颜色",
    ["lang_obj_optcolor"] = "可选目标字体颜色",
    ["lang_obj_optccolor"] = "已完成的可选目标字体颜色",

    ["lang_infos_settings"] = "信息设置",
    ["lang_infos_font"] = "字体信息",
    ["lang_infos_style"] = "信息字体样式",
    ["lang_infos_size"] = "信息字体大小",
    ["lang_infos_color"] = "信息字体颜色",
    
    ["lang_NumbQuest_opt"] = "显示任务数",
    ["lang_NumbQuest_opt_tip"] = "显示已开始的任务数和总任务数",
    ["lang_ShowClock_opt"] = "显示时钟",
    ["lang_ShowClock_opt_tip"] = "在任务跟踪器的左上角显示时钟",
    ["lang_ShowTbutton_opt"] = "显示聚焦任务键绑定图标",
    ["lang_ShowTbutton_opt_tip"] = "显示带有键绑定的图标以更改焦点任务",
    ["lang_ShowMQbutton_opt"] = "显示专注的迷你任务键绑定图标",
    ["lang_ShowMQbutton_opt_tip"] = "显示带有键绑定的图标以更改焦点迷你任务",
    
    -- Menu tips
    ["lang_language_settings_tip"] = "设置你的语言",
    ["lang_preset_settings_tip"] = "选择一个预设",
    ["lang_overall_transparency_tip"] = "改变全局透明度",
    ["lang_overall_width_tip"] = "改变窗口宽度",
    ["lang_position_lock_tip"] = "锁定/解锁位置并启用鼠标操作",
    ["lang_backgroundcolor_opt_tip"] = "启用背景颜色",
    ["lang_backgroundcolor_value_tip"] = "改变背景颜色",
    
    ["lang_mouse_1_tip"] = "设置左键动作",
    ["lang_mouse_2_tip"] = "设置中心点击动作",
    ["lang_mouse_3_tip"] = "设置右键操作",
    ["lang_mouse_4_tip"] = "为按钮 4 设置动作",
    ["lang_mouse_5_tip"] = "为按钮 5 设置动作",
    
    ["lang_area_name_tip"] = "启用要显示的任务区域/类别名称。",
    ["lang_area_font_tip"] = "设置任务区域/类别的字体。",
    ["lang_area_style_tip"] = "设置任务区域/类别的字体样式",
    ["lang_area_size_tip"] = "更改任务区域/类别的字体大小",
    ["lang_area_padding_tip"] = "更改任务区域/类别的左右填充大小",
    ["lang_area_color_tip"] = "更改任务区域/类别的颜色",
    ["lang_autohidequestzone_option_tip"] = "跟随重点任务并隐藏其他区域/类别的任务",
    ["lang_questzone_option_tip"] = "在当前区域/类别中显示重点任务的任务",
    ["lang_quests_guild_tip"] = "显示公会任务",
    ["lang_quests_mainstory_tip"] = "显示主线任务",
    ["lang_quests_cyrodiil_tip"] = "显示 西罗帝尔 任务",

    ["lang_quests_sort_tip"] = "设置任务顺序",
    ["lang_quests_nb_tip"] = "更改与重点任务相同区域显示的任务数量",
    ["lang_quests_show_quest_timer_tip"] = "显示定时任务的计时器",
    ["lang_quests_level_tip"] = "显示任务等级",
    ["lang_quests_optinfos_tip"] = "隐藏所有任务的隐藏信息/提示，包括重点任务。",
    ["lang_quests_autoshare_tip"] = "当你在组时启用任务自动分享",
    ["lang_quests_autountrack_tip"] = "在罗盘上取消追踪所有隐藏的任务",
    ["lang_icon_opt_tip"] = "启用任务图标",
    ["lang_icon_texture_tip"] = "设置当前辅助任务的图标",
    ["lang_icon_size_tip"] = "改变图标大小",
    ["lang_icon_color_tip"] = "更改任务图标的颜色",
    ["lang_quests_transparency_opt_tip"] = "启用除重点任务以外的其他任务的透明度",
    ["lang_quests_transparency_tip"] = "更改未聚焦任务的透明度。",

    ["lang_titles_font_tip"] = "设置任务名称的字体",
    ["lang_titles_style_tip"] = "设置任务名称的字体",
    ["lang_titles_size_tip"] = "更改任务名称的字体大小",
    ["lang_titles_padding_tip"] = "更改任务名称的左右填充大小",
    ["lang_titles_default_tip"] = "更改任务名称的颜色",
    ["lang_titles_custom_tip"] = "启用从玩家级别更改颜色",
    ["lang_titles_veasy_tip"] = "更改任务名称的颜色 < 等级 - 4",
    ["lang_titles_easy_tip"] = "改变任务名称的颜色 <= level - 2",
    ["lang_titles_normal_tip"] = "更改任务名称的颜色 = 等级 +- 1",
    ["lang_titles_hard_tip"] = "更改任务名称的颜色 >= 等级 + 2",
    ["lang_titles_vhard_tip"] = "更改任务名称的颜色 > 等级 + 4",	
    
    ["lang_obj_font_tip"] = "设置任务文本的字体",
    ["lang_obj_style_tip"] = "设置任务文本的字体",
    ["lang_obj_size_tip"] = "更改任务文本的字体大小",
    ["lang_obj_padding_tip"] = "更改任务文本的左右填充大小",
    ["lang_obj_color_tip"] = "改变任务文本的颜色",
    ["lang_obj_ccolor_tip"] = "更改已完成目标文本的颜色",
    ["lang_obj_optcolor_tip"] = "改变可选任务文本的颜色",
    ["lang_obj_optccolor_tip"] = "更改已完成的可选目标文本的颜色",

    ["lang_infos_opt_tip"] = "显示当前任务总数",
    ["lang_infos_font_tip"] = "设置信息字体",
    ["lang_infos_style_tip"] = "设置信息的字体样式",
    ["lang_infos_size_tip"] = "更改信息的字体大小",
    ["lang_infos_color_tip"] = "更改信息的字体颜色",
    
    -- 菜单警告
    ["lang_menu_warn_1"] = "|c8B1E1E 更改此选项将重新加载 UI",
    ["lang_menu_warn_2"] = "|c8B1E1E 更改此选项将重新加载 UI 并覆盖您当前的设置",

    -- 鼠标交互
    ["lang_mouse_ctrl_assisted"] = "更改辅助任务",
    ["lang_mouse_ctrl_filterzone"] = "按当前区域过滤",
    ["lang_mouse_ctrl_share"] = "分享任务",
    ["lang_mouse_ctrl_showmap"] = "在地图上显示",
    ["lang_mouse_ctrl_remove"] = "删除任务",
    
    -- Console
    ["lang_console_autoshare"] = "[VEQ] 你自动分享一个任务",
    ["lang_console_share"] = "[VEQ] 你分享了一个任务",
    ["lang_console_noshare"] = "[VEQ] 此任务不可共享",
    ["lang_console_abandon"] = "[VEQ] 放弃任务",
    ["lang_choose"] = "选择：",

  ----------------------------------- NEW STUFF

    ["lang_tmp_VEQMessage"] = "<<1>>: <<2>>",
    ["lang_tmp_VEQMessage_Error"] = "ERROR <<1>>: <<2>>",

    -- 任务信息
    ["quest_optional"] = "可选",
    ["quest_hint"] = "提示",	
    ["quest_hiddenhint"] = "隐藏提示",
    
    ["lang_tracker_type_guild"] = "公会",
    ["lang_tracker_type_mainstory"] = "主线任务",
    ["lang_tracker_type_undaunted"] = "无畏",
    ["lang_tracker_type_prologue"] = "序幕",	
    ["lang_tracker_type_companion"] = "同伴",
    ["lang_tracker_type_repeatable"] = "RPT",
    ["lang_tracker_type_daily"] = "每日",
    ["lang_tracker_type_dungeon"] = "副本",
    ["lang_tracker_type_solo"] = "独奏",
    ["lang_tracker_type_class"] = "类",
    ["lang_tracker_type_craft"] = "制作",
    ["lang_tracker_type_group"] = "组队",
    ["lang_tracker_type_ava"] = "联盟战争",
    ["lang_tracker_type_arena"] = "竞技场",
    ["lang_tracker_type_holiday_event"] = "节日活动",
    ["lang_tracker_type_raid"] = "试用",
    ["lang_tracker_type_bg"] = "战场",
    ["lang_tracker_type_qa_test"] = "测试",
    ["lang_tracker_type_dark_brotherhood"] = "黑暗兄弟会",
    ["lang_tracker_type_thieves_guild"] = "盗贼公会",
    ["lang_tracker_type_mages_guild"] = "法师公会",
    ["lang_tracker_type_fighters_guild"] = "战士公会",
    ["lang_tracker_type_psijic_order"] = "塞伊克教团",
    
    -- Inventory
    ["lang_slots_inventory"] = " 库存中剩余的插槽",
    ["lang_slot_inventory"] = " 库存中的空位",
    ["lang_free_space"] = "释放一些空间",
    ["lang_inventory_full"] = "库存已满！",
    
    -- Treasure
    ["lang_survey_map"] = "调查地图",
    ["lang_treasure_map"] = "藏宝图",
    ["lang_get_materials"] = "获取材料",
    ["lang_get_treasure"] = "得到宝藏",
    
    -- 天空碎片
    ["lang_skyshard"] = "天空碎片",
    ["lang_maway"] = "米 距离",
    ["lang_distant_sky"] = "几乎察觉不到它的存在",
    ["lang_weak_sky"] = "很微弱的魔法感应",
    ["lang_moderate_sky"] = "中等的魔法感应",
    ["lang_strong_sky"] = "强大魔法感应",
    ["lang_huge_sky"] = "非常强烈的魔法感应",
    
    -- Leads / antiquities
    ["lang_scry_exc"] = "占卜和挖掘在 ",
    ["lang_antiquity_"] = "古迹 - ",
    
    -- Doable writs
    ["lang_check_inv"] = "点击这里开始制作",
    ["lang_doable"] = "可行",
    ["lang_or"] = " 或 ",
    
    -- 骑行技巧
    ["lang_stable_rel"] = "找一个马夫",
    ["lang_upgrade_skills"] = "升级你的一项骑术",	
    ["lang_stablemaster"] = "提升骑术",
    
    -- 背包和银行升级
    ["lang_backpack_upgrade"] = "背包升级",
    ["lang_you_have_the"] = "你有 ",
    ["lang_up_back"] = "金币！升级你的背包",
    ["lang_pack_merchant"] = "打包商人",
    ["lang_bank_space_upgrade"] = "银行空间升级",
    ["lang_up_bank"] = "金币！升级你的银行空间",
    ["lang_bank_mon"] = "银行家或信贷商",
    
    -- 努力	
    ["lang_endeavor_week"] = "勉励任务（周常）",
    ["lang_endeavor_day"] = "勉励任务（日常）",
    
    -- 活动门票和蜕变水晶
    ["lang_event_tickets"] = "活动奖票",
    ["lang_transmute_crystals"] ="蜕变水晶",
    ["lang_maxed_out_currency"] = "该货币已达最大储存！花掉它。",
    ["lang_nears_max_currency"] = "该货币接近允许的最大值，花掉它。",
    
    -- LFG & 准备检查
    ["lang_in"] = "在",
    ["lang_champion_battleground"] = "勇士点数战场",
    ["lang_low_battleground"] = "低级战场",
    ["lang_non_battleground"] = "非勇士点数战场",
    ["lang_normal_dungeon_finder"] = GetString(SI_DUNGEONDIFFICULTY1).." 地下城查找器",
    ["lang_veteran_dungeon_finder"] = GetString(SI_DUNGEONDIFFICULTY2).." 地下城查找器",
    ["lang_tribute_casual"] = "休闲《望族传奇》",
    ["lang_tribute_competitive"] = "排名《望族传奇》",
    ["lang_lfg"] = "正在寻找队友...",
    ["lang_lfo"] = "正在寻找对手...",
    ["lang_everybody_ready"] = "大家准备好了吗？",
    ["lang_ready"] = "准备好",
    ["lang_grc"] = "组队就绪检查",
    ["lang_for"] = " : ",
    ["lang_LFR"] = "寻求替代",
    
    -- 进入竞选
    ["lang_cyrodiil"] = "西罗帝尔 -",
    ["lang_group"] = "组队-",
    ["lang_ewt"] = "\n• 剩余等待时间：",
    ["lang_entering_campaign"] = "正在进入活动...",
    ["lang_n_started"] ="\n• 开始 ",
    ["lang_ago"] = "以前",
    ["lang_confirming"] = "确认中",
    ["lang_finished"] = "完成",
    ["lang_pending_accept"] = "正在输入...",
    ["lang_pending_join"] = "待加入",
    ["lang_leaving_queue"] = "离开队列",
    ["lang_exiting_campaign"] = "退出活动...",
    ["lang_waiting"] = "等待中",
    ["lang_n_queue_position"] = "\n• 队列位置：",
    
  -- 毒物检查器/通知器	
    ["lang_out_of_poison"] = "毒药消耗光了！",	
    ["lang_craft_some_poison"] = "制作或购买一些毒药并将其应用到你的武器上",
    ["lang_alchemy_station"] = "炼金工作台",
    
     -- 塞伊克时间突破助手
    ["lang_psijic_time_breach"] = "塞伊克时间突破#",	
    ["lang_6172_helper_9"] = "Augury Basin 和 Keelsplitter's Nest 之间的中途（从 Ebon Stadmont wayshrine 向西，跳入池塘并顺着溪流，缺口在瀑布脚下）",	
    ["lang_6172_helper_8"] = "在 Keelsplitter's Nest 和 Rellenthil Abyssal Geyser 之间，在有树的小岛上（从 Ebon Stadmont wayshrine 向南）",
    ["lang_6172_helper_7"] = "在 Alinor 以西的一座废弃建筑中，在 Welenkin Cove 和 Welenkin Abyssal Geyser 之间（沿着 Cey-Tarn Keep wayshrine 向南的鹅卵石小路，在每个岔路口右转，包括通往该建筑的断桥)",
    ["lang_6172_helper_6"] = "在 Direnni Acropolis 内，经过桥（从 King's Haven Pass wayshrine 沿着鹅卵石小路往东南走，在岔路口左转）",
    ["lang_6172_helper_5"] = "Shimmerene 西部的瀑布下方（从 Shimmerene wayshrine 向北疾驰，尽可能跳入水中）",
    ["lang_6172_helper_4"] = "在山上的废墟中，湖以北的执政官林地，十一军要塞的东边（从微光神殿往南走）",
    ["lang_6172_helper_3"] = "在 Sil-Var-Woad 的一个围栏中（从 Sil-Var-Woad 路神社向南，进入动物园，在岔路口右转，在水围栏中）",
    ["lang_6172_helper_2"] = "在岛的东岸 Sil-Voad 东南方，Sil-Voad 深渊间歇泉东南方，靠近两个最北端的小岛",
    ["lang_6172_helper_1"] = "Sunhold Wayshrine 以南，Sunhold Abyssal Geyser 以西",
    
    ["lang_6181_helper_9"] = "在俯瞰德莱恩磨坊的悬崖上，戴尼亚石碑北面（从贝尔伯恩岩道神社向南，在河中奔跑，在桥下，然后向东南方向行驶，缺口比画架远一点） ",
    ["lang_6181_helper_8"] = "Beldama Wyrd Tree (Wyrd Tree wayshrine) 北侧的树根之间",
    ["lang_6181_helper_7"] = "在 Burial Mounds 西侧的断崖上（从 Crosswych wayshrine 向西南走，直到巨大的坏草，然后在断崖顶部向南东南方向走）",
    ["lang_6181_helper_6"] = "在 Koeglin 灯塔岛西侧的沉船的最南端（从 Bonesnap Ruins wayshrine 向西-西南方向走）",
    ["lang_6181_helper_5"] = "在坎伯兰瀑布最高层的边缘（从风堡路神社向西，顺着河流逆流而上到达瀑布，然后爬到顶部）",
    ["lang_6181_helper_4"] = "就在 Moonlit Maw 的西边（从 Pariah Abbey wayshrine 向北走）",
    ["lang_6181_helper_3"] = "Salas En 以北的悬崖边缘，勇士的东北方，俯瞰 Rain Catcher Fields（从 Morwha's Bounty wayshrine 向西走，爬上，再次向西走到悬崖边缘）",
    ["lang_6181_helper_2"] = "在Eastern Aerie 以西的悬崖壁上（从Kulati Mines wayshrine 向西，向右环绕岩石，走桥，向左爬上更高的平台）",
    ["lang_6181_helper_1"] = "在 HoonDing's Watch 和 Ragnthar 之间（从 HoonDing's Watch wayshrine 往南走，尽可能爬上你左边的沙子，再往南走）",
    
    ["lang_6185_helper_9"] = "在塞尼西侧的两条最南端熔岩流之间（从塞尼路神殿往西走）",
    ["lang_6185_helper_8"] = "在瀑布顶部的一个小岛上，位于 Brothers of Strife 和 Armature's Upheaval 之间（从 Brothers of Strife wayshrine 往西南方向走）",
    ["lang_6185_helper_7"] = "在硫磺池路神殿和维威克鹿角之间的维威克鹿角山脊上（从硫磺池路神殿往东走）",
    ["lang_6185_helper_6"] = "在 Wittestadr 的一个较大的蒸汽池旁边（从 Wittestadr wayshrine 往东北走，缺口正好在地图上的 Wittestadr 图标处）",
    ["lang_6185_helper_5"] = "在黑水十字路口西南的河流上游的两个瀑布之间，阿莫尔堡地图的东南方（从阿莫尔堡路神社向东南走）",
    ["lang_6185_helper_4"] = "在河西的 Cradlecrush 以东的桥上，Thane Jeggi 的饮水洞的西北（从 Fort Morvunskar wayshrine 向西南走，沿着鹅卵石路走，在岔路口向左走，在桥上向右看） ",
    ["lang_6185_helper_3"] = "格林沃尔堡东北部，巨魔洞穴西南（从裂谷道神殿穿过格林沃尔堡北部，然后是东北部）",
    ["lang_6185_helper_2"] = "就在 Snapleg 洞穴外面（穿过 Nimalten wayshrine 以北的桥，继续沿着河流到达洞穴）",
    ["lang_6185_helper_1"] = "在世界之喉附近的台阶顶部，伊瓦斯特德西北（从盖尔蒙德大厅的圣殿向西南偏西走，过桥并沿着众多台阶走）",	
    
    ["lang_6197_helper_adamantine"] = "从东永莫路圣地往西南走，使用佩林墓地的时间裂缝，跟随赛伊克的视线，挖出法杖碎片",
    ["lang_6197_helper_orichalc"] = "去莱基之刃圣地西南，使用莱基之刃北边的时间裂缝，跟随赛伊克的视线，挖出法杖碎片",
    ["lang_6197_helper_crystal"] = "前往孵化池的通道神殿以北，使用孵化池中的时间裂缝（在伟大的历史树下），跟随赛伊克的视线，挖出法杖碎片",
    ["lang_6197_helper_walk"] = "从塞尔弗拉路神殿向南走，在方尖塔附近使用时间裂缝，跟随赛伊克的视线，挖出法杖碎片",
    
    ["lang_6197_helper_pelin"] = "佩林墓地附近的员工残片",
    ["lang_6197_helper_leki"] = "莱基之刃附近的法杖碎片",	
    ["lang_6197_helper_hist"] = "希斯特附近的法杖碎片",
    ["lang_6197_helper_fang"] = "方尖塔附近的法杖碎片",	
    
    ["lang_6194_helper_9"] = "在 Telacar 骨库西侧的一座废弃建筑中（从 Ossuary wayshrine 往北-西北方向走）",
    ["lang_6194_helper_8"] = "在支石门以西的 Gil-Var-Delle 树桩内（从 Gil-Var-Delle wayshrine 向南走）",
    ["lang_6194_helper_7"] = "在最高的塔楼废墟内，雷曼崖以北（从红毛贸易站路神社向西南向西南走）",
    ["lang_6194_helper_6"] = "在 Maormer Camp 北部的一个海角上（穿过 Moonhenge wayshrine 西北偏北的那座桥，沿着鹅卵石路走，当道路右转时直行到悬崖边缘）",
    ["lang_6194_helper_5"] = "渔人休息区以北（从蛇窟路神社向西环山）",
    ["lang_6194_helper_4"] = "在迷宫内，就在中心的北边（从 Greenheart wayshrine 走到北边的桥，继续往前走，不要跟着路走，当它回到你的脚下时，沿着你的第一个迷宫入口走左，在第一个岔路口右转，在第二个岔路口左转）",
    ["lang_6194_helper_3"] = "在Treehenge以南，Ragnthar以西的一座桥下（沿着Wilding Run wayshrine以北的路径，直到你到达桥，跳）",
    ["lang_6194_helper_2"] = "在马蹄岛中间（从 Vulkwasten wayshrine 往北走）",
    ["lang_6194_helper_1"] = "在 Xylo River Basin Dolmen 东北部的岛上（从 Abamath wayshrine 向北走）",

    ["lang_6190_helper_9"] = "在 Bthanual 以南的悬崖上（从 Muth Gnaar Hills wayshrine 向东走，过桥，在岔路口左转，在 Bthanual 入口前向南走）",
    ["lang_6190_helper_8"] = "在暗影洞穴东北部的瀑布旁（从寂静泥潭路神社向西南走，爬上岩石到更高的平台）",
    ["lang_6190_helper_7"] = "在Saint Veloth神殿中间的一个种植园里（从夜灵谷的路神殿往西北走，在第一个岔路口左转，第二个岔路口右转）",
    ["lang_6190_helper_6"] = "在三环矿井东北部的瀑布旁的一个小岛上（从 Shad Astula wayshrine 向南，游泳，跳下瀑布，游泳）",
    ["lang_6190_helper_5"] = "在 Malak's Maw 的巨大大门后面（从 West Narsis wayshrine 向西走，顺时针绕一圈）",
    ["lang_6190_helper_4"] = "Bogmother 西南角的树根下（从 Bogmother wayshrine 往西走）",
    ["lang_6190_helper_3"] = "Hei-Halai 西部的一个石口内，靠近 Mazzatun 废墟的入口处（从 Stillrise wayshrine 向北走，当你看到道路旁边左边的一座塔废墟时，向西北走，然后沿着你左边的小路到石嘴）",
    ["lang_6190_helper_2"] = "在毒沼泽石墓西北的一个小 xanmeer (从 Loriasel wayshrine 往东南走)",
    ["lang_6190_helper_1"] = "在渗透泥沼中间的希斯特树脚下（从渗透泥沼路神社向东北走）",

    ["lang_6198_helper_red"] = "去冲突兄弟路的南面，使用时间裂缝，跟随赛伊克的视线，挖出法杖碎片",
    ["lang_6198_helper_white"] = "从哭泣的巨人路神社向西北走，直到塔废墟，然后沿着你右边的小路，穿过木板桥，使用时间裂缝，跟随赛伊克的视线，挖出法杖",
    ["lang_6198_helper_greensap"] = "去绿心通道圣地北边，使用时间裂缝，跟随赛伊克的视线，挖出法杖碎片",
    ["lang_6198_helper_snow"] = "从 Spellscar wayshrine 向东走，在岩石峭壁和 Adament Anomaly 之间，在岩石峭壁的尽头，左转，使用时间裂缝，沿着赛伊克视线，挖出法杖碎片",

    ["lang_6198_helper_bro"] = "冲突兄弟附近的员工残片",
    ["lang_6198_helper_weep"] = "哭泣巨人附近的法杖碎片",	
    ["lang_6198_helper_green"] = "绿心附近的法杖碎片",
    ["lang_6198_helper_spell"] = "法术伤痕附近的法杖碎片",	
    
    ["lang_6468_helper_9"] = "商人休息区西边的墙上（从旧门路神社往东北走）",
    ["lang_6468_helper_8"] = "在血族古墓，中央墓穴和劫难墓穴之间（从血族古墓路神殿往北走）",
    ["lang_6468_helper_7"] = "在 Lorkrata Hills 的北塔前（从 Fell's Run wayshrine 向西走，一旦进入 Lorkrata Hills 的墙壁，走右边的楼梯）",
    ["lang_6468_helper_6"] = "在 Edrald Estate 的一块田地里（从 Fell's Run wayshrine 往东南向东走）",
    ["lang_6468_helper_5"] = "East-Rock Landing 以西，兽人手指废墟以北，巨蛇西南（从波拉利斯路神殿往东走）的一个小岛上",
    ["lang_6468_helper_4"] = "Lagra's Pearl 的船长舱（从 Northpoint wayshrine 往东北走）",
    ["lang_6468_helper_3"] = "在 Crestshade 的教堂墓穴前（从 Crestshade wayshrine 沿着鹅卵石路向南，在雕像处，向西南走，上楼梯，左边的另一组楼梯，继续直行到教堂地穴的楼梯）",
    ["lang_6468_helper_2"] = "就在 Aesar's Web 的西边（去 Tamrith Camp wayshrine 的西边）",
    ["lang_6468_helper_1"] = "Shadowfate Cavern 内（入口在 Aesar's Web 和 Tamrith Camp wayshrine 之间）",
    
    ["lang_6196_helper_6"] = "Ogondar's Winery 的东北部，Rkundzelft 的西部（从 Spellscar wayshrine 向东，在岩石峭壁和 Adament Anomaly 之间，在岩石峭壁的尽头向东南走）",
    ["lang_6196_helper_5"] = "在埃林希尔西北角外（从埃林希尔路神殿向南，在右边环绕埃林希尔岩石悬崖，直到找到缺口）",
    ["lang_6196_helper_4"] = "在 Scorpion Ravine 南端的一个裂缝中（从 Seeker's Archive wayshrine 向西南走）",
    ["lang_6196_helper_3"] = "Hel Ra Citadel 以北，Mtharnaz 以东（从 Sandy Path wayshrine 向西走）",
    ["lang_6196_helper_2"] = "龙星竞技场（龙星圣殿）前",
    ["lang_6196_helper_1"] = "在通往通天要塞（通天圣地）的桥上",
    
    ["lang_6199_helper"] = "从 Goat's Head Oasis wayshrine，爬楼梯，然后向西南前往 Divad's Chagrin mine",
    
    -- 组队框架
    ["lang_of"] = " : ",
    
    -- 博物馆藏品
    ["lang_museum"] = "想要的博物馆藏品",

    -- 日报计数器
    ["lang_repeatable_quests"] = "可重复的任务",
    ["lang_ongoing"] = "进行中：",
    ["lang_completed_today"] = "今天完成：",
    
    -- zone todo list
    ["lang_todolist"] ="区域待办事项",
    
    -- remains silent
    ["lang_remains_silent"] = "<保持沉默。>",
    
    -- Dragonguard Supply chest name (change to your language for the feature to work)
    ["lang_dragonguard_supply_chest"] = "龙卫补给箱",
    
    -- 迷你追踪器设置
    ["lang_mini_quest_tracker_settings"] = "迷你任务追踪器设置",
    ["lang_mini_quest_tracker_invert_opt"] = "反向任务键",
    ["lang_mini_quest_tracker_invert_tip"] = "通过长按该键的同时按默认绑定键来获取上一个迷你任务而不是下一个任务",
    ["lang_inventory_slots_opt"] = "整理物品栏迷你任务",
    ["lang_inventory_slots_tip"] = "一个小任务，在达到您设置的最小物品栏限制时清空您的库存",
    ["lang_inventory_slots_limit"] = "空闲库存槽触发器",
    ["lang_inventory_slots_limit_tip"] = "触发迷你任务的最小免费库存槽数",	
    ["lang_lost_treasure_opt"] = "丢失的宝藏迷你任务",
    ["lang_lost_treasure_tip"] = "一旦宝藏地图和调查地点出现在您的包中，就添加一个迷你任务（完美搭配失落的宝藏插件）",	
    ["lang_skyshards_opt"] = "天空裂片 迷你任务",
    ["lang_skyshards_tip"] = "如果距离小于 100m，则添加一个小任务以获取天空碎片",	
    ["lang_leads_opt"] = "挖掘线索迷你任务",
    ["lang_leads_tip"] = "为你拥有的每条线索添加一个小任务，去探知和挖掘古物",
      ["lang_fake_leads_opt"] = "探知和挖掘进度",
    ["lang_fake_leads_tip"] = "每日添加了一个迷你任务来探查和挖掘古代物品，以顺利推进这些技能线",
    ["lang_writs_opt"] = "大师委托迷你任务",
    ["lang_writs_tip"] = "为你库存中的每个可行令状（有风格页 + 有材料）添加一个迷你任务。（需要安装 WritWorthy 插件才能工作）",
    ["lang_stable_opt"] = "骑术升级迷你任务",
    ["lang_stable_tip"] = "添加一个小任务，在满足条件后立即升级您的骑术",	
    ["lang_backbank_opt"] = "背包和银行升级迷你任务",
    ["lang_backbank_tip"] = "添加一个小任务来升级你的背包或银行空间，只要你有所需的金币",		
    ["lang_endeavor_opt"] = "每日和每周勉励迷你任务",
    ["lang_endeavor_tip"] = "将每日和每周的勉励任务添加一个迷你任务。",
    ["lang_tickets_opt"] = "消费活动门票迷你任务",
    ["lang_tickets_tip"] = "一个小任务，当您的活动门票达到您设置的最小剩余上限时花费您的活动票",	
    ["lang_tickets_limit"] = "剩余的最小事件门票上限触发器",
    ["lang_tickets_limit_tip"] = "触发迷你任务的剩余最小事件门票数量",
    ["lang_transmute_opt"] = "花费蜕变水晶迷你任务",
    ["lang_transmute_tip"] = "一个小任务，当你的蜕变水晶达到你设置的最低限度时消耗你的蜕变水晶",	
    ["lang_transmute_limit"] = "剩余的最小蜕变水晶上限触发器",
    ["lang_transmute_limit_tip"] = "触发迷你任务的剩余蜕变水晶的最小数量",
    ["lang_zoneguide_opt"] = "将下一个区域向导任务设置为迷你任务",
    ["lang_zoneguide_tip"] = "区域指南迷你任务自动启用并在区域更改时成为 VEQ 中的迷你任务，如果您在该区域没有活动任务",	
    ["lang_poison_opt"] = "毒药检查器",
    ["lang_poison_tip"] = "每次战斗后检查你的武器毒药槽，如果你没有毒药，就会显示一个制作毒药的小任务",	
    ["lang_group_frames_opt"] = "同伴和小组成员的名字作为生命条",
    ["lang_group_frames_tip"] = "将队伍成员的姓名显示为彩色生命条",
    ["lang_default_group_frames_opt"] = "隐藏游戏左侧默认的组队框",
    ["lang_default_group_frames_tip"] = "如果与有关默认组框架显示的另一个插件发生冲突，则切换此开关",
    ["lang_museum_pieces_opt"] = "博物馆碎片迷你任务",
    ["lang_museum_pieces_tip"] = "添加一个小任务，将您库存中的每一件博物馆藏品带回博物馆",
    ["lang_dailies_counter_opt"] = "每日任务计数器",
    ["lang_dailies_counter_tip"] = "添加一个计数器来跟踪每天 50 个日常任务和字符限制",
    ["lang_NumbMiniQuest_opt"] = "显示迷你任务的数量",
    ["lang_NumbMiniQuest_opt_tip"] = "显示迷你任务的数量",
    ["lang_goldenPursuit_opt"] = "金典追觅迷你任务",
    ["lang_goldenPursuit_tip"] = "将每个金典追觅要求作为迷你任务添加",
  }
  
  local Dialog = {
    title = {
      text = "Vestige's Epic Quest 已解锁",
    },
    mainText = {
      text = "任务追踪目前已解锁，解锁状态下你无法使用鼠标功能。将任务追踪拖动到你想要的位置，然后在该插件设置中选择 锁定背景位置，或者你可以现在就锁定它\n\n你希望现在锁定任务追踪的位置么？",
    },
  }
  
  --Special setting
  
  BB.TableCopy(L, VEQ.mylanguage)
  BB.TableCopy(Dialog, ESO_Dialogs["VEQ_TrackerUnlocked"])

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
  --[[
  Translation Files:
    WPamA\i18n\EN.lua
  ]]
  local Icon = WPamA.Consts.IconsW
  local GetIcon = WPamA.Textures.GetTexture
  local OpenWindowText = GetString(SI_ENTER_CODE_CONFIRM_BUTTON)
  local L = {
    Lng = "ZH",
  -- DateTime settings
    DateTimePart = {dd = 1, mm = 0, yy = 2, },
    DateFrmt = 2, -- 1 default:m.d.yyy ; 2:yyyy-mm-dd; 3:dd.mm.yyyy; 4:yyyy/mm/dd; 5:dd.mm.yy; 6:mm/dd; 7:dd.mm
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
    KeyBindLFGP     = "开始/取消 排本（需先接任务）",
    KeyBindLFGPMode = "模式选择 - 3/4/5/6钥匙",
  -- Caption
    Wind = {
      [0] = {
        Capt = "地下城",
        Tab = {
          [1] = {N="誓约", W=65},
          [2] = {N="日历", W=72},
          [3] = {N="随机活动", W=124}, 
          [4] = {N=GetString(SI_ENDLESS_DUNGEON_LEADERBOARDS_CATEGORIES_HEADER), W=181},
        },
      },
      [1] = {
        Capt = "试炼",
        Tab = {
          [1] = {N="AA, HRC, SO, MOL, CR, SS", W=192},
          [2] = {N="HOF, AS, KA, RG, DSR, SE", W=192},
          [3] = {N="LC", W=192},
        },
      },
      [2] = {
        Capt = GetString(SI_ZONECOMPLETIONTYPE9), -- "World Bosses"
        Tab = {
          [ 1] = {N=GetIcon(18,28), NC=GetIcon(18,28,true), W=28, S=true, A="沃斯加"},
          [ 2] = {N=GetIcon(25,28), NC=GetIcon(25,28,true), W=28, S=true, A="瓦登费尔"},
          [ 3] = {N=GetIcon(22,28), NC=GetIcon(22,28,true), W=28, S=true, A="黄金海岸"},
          [ 4] = {N=GetIcon(26,26), NC=GetIcon(26,26,true), W=28, S=true, A="夏暮岛"},
          [ 5] = {N=GetIcon(28,26), NC=GetIcon(28,26,true), W=28, S=true, A="北艾斯维尔"},
          [ 6] = {N=GetIcon(30,28), NC=GetIcon(30,28,true), W=28, S=true, A="西天际"},
          [ 7] = {N=GetIcon(34,28), NC=GetIcon(34,28,true), W=28, S=true, A=GetString(SI_CHAPTER5)}, -- "Blackwood"
          [ 8] = {N=GetIcon(40,28), NC=GetIcon(40,28,true), W=28, S=true, A=GetString(SI_CHAPTER6)}, -- "High Isle"
          [ 9] = {N=GetIcon(42,28), NC=GetIcon(42,28,true), W=28, S=true, A=GetString(SI_CHAPTER7)}, -- "Necrom"
          [10] = {N=GetIcon(43,28), NC=GetIcon(43,28,true), W=28, S=true, A=GetString(SI_CHAPTER8)}, -- "The Gold Road"
        },
      },
      [3] = {
        Capt = "技能",
        Tab = {
          [1] = {N="职业&联盟战争", W=95},
          [2] = {N="制造", W=41,},
          [3] = {N="公会", W=43,},
          [4] = {N="世界", W=50,},
          [5] = {N=GetIcon(27,28), NC=GetIcon(27,28,true), W=28, S=true, A=GetString(SI_STATS_RIDING_SKILL)},
          [6] = {N=GetIcon(22,28), NC=GetIcon(22,28,true), W=28, S=true, A="暗影供应者"},
          [7] = {N=zo_strformat("<<1>><<2>><<3>>", GetIcon(57,22), GetIcon(58,22), GetIcon(59,22)),
                 NC=zo_strformat("<<1>><<2>><<3>>", GetIcon(57,22,true), GetIcon(58,22,true), GetIcon(59,22,true)),
                 W=70, S=true, A=GetString(SI_STAT_GAMEPAD_CHAMPION_POINTS_LABEL)},
        },
      },
      [4] = {
        Capt = GetString(SI_BINDING_NAME_TOGGLE_INVENTORY),
        Tab = {
          [1] = {N="货币", W=74,},
          [2] = {N="物品", W=46,},
          [3] = {N=GetIcon(32,24), NC=GetIcon(32,24,true), W=28, S=true, A="经验卷轴"},
          [4] = {N=GetIcon(60,24), NC=GetIcon(60,24,true), W=28, S=true, A="蜕变晶石球"},
          [5] = {N=GetIcon(31,28), NC=GetIcon(31,28,true), W=28, S=true,
                 A=GetString(SI_GAMEPAD_PLAYER_INVENTORY_CAPACITY_FOOTER_LABEL)},
          [6] = {N=GetIcon(61,24), NC=GetIcon(61,24,true), W=28, S=true,
                 A=zo_strformat("<<1>>, <<2>>", GetString(SI_SPECIALIZEDITEMTYPE100), GetString(SI_SPECIALIZEDITEMTYPE101))},
          [7] = {N="|t24:24:esoui/art/worldmap/map_indexicon_key_up.dds|t", W=28, S=true, A="钥匙"},
        },
      },
      [5] = {
        Capt = GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKCATEGORIES1),
        Tab = {
          [1] = {N=GetString(SI_CAMPAIGNRULESETTYPE1), W=61},
          [2] = {N=GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKSUBCATEGORIES5), W=112},
          [3] = {N=GetString(SI_DAILY_LOGIN_REWARDS_TILE_HEADER), W=112},
          [4] = {N="奖励&标志", W=132},
  --      [5] = {N=GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKSUBCATEGORIES4), W=100,},
        },
      },
      [6] = {
        Capt = GetString(SI_MAPFILTER14),
        Tab = {
          [1] = {N=GetIcon(45, 24) .. "1", NC=GetIcon(45, 24, true) .. "1", W=70, S=true, A=GetString(SI_COMPANION_OVERVIEW_RAPPORT)},
          [2] = {N=GetIcon(45, 24) .. "2", NC=GetIcon(45, 24, true) .. "1", W=70, S=true, A=GetString(SI_COMPANION_OVERVIEW_RAPPORT)},
          [3] = {N=zo_strformat("<<1>><<2>><<3>>", GetIcon(24, 24), GetIcon(35, 24), GetIcon(39, 24)),
                 NC=zo_strformat("<<1>><<2>><<3>>", GetIcon(24, 24, true), GetIcon(35, 24, true), GetIcon(39, 24, true)),
                 W=70, S=true, A="技能：职业、公会、护甲"},
          
          [4] = {N=zo_strformat("<<1>><<2>><<3>>", GetIcon(48, 24), GetIcon(51, 24), GetIcon(53, 24)),
                 NC=zo_strformat("<<1>><<2>><<3>>", GetIcon(48, 24, true), GetIcon(51, 24, true), GetIcon(53, 24, true)),
                 W=70, S=true, A="技能：武器"},
          [5] = {N=zo_strformat("<<1>><<2>><<3>>", GetIcon(38, 24), GetIcon(39, 24), GetIcon(37, 24)),
                 NC=zo_strformat("<<1>><<2>><<3>>", GetIcon(38, 24, true), GetIcon(39, 24, true), GetIcon(37, 24, true)),
                 W=70, S=true,
                 A=GetString(SI_ARMORY_EQUIPMENT_LABEL) .. ": " .. GetString(SI_EQUIPSLOTVISUALCATEGORY2)},
          [6] = {N=zo_strformat("<<1>><<2>><<3>>", GetIcon(54, 24), GetIcon(48, 24), GetIcon(55, 24)),
                 NC=zo_strformat("<<1>><<2>><<3>>", GetIcon(54, 24, true), GetIcon(48, 24, true), GetIcon(55, 24, true)),
                 W=70, S=true,
                 A=zo_strformat("<<1>>: <<2>>, <<3>>", GetString(SI_ARMORY_EQUIPMENT_LABEL),
                      GetString(SI_EQUIPSLOTVISUALCATEGORY1), GetString(SI_EQUIPSLOTVISUALCATEGORY3))},
        },
      },
      [7] = {
        Capt = GetString(SI_JOURNAL_MENU_ACHIEVEMENTS) .. ", " .. GetString(SI_COLLECTIONS_MENU_ROOT_TITLE),
        Tab = {
          [1] = {N="季节性庆典", W=146},
          [2] = {N=GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKSUBCATEGORIES803), W=70},
        },
      },
      [8] = {
        Capt = GetString(SI_QUEST_JOURNAL_GENERAL_CATEGORY), -- "Miscellaneous"
        Tab = {
          [1] = {N=GetString(SI_ACTIVITY_FINDER_CATEGORY_TIMED_ACTIVITIES), W=102,},
          [2] = {N="委托", W=48,},
          [3] = {N=GetIcon(41,28), NC=GetIcon(41,28,true), W=28, S=true, A=GetString(SI_ZONECOMPLETIONTYPE8)}, -- World Events
          [4] = {N=GetIcon(56,28), NC=GetIcon(56,28,true),
                 W=28, S=true, A=GetString(SI_CUSTOMER_SERVICE_OVERVIEW)}, -- Overview
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
    SelModeWin = {x = 220, y = 2, dy = 24,},
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
    PromoEventName = GetIcon(47, 20, true) ..
                     GetString(SI_ACTIVITY_FINDER_CATEGORY_PROMOTIONAL_EVENTS) .. " : <<1>>", -- "Golden Pursuits"
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
    OptHintUncomplPlg  = "为未完成的地下城提示誓约",
    OptHintUncomplPlgF = table.concat( {
                       "如果今日誓约的地下城未完成，在无畏者誓约窗口中提示\n",
                       "未完成地下城：技能点任务未完成/未击杀所有\n",
                       "(地下城需要在当前账户/角色可用或已解锁)",
                       } ),
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
    ---
    --OptEndeavorRewardMode = "勉励任务奖励显示模式...",
    --OptEndeavorRewardList = {"单个", "当前", "最大"},
    OptEndeavorChatMsg  = "在聊天窗口中显示勉励任务进度",
    OptEndeavorChatMsgF = "在聊天窗口中显示勉励任务进度相关信息",
    OptEndeavorChatChnl = "显示进度的聊天频道",
    OptEndeavorChatChnlF = "用于显示勉励进度相关信息的聊天频道",
    OptPursuitChatMsg  = "在聊天窗口中显示金典追觅进度",
    OptPursuitChatMsgF = "在聊天窗口中显示金典追觅进度相关信息",
    OptPursuitChatChnlF = "用于显示金典追觅进度相关信息的聊天频道",
    OptPursuitAutoClaim = "自动获取金典追觅奖励",
    ---
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
    [10] = table.concat({ Icon.LMB, " ", L.KeyBindLFGP, "\n", Icon.RMB, " ", L.KeyBindLFGPMode }),
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
    [115] = table.concat({
              GetIcon(14, 24), "- 从检测到可用事件到现在已经过去了多长时间。\n",
              GetIcon(13, 28), "- 从事件完成到现在已经过去了多长时间。" }
            ),
    [116] = "活动进行了多长时间。\n（玩家完成活动用了多长时间）",
    [117] = "到世界事件可用的预计时间。\n" ..
            "至少需要完成 2 个事件才能计算时间。\n" ..
            "完成的事件越多，时间计算就越准确。",
    [118] = "HP % - 事件Boss的生命值等级。\n" ..
            GetIcon(13, 28) .. "- 自事件完成以来已经过去了多少时间。",
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
  -- Hireling mail and crafting profession certification'
    [250] = table.concat({ "\n", Icon.Mail, " - 可使用雇工邮件（需要重登游戏或更改位置）",
                           "\n", Icon.NoCert, " - 未完成生产认证任务" }),
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
      N = "马扎顿遗迹",
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
  -- Gold Road
    [51] = {C = "Defeat Spinner Urthrendir",}, -- URTH
    [52] = {C = "Defeat Stri the Fate-Eater",}, -- STRI
    [53] = {C = "Defeat Fang and Talon",}, -- FANG
    [54] = {C = "Defeat Hessedaz the Baleful",}, -- HESS
    [55] = {C = "Defeat Recollection Leaders",}, -- RECO
    [56] = {C = "Defeat Oakenclaw",}, -- OAK
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