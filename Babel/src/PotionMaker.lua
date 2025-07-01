local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["PotionMaker"] = function() if not PotMaker then return false end
  PotMaker:LoadLanguage {
    name = "zh",
    check_all = "禁止所有",
    uncheck_all = "允许所有",
    search = "搜索",
    search_again = "返回",
    only = "只使用选择的素材",
    potion2reagents = "只搜索双素材药剂",
    questpotionsonly = "只搜索任务限定的药剂",
    need_solvent = "需要溶剂",
    search_results = "搜索结果",
    combinations = "素材组合",
    favorites = "收藏",
    mark_favorite = "标记收藏",
    unmark_favorite = "取消标记收藏",
    skill = "技能",
    settings_short = "设定",
    settings_enableBtn = "ESO界面里显示/隐藏按钮",
    use_missing_reagents_short = "包含缺失素材", 
    use_missing_reagents_long = "选中此项, 搜索结果会包含尚未拥有的素材",
    use_missing_reagents_warning = "开启后将会关闭自动添加素材功能!",
    use_unknown_traits_short = "包含未知特性",
    use_unknown_traits_long = "选中此项, 搜索结果会包含未知特性",
    fake_third_slot_short = "包含三素材合成",
    fake_third_slot_long = "选中此项, 搜索结果会包含三素材合成",
    training_short = "只显示未知特性",
    training_long = "炼金时只合成尚未解锁的特性",
    training_warning = "选中此项将会隐藏所有已解锁特性的结果!",
    same_window_coords_short = "窗口相同位置",
    same_window_coords_long = "选中此项将会使搜索结果窗口和搜索窗口位置相同",
    show_xp_short = "显示经验值",
    show_xp_long = "炼金经验值获得时显示一条系统提示",
    reagent_stackorder_short = "按照素材数量排序",
    reagent_stackorder_long = "素材将按照数量而非名称排序",
    show_favorite_header = "收藏",
    show_favorite_short = "列表",
    show_favorite_long = "已标记的素材: 只显示标记的\n相同药剂: 所有能合成相同药剂的组合\n相同特性: 任意等级相同特性的药剂",
    show_favorite_reagents = "标记的素材",
    show_favorite_potion = "相同药剂",
    show_favorite_traits = "相同特性",
    filter_favorite_traits = "按特性过滤",
    filter_favorite_solvents = "按溶剂过滤",
    filter_favorite_reagents = "按素材过滤",
    show_mainmenu_item_short = "主菜单里显示",
    show_mainmenu_item_long = "显示在主菜单中, 用于切换 Potion Maker 窗口. 重载界面后生效.",
    show_as_default = "Potion Maker 作为默认",
    show_as_default_long = "在炼金实验台自动切换显示 Potion Maker.",
    item_saver_header = "FCOItemSaver & ItemSaver",
    use_item_saver = "使用(FCO)ItemSaver",
    use_item_saver_long = "不要使用 FCOItemSaver 或 ItemSaver 标记的素材/溶剂.",
    item_saver_protected = "物品受保护.",
    suppress_new_trait_dialog = "隐藏新特性提示",
    suppress_new_trait_dialog_long = "用提示替换新特性的弹出对话框.",
    auto_switch_tabs = "自动切换药水/毒药制造",
    auto_switch_tabs_long = "根据任务描述中的毒药关键词，将界面切换至药水或毒药制造",

    traitNames =
    {
      ["Restore Health"] =                "回复生命",
      ["Ravage Health"] =                 "损害生命",
      ["Restore Magicka"] =               "回复魔力",
      ["Ravage Magicka"] =                "损害魔力",
      ["Restore Stamina"] =               "回复耐力",
      ["Ravage Stamina"] =                "损害耐力",
      ["Increase Weapon Power"] =         "提高武器威力",
      ["Lower Weapon Power"] =            "致残",
      ["Increase Spell Power"] =          "提高法术威力",
      ["Lower Spell Power"] =             "怯懦",
      ["Weapon Crit"] =                   "武器暴击率",
      ["Lower Weapon Crit"] =             "虚弱",
      ["Spell Crit"] =                    "法术暴击率",
      ["Lower Spell Crit"] =              "混乱",
      ["Increase Armor"] =                "提高护甲",
      ["Lower Armor"] =                   "断裂",
      ["Increase Spell Resist"] =         "提高法术抗性",
      ["Lower Spell Resist"] =            "破甲",
      ["Unstoppable"] =                   "势不可挡",
      ["Stun"] =                          "诱捕",
      ["Speed"] =                         "速度",
      ["Reduce Speed"] =                  "阻碍",
      ["Invisible"] =                     "隐形",
      ["Detection"] =                     "侦测",

      ["Sustained Restore Health"] =      "绵长生命",
      ["Creeping Ravage Health"] =        "渐进生命损害",
      ["Vitality"] =                      "活力",
      ["Vulnerability"] =                 "脆弱",
      ["Protection"] =                    "保护",
      ["Defile"] =                        "亵渎",

      ["Heroism"] =                       "英勇",
      ["Timidity"] =                      "胆怯",
    },
  }
  
  --Special Setting
  BB.SetKeybindingsReplace("POTIONMAKER_SEARCH", "UI内搜索按钮")
  BB.SetKeybindingsReplace("POTIONMAKER_SEARCH_WRITS", "UI内查询委托")
  BB.SetKeybindingsReplace("POTIONMAKER_SEARCH_FAVORITS", "UI内打开收藏")
  
return true end