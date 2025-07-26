local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["VEQ"] = function() if not VEQ then return false end
  --[[
  Translation Files: 大部分已由AK-ESO汉化完成，仅做补充及修缮
    \Langs\en.lua
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
    ["lang_zoneguide_tip"] = "区域指南迷你任务自动启用并在区域更改时成为VEQ 中的迷你任务，如果您在该区域没有活动任务",	
    ["lang_POIcompletion_opt"] = "将未发现的兴趣点区域设置为迷你任务",
    ["lang_POIcompletion_tip"] = "区域更改时，将一个未发现的兴趣点设置为VEQ中的迷你任务",
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
    ["lang_communityEvents_opt"] = "社区活动迷你任务",
    ["lang_communityEvents_tip"] = "将每个社区活动事件作为迷你任务添加",
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

  BB.SetKeybindingsReplace("VEQ_TOOGLE_HIDDEN", "开关UI面板")
  BB.SetKeybindingsReplace("VEQ_TOGGLE_LOCK", "切换面板位置锁定")
  BB.SetKeybindingsReplace("VEQ_RESET_POS", "重置面板位置")
  BB.SetKeybindingsReplace("VEQ_TOGGLE_HINTS", "开关提示和隐藏信息")
  BB.SetKeybindingsReplace("VEQ_NEXT_MINI_QUEST", "下一个迷你任务")
  
  BB.SetKeybindingsReplace("VEQ_TOGGLE_ZONES", "Toggle Zones On/Off")
  BB.SetKeybindingsReplace("VEQ_TOGGLE_HYBRID", "Toggle Category/Zones View")
  BB.SetKeybindingsReplace("VEQ_TOGGLE_AUTO_HIDE_ZONES", "Toggle Auto Hide Zones")
  BB.SetKeybindingsReplace("VEQ_TOGGLE_HIDE_OBJ_EXCEPT_FOCUSED", "Toggle Objectives/Hints")
  BB.SetKeybindingsReplace("VEQ_TOGGLE_NO_FOCUS_TRANS", "Toggle Focused Transparency ")
  BB.SetKeybindingsReplace("VEQ_TOGGLE_FOCUS_ZONE_TRANS", "Toggle Focused Zone Transparency")
  
return true end