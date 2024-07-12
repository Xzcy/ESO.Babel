local BB = MABabel

--Quest Map
--10.0.0
do if not BB.SV.BanList["QuestMap"] then
  local function Fun()
    local Strings = {
      -- General
      [QUESTMAP_COMPANION] = "伙伴",
      [QUESTMAP_TRIAL] = "试炼",
      [QUESTMAP_STORY_ICON_SET] = "主线图标设定",
      [QUESTMAP_SKILLPOINT_ICON_SET] = "技能点图标设定",
      [QUESTMAP_CADWELL_ICON_SET] = "卡德维尔图标设定",
      [QUESTMAP_COMPANION_ICON_SET] = "伙伴图标设定",
      [QUESTMAP_ICON_SETS_HEADER] = "任务图标设定",
      [QUESTMAP_SETTINGS_HEADER] = "地图图标设置",
      [QUESTMAP_PIN_COLOR_HEADER] = "地图图标颜色设置",
      [QUESTMAP_RESET_HIDDEN_HEADER] = "重置隐藏的地图图标",
    }
    
    for k, v in pairs(Strings) do
      SafeAddString(k, v, 2)
    end
    
    return Strings[QUESTMAP_ICON_SETS_HEADER]
  end

  --Special Setting
  BB.SetFunHook(function(ID)
    if QUESTMAP_ICON_SETS_HEADER and QUESTMAP_ICON_SETS_HEADER == ID then
      return Fun()
    end
  end, _G, "GetString", true)

end end

BB.AddonList["QuestMap"] = function()
  if not QuestMap then return false end
  return true
end

--RaidNotifier
--2.28.1
BB.AddonList["RaidNotifier"] = function() if not RaidNotifier then return false end
  local L = {}

  L.Description                            = "在试炼期间在屏幕上显示不同事件的提醒."

  --------------------------------
  ----     General Stuff      ----
  --------------------------------
  L.Settings_General_Header                           = "通用"
  -- Settings
  L.Settings_General_Notifications_Showcase           = "提醒展示"
  L.Settings_General_Bufffood_Reminder                = "Buff食物提醒器"
  L.Settings_General_Bufffood_Reminder_TT             = "在试炼中当你没有buff食物或即将耗尽时提醒你 (见下面)"
  L.Settings_General_Bufffood_Reminder_Interval       = "提醒间隔"
  L.Settings_General_Bufffood_Reminder_Interval_TT    = "食物提醒的间隔时间, 单位为秒, 剩余10分钟时开始。"
  L.Settings_General_Vanity_Pets                      = "在试炼中关闭无用的宠物"
  L.Settings_General_Vanity_Pets_TT                   = "当你开始一场试炼时将会关闭你无用的宠物。一旦你完成或退出试炼，你的宠物将再次可用。"
  L.Settings_General_No_Assistants                    = "战斗开始时关闭助手"
  L.Settings_General_No_Assistants_TT                 = "只在试炼中关闭助手，且助手可以通过再次召唤以在战斗中使用。"
  L.Settings_General_Center_Screen_Announce           = "公告类型"
  L.Settings_General_Center_Screen_Announce_TT        = "要使用的公告类型。\n\n只有自定义格式的公告可以重新定位其在屏幕中的位置。"
  L.Settings_General_NotificationsScale               = "通知缩放"
  L.Settings_General_NotificationsScale_TT            = "通知和次要倒计时显示的缩放比例"
  L.Settings_General_UseDisplayName                   = "使用显示名称"
  L.Settings_General_UseDisplayName_TT                = "在提醒中使用一个玩家的显示名称而不使用角色名称。"
  L.Settings_General_Unlock_Status_Icon               = "解锁统计图标"
  L.Settings_General_Unlock_Status_Icon_TT            = "开启时将在屏幕上显示一个可移动的统计图标。"
  L.Settings_General_Default_Sound                    = "默认声音"
  L.Settings_General_Default_Sound_TT                 = "通知使用的默认声音。"
  -- Choices
  L.Settings_General_Choices_Off                      = "关"
  L.Settings_General_Choices_Full                     = "全部"
  L.Settings_General_Choices_Normal                   = "普通"
  L.Settings_General_Choices_Minimal                  = "最小"
  L.Settings_General_Choices_Self                     = "自己"
  L.Settings_General_Choices_Near                     = "附近"
  L.Settings_General_Choices_All                      = "所有"
  L.Settings_General_Choices_Always                   = "总是"
  L.Settings_General_Choices_Other                    = "其他"
  L.Settings_General_Choices_Others                   = "其他"
  L.Settings_General_Choices_Inverted                 = "反向"
  L.Settings_General_Choices_Small_Announcement       = "小 (静态，废弃)"
  L.Settings_General_Choices_Large_Announcement       = "大 (静态，废弃)"
  L.Settings_General_Choices_Major_Announcement       = "主要 (静态，废弃)"
  L.Settings_General_Choices_1s                       = "1.0秒"
  L.Settings_General_Choices_500ms                    = "0.5秒"
  L.Settings_General_Choices_200ms                    = "0.2秒"
  L.Settings_General_Choices_Custom                   = "自定义"
  L.Settings_General_Choices_Custom_Announcement      = "自定义 (可移动)"
  L.Settings_General_Choices_SelfAndTanks             = "自身与坦克"
  L.Settings_General_Choices_OnlyChaurusTotem         = "仅查鲁斯" -- Specific for Kyne's Aegis
  L.Settings_DreadsailReef_Choices_OnlyFireDome       = "仅火罩子"
  L.Settings_DreadsailReef_Choices_OnlyIceDome        = "仅冰罩子"
  -- Alerts
  L.Alerts_General_No_Bufffood                        = "你没有buff食物!"
  L.Alerts_General_Bufffood_Minutes                   = "你的 '<<1>>' buff食物将在 |cbd0000<<2>>|r 分钟后耗尽!"
  -- Bindings
  L.Binding_ToggleUltimateExchange                    = "切换终极"


  --------------------------------
  ----    Ultimate Exchange   ----
  --------------------------------
  L.Settings_Ultimate_Header                           = "终极交换 (测试)"
  L.Settings_Ultimate_Description                      = "此功能允许你将你的终极技能发送给你的团队成员，使他们可以看见你还有多久后可以释放。无论是套装还是被动引起了消耗减少，它都可以显示。"
  -- Settings 
  L.Settings_Ultimate_Enabled                          = "开启"
  L.Settings_Ultimate_Enabled_TT                       = "开启分享和接收终极值。在试炼之外将被禁用"
  L.Settings_Ultimate_Hidden                           = "隐藏"
  L.Settings_Ultimate_Hidden_TT                        = "隐藏终极窗口，但不会终止它的功能。"
  L.Settings_Ultimate_UseColor                         = "使用颜色"
  L.Settings_Ultimate_UseColor_TT                      = "给与他人的终极技一个阈值基于百分之80到100之间的颜色"
  L.Settings_Ultimate_UseDisplayName                   = "显示用户名"
  L.Settings_Ultimate_UseDisplayName_TT                = "在终极窗口中显示用户名而不是角色名。"
  L.Settings_Ultimate_ShowHealers                      = "显示治疗者"
  L.Settings_Ultimate_ShowHealers_TT                   = "为治疗者角色的团队成员显示终极技。"
  L.Settings_Ultimate_ShowTanks                        = "显示坦克"
  L.Settings_Ultimate_ShowTanks_TT                     = "为坦克角色的团队成员显示终极技。"
  L.Settings_Ultimate_ShowDps                          = "显示伤害者"
  L.Settings_Ultimate_ShowDps_TT                       = "为DPS角色的团队成员显示终极技。"
  L.Settings_Ultimate_TargetUlti                       = "终极技能"
  L.Settings_Ultimate_TargetUlti_TT                    = "使用什么终极技能使其百分比值对其他人可见。"
  L.Settings_Ultimate_OverrideCost                     = "覆盖消耗"
  L.Settings_Ultimate_OverrideCost_TT                  = "当发送你的终极消耗给其他人时使用此值。设为0则禁用覆盖。"


  --------------------------------
  ----        Profiles        ----
  --------------------------------
  L.Settings_Profile_Header                            = "配置"
  L.Settings_Profile_Description                       = "设置配置可以在此处管理，包括一个开启账户全局设置的选项，此选项可以将相同的设置应用到此账户下的所有角色上。由于此选项是永久性的，必须先使用面板底部的复选框开启管理。"
  L.Settings_Profile_UseGlobal                         = "使用账户全局设置"
  L.Settings_Profile_UseGlobal_Warning                 = "在全局或局部配置间切换将重载界面。"
  L.Settings_Profile_Copy                              = "选择一个配置以复制"
  L.Settings_Profile_Copy_TT                           = "选择一个配置，将此配置中的设置复制到当前的配置上。当前配置可以是当前已登录的角色，也可以是账户全局的配置（如果开启的话）。当前配置中的设置将被永久覆盖\n\n该操作无法撤销!"
  L.Settings_Profile_CopyButton                        = "复制配置"
  L.Settings_Profile_CopyButton_Warning                = "复制一个配置将会重载界面。"
  L.Settings_Profile_CopyCannotCopy                    = "无法复制选中的配置。请再次尝试或选择另一个配置。"
  L.Settings_Profile_Delete                            = "选择一个配置以删除"
  L.Settings_Profile_Delete_TT                         = "选择一个配置以从数据库中删除它。如果稍后该角色被登陆, 而你没有开启账户全局设置, 全新的默认设置将会被创建。\n\n删除配置是永久性的!"
  L.Settings_Profile_DeleteButton                      = "删除配置"
  L.Settings_Profile_Guard                             = "开启配置管理"


  --------------------------------
  ----       Countdowns       ----
  --------------------------------
  L.Settings_Countdown_Header                          = "倒计时"
  L.Settings_Countdown_Description                     = "改变倒计时的外貌和行为。"
  L.Settings_Countdown_TimerScale                      = "主要计时尺寸(废弃)"
  L.Settings_Countdown_TimerScale_TT                   = "计时显示的尺寸"
  L.Settings_Countdown_TextScale                       = "主要文本尺寸(废弃)"
  L.Settings_Countdown_TextScale_TT                    = "文本显示的尺寸"
  L.Settings_Countdown_TimerPrecise                    = "计时精度"
  L.Settings_Countdown_TimerPrecise_TT                    = "为倒计时设置计时精度"
  L.Settings_Countdown_UseColors                       = "使用颜色"
  L.Settings_Countdown_UseColors_TT                    = "开启时当倒计时接近零时，将使用 黄色/橙色/红色 等颜色"


  --------------------------------
  ----          Trials        ----
  --------------------------------
  L.Settings_Trials_Header                            = "试炼"
  L.Settings_Trials_Description                       = "此处你可以为每一个试炼单独配置提醒。它们全都有一个可配置的声音，而且其中很多不光支持你自己，还支持你的队友。"


  --------------------------------
  ----     Hel Ra Citadel     ----
  --------------------------------
  L.Settings_HelRa_Header                             = "赫尔·拉要塞(HRC)"
  -- Settings
  L.Settings_HelRa_Yokeda_Meteor                      = "尤可达: 流星"
  L.Settings_HelRa_Yokeda_Meteor_TT                   = "当尤可达即将使用流星进行攻击时警告你。"
  L.Settings_HelRa_Warrior_StoneForm                  = "天界战神: 石头形态"
  L.Settings_HelRa_Warrior_StoneForm_TT               = "当你和其他人即将被天界战神变为石头时警告你。"
  L.Settings_HelRa_Warrior_ShieldThrow                = "天界战神: 盾牌投掷"
  L.Settings_HelRa_Warrior_ShieldThrow_TT             = "当天界战神即将投掷他的盾牌时警告你。"
  --Alerts
  L.Alerts_HelRa_Yokeda_Meteor                        = "|cFF0000流星|r 目标 你 !格挡!"
  L.Alerts_HelRa_Yokeda_Meteor_Other                  = "|cFF0000流星|r 目标 |c595959<<!aC:1>>|r !"
  L.Alerts_HelRa_Warrior_StoneForm                    = "|c595959石头形态|r 目标 你 !不要使用协同!"
  L.Alerts_HelRa_Warrior_StoneForm_Other              = "|c595959石头形态|r 目标 |cFF0000<<!aC:1>>|r !"
  L.Alerts_HelRa_Warrior_ShieldThrow                  = "|cFF0000盾牌投掷|r 目标 你 !"


  --------------------------------
  ----   Aetherian Archives   ----
  --------------------------------
  L.Settings_Archive_Header                           = "艾瑟瑞恩档案塔(AA)"
  -- Settings
  L.Settings_Archive_StormAtro_ImpendingStorm         = "风暴侍灵: 隐现风暴雷击"
  L.Settings_Archive_StormAtro_ImpendingStorm_TT      = "当风暴侍灵即将释放大型闪电AoE时警告你。"
  L.Settings_Archive_StormAtro_LightningStorm         = "风暴侍灵: 闪电风暴"
  L.Settings_Archive_StormAtro_LightningStorm_TT      = "当风暴侍灵从天上召唤闪电时警告你需要躲避。"
  L.Settings_Archive_StoneAtro_BoulderStorm           = "石头侍灵: 巨石风暴"
  L.Settings_Archive_StoneAtro_BoulderStorm_TT        = "当石头侍灵开始向人群投掷大量石头时警告你。"
  L.Settings_Archive_StoneAtro_BigQuake               = "石头侍灵: 大地震"
  L.Settings_Archive_StoneAtro_BigQuake_TT            = "当石头侍灵开始践踏地面时警告你。"
  L.Settings_Archive_Overcharge                       = "怪物: 超载"
  L.Settings_Archive_Overcharge_TT                    = "当一个超载者的超载技能以你为目标时警告你。"
  L.Settings_Archive_Call_Lightning                   = "怪物: 召唤闪电"
  L.Settings_Archive_Call_Lightning_TT                = "当一个超载者的召唤闪电技能以你为目标时警告你。"
  -- Alerts
  L.Alerts_Archive_StormAtro_ImpendingStorm           = "|cFF0000隐现风暴雷击|r !"
  L.Alerts_Archive_StormAtro_LightningStorm           = "|cfef92e闪电风暴|r !进入光内!"
  L.Alerts_Archive_StoneAtro_BoulderStorm             = "|cFF0000巨石风暴|r !格挡避免击退!"
  L.Alerts_Archive_StoneAtro_BigQuake                 = "|cFF0000大地震|r !"
  L.Alerts_Archive_Overcharge                         = "|c46edff超载|r 目标 你 !"
  L.Alerts_Archive_Overcharge_Other                   = "|c46edff超载|r 目标 |cFF0000<<!aC:1>>|r !"
  L.Alerts_Archive_Call_Lightning                     = "|c46edff召唤闪电|r 目标 你 !动起来!"
  L.Alerts_Archive_Call_Lightning_Other               = "|c46edff召唤闪电|r 目标 |cFF0000<<!aC:1>>|r !"


  --------------------------------
  ----    Sanctum Ophidia     ----
  --------------------------------
  L.Settings_Sanctum_Header                           = "乌鞘蛇圣所(SO)"
  -- Settings
  L.Settings_Sanctum_Magicka_Detonation               = "巨蛇: 魔力引爆"
  L.Settings_Sanctum_Magicka_Detonation_TT            = "当你在巨蛇战斗期间受到魔力引爆debuff时警告你。"
  L.Settings_Sanctum_Serpent_Poison                   = "巨蛇: 剧毒阶段"
  L.Settings_Sanctum_Serpent_Poison_TT                = "当在巨蛇战斗期间进入剧毒阶段时警告你。"
  L.Settings_Sanctum_Serpent_World_Shaper             = "巨蛇: 世界塑造者 (困难模式)"
  L.Settings_Sanctum_Serpent_World_Shaper_TT          = "当巨蛇开始世界塑造者攻击时警告你, 倒计时直到它结束。"
  L.Settings_Sanctum_Mantikora_Spear                  = "蝎尾蜥: 长矛"
  L.Settings_Sanctum_Mantikora_Spear_TT               = "当你将得到蝎尾蜥长矛时警告你。"
  L.Settings_Sanctum_Mantikora_Quake                  = "蝎尾蜥: 震动"
  L.Settings_Sanctum_Mantikora_Quake_TT               = "当你在蝎尾蜥上得到三套震动或者符文时警告你。"
  L.Settings_Sanctum_Troll_Boulder                    = "怪物: 巨魔巨石投掷"
  L.Settings_Sanctum_Troll_Boulder_TT                 = "当一只巨魔准备向你投掷巨石时警告你。"
  L.Settings_Sanctum_Troll_Poison                     = "怪物: 巨魔毒药"
  L.Settings_Sanctum_Troll_Poison_TT                  = "当一只巨魔准备向你投掷毒素散播时警告你。"
  L.Settings_Sanctum_Overcharge                       = "怪物: 超载"
  L.Settings_Sanctum_Overcharge_TT                    = "当一个超载者的超载技能以你为目标时警告你。"
  L.Settings_Sanctum_Call_Lightning                   = "怪物: 召唤闪电"
  L.Settings_Sanctum_Call_Lightning_TT                = "当一个超载者的召唤闪电技能以你为目标时警告你。"
  -- Alerts
  L.Alerts_Sanctum_Serpent_Poison0                    = "|c39942e剧毒阶段|r !集中在一起!"
  L.Alerts_Sanctum_Serpent_Poison1                    = "|c39942e剧毒阶段|r !被 |ccc0000蛇人|r 跟随"
  L.Alerts_Sanctum_Serpent_Poison2                    = "|c39942e剧毒阶段|r !被 |c009933蝎尾蜥|r 跟随" --left
  L.Alerts_Sanctum_Serpent_Poison3                    = "|c39942e剧毒阶段|r !被 |c009933蝎尾蜥|r 跟随" --right
  L.Alerts_Sanctum_Serpent_Poison4                    = "|c39942e剧毒阶段|r !被 |cff33cc盾牌|r 跟随"
  L.Alerts_Sanctum_Serpent_Poison5                    = "最后的 |c39942e剧毒阶段|r !"
  L.Alerts_Sanctum_Serpent_World_Shaper               = "|c00c832世界塑造者|r 还有"
  L.Alerts_Sanctum_Magicka_Detonation                 = "|c234afa魔力引爆|r !用光你的魔力!"
  L.Alerts_Sanctum_Mantikora_Spear                    = "蝎尾蜥 |ccde846长矛|r 目标 你 !躲开!"
  L.Alerts_Sanctum_Mantikora_Spear_Other              = "蝎尾蜥 |ccde846长矛|r 目标 <<!aC:1>> !躲开!"
  L.Alerts_Sanctum_Mantikora_Quake                    = "蝎尾蜥 |ccde846震动|r 目标 你 !躲开!"
  L.Alerts_Sanctum_Troll_Poison                       = "|c66ff33巨魔毒药|r !不要散播它!"
  L.Alerts_Sanctum_Troll_Poison_Other                 = "|c66ff33巨魔毒药|r 目标 |cFF0000<<!aC:1>>|r !"
  L.Alerts_Sanctum_Troll_Boulder                      = "|c595959巨石投掷|r !躲避它!"
  L.Alerts_Sanctum_Troll_Boulder_Other                = "|c595959巨石投掷|r 目标 |cFF0000<<!aC:1>>|r !"
  L.Alerts_Sanctum_Overcharge                         = "|c46edff超载|r 目标 你 !"
  L.Alerts_Sanctum_Overcharge_Other                   = "|c46edff超载|r 目标 |cFF0000<<!aC:1>>|r !"
  L.Alerts_Sanctum_Call_Lightning                     = "|c46edff召唤闪电|r 目标 你 !跑起来!"
  L.Alerts_Sanctum_Call_Lightning_Other               = "|c46edff召唤闪电|r 目标 |cFF0000<<!aC:1>>|r !"


  --------------------------------
  ----    Maelstrom Arena     ----
  --------------------------------
  L.Settings_Maelstrom_Header                         = "漩涡竞技场(MA)"
  -- Settings
  L.Settings_Maelstrom_Stage7_Poison                  = "第7阶段: 中毒"
  L.Settings_Maelstrom_Stage7_Poison_TT               = "当你在第7阶段(树荫拱顶)中中毒时警告你。"
  L.Settings_Maelstrom_Stage9_Synergy                 = "第9阶段: 幽灵爆炸 (协同)"
  L.Settings_Maelstrom_Stage9_Synergy_TT              = "当你在第9阶段(绝望剧场)捡到3个(金色)幽灵后获得了协同技能时警告你。"
  -- Alerts
  L.Alerts_Maelstrom_Stage7_Poison                    = "|c39942e中毒|r !使用两个区域之一来解毒!"
  L.Alerts_Maelstrom_Stage9_Synergy                   = "|c23afe7幽灵爆炸|r 就绪 !使用协同!"


  --------------------------------
  ----     Maw of Lorkhaj     ----
  --------------------------------
  L.Settings_MawLorkhaj_Header                        = "洛克汗的巨口(MoL)"
  -- Settings
  L.Settings_MawLorkhaj_Zhaj_GripOfLorkhaj            = "扎哈撒: 洛克汗之握"
  L.Settings_MawLorkhaj_Zhaj_GripOfLorkhaj_TT         = "洛克汗之握debuff开始影响你时获得一个提醒。"
  L.Settings_MawLorkhaj_Zhaj_Glyphs                   = "扎哈撒: 清理平台 (测试)"
  L.Settings_MawLorkhaj_Zhaj_Glyphs_TT                = "展示一个窗口来显示所有清理平台的状态和刷新倒计时。"
  L.Settings_MawLorkhaj_Zhaj_Glyphs_Invert            = "       - 反向视野"
  L.Settings_MawLorkhaj_Zhaj_Glyphs_Invert_TT         = "反向清理平台."
  L.Settings_MawLorkhaj_Twin_Aspects                  = "伪月双子: 相位"
  L.Settings_MawLorkhaj_Twin_Aspects_TT               = "当你在伪月双子战斗中获得了月亮之相或阴影之相时警告你。\n\n    完全提醒，当你获得了一个相位时、当你开始转换相位时、当转换完成时。\n    普通提醒，当你获得一个相位时和你正在转换时。\n    最小提醒，仅当你正在转换时。"
  L.Settings_MawLorkhaj_Twin_Aspects_Status           = "       - 显示状态"
  L.Settings_MawLorkhaj_Twin_Aspects_Status_TT        = "boss战期间在状态显示中展示你当前的相位。"
  L.Settings_MawLorkhaj_Rakkhat_Unstable_Void         = "拉卡特: 不稳定虚无"
  L.Settings_MawLorkhaj_Rakkhat_Unstable_Void_TT      = "在拉卡特战斗中当你获得了不稳定虚无效果时警告你。"
  L.Settings_MawLorkhaj_Rakkhat_Unstable_Void_Countdown = "       - 倒计时"
  L.Settings_MawLorkhaj_Rakkhat_Unstable_Void_Countdown_TT = "当开启时，不稳定虚无将显示倒计时，而不是简单的提醒。"
  L.Settings_MawLorkhaj_Rakkhat_ThreshingWings        = "拉卡特: 翻滚之翼"
  L.Settings_MawLorkhaj_Rakkhat_ThreshingWings_TT     = "当拉卡特使用翻滚之翼技能击退你时警告你。"
  L.Settings_MawLorkhaj_Rakkhat_DarknessFalls         = "拉卡特: 黑暗降临"
  L.Settings_MawLorkhaj_Rakkhat_DarknessFalls_TT      = "当拉卡特使用黑暗降临技能使天花板倒塌时警告你。"
  L.Settings_MawLorkhaj_Rakkhat_DarkBarrage           = "拉卡特: 黑暗弹幕"
  L.Settings_MawLorkhaj_Rakkhat_DarkBarrage_TT        = "当拉卡特对坦克使用黑暗弹幕引导技能时警告你。"
  L.Settings_MawLorkhaj_Rakkhat_LunarBastion1         = "拉卡特: 月之棱堡获得"
  L.Settings_MawLorkhaj_Rakkhat_LunarBastion1_TT      = "当一名玩家从发光平台获得祝福时显示。"
  L.Settings_MawLorkhaj_Rakkhat_LunarBastion2         = "拉卡特: 月之棱堡失去"
  L.Settings_MawLorkhaj_Rakkhat_LunarBastion2_TT      = "当一名玩家从发光平台失去祝福时显示。"
  L.Settings_MawLorkhaj_Hulk_ArmorWeakened            = "巨兽: 盔甲被削弱"
  L.Settings_MawLorkhaj_Hulk_ArmorWeakened_TT         = "当巨兽使用雷霆粉碎攻击施加用盔甲被削弱debuff堆叠时发出警报。你不应该有超过两个堆叠，否则伤害将会过高。"
  L.Settings_MawLorkhaj_ShatteringStrike              = "怪物: 碎石闪击打击"
  L.Settings_MawLorkhaj_ShatteringStrike_TT           = "当堕落虎人野蛮人即将施放碎石闪击打击时获得一个提醒。"
  L.Settings_MawLorkhaj_Shattered                     = "怪物: 盔甲粉碎"
  L.Settings_MawLorkhaj_Shattered_TT                  = "当你的盔甲粉碎时获得一个提醒。"
  L.Settings_MawLorkhaj_MarkedForDeath                = "怪物: 死亡标记 (豹)"
  L.Settings_MawLorkhaj_MarkedForDeath_TT             = "如果被一堕落虎人恐怖追猎者的豹施加死亡标记时获得一个提醒"
  L.Settings_MawLorkhaj_Suneater_Eclipse              = "怪物: 噬日者日蚀力场 (取消)"
  L.Settings_MawLorkhaj_Suneater_Eclipse_TT           = "如果你成为日蚀力场的目标时获得一个提醒。"
  -- Alerts
  L.Alerts_MawLorkhaj_Zhaj_GripOfLorkhaj              = "注意! |c000055洛克汗之握|r !立刻清理!"
  L.Alerts_MawLorkhaj_Lunar_Aspect                    = "受到 |cFEFF7F月亮之相|r!"
  L.Alerts_MawLorkhaj_Shadow_Aspect                   = "受到 |c000055阴影之相|r!"
  L.Alerts_MawLorkhaj_Lunar_Conversion                = "转变为 |cFEFF7F月亮之相|r!"
  L.Alerts_MawLorkhaj_Shadow_Conversion               = "转变为 |c000055阴影之相|r!"
  L.Alerts_MawLorkhaj_Rakkhat_Unstable_Void           = "注意! |c000055不稳定虚无|r 目标 你 !"
  L.Alerts_MawLorkhaj_Rakkhat_Unstable_Void_Other     = "注意! |c000055不稳定虚无|r 目标 |cFF0000<<!aC:1>>|r !"
  L.Alerts_MawLorkhaj_Rakkhat_ThreshingWings          = "|cFF0000翻滚之翼|r !格挡!"
  L.Alerts_MawLorkhaj_Rakkhat_DarknessFalls           = "|cFF0000黑暗降临|r !"
  L.Alerts_MawLorkhaj_Rakkhat_DarkBarrage             = "|cFF0000黑暗弹幕|r !"
  L.Alerts_MawLorkhaj_Rakkhat_LunarBastion1           = "你获得了 |cFEFF7F月之棱堡|r"
  L.Alerts_MawLorkhaj_Rakkhat_LunarBastion1_Other     = "|cFF0000<<!aC:1>>|r 获得了 |cFEFF7F月之棱堡|r"
  L.Alerts_MawLorkhaj_Rakkhat_LunarBastion2           = "你失去了 |cFEFF7F月之棱堡|r"
  L.Alerts_MawLorkhaj_Rakkhat_LunarBastion2_Other     = "|cFF0000<<!aC:1>>|r 失去了 |cFEFF7F月之棱堡|r"
  L.Alerts_MawLorkhaj_Hulk_ArmorWeakened1             = "你有1个|c000055盔甲被削弱|rdebuff堆叠。"
  L.Alerts_MawLorkhaj_Hulk_ArmorWeakened1_Other       = "|cFF0000<<!aC:1>>|r获得1个|c000055盔甲被削弱|rdebuff堆叠。"
  L.Alerts_MawLorkhaj_Hulk_ArmorWeakened2             = "你有|cFF00002个|r|c000055盔甲被削弱|rdebuff堆叠了！"
  L.Alerts_MawLorkhaj_Hulk_ArmorWeakened2_Other       = "|cFF0000<<!aC:1>>|r获得|cFF00002个|r|c000055盔甲被削弱|rdebuff堆叠了！"
  L.Alerts_MawLorkhaj_Suneater_Eclipse                = "|cFF0000日蚀力场|r 目标 你 !"
  L.Alerts_MawLorkhaj_Suneater_Eclipse_Other          = "|cFF0000日蚀力场|r 目标 |cFF0000<<!aC:1>>|r !"
  L.Alerts_MawLorkhaj_ShatteringStrike                = "|c000055碎石闪击打击|r 目标 你 !"
  L.Alerts_MawLorkhaj_ShatteringStrike_Other          = "|c000055碎石闪击打击|r 目标 |cFF0000<<!aC:1>>|r !"
  L.Alerts_MawLorkhaj_Shattered                       = "你的 |c595959盔甲|r 已经 |cff0000破碎|r."
  L.Alerts_MawLorkhaj_MarkedForDeath                  = "注意! |c000055豹|r 正在追你!"


  --------------------------------
  ----    Dragonstar Arena    ----
  --------------------------------
  L.Settings_Dragonstar_Header                        = "龙星竞技场(DSA)"
  -- Settings
  L.Settings_Dragonstar_General_Taking_Aim            = "普通: 瞄准射击"
  L.Settings_Dragonstar_General_Taking_Aim_TT         = "当你成为瞄准射击技能的目标时警告你。"
  L.Settings_Dragonstar_General_Crystal_Blast         = "普通: 水晶爆轰"
  L.Settings_Dragonstar_General_Crystal_Blast_TT      = "当你成为水晶爆轰技能的目标时警告你。"
  L.Settings_Dragonstar_Arena2_Crushing_Shock         = "竞技场 2: 破碎电击"
  L.Settings_Dragonstar_Arena2_Crushing_Shock_TT      = "当你在寒冰竞技场中成为破碎电击技能的目标时警告你。"
  L.Settings_Dragonstar_Arena6_Drain_Resource         = "竞技场 6: 汲取资源"
  L.Settings_Dragonstar_Arena6_Drain_Resource_TT      = "当你在木精灵竞技场中成为汲取资源剧毒箭矢的目标时警告你。"
  L.Settings_Dragonstar_Arena7_Unstable_Core          = "竞技场 7: 不稳定核心 (日蚀)"
  L.Settings_Dragonstar_Arena7_Unstable_Core_TT       = "当你在祭献竞技场中圣殿骑士boss对你放置不稳定核心 (日蚀) 时警告你。"
  L.Settings_Dragonstar_Arena8_Ice_Charge             = "竞技场 8: 寒冰冲锋"
  L.Settings_Dragonstar_Arena8_Ice_Charge_TT          = "当一名冰霜百夫长即将发动寒冰攻击时警告你。"
  L.Settings_Dragonstar_Arena8_Fire_Charge            = "竞技场 8: 火焰冲锋"
  L.Settings_Dragonstar_Arena8_Fire_Charge_TT         = "当一名火焰百夫长即将发动火焰攻击时警告你。"
  -- Alerts
  L.Alerts_Dragonstar_General_Taking_Aim              = "|cFF6600瞄准射击|r 目标 你 !"
  L.Alerts_Dragonstar_General_Crystal_Blast           = "|c990099水晶爆轰|r 目标 你 !"
  L.Alerts_Dragonstar_Arena2_Crushing_Shock           = "|c3366EE破碎电击|r !格挡!"
  L.Alerts_Dragonstar_Arena6_Drain_Resource           = "|c00CC00汲取资源|r !翻滚!"
  L.Alerts_Dragonstar_Arena6_Drain_Resource_Other     = "|c00CC00汲取资源|r 目标 |cFF0000<<!aC:1>>|r !"
  L.Alerts_Dragonstar_Arena7_Unstable_Core            = "你有 |cDDDD33不稳定核心|r !挣脱!"
  L.Alerts_Dragonstar_Arena8_Ice_Charge               = "|c6699FF寒冰冲锋|r 目标 你 !打断或翻滚!"
  L.Alerts_Dragonstar_Arena8_Ice_Charge_Other         = "|c6699FF寒冰冲锋|r 目标 |cFF0000<<!aC:1>>|r !打断!"
  L.Alerts_Dragonstar_Arena8_Fire_Charge              = "|cFF3113火焰冲锋|r 目标 你 !打断或翻滚!"
  L.Alerts_Dragonstar_Arena8_Fire_Charge_Other        = "|c6699FF火焰冲锋|r 目标 |cFF0000<<!aC:1>>|r !打断!"

  --------------------------------
  ---- Halls Of Fabrication   ----
  --------------------------------
  L.Settings_HallsFab_Header                          = "制造大厅(HoF)"
  -- Settings
  L.Settings_HallsFab_Taking_Aim                      = "普通: 瞄准射击"
  L.Settings_HallsFab_Taking_Aim_TT                   = "当你成为瞄准射击技能的目标时警告你。"
  L.Settings_HallsFab_Taking_Aim_Dynamic              = "       - 倒计时"
  L.Settings_HallsFab_Taking_Aim_Dynamic_TT           = "当开启时，瞄准射击攻击将显示倒计时，而不是简单的提醒。"
  L.Settings_HallsFab_Taking_Aim_Duration             = "       - 倒计时持续时间"
  L.Settings_HallsFab_Taking_Aim_Duration_TT          = "倒计时的持续时间，单位为毫秒。"
  L.Settings_HallsFab_Draining_Ballista               = "普通: 耗尽弩车"
  L.Settings_HallsFab_Draining_Ballista_TT            = "当球体需要被打掉时警告你。"
  L.Settings_HallsFab_Conduit_Strike                  = "普通: 汲能管路打击"
  L.Settings_HallsFab_Conduit_Strike_TT               = "当汲能管路打击即将开始时警告你。"
  L.Settings_HallsFab_Power_Leech                     = "普通: 脱水电击"
  L.Settings_HallsFab_Power_Leech_TT                  = "当你被汲能管路打击眩晕而需要挣脱时警告你。"
  L.Settings_HallsFab_Venom_Injection                 = "猎人: 毒液注射"
  L.Settings_HallsFab_Venom_Injection_TT              = "当你在猎人boss战中被毒液注射折磨时显示一个状态展示。"
  L.Settings_HallsFab_Conduit_Spawn                   = "顶峰: 汲能管路刷新"
  L.Settings_HallsFab_Conduit_Spawn_TT                = "当在杂役顶峰boss战中一个汲能管路即将刷新时警告你。"
  L.Settings_HallsFab_Conduit_Drain                   = "顶峰: 汲能管路吸取"
  L.Settings_HallsFab_Conduit_Drain_TT                = "当在杂役顶峰boss战中一个汲能管路正在吸取你时警告你。"
  L.Settings_HallsFab_Scalded_Debuff                  = "顶峰: 烫伤Debuff"
  L.Settings_HallsFab_Scalded_Debuff_TT               = "显示一个小状态图标展示它的治疗Debuff大小及消失倒计时。"
  L.Settings_HallsFab_Overcharge_Aura                 = "议会: 过载的光环"
  L.Settings_HallsFab_Overcharge_Aura_TT              = "当回收杂役开始过载的光环时警告你。"
  L.Settings_HallsFab_Overpower_Auras                 = "议会: 压制光环"
  L.Settings_HallsFab_Overpower_Auras_TT              = "当坦克需要切换议会boss时警告你。" 
  L.Settings_HallsFab_Overpower_Auras_Duration        = "       - 倒计时持续"
  L.Settings_HallsFab_Overpower_Auras_Duration_TT     = "倒计时的持续时间，单位为毫秒。"
  L.Settings_HallsFab_Overpower_Auras_Dynamic         = "       - 动态倒计时"
  L.Settings_HallsFab_Overpower_Auras_Dynamic_TT      = "开启后，当坦克切换boss完成时将尝试停止倒计时。"
  L.Settings_HallsFab_Fabricant_Spawn                 = "议会: 废墟制造者生成"
  L.Settings_HallsFab_Fabricant_Spawn_TT              = "当废墟制造者生成时警告你。"
  L.Settings_HallsFab_Catastrophic_Discharge          = "议会: 毁灭性释放"
  L.Settings_HallsFab_Catastrophic_Discharge_TT       = "当废墟制造者开始对你放电时警告你。"
  L.Settings_HallsFab_Reclaim_Achieve                 = "议会: 重夺废墟成就失败"
  L.Settings_HallsFab_Reclaim_Achieve_TT              = "当炸弹人到达回收杂役时警告你。"
  -- Alerts
  L.Alerts_HallsFab_Taking_Aim                        = "|cFF6600瞄准射击|r 目标 你 !"
  L.Alerts_HallsFab_Taking_Aim_Other                  = "|cFF6600瞄准射击|r 目标 |cFF0000<<!aC:1>>|r !"
  L.Alerts_HallsFab_Taking_Aim_Simple                 = "|cFF6600瞄准射击|r"
  L.Alerts_HallsFab_Conduit_Spawn                     = "汲能管路即将刷新"
  L.Alerts_HallsFab_Conduit_Drain                     = "汲能管路正在吸取你!"
  L.Alerts_HallsFab_Conduit_Drain_Other               = "汲能管路正在吸取 |cFF0000<<!aC:1>>|r !"
  L.Alerts_HallsFab_Conduit_Strike                    = "|cFF0000汲能管路打击|r !格挡!"
  L.Alerts_HallsFab_Draining_Ballista                 = "|cFFC000耗尽弩车|r 目标 你 !格挡或打断!"
  L.Alerts_HallsFab_Draining_Ballista_Other           = "|cFFC000耗尽弩车|r 目标 |cFF0000<<!aC:1>>|r !打断!"
  L.Alerts_HallsFab_Power_Leech                       = "|c6600FF强力吸血|r !挣脱!"
  L.Alerts_HallsFab_Overcharge_Aura                   = "回收杂役的|c3366EE过载的光环|r ！"
  L.Alerts_HallsFab_Overpower_Auras                   = "|cFF0000光环倒计时!|r"
  L.Alerts_HallsFab_Catastrophic_Discharge            = "|cFF0000毁灭性释放|r 目标 你 !格挡!"
  L.Alerts_HallsFab_Fabricant_Spawn                   = "|cFFC000废墟制造者刷新|r"
  L.Alerts_HallsFab_Reclaim_Achieve                   = "|cDCD822[计划报废]|r 成就 |cFF0000失败|r"

  --------------------------------
  ----   Asylum Sanctorium    ----
  --------------------------------
  L.Settings_Asylum_Header                         = "庇护圣所(AS)"
  -- Settings
  L.Settings_Asylum_Defiling_Blast                 = "虔诚圣徒洛提斯: 亵渎爆轰"
  L.Settings_Asylum_Defiling_Blast_TT              = "当你或其他人成为虔诚圣徒洛提斯的锥形攻击目标时警告你。"
  L.Settings_Asylum_Soul_Stained_Corruption        = "虔诚圣徒洛提斯: 灵魂玷污腐蚀"
  L.Settings_Asylum_Soul_Stained_Corruption_TT     = "当玩家成为虔诚圣徒洛提斯应被打断的攻击目标时警告你。"
  L.Settings_Asylum_Teleport_Strike                = "鲁莽圣徒菲尔姆斯: 传送打击"
  L.Settings_Asylum_Teleport_Strike_TT             = "当鲁莽圣徒菲尔姆斯即将传送到你旁边时警告你。"
  L.Settings_Asylum_Exhaustive_Charges             = "公正圣徒奥尔姆斯: 耗能冲击"
  L.Settings_Asylum_Exhaustive_Charges_TT          = "当公正圣徒奥尔姆斯即将发动三个大型闪电圈攻击时警告你。"
  L.Settings_Asylum_Storm_The_Heavens              = "公正圣徒奥尔姆斯: 遮天风暴"
  L.Settings_Asylum_Storm_The_Heavens_TT           = "当公正圣徒奥尔姆斯即将飞到空中并刷新大量小闪电圈时警告你。"
  L.Settings_Asylum_Gusts_Of_Steam                 = "公正圣徒奥尔姆斯: 蒸汽阵风"
  L.Settings_Asylum_Gusts_Of_Steam_TT              = "公正圣徒奥尔姆斯即将开始来回跳并标志着进入下一个战斗阶段时警告你。"
  L.Settings_Asylum_Gusts_Of_Steam_Slider          = "       - 跳前百分比"
  L.Settings_Asylum_Gusts_Of_Steam_Slider_TT       = "在boss跳跃之前更快的显示提醒boss血量的若干百分点。"
  L.Settings_Asylum_Protector_Spawn                = "公正圣徒奥尔姆斯: 保卫者刷新"
  L.Settings_Asylum_Protector_Spawn_TT             = "当球体即将刷新时警告你。"
  L.Settings_Asylum_Trial_By_Fire                  = "公正圣徒奥尔姆斯: 烈焰审判"
  L.Settings_Asylum_Trial_By_Fire_TT               = "在斩杀阶段当公正圣徒奥尔姆斯即将施放火焰时警告你。"
  -- Alerts
  L.Alerts_Asylum_Defiling_Blast                   = "注意! |c00cc00亵渎爆轰|r 目标 你 !"
  L.Alerts_Asylum_Defiling_Blast_Other             = "注意! |c00cc00亵渎爆轰|r 目标 |cFF0000<<!aC:1>>|r !"
  L.Alerts_Asylum_Soul_Stained_Corruption          = "|c3366EE灵魂玷污腐蚀|r !打断!"
  L.Alerts_Asylum_Teleport_Strike                  = "|cFF3366传送打击|r 目标 你 !"
  L.Alerts_Asylum_Teleport_Strike_Other            = "|cFF3366传送打击|r 目标 |cFF0000<<!aC:1>>|r !"
  L.Alerts_Asylum_Exhaustive_Charges               = "|cFF0000耗能冲击|r"
  L.Alerts_Asylum_Storm_The_Heavens                = "|cFF0000遮天风暴|r !放风筝!"
  L.Alerts_Asylum_Gusts_Of_Steam                   = "|cFF9900蒸汽阵风|r !躲藏!"
  L.Alerts_Asylum_Pre_Gusts_Of_Steam               = "|cFF0000<<1>>%|r 开始 |cFF9900跳跃|r !准备躲藏!"
  L.Alerts_Asylum_Trial_By_Fire                    = "|cFF5500火焰|r来袭!"
  L.Alerts_Asylum_Protector_Spawn                  = "|c0000FF保卫者|r 刷新!"
  L.Alerts_Asylum_Protector_Active                 = "|c0000FF保卫者|r 激活!"

  --------------------------------
  ------   CLOUDREST         -----
  --------------------------------
  L.Settings_Cloudrest_Header			            = "云栖城(CR)"
  -- Settings
  L.Settings_Cloudrest_Olorime_Spears             = "普通: 奥尔奥瑞姆之矛"
  L.Settings_Cloudrest_Olorime_Spears_TT          = "当矛已就绪需要有人捡起它时警告你。"
  L.Settings_Cloudrest_Shadow_Realm_Cast          = "普通: 传送门刷新"
  L.Settings_Cloudrest_Shadow_Realm_Cast_TT       = "当传送门刷新完成，队伍可以进入暗影领域时警告你。"
  L.Settings_Cloudrest_Hoarfrost                  = "法拉蕾尔: 尖啸冰霜"
  L.Settings_Cloudrest_Hoarfrost_TT               = "当你获得了尖啸冰霜debuff需要使用协同移除时警告你。"
  L.Settings_Cloudrest_Hoarfrost_Countdown        = "       - 使用倒计时"
  L.Settings_Cloudrest_Hoarfrost_Countdown_TT     = "使用倒计时来显示你何时可以丢掉它。"
  L.Settings_Cloudrest_Hoarfrost_Shed             = "法拉蕾尔: 尖啸冰霜掉落"
  L.Settings_Cloudrest_Hoarfrost_Shed_TT          = "当尖啸冰霜debuff被其他玩家丢掉，需要被捡起时警告你。"
  L.Settings_Cloudrest_Heavy_Attack               = "小Boss: 重击"
  L.Settings_Cloudrest_Heavy_Attack_TT            = "当闪电(震撼猛击), 火焰(炽热割裂) 或寒冰(毁灭一击) 小boss正在施放重击时警告你。"
  L.Settings_Cloudrest_Chilling_Comet             = "法拉蕾尔: 霜冻彗星"
  L.Settings_Cloudrest_Chilling_Comet_TT          = "当你获得了霜冻彗星debuff并需要格挡，且遭爆炸前不能与其他拥有相同debuff的玩家重叠的时候警告你。"
  L.Settings_Cloudrest_Roaring_Flare              = "希罗利亚: 咆哮闪光"
  L.Settings_Cloudrest_Roaring_Flare_TT           = "当你或任何队员获得了咆哮闪光debuff，且需要最少3个以上队员重叠以抵消此debuff时警告你。"
  L.Settings_Cloudrest_Track_Roaring_Flare        = "       - 追踪咆哮闪光"
  L.Settings_Cloudrest_Track_Roaring_Flare_TT     = "显示获得debuff的玩家方向"
  L.Settings_Cloudrest_Voltaic_Overload           = "贝拉纳里尔: 高压过载"
  L.Settings_Cloudrest_Voltaic_Overload_TT        = "警告你即将获得高压过载debuff，获得此debuff后你在10秒内无法切换技能条。"
  L.Settings_Cloudrest_Nocturnals_Favor	        = "泽玛亚: 诺克图娜尔的青睐"
  L.Settings_Cloudrest_Nocturnals_Favor_TT        = "当泽玛亚将你作为重击的目标时警告你。"
  L.Settings_Cloudrest_Baneful_Barb               = "深海怪: 灾厄钩刺"
  L.Settings_Cloudrest_Baneful_Barb_TT            = "当深海怪将你作为灾厄钩刺攻击的目标时警告你。"
  L.Settings_Cloudrest_Break_Amulet               = "泽玛亚: 在斩杀阶段只显示重要机制"
  L.Settings_Cloudrest_Break_Amulet_TT            = "在斩杀阶段禁用球体, 触手提醒"
  L.Settings_Cloudrest_Sum_Shadow_Beads           = "泽玛亚: 球体"
  L.Settings_Cloudrest_Sum_Shadow_Beads_TT        = "当球体即将刷新时警告你。"
  L.Settings_Cloudrest_Tentacle_Spawn             = "泽玛亚: 暗夜匍匐者刷新"
  L.Settings_Cloudrest_Tentacle_Spawn_TT          = "当暗夜匍匐者即将刷新时警告你。"
  L.Settings_Cloudrest_Crushing_Darkness          = "泽玛亚: 极渊之暗"
  L.Settings_Cloudrest_Crushing_Darkness_TT       = "当范围AoE正在跟随你并需要对它放风筝时警告你。"
  L.Settings_Cloudrest_Malicious_Strike           = "泽玛亚: 罪恶弹球"
  L.Settings_Cloudrest_Malicious_Strike_TT        = "当球体被摧毁且需要格挡或翻滚时警告你。"
  L.Settings_Cloudrest_Shadow_Splash              = "泽玛亚: Shadow Splash"
  L.Settings_Cloudrest_Shadow_Splash_TT           = "此功能会在泽玛亚开始引导该法术时提醒你。如果不及时打断，部分玩家会被传送到空中并受到坠落伤害。"

  -- Alerts
  L.Alerts_Cloudrest_Olorime_Spears               = "|cffd000矛|r 就绪了! (<<1>>)"
  L.Alerts_Cloudrest_Hoarfrost0                   = "|c00ddff尖啸冰霜|r 目标 你 !"
  L.Alerts_Cloudrest_Hoarfrost1                   = "|cff0000最后的|r |c00ddff尖啸冰霜|r 目标 你 !"
  L.Alerts_Cloudrest_Hoarfrost_Other0             = "|c00ddff尖啸冰霜|r 目标 |cff0000<<!aC:1>>|r !"
  L.Alerts_Cloudrest_Hoarfrost_Other1             = "|cff0000最后的|r |c00ddff尖啸冰霜|r 目标 |cff0000<<!aC:1>>|r !"
  L.Alerts_Cloudrest_Hoarfrost_Countdown0         = "丢掉 |c00ddff尖啸冰霜|r 还有..."
  L.Alerts_Cloudrest_Hoarfrost_Countdown1         = "丢掉 |cff0000最后的|r |c00ddff尖啸冰霜|r 还有..."
  L.Alerts_Cloudrest_Hoarfrost_Syn                = "|cff0000使用协同|r 丢掉尖啸冰霜!"
  L.Alerts_Cloudrest_Hoarfrost_Shed               = "|c00ddff尖啸冰霜|r 丢掉了!"
  L.Alerts_Cloudrest_Hoarfrost_Shed_Other         = "|c00ddff尖啸冰霜|r 被 |cff0000<<!aC:1>>|r 丢掉了!"
  L.Alerts_Cloudrest_Heavy_Attack                 = "|c0bf29e重击|r 目标 你 !"
  L.Alerts_Cloudrest_Heavy_Attack_Other           = "|c0bf29e重击|r 目标 |cff0000<<!aC:1>>|r !"
  L.Alerts_Cloudrest_Baneful_Barb                 = "|cff0000灾厄钩刺|r !翻滚!"
  L.Alerts_Cloudrest_Baneful_Barb_Other           = "|cff0000灾厄钩刺|r 目标 |cff0000<<!aC:1>>|r !"
  L.Alerts_Cloudrest_Chilling_Comet               = "|cff0000霜冻彗星|r 目标 你 !格挡!"
  L.Alerts_Cloudrest_Roaring_Flare                = "|cff7700咆哮闪光|r 目标 你 !"
  L.Alerts_Cloudrest_Roaring_Flare_2              = "|cff0000<<!aC:1>>|r |t100%:100%:Esoui/Art/Buttons/large_leftarrow_up.dds|t |cff7700咆哮闪光|r |t100%:100%:Esoui/Art/Buttons/large_rightarrow_up.dds|t |cff0000<<!aC:2>>|r"
  L.Alerts_Cloudrest_Roaring_Flare_Other          = "|cff7700咆哮闪光|r 目标 |cff0000<<!aC:1>>|r !集中起来!"
  L.Alerts_Cloudrest_Voltaic_Current              = "|c55b4d4高压过载|r 目标 你 !还有"
  L.Alerts_Cloudrest_Voltaic_Overload             = "|c4d61c1高压过载|r 目标 你 !切技能条!"
  L.Alerts_Cloudrest_Voltaic_Overload_Cd          = "|c4d61c1高压过载|r 不要切换!"
  L.Alerts_Cloudrest_Shadow_Realm_Cast            = "|cab82ff传送门|r 刷新 (<<1>>)"
  L.Alerts_Cloudrest_Tentacle_Spawn               = "|c00a86b爬行者|r 刷新"
  L.Alerts_Cloudrest_Sum_Shadow_Beads             = "|cab82ff球体|r 即将刷新"
  L.Alerts_Cloudrest_Nocturnals_Favor             = "|cff0000诺克图娜尔的青睐|r 目标 你 !"
  L.Alerts_Cloudrest_Crushing_Darkness            = "|cfc0c66极渊之暗|r 目标 你 !放风筝!"
  L.Alerts_Cloudrest_Malicious_Strike             = "|cff0000罪恶弹球|r 目标 你 !格挡!"
  L.Alerts_Cloudrest_Shadow_Splash                = "泽玛亚正在施放法术. |cFF0000Interrupt|r!"

  --------------------------------
  ------   SUNSPIRE          -----
  --------------------------------
  L.Settings_Sunspire_Header			= "太阳尖顶(SS)"
  -- Settings
  L.Settings_Sunspire_Chilling_Comet        = "普通: 霜冻彗星"
  L.Settings_Sunspire_Chilling_Comet_TT     = "当你成为霜冻彗星的目标时警告你。离开队友人群, 格挡并且注意不要和其他被霜冻彗星标记的玩家重叠。霜冻彗星一次标记两名玩家。"
  L.Settings_Sunspire_Sweeping_Breath	      = "纳温塔丝: 扫掠吐息"
  L.Settings_Sunspire_Sweeping_Breath_TT    = "警告你纳温塔丝的火焰吐息。吐息从竞技场的一边开始横扫到另一边，并对所有在其中的玩家造成伤害。所有玩家都必须格挡或翻滚来躲避此攻击"
  L.Settings_Sunspire_Molten_Meteor         = "纳温塔丝: 熔火流星"
  L.Settings_Sunspire_Molten_Meteor_TT      = "当你成为熔火流星的目标时警告你。移动到竞技场的边缘, 格挡并且注意不要和其他被熔火流星标记的玩家重叠。熔火流星一次标记三名玩家。"
  L.Settings_Sunspire_Focus_Fire            = "尤尔纳克林: 专注之火"
  L.Settings_Sunspire_Focus_Fire_TT         = "当你成为专注之火的目标时警告你。专注之火需要队伍成员聚集在一起来分担伤害。之后会有一个持续debuff, 增加你受到的下一次专注之火的伤害。由于此debuff, 你下一次应该聚集在不同的人群里。"
  L.Settings_Sunspire_Breath                = "普通: 火焰吐息/寒霜吐息/灼热吐息"
  L.Settings_Sunspire_Breath_TT             = "当boss的引导锥形对准你时警告你, 这会造成大量伤害。"
  L.Settings_Sunspire_Cataclism             = "尤尔纳克林: 灾变"
  L.Settings_Sunspire_Cataclism_TT          = "当boss即将在竞技场中间吐息火焰时警告你。所有人必须移动到边缘, 并且清小怪。"
  L.Settings_Sunspire_Frozen_Tomb           = "洛克提兹: 冰冻墓穴"
  L.Settings_Sunspire_Frozen_Tomb_TT        = "冰冻墓穴刷新时警告你。一名玩家必须走进冰冻墓穴, 这将冻结他们并造成持续伤害。然后你必须被治愈才能被释放。因为debuff，需要3名玩家进入冰冻墓穴，且每次是不同的人。"
  L.Settings_Sunspire_Thrash                = "纳温塔丝: 鞭笞"
  L.Settings_Sunspire_Thrash_TT             = "当boss即将朝队伍甩动它的头时警告你, 这会将所有人击退。必须格挡或翻滚来躲避。"
  L.Settings_Sunspire_Mark_For_Death        = "纳温塔丝: 死亡标记"
  L.Settings_Sunspire_Mark_For_Death_TT     = "当你被死亡标记时警告你。造成大量持续伤害, 并完全移除你的所有抗性。"
  L.Settings_Sunspire_Time_Breach           = "纳温塔丝: 时间裂隙"
  L.Settings_Sunspire_Time_Breach_TT        = "当时间迁移传送门打开时警告你。"
  L.Settings_Sunspire_Negate_Field          = "永恒仆从: 反魔法力场"
  L.Settings_Sunspire_Negate_Field_TT       = "在时间迁移中如果你成为反魔法力场的目标时获得一个警告。"
  L.Settings_Sunspire_Shock_Bolt            = "永恒仆从: 震荡闪电"
  L.Settings_Sunspire_Shock_Bolt_TT         = "震荡闪电倒计时，通知队伍何时聚拢以解放另一个玩家。"
  L.Settings_Sunspire_Apocalypse            = "永恒仆从: 翻译启示录"
  L.Settings_Sunspire_Apocalypse_TT         = "当永恒仆从正在引导他的攻击到楼上的组员时警告你。给你一个倒计时显示何时你可以打断引导并且用一个倒计时显示他何时完成引导攻击。"
  -- Alerts
  L.Alerts_Sunspire_Chilling_Comet          = "|c00ddff霜冻彗星|r 目标 你 !格挡!"
  L.Alerts_Sunspire_Chilling_Comet_Other    = "|c00ddff霜冻彗星|r 目标 |cff0000<<!aC:1>>|r !"
  L.Alerts_Sunspire_Sweeping_Breath         = "|cff0000扫掠吐息|r !格挡!"
  L.Alerts_Sunspire_Molten_Meteor           = "|c00ddff熔火流星|r 目标 你 !出去!"
  L.Alerts_Sunspire_Molten_Meteor_Other     = "|c00ddff熔火流星|r 目标 |cff0000<<!aC:1>>|r !"
  L.Alerts_Sunspire_Focus_Fire              = "|cff7700专注之火|r 目标 你 !还有"
  L.Alerts_Sunspire_Focus_Fire_Other        = "|cff7700专注之火|r 目标 |cff0000<<!aC:1>>|r !还有"
  L.Alerts_Sunspire_Atronach_Zap            = "|cff7700侍灵|r 刷新 还有"
  L.Alerts_Sunspire_Frost_Atronach          = "|cff7700寒霜侍灵|r 就绪!"
  L.Alerts_Sunspire_Breath                  = "|cffff00<<1>>|r 目标 你 !"
  L.Alerts_Sunspire_Breath_Other            = "|cffff00<<1>>|r 目标 |cff0000<<!aC:1>>|r !"
  L.Alerts_Sunspire_Cataclism               = "|cff3300灾变|r 结束 还有"
  L.Alerts_Sunspire_Frozen_Tomb             = "|c00ddff冰冻墓穴|r (<<1>>)"
  L.Alerts_Sunspire_Thrash                  = "|cff0000鞭笞|r !格挡!"
  L.Alerts_Sunspire_Mark_For_Death          = "死亡标记 目标 你 !"
  L.Alerts_Sunspire_Mark_For_Death_Other    = "死亡标记 目标 |cff0000<<!aC:1>>|r !"
  L.Alerts_Sunspire_Time_Breach_Countdown   = "|c81cc00时间裂隙|r 还有 "
  L.Alerts_Sunspire_Negate_Field            = "|c53c4c9反魔法力场|r 目标 你 !"
  L.Alerts_Sunspire_Negate_Field_Others     = "|c53c4c9反魔法力场|r 目标 |cff0000<<!aC:1>>|r !"
  L.Alerts_Sunspire_Shock_Bolt              = "|c00ddff震荡闪电|r !聚在一起以解放"
  L.Alerts_Sunspire_Apocalypse              = "|cffff00翻译启示录|r 打断 还有"
  L.Alerts_Sunspire_Apocalypse_Ends         = "|cffff00翻译启示录|r 结束 还有"

  --------------------------------
  ------   KYNE'S AEGIS      -----
  --------------------------------
  L.Settings_KynesAegis_Header                        = "凯恩之盾(KA)"
  -- Settings
  L.Settings_KynesAegis_Crashing_Wall                 = "普通: 碾压之墙"
  L.Settings_KynesAegis_Crashing_Wall_TT              = "当混血巨人破潮者开始施放碾压之墙攻击时提醒你, 倒计时直到施放完成。格挡或翻滚躲避。"
  L.Settings_KynesAegis_Sanguine_Prison               = "普通: 桑吉恩之笼"
  L.Settings_KynesAegis_Sanguine_Prison_TT            = "当你的盟友被苦痛骑士创造的桑吉恩之笼困住时提醒你。你需要通过集火他的笼子来解救你的盟友。"
  L.Settings_KynesAegis_Blood_Fountain                = "普通: 血泉"
  L.Settings_KynesAegis_Blood_Fountain_TT             = "当血骑士开始他的血泉攻击时提醒你, 倒计时直到施放完成。这是一种十字型AoE, 需要避免，因为它会造成严重伤害。"
  L.Settings_KynesAegis_Totem                         = "扬迪尔: 图腾刷新"
  L.Settings_KynesAegis_Totem_TT                      = "当与屠夫BOSS扬迪尔战斗中特定图腾出现时提醒你。\n\n龙之图腾: 总是同时出现两个; 每个都沿着两个相反方向的直线喷射火焰。\n鹰妖图腾: 刷新一个闪电光环并辐射开来。\n石像鬼图腾: 把随机玩家装进石头里。\n查鲁斯图腾: 使若干人中毒, 这种毒不应传播给其他人, 这就是为什么你不应该在这个阶段聚集在一起。"
  L.Settings_KynesAegis_Yandir_FireShaman_Meteor      = "扬迪尔HM: 流星"
  L.Settings_KynesAegis_Yandir_FireShaman_Meteor_TT   = "当屠夫火焰萨满即将对玩家施放流星时提醒你。"
  L.Settings_KynesAegis_Vrol_FireMage_Meteor          = "威若: 流星"
  L.Settings_KynesAegis_Vrol_FireMage_Meteor_TT       = "当威若之誓火焰萨满从船上向玩家施放流星时提醒你。"
  L.Settings_KynesAegis_Ichor_Eruption                = "法尔格拉文领主: 脓血迸发"
  L.Settings_KynesAegis_Ichor_Eruption_TT             = "法尔格拉文领主释放他的脓血迸发前显示倒计时。"
  L.Settings_KynesAegis_Ichor_Eruption_CD_Time        = "       - 倒计时时间"
  L.Settings_KynesAegis_Ichor_Eruption_CD_Time_TT     = "脓血迸发开始前多久跳出倒计时。"

  -- Alerts
  L.Alerts_KynesAegis_Crashing_Wall                   = "|cd2a100碾压之墙|r来了"
  L.Alerts_KynesAegis_Sanguine_Prison_Other           = "|cff0000<<!aC:1>>|r被|cb00000桑吉恩之笼|r困住了。解救他们!"
  L.Alerts_KynesAegis_Blood_Fountain                  = "|cb00000血泉|r来了"
  L.Alerts_KynesAegis_Dragon_Totem                    = "两个|cffa500龙之图腾|r刷新了。躲避火焰!"
  L.Alerts_KynesAegis_Harpy_Totem                     = "|c00bfff鹰妖图腾|r刷新了。"
  L.Alerts_KynesAegis_Gargoyle_Totem                  = "|cf5f5dc石像鬼图腾|r刷新了。"
  L.Alerts_KynesAegis_Chaurus_Totem                   = "|c39942e查鲁斯图腾|r刷新了。不要聚集!"
  L.Alerts_KynesAegis_FireMage_Meteor                 = "|cffa500流星|r对你来了"
  L.Alerts_KynesAegis_FireMage_Meteor_Other           = "流星来了"
  L.Alerts_KynesAegis_Ichor_Eruption                  = "|cb00000脓血迸发|r来了"

  --------------------------------
  ------   ROCKGROVE         -----
  --------------------------------
  L.Settings_Rockgrove_Header                        = "石林(RG)"
  -- Settings
  L.Settings_Rockgrove_Sundering_Strike              = "普通: 裂甲打击"
  L.Settings_Rockgrove_Sundering_Strike_TT           = "当苏尔山掠夺者使用裂甲打击时提醒你。翻滚躲避它。"
  L.Settings_Rockgrove_Astral_Shield                 = "普通: 星之盾"
  L.Settings_Rockgrove_Astral_Shield_TT              = "当苏尔山织魂者施放星之盾时提醒你。"
  L.Settings_Rockgrove_Soul_Remnant                  = "普通: 灵魂余烬 (苏尔山织魂者)"
  L.Settings_Rockgrove_Soul_Remnant_TT               = "当灵魂余烬以你作为目标时提醒你 (作为打破苏尔山织魂者的星之盾的结果)."
  L.Settings_Rockgrove_Prime_Meteor                  = "普通: 主要流星"
  L.Settings_Rockgrove_Prime_Meteor_TT               = "当流星出现时，会显示倒计时，指示爆炸发生前的剩余时间。确保及时杀死流星。"
  L.Settings_Rockgrove_Hasted_Assault                = "普通: 突然袭击"
  L.Settings_Rockgrove_Hasted_Assault_TT             = "当浩劫盲侍野蛮人施放突然袭击时提醒你。他以随机顺序从一个玩家传送到另一个玩家，并攻击他们。应该格挡此攻击。"
  L.Settings_Rockgrove_Savage_Blitz                  = "奥西索: 狂野闪击"
  L.Settings_Rockgrove_Savage_Blitz_TT               = "当奥西索向最远的玩家冲锋时提醒你。"
  L.Settings_Rockgrove_Noxious_Sludge                = "奥西索: 剧毒淤泥"
  L.Settings_Rockgrove_Noxious_Sludge_TT             = "当有人因被奥西索下毒而需要去池子清洗时提醒你。"
  L.Settings_Rockgrove_Cinder_Cleave                 = "奥西索的小boss: 灰烬斩击"
  L.Settings_Rockgrove_Cinder_Cleave_TT              = "在与奥西索战斗时，当浩劫盲侍歼灭者对某人施放他的灰烬斩击技能时提醒你。"
  L.Settings_Rockgrove_Embrace_Of_Death              = "烈焰先驱巴塞: 死亡之拥"
  L.Settings_Rockgrove_Embrace_Of_Death_TT           = "当有人被烈焰先驱巴塞诅咒时通知你。这个人会在8秒后爆炸，并传播诅咒。让被诅咒的玩家远离团队很重要。"
  L.Settings_Rockgrove_Embrace_Of_Death_TT_All       = "|cFF0000警告!|r如果你的团队获得了太多的诅咒，你的屏幕有可能会被这些诅咒的倒计时全部覆盖住! 我们正在努力改进这一通知问题。"
  L.Settings_Rockgrove_Bahsei_Cone_Direction         = "烈焰先驱巴塞 HM: 扇形区域"
  L.Settings_Rockgrove_Bahsei_Cone_Direction_TT      = "如果传送门开启，此功能会提醒您扇形技能的方向"
  L.Settings_Rockgrove_Bahsei_Portal_Number          = "烈焰先驱巴塞 HM: 传送门数量 (beta)"
  L.Settings_Rockgrove_Bahsei_Portal_Number_TT       = "告诉您已开启的传送门数量。"
  L.Settings_Rockgrove_Xalvakka_Unstable_Charge      = "希奥瓦卡 HM: 不稳定充能 (staying on blob)"
  L.Settings_Rockgrove_Xalvakka_Unstable_Charge_TT   = "当你呆在blob里面时提醒你. 它是有伤害的!"

  -- Alerts
  L.Alerts_Rockgrove_Sundering_Strike                = "|cCDCDCD裂甲打击|r即将攻击你!"
  L.Alerts_Rockgrove_Sundering_Strike_Other          = "|cCDCDCD裂甲打击|r即将攻击|cFF0000<<!aC:1>>|r!"
  L.Alerts_Rockgrove_Astral_Shield_Cast              = "|cFFFF8F星之盾|r已被释放。准备翻滚或格挡!"
  L.Alerts_Rockgrove_Soul_Remnant                    = "|c8FF2FF灵魂余烬|r来袭!"
  L.Alerts_Rockgrove_Prime_Meteor                    = "|cFFD600主要流星|r爆炸还剩"
  L.Alerts_Rockgrove_Hasted_Assault                  = "|cFF0000突然袭击|r来袭! 格挡!"
  L.Alerts_Rockgrove_Savage_Blitz                    = "奥西索向|cFF0000<<!aC:1>>|r冲锋!"
  L.Alerts_Rockgrove_Noxious_Sludge_Self             = "你中了|c008C22剧毒淤泥|r的毒! 在池子里清洗掉!"
  L.Alerts_Rockgrove_Noxious_Sludge_Other1           = "|cFF0000<<!aC:1>>|r中了|c008C22剧毒淤泥|r的毒。"
  L.Alerts_Rockgrove_Noxious_Sludge_Other2           = "|cFF0000<<!aC:1>>|r和|cFF0000<<!aC:2>>|r中了|c008C22剧毒淤泥|r的毒。"
  L.Alerts_Rockgrove_Cinder_Cleave                   = "|cD74700灰烬斩击|r即将攻击你!"
  L.Alerts_Rockgrove_Cinder_Cleave_Other             = "|cD74700灰烬斩击|r即将攻击|cFF0000<<!aC:1>>|r。"
  L.Alerts_Rockgrove_Embrace_Of_Death                = "你被|c0A929B死亡之拥|r诅咒了!远离人群!爆炸剩余"
  L.Alerts_Rockgrove_Embrace_Of_Death_Other          = "|cFF0000<<!aC:1>>|r被|c0A929B死亡之拥|r诅咒了!爆炸剩余"
  L.Alerts_Rockgrove_Bahsei_Cone_Direction_Clockwise = "-> 移动 |cF48020顺时针|r ->"
  L.Alerts_Rockgrove_Bahsei_Cone_Direction_CounterCW = "<- 移动 |c15FFC2逆时针|r <-"
  L.Alerts_Rockgrove_Bahsei_Portal_Number            = "传送门 #<<1>>"
  L.Alerts_Rockgrove_Xalvakka_Unstable_Charge        = "缘离 |c008C22blob|r!"

  --------------------------------
  ------   DREADSAIL REEF    -----
  --------------------------------
  L.Settings_DreadsailReef_Header                    = "恐帆礁石(DR)"
  -- Settings
  L.Settings_DreadsailReef_Dome_Type                 = "莱拉纳尔&图拉塞尔: 冰火罩过滤"
  L.Settings_DreadsailReef_Dome_Type_TT              = "您可以将通知限制在某些特定的罩内。"
  L.Settings_DreadsailReef_Dome_Activation           = "莱拉纳尔&图拉塞尔：火/冰 罩激活"
  L.Settings_DreadsailReef_Dome_Activation_TT        = "当有人拿到火/冰 罩时提醒你。"
  L.Settings_DreadsailReef_Dome_Stack_Alert          = "莱拉纳尔&图拉塞尔: 火/冰 罩层数提醒"
  L.Settings_DreadsailReef_Dome_Stack_Alert_TT       = "当有人火罩或冰罩层数过多时，此功能会提醒您。."
  L.Settings_DreadsailReef_Dome_Stack_Threshold      = "莱拉纳尔&图拉塞尔: 火/冰 层数阈值"
  L.Settings_DreadsailReef_Dome_Stack_Threshold_TT   = "设定玩家身上多少层的时候触发警报"
  L.Settings_DreadsailReef_Imminent_Debuffs          = "莱拉纳尔&图拉塞尔：瞬发脓疱/瞬发极寒"
  L.Settings_DreadsailReef_Imminent_Debuffs_TT       = "当坦克受到莱拉纳尔的瞬发脓疱debuff或图拉塞尔的瞬发极寒debuff时提醒你。坦克应该在10秒内切换。"
  L.Settings_DreadsailReef_Brothers_Heavy_Attack     = "莱拉纳尔&图拉塞尔：重击"
  L.Settings_DreadsailReef_Brothers_Heavy_Attack_TT  = "当莱拉纳尔或图拉塞尔发起他们的重击（沸腾劈砍/刺剪）时提醒你。"
  L.Settings_DreadsailReef_ReefGuardian_ReefHeart    = "礁石守护者：礁石之心刷新"
  L.Settings_DreadsailReef_ReefGuardian_ReefHeart_TT = "礁石之心出现时提醒你。你有60秒时间杀死它，否则将团灭。可能有多个礁石之心同时被激活。"
  L.Settings_DreadsailReef_ReefHeart_Result          = "礁石守护者：礁石之心成功/失败"
  L.Settings_DreadsailReef_ReefHeart_Result_TT       = "当你处理完礁石之心或未处理完时提醒你。"
  L.Settings_DreadsailReef_Rapid_Deluge              = "塔勒里亚：极速奔涌"
  L.Settings_DreadsailReef_Rapid_Deluge_TT           = "当你获取他人受到极速奔涌debuff时提醒你。受到6秒后会爆炸，处理该伤害的最佳方式是在该时间点游泳。"

  -- Alerts
  L.Alerts_DreadsailReef_Destructive_Ember           = "<<!aC:1>> 激活了 |cFFA500火圆顶|r!"
  L.Alerts_DreadsailReef_Piercing_Hailstone          = "<<!aC:1>> 激活了 |c20C3D0冰圆顶|r!"
  L.Alerts_DreadsailReef_Imminent_Blister            = "你受到了 |cF27D0C瞬发脓疱|r! 切换坦克直到"
  L.Alerts_DreadsailReef_Imminent_Blister_Other      = "|cFF0000<<!aC:1>>|r 受到了 |cF27D0C瞬发脓疱|r! 切换坦克直到"
  L.Alerts_DreadsailReef_Imminent_Chill              = "你受到了 |cF27D0C瞬发极寒|r! 切换坦克直到"
  L.Alerts_DreadsailReef_Imminent_Chill_Other        = "|cFF0000<<!aC:1>>|r 受到了 |cF27D0C瞬发极寒|r! 切换坦克直到"
  L.Alerts_DreadsailReef_Broiling_Hew                = "|cCDCDCD沸腾劈砍|r 对你来袭!"
  L.Alerts_DreadsailReef_Broiling_Hew_Other          = "|cCDCDCD沸腾劈砍|r 对 |cFF0000<<!aC:1>>|r 来袭!"
  L.Alerts_DreadsailReef_Stinging_Shear              = "|cCDCDCD刺剪|r 对你来袭!"
  L.Alerts_DreadsailReef_Stinging_Shear_Other        = "|cCDCDCD刺剪|r 对 |cFF0000<<!aC:1>>|r 来袭!"
  L.Alerts_DreadsailReef_Fire_Dome_Stack_Alert       = "你身上有 |cFF0000<<1>>|r 层 |cFFA500火罩|r!"
  L.Alerts_DreadsailReef_Fire_Dome_Stack_Alert_Other = "<<!aC:1>> 有 |cFF0000<<2>>|r 层  |cFFA500火罩|r!"
  L.Alerts_DreadsailReef_Ice_Dome_Stack_Alert        = "你身上有  |cFF0000<<1>>|r stacks from |c20C3D0冰罩|r!"
  L.Alerts_DreadsailReef_Ice_Dome_Stack_Alert_Other  = "<<!aC:1>> 有 |cFF0000<<2>>|r 层  |c20C3D0冰罩|r!"

  L.Alerts_DreadsailReef_ReefGuardian_ReefHeart      = "礁石之心 #|cFF0000<<1>>|r 刷新了!"
  L.Alerts_DreadsailReef_ReefHeart_Success           = "礁石之心 #|cFF0000<<1>>|r |c7CFC00摧毁了|r!"
  L.Alerts_DreadsailReef_ReefHeart_Success_Unknown   = "礁石之心 |c7CFC00摧毁了|r!"
  L.Alerts_DreadsailReef_ReefHeart_Failure           = "礁石之心 #|cFF0000<<1>>|r |cFF0000增强了|r. 你完蛋了!"
  L.Alerts_DreadsailReef_ReefHeart_Failure_Unknown   = "礁石之心 |cFF0000增强了|r. 你完蛋了!"
  L.Alerts_DreadsailReef_Rapid_Deluge                = "你受到了 |c1CA3EC极速奔涌|r! 你需要游泳，剩余"
  L.Alerts_DreadsailReef_Rapid_Deluge_Other          = "|cFF0000<<!aC:1>>|r 受到了 |c1CA3EC极速奔涌|r! 需要游泳，剩余"

  --------------------------------
  ----       Debugging        ----
  --------------------------------
  L.Settings_Debug_Header                  = "调试"
  L.Settings_Debug                         = "打开调试"
  L.Settings_Debug_TT                      = "在聊天窗口中打开调试输出"
  L.Settings_Debug_DevMode                 = "开发模式"
  L.Settings_Debug_DevMode_TT              = "当开启时，将开启某些可能没有完整功能化的警告, 包括某些计时不匹配或未完全测试的警告。在通常情况下它们应该不会引起UI报错，但仍然推荐使用某些'错误捕捉'插件。"
  L.Settings_Debug_DevMode_Warning         = "需要开发模式"

  L.Settings_Debug_Tracker_Header          = "调试跟踪"
  L.Settings_Debug_Tracker_Description     = "这是一个调试功能，通过打印出战斗事件和效果的信息，在试炼过程中跟踪和输出潜在机制。"
  L.Settings_Debug_Tracker_Enabled         = "开启"
  L.Settings_Debug_Tracker_SpamControl     = "滚屏控制"
  L.Settings_Debug_Tracker_SpamControl_TT  = "开启时，技能和效果的每个动作类型只打印一次。此会话的已知技能列表可以使用“/rndebug clear”命令清除。"
  L.Settings_Debug_Tracker_MyEnemyOnly     = "只对敌人"
  L.Settings_Debug_Tracker_MyEnemyOnly_TT  = "当开启时，此功能将会对所有技能和效果的调试输出做出限制，只有目标为玩家且不是由玩家或队伍造成的部分才予以显示。当你在寻找某些特殊的信息但不想开启滚屏控制时非常有用。"
  
  --TODO: get rid of this ugly, bulky localization method
  for k, v in pairs(L) do
    local string = "RAIDNOTIFIER_" .. string.upper(k)
    ZO_CreateStringId(string, v)
  end

  local MissingL = {}
  for k, v in pairs(RaidNotifier:GetLocale()) do
    if not L[k] then
      table.insert(MissingL, k)
      L[k] = v
    end
  end
  function RaidNotifier:GetLocale()
    return L
  end
  -- for debugging
  function RaidNotifier:MissingLocale()
    df("Missing strings for '%s'", GetCVar('language.2'))
    d(MissingL)
  end
return true end

--Srendarr
--2.5.36
do if not BB.SV.BanList["Srendarr"] then
  local L = {}

  ------------------------------------------------------------------------------------------------------------------
  -- chinese (zh)
  -- Format and phrasing by Phinix
  ------------------------------------------------------------------------------------------------------------------

  L.Srendarr									= "|c67b1e9S|c4779ce'rendarr|r"
  L.Srendarr_Basic							= "S'rendarr"
  L.Usage    = "|c67b1e9S|c4779ce'rendarr|r - 功能: /srendarr 切换 锁定|解锁 显示窗口的移动."
  L.CastBar    = "施法条"
  L.Sound_DefaultProc    = "Srendarr (默认效果)"
  L.ToggleVisibility    = "切换Srendarr可见度"
  L.UpdateGearSets    = "更新已装备的装备套装"

  -- time format						
  L.Time_Tenths								= "%.1fs"
  L.Time_TenthsNS								= "%.1f"
  L.Time_Seconds								= "%ds"
  L.Time_SecondsNS							= "%d"
  L.Time_Minutes								= "%dm"
  L.Time_Hours								= "%dh"
  L.Time_Days									= "%dd"

  -- aura grouping
  L.Group_Displayed_Here    = "显示组"
  L.Group_Displayed_None    = "无"
  L.Group_Player_Short    = "你的短增益"
  L.Group_Player_Long    = "你的长增益"
  L.Group_Player_Major    = "你的(强)增益"
  L.Group_Player_Minor    = "你的(弱)增益"
  L.Group_Player_Toggled    = "你的切换增益"
  L.Group_Player_Ground    = "你的地面AOE"
  L.Group_Player_Enchant    = "你的附魔效果"
  L.Group_Player_Cooldowns    = "你的效果冷却"
  L.Group_Player_CABar    = "冷却动作条"
  L.Group_Player_Passive    = "你的被动"
  L.Group_Player_Debuff    = "你的减益"
  L.Group_Target_Buff    = "目标增益"
  L.Group_Target_Debuff    = "目标减益"
  L.Group_ProminentType    = "高亮类型"
  L.Group_ProminentTypeTip    = "选择所显示的光环类型(增益, 减益)。"
  L.Group_ProminentTarget    = "高亮目标"
  L.Group_ProminentTargetTip    = "选择所显示的光环目标(玩家, 目标, AOE)。"
  L.Group_GroupBuffs    = "组队增益框架"
  L.Group_RaidBuffs    = "团队增益框架"
  L.Group_GroupDebuffs    = "组队减益框架"
  L.Group_RaidDebuffs    = "团队减益框架"
  L.Group_Cooldowns    = "冷却追踪"
  L.Group_CooldownBar    = "激活冷却条"
  L.Group_Cooldown    = "冷却"

  -- whitelist & blacklist control
  L.Prominent_RemoveByRecent    = "因分类错误被移除高亮，应为类别"
  L.Prominent_AuraAddSuccess    = "已加入框架"
  L.Prominent_AuraAddAs    = "作为"
  L.Prominent_AuraAddFail    = "未找到，也无法添加。"
  L.Prominent_AuraAddFailByID    = "不是一个有效的技能ID."
  L.Prominent_AuraAddFailByName    = "缺失或不正确的参数。"
  L.Prominent_AuraRemoveFail    = "要移除一个高亮光环，你首先需要在修改光环跳出菜单中点击一个名字。点击光环后不要修改任何值，否则移除会失败。"
  L.Prominent_AuraRemoveSuccess    = "已被移出高亮高亮清单。"
  L.Blacklist_AuraAddSuccess    = "已被加入黑名单，将不再显示。"
  L.Blacklist_AuraAddFail    = "未找到，无法加入黑名单。"
  L.Blacklist_AuraAddFailByID    = "不是一个有效的技能ID，无法加入黑名单。"
  L.Blacklist_AuraRemoved    = "被剔出黑名单"
  L.Group_AuraAddSuccess    = "被加入组队增益白名单."
  L.Group_AuraAddSuccess2    = "被加入组队减益白名单."
  L.Group_AuraRemoved    = "被剔出组队增益白名单."
  L.Group_AuraRemoved2    = "被剔出组队减益白名单."

  -- settings: base
  L.Show_Example_Auras    = "光环样例"
  L.Show_Example_Castbar    = "施法条样例"

  L.SampleAura_PlayerTimed    = "玩家计时"
  L.SampleAura_PlayerToggled    = "玩家切换"
  L.SampleAura_PlayerPassive    = "玩家被动"
  L.SampleAura_PlayerDebuff    = "玩家减益"
  L.SampleAura_PlayerGround    = "组队效果"
  L.SampleAura_PlayerMajor    = "(强)效果"
  L.SampleAura_PlayerMinor    = "(弱)效果"
  L.SampleAura_TargetBuff    = "目标增益"
  L.SampleAura_TargetDebuff    = "目标减益"

  L.TabButton1    = "通用"
  L.TabButton2    = "过滤器"
  L.TabButton3    = "施法条"
  L.TabButton4    = "光环显示"
  L.TabButton5    = "配置"

  L.TabHeader1    = "通用设置"
  L.TabHeader2    = "过滤器设置"
  L.TabHeader3    = "施法条设置"
  L.TabHeader5    = "配置设置"
  L.TabHeaderDisplay    = "显示窗口设置"

  -- settings: generic
  L.GenericSetting_ClickToViewAuras    = "|cffd100点击查看光环|r"
  L.GenericSetting_NameFont    = "名称文本字体"
  L.GenericSetting_NameStyle    = "名称文本颜色和风格"
  L.GenericSetting_NameSize    = "名称文本尺寸"
  L.GenericSetting_TimerFont    = "计时文本字体"
  L.GenericSetting_TimerStyle    = "计时字体颜色和风格"
  L.GenericSetting_TimerSize    = "计时文本尺寸"
  L.GenericSetting_BarWidth    = "条宽度"
  L.GenericSetting_BarWidthTip    = "设置显示时计时条的宽度。"

  -- ----------------------------
  -- SETTINGS: DROPDOWN ENTRIES
  -- ----------------------------
  L.DropGroup_1    = "在显示窗口 [|cffd1001|r]"
  L.DropGroup_2    = "在显示窗口 [|cffd1002|r]"
  L.DropGroup_3    = "在显示窗口 [|cffd1003|r]"
  L.DropGroup_4    = "在显示窗口 [|cffd1004|r]"
  L.DropGroup_5    = "在显示窗口 [|cffd1005|r]"
  L.DropGroup_6    = "在显示窗口 [|cffd1006|r]"
  L.DropGroup_7    = "在显示窗口 [|cffd1007|r]"
  L.DropGroup_8    = "在显示窗口 [|cffd1008|r]"
  L.DropGroup_9    = "在显示窗口 [|cffd1009|r]"
  L.DropGroup_10    = "在显示窗口 [|cffd10010|r]"
  L.DropGroup_11    = "在显示窗口 [|cffd10011|r]"
  L.DropGroup_12    = "在显示窗口 [|cffd10012|r]"
  L.DropGroup_13    = "在显示窗口 [|cffd10013|r]"
  L.DropGroup_14    = "在显示窗口 [|cffd10014|r]"
  L.DropGroup_None    = "不显示"

  L.DropStyle_Full    = "全显示"
  L.DropStyle_Icon    = "只有图标"
  L.DropStyle_Mini    = "最小显示"

  L.DropGrowth_Up    = "上"
  L.DropGrowth_Down    = "下"
  L.DropGrowth_Left    = "左"
  L.DropGrowth_Right    = "右"
  L.DropGrowth_CenterUp						= "居中 (上)"
  L.DropGrowth_CenterDown						= "居中 (下)"
  L.DropGrowth_CenterLeft    = "居中 (左)"
  L.DropGrowth_CenterRight    = "居中 (右)"

  L.DropSort_NameAsc    = "技能名称 (正序)"
  L.DropSort_TimeAsc    = "剩余时间 (正序)"
  L.DropSort_CastAsc    = "施放顺序 (正序)"
  L.DropSort_NameDesc    = "技能名称 (倒序)"
  L.DropSort_TimeDesc    = "剩余时间 (倒序)"
  L.DropSort_CastDesc    = "施放顺序 (倒序)"

  L.DropTimer_Above    = "图标上方"
  L.DropTimer_Below    = "图标下方"
  L.DropTimer_Over    = "覆盖图标"
  L.DropTimer_Hidden    = "隐藏"

  L.DropAuraClassBuff    = "增益"
  L.DropAuraClassDebuff    = "减益"
  L.DropAuraTargetPlayer    = "玩家"
  L.DropAuraTargetTarget    = "目标"
  L.DropAuraTargetAOE							= "AOE"
  L.DropAuraClassDefault    = "不覆盖"

  L.DropGroupMode1    = "默认"
  L.DropGroupMode2    = "Foundry Tactical Combat 插件"
  L.DropGroupMode3    = "Lui 插件"
  L.DropGroupMode4    = "Bandits User Interface 插件"
  L.DropGroupMode5							= "AUI"

  -- ------------------------
  -- SETTINGS: GENERAL
  -- ------------------------
  -- general (general options)
  L.General_GeneralOptions    = "通用选项"
  L.General_GeneralOptionsDesc    = "控制插件行为的各种通用选项。"
  L.General_UnlockDesc    = "解锁以允许使用鼠标拖动光环显示窗口。重置按钮会将所有窗口还原回默认位置。"
  L.General_UnlockLock    = "锁定"
  L.General_UnlockUnlock    = "解锁"
  L.General_UnlockDefaults    = "默认"
  L.General_UnlockDefaultsAgain    = "确认默认"
  L.General_UnlockReset    = "重置"
  L.General_CombatOnly    = "只在战斗中显示"
  L.General_CombatOnlyTip    = "设置光环窗口是否只在战斗时可见。"
  L.General_PassivesAlways    = "一直显示被动"
  L.General_PassivesAlwaysTip    = "显示被动/长时间光环，即便未在战斗中及上面选项已勾选。"
  L.HideOnDeadTargets    = "死亡目标上隐藏"
  L.HideOnDeadTargetsTip    = "设置是否隐藏所有死亡目标的光环。(可能会隐藏有用的东西，例如忏悔光环使用减益.)"
  L.PVPJoinTimer    = "PVP加入计时器"
  L.PVPJoinTimerTip    = "初始化PVP时，游戏阻止插件注册事件。这是Srendarr等待完成的秒数, 这可能取决于您的CPU和/或服务器延迟。如果光环在加入或离开PVP时消失, 把这个值调高一些。"
  L.ShowTenths    = "秒数小数"
  L.ShowTenthsTip    = "在剩余秒数计时器旁边显示小数。滑块设置在剩余多少秒时开始显示小数。"
  L.ShowSSeconds    = "显示 's' 秒"
  L.ShowSSecondsTip    = "剩余最后几秒时在计时后面显示字母 's' 。计时大于一分钟则不受此影响"
  L.ShowSeconds    = "显示剩余秒数"
  L.ShowSecondsTip    = "在显示分钟的计时旁显示剩余的秒。计时大于一小时则不受此影响"
  L.General_ConsolidateEnabled    = "固定群体光环"
  L.General_ConsolidateEnabledTip    = "包括技能例如圣职者的恢复光环具有群体增益效果, 这些通常都会在您选择的光环窗口用相同的图标显示, 导致混乱。此选项将这些合并成一个单一的光环。"
  L.General_AlternateEnchantIcons				= "替换附魔图标"
  L.General_AlternateEnchantIconsTip			= "启用：使用一组自定义图标来获得附魔效果。 禁用：使用默认的游戏附魔图标。"
  L.General_PassiveEffectsAsPassive    = "被动(强)(弱)增益"
  L.General_PassiveEffectsAsPassiveTip    = "设置是否将被动(强)(弱)增益(无持续时间)与其他被动光环分到一组，并使用 '你的被动' 中的设置。\n\n如果不开启, 所有(强)(弱)增益将被分到一组，不管是被动增益还是有持续时间的增益。"
  L.General_AuraFadeout    = "光环渐没时间"
  L.General_AuraFadeoutTip    = "设置到期的光环淡出视野需要多长时间。如果设置为0, 一旦到期光环将直接消失，没有任何淡出效果。"
  L.General_ShortThreshold    = "短增益阈值"
  L.General_ShortThresholdTip    = "设置玩家增益被分到 '长增益' 组的最小持续时间 (以秒计)。任何小于此阈值的增益会被分到 '短增益' 组。"
  L.General_ProcEnableAnims    = "开启动作条动画"
  L.General_ProcEnableAnimsTip    = "设置是否在动作栏为有施法时间的技能显示动画，开启则施放时会显示一个特别的动画。具有施法时间的技能包括:\n   碎裂水晶\n   冷酷专注和它的变体\n   烈焰鞭笞\n   死亡斗篷"
  L.General_GrimProcAnims    = "冷酷专注进程动画"
  L.General_GrimProcAnimsTip    = "设置当夜刃的冷酷黎明或其变体达到足够施放幽灵弓的层数时，是否在光环上显示动画。"
  L.General_GearProcAnims    = "冷却动作条动画"
  L.General_GearProcAnimsTip    = "设置当装备技能完成冷却并可以使用时是否在冷却动作条上显示一个动画。(必须在光环控制 - 显示组中给框架分配冷却动作条。)"
  L.General_gearProcCDText    = "冷却动作条持续时间"
  L.General_gearProcCDTextTip    = "在已可以使用的装备技能的套装进程名边上的冷却动作条上显示冷却持续时间。"
  L.General_ProcEnableAnimsWarn    = "如果您在使用修改或隐藏默认动作栏的mod, 动画可能无法显示。"
  L.General_ProcPlaySound    = "播放效果声音"
  L.General_ProcPlaySoundTip    = "技能带效果时播放一个声音。设置为无将为你的效果阻止播放任何声音警告。"
  L.General_ModifyVolume    = "修改效果音量"
  L.General_ModifyVolumeTip    = "通过下方滑块启用效果音量。"
  L.General_ProcVolume    = "效果声音音量"
  L.General_ProcVolumeTip    = "当播放Srendarr效果声音时，临时覆盖音频效果音量。"
  L.General_GroupAuraMode    = "组队光环模式"
  L.General_GroupAuraModeTip    = "为当前使用的组队单元框架选择支持模块。默认是游戏的普通框架。"
  L.General_RaidAuraMode    = "团队光环模式"
  L.General_RaidAuraModeTip    = "为当前使用的团队单元框架选择支持模块。默认是游戏的普通框架。"

  -- general (display groups)
  L.General_ControlHeader    = "光环控制 - 显示组"
  L.General_ControlBaseTip    = "设置在哪个窗口中显示每个光环组, 或者把它们完全隐藏。注意: 启用特殊的过滤器或在黑名单或白名单中添加光环将覆盖这些设置。"
  L.General_ControlShortTip    = "此光环组包含所有你自己持续时间低于 '短增益阈值' 的增益。"
  L.General_ControlLongTip    = "此光环组包含所有你自己持续时间高于 '短增益阈值' 的增益。"
  L.General_ControlMajorTip    = "此光环组包含所有激活于你自己的有益(强)效果 (例如 魔术(强))。有害(强)效果属于减益组部分。"
  L.General_ControlMinorTip    = "此光环组包含所有激活于你自己的有益(弱)效果 (例如 魔术(弱))。有害(弱)效果属于减益组部分。"
  L.General_ControlToggledTip    = "此光环组包含所有激活于你自己的被切换的增益。"
  L.General_ControlGroundTip    = "此光环组包含所有你自己施放的地面区域效果 (AOE) 。"
  L.General_ControlEnchantTip    = "此光环组包含所有激活于你自己的附魔效果(例如 硬化, 狂战士)。"
  L.General_ControlGearTip    = "此光环组包含所有激活于你自己的通常不可见的装备效果 (例如 血之巢)."
  L.General_ControlCooldownTip    = "此光环组跟踪你装备效果的本质重新使用冷却。"
  L.Group_Player_CABarTip    = "跟踪你已装备的冷却并在它们可以使用时通知你。"
  L.General_ControlPassiveTip    = "此光环组包含所有激活于你自己的被动效果。"
  L.General_ControlDebuffTip    = "此光环组包含所有其他怪物，玩家，或环境施放于你的敌对减益。"
  L.General_ControlTargetBuffTip    = "此光环组包含所有你目标的增益, 无论定时的、被动的还是切换的, 除非特别过滤."
  L.General_ControlTargetDebuffTip    = "此光环组包含所有施加于你的目标的减益。"
  L.General_ControlProminentFrame    = "高亮框架"
  L.General_ControlProminentFrameTip    = "选择在哪个框架中显示此高亮光环。这将覆盖普通的过滤器类别，并适用于所配置的光环。"

  -- general (debug)
  L.General_DebugOptions    = "调试选项"
  L.General_DebugOptionsDesc    = "帮助追踪丢失或不正确的光环!"
  L.General_DisplayAbilityID    = "开启显示光环的技能ID"
  L.General_DisplayAbilityIDTip    = "设置是否为所有光环显示内部技能ID。此功能可以被用来找到你想添加到显示黑名单组或光环白名单组中的光环的准确ID。\n\n这个选项也可以用来帮助修复不正确的光环显示，可以将此错误ID报告给插件作者。"
  L.General_ShowCombatEvents    = "显示所有战斗事件"
  L.General_ShowCombatEventsTip    = "开启时，被玩家施放和受到的所有效果（增益和减益）的技能ID和名称会在聊天窗口中显示, 带有关于资源和目标, 以及事件结果代码(获得, 失去等等)的信息。\n\n为方便查看和防止聊天刷屏, 每个技能只显示一次，直到重新加载。然而, 你可以在任何时间输入 /sdbclear 来手动重置缓存。\n\n警告: 将此选项一直打开将会降低玩家处于大团队中时游戏的流畅性。仅在需要测试时打开。"
  L.General_ShowCombatEventsH1    = "警告:"
  L.General_ShowCombatEventsH2    = "保持 "
  L.General_ShowCombatEventsH3    = " 一直开着将在大团队中时降低游戏性能。仅在需要测试时开启."
  L.General_AllowManualDebug    = "允许手动调试编辑"
  L.General_AllowManualDebugTip    = "当开启时，你可以输入 /sdbadd XXXXXX 或 /sdbremove XXXXXX 来从滚动过滤器添加/删除单个ID。另外，输入/sdbignore XXXXXX 将总是允许你所选择的ID通过滚动过滤器。输入 /sdbclear 仍然会完全重置过滤器。"
  L.General_DisableSpamControl    = "禁用滚动控制"
  L.General_DisableSpamControlTip    = "当开启时，战斗事件过滤器每次都会输出相同的事件而不用输入 /sdbclear 或重新加载以清除数据库。"
  L.General_VerboseDebug    = "显示详细的调试"
  L.General_VerboseDebugTip    = "显示从EVENT_COMBAT_EVENT接收到的整个数据块和每个符合上文过滤器的ID的技能图标路径，以(大部分)人可读的格式显示 (这将很快填满您的聊天日志)。"
  L.General_OnlyPlayerDebug    = "仅玩家事件"
  L.General_OnlyPlayerDebugTip    = "仅显示尤玩家动作引起的调试战斗事件。"
  L.General_ShowNoNames    = "显示无名的事件"
  L.General_ShowNoNamesTip    = "当开启时，战斗事件过滤器将显示事件ID，即使他们不含有名称文本 (一般不需要)。"
  L.General_ShowSetIds    = "在装备上显示套装ID"
  L.General_ShowSetIdsTip    = "启用后，当更换套装装备的任一部分时，所有已装备的套装装备显示名称和套装ID。"

  -- ------------------------
  -- SETTINGS: FILTERS
  -- ------------------------
  L.FilterHeader    = "过滤器列表和切换"
  L.Filter_Desc    = "在这里你可以将光环加入黑名单, 将增益和减益加入白名单来突出显示，并将它们分配给自定义窗口, 或切换过滤器，以显示或隐藏不同类型的效果。"
  L.Filter_RemoveSelected    = "移除所选"
  L.Filter_ListAddWarn    = "当通过名称添加一个光环时, 它需要扫描游戏中的所有光环来找到技能的内部ID号码。这可能会导致游戏在搜索时暂停一会儿。"
  L.FilterToggle_Desc    = "关于这些过滤器, 启用其中某个过滤器会阻止显示该类别 (白名单突出的光环忽略这些过滤器)."

  L.Filter_PlayerHeader    = "玩家光环过滤器"
  L.Filter_TargetHeader    = "目标光环过滤器"
  L.Filter_OnlyPlayerDebuffs    = "只有玩家减益"
  L.Filter_OnlyPlayerDebuffsTip    = "防止在目标上显示非玩家创建的减益光环。"
  L.Filter_OnlyTargetMajor    = "仅目标(强)技能"
  L.Filter_OnlyTargetMajorTip    = "仅显示目标的(强)效果减益。所有其他目标减益将不会显示。"

  -- filters (blacklist auras)
  L.Filter_BlacklistHeader    = "全局光环黑名单"
  L.Filter_BlacklistDesc    = "特定的光环可以在此被列入黑名单，永远不会出现在任何光环跟踪窗口。"
  L.Filter_BlacklistAdd    = "添加黑名单光环"
  L.Filter_BlacklistAddTip    = "您想要列入黑名单的光环名称必须与它在游戏中出现的名称完全一致, 或者你可以输入技能数字ID (如知道的话) 来阻止特定光环。\n\n按回车键将输入光环添加到黑名单。"
  L.Filter_BlacklistList    = "目前列入黑名单的光环"
  L.Filter_BlacklistListTip    = "当前被列入黑名单的所有光环的列表。若要从黑名单中移除光环，请从列表中选择并单击“移除”按钮。"

  -- filters (prominent auras)
  L.Filter_ProminentHead    = "高亮光环分配"
  L.Filter_ProminentHeadTip    = "光环可以被分配到特定类型的特定框架中显示 (增益, 减益, 等等) 并针对于特定的目标 (玩家, 目标, 队伍, 等等)。"
  L.Filter_ProminentOnlyPlayer    = "仅玩家施放"
  L.Filter_ProminentOnlyPlayerTip    = "仅查看并选择由玩家施放的光环。"
  L.Filter_ProminentAddRecent    = "添加最近看到的光环:"
  L.Filter_ProminentAddRecentTip    = "点击显示最近侦测到的不同类别的光环。点击一个显示的光环将用这些数据填充高亮配置面板，这样您就可以轻松地将它们添加到自定义显示框架中。"
  L.Filter_ProminentResetRecent    = "重置最近"
  L.Filter_ProminentResetRecentTip    = "清除最近检测到的光环列表数据库。"
  L.Filter_ProminentModify    = "修改现存的高亮光环:"
  L.Filter_ProminentModifyTip    = "单击此处可显示为每个分类定义的高亮光环列表。点击一个显示的光环将用这些数据填充高亮配置面板，这样您就可以修改或删除它们。"
  L.Filter_ProminentTypePB    = "玩家增益"
  L.Filter_ProminentTypePD    = "玩家减益"
  L.Filter_ProminentTypeTB    = "目标增益"
  L.Filter_ProminentTypeTD    = "目标减益"
  L.Filter_ProminentTypeAOE    = "范围效果"
  L.Filter_ProminentResetAll    = "清除菜单"
  L.Filter_ProminentResetAllTip    = "清除并重置高亮光环面板上的所有菜单区域。"
  L.Filter_ProminentTypeGB    = "队伍增益"
  L.Filter_ProminentTypeGD    = "队伍减益"
  L.Filter_ProminentAdd    = "添加/更新"
  L.Filter_ProminentRemove    = "移除"
  L.Filter_ProminentEdit    = "所选光环:"
  L.Filter_ProminentEditTip1    = "从“最近看到”列表中选择一种光环以添加，或从“现存”列表中一种光环以修改。"
  L.Filter_ProminentEditTip2    = "当添加光环时，需要扫描游戏中的所有光环来找到该技能的内部ID号。这可能会导致搜索时游戏假死一段时间。"
  L.Filter_ProminentShowIDs					= "显示光环ID"
  L.Filter_ProminentExpert					= "专家"
  L.Filter_ProminentExpertTip					= "允许按名称或 ID 手动输入 aura，并启用“全部移除”功能.\n\n|cffffff警告:|r 不要添加已经出现在 Srendarr 中的光环 (当他们的类别分配给框架时) 这种方式. 这样做会降低性能并出现一些问题. 使用最近看到的菜单将它们添加到自定义框架中. 当 Srendarr 看到游戏以不同的参数发送它们时，输入错误类型的光环将被自动删除.\n\n|cffffff实验性的:|r 您可以在此处输入游戏和 Srendarr 不跟踪的光环 ID, 然而，不能保证它们会工作，因为游戏有时会为这些发送零持续时间和错误信息. 最好请求添加 Srendarr 支持然后尝试手动强制操作."
  L.Filter_ProminentRemoveAll					= "全部移除"
  L.Filter_ProminentRemoveAllTip				= "移除当前配置中的所有高亮光环。注意：如果你使用了帐户范围设置，这将按帐户范围删除所有高亮光环。"
  L.Filter_ProminentRemoveConfirm				= "确定要移除当前配置中的所有高亮光环吗?"
  L.Filter_ProminentWaitForSearch				= "正在搜索，请稍等。"

  -- filters (group frame buffs)
  L.Filter_GroupBuffHeader    = "组队增益分配"
  L.Filter_GroupBuffDesc    = "此列表定义哪些增益将显示在每个玩家的组队或团队框架旁。"
  L.Filter_GroupBuffAdd    = "添加白名单组队增益"
  L.Filter_GroupBuffAddTip					= "要添加增益光环以跟踪组帧，您必须准确输入其在游戏中出现的名称. 按回车键将输入光环添加到列表中.\n\n警告: 不要在此处输入光环 ID，除非它通常不会被游戏跟踪 (请输入光环名称). 此处通过 ID 输入的光环使用 Srendarr 的假光环系统，输入的越多，性能越差."
  L.Filter_GroupBuffList    = "当前组队增益白名单"
  L.Filter_GroupBuffListTip    = "设置在组队框架上显示的所有增益列表。要移除现有光环, 从列表中选择它，并使用下面的移除按钮。"
  L.Filter_GroupBuffsByDuration    = "按持续时间排除增益"
  L.Filter_GroupBuffsByDurationTip    = "只显示持续时间比下面选择短的组队增益 (以秒)。"
  L.Filter_GroupBuffThreshold    = "增益持续时间阈值"
  L.Filter_GroupBuffWhitelistOff    = "使用作为增益黑名单"
  L.Filter_GroupBuffWhitelistOffTip    = "将组队增益白名单转入黑名单，并除了在此输入的之外，显示所有带有持续时间的光环。"
  L.Filter_GroupBuffOnlyPlayer    = "只有玩家队伍增益"
  L.Filter_GroupBuffOnlyPlayerTip    = "只显示被玩家或它们的宠物施放的队伍增益。"
  L.Filter_GroupBuffsEnabled    = "开启组队增益"
  L.Filter_GroupBuffsEnabledTip    = "如果关闭，则组队增益将完全不显示。"

  -- filters (group frame debuffs)
  L.Filter_GroupDebuffHeader    = "组队减益分配"
  L.Filter_GroupDebuffDesc    = "此列表定义哪些减益将显示在每个玩家的组队或团队框架旁。"
  L.Filter_GroupDebuffAdd    = "添加白名单组队减益"
  L.Filter_GroupDebuffAddTip    = "要在组队框架上添加一个减益光环追踪，你必须输入与它在游戏中出现的名称完全一致的名称, 或者你可以输入技能数字ID (如知道的话)。\n\n按回车键将输入的光环添加到列表。"
  L.Filter_GroupDebuffList    = "当前组队减益白名单"
  L.Filter_GroupDebuffListTip    = "设置在组队框架上显示的所有减益列表。要移除现有光环, 从列表中选择它，并使用下面的移除按钮。"
  L.Filter_GroupDebuffsByDuration    = "按持续时间排除减益"
  L.Filter_GroupDebuffsByDurationTip    = "只显示持续时间比下面选择短的组队减益 (以秒)。"
  L.Filter_GroupDebuffThreshold    = "减益持续时间阈值"
  L.Filter_GroupDebuffWhitelistOff    = "使用作为减益黑名单"
  L.Filter_GroupDebuffWhitelistOffTip    = "将组队减益白名单转入黑名单，并除了在此输入的之外，显示所有带有持续时间的光环。"
  L.Filter_GroupDebuffsEnabled    = "开启组队减益"
  L.Filter_GroupDebuffsEnabledTip    = "如果关闭，则组队减益将完全不显示。"

  -- filters (unit options)
  L.Filter_ESOPlus    = "过滤ESO会员"
  L.Filter_ESOPlusPlayerTip    = "设置是否阻止显示你自己的ESO会员状态。"
  L.Filter_ESOPlusTargetTip    = "设置是否阻止显示你目标的ESO会员状态。"
  L.Filter_BlockPlayerTip    = "设置当你正在格挡时是否阻止显示 '加固' 切换。"
  L.Filter_BlockTargetTip    = "设置当你的对手正在格挡时是否阻止显示 '加固' 切换。"
  L.Filter_MundusBoon    = "过滤梦达斯恩惠"
  L.Filter_MundusBoonPlayerTip    = "设置是否阻止显示你自己的梦达斯之石恩惠加成。"
  L.Filter_MundusBoonTargetTip    = "设置是否阻止显示你目标的梦达斯之石恩惠加成。"
  L.Filter_Cyrodiil    = "过滤悉罗帝尔加成"
  L.Filter_CyrodiilPlayerTip    = "设置是否阻止显示在悉罗帝尔冒险时提供给你自己的增益加成。"
  L.Filter_CyrodiilTargetTip    = "设置是否阻止显示在悉罗帝尔冒险时提供给你目标的增益加成。"
  L.Filter_Disguise    = "过滤伪装"
  L.Filter_DisguisePlayerTip    = "设置是否阻止显示你自己的激活伪装。"
  L.Filter_DisguiseTargeTtip    = "设置是否阻止显示你目标的激活伪装。"
  L.Filter_MajorEffects    = "过滤(强)效果"
  L.Filter_MajorEffectsTargetTip    = "设置是否阻止显示你目标的(强)效果 (例如 致残(强), 魔术(强))。"
  L.Filter_MinorEffects    = "过滤(弱)效果"
  L.Filter_MinorEffectsTargetTip    = "设置是否阻止显示你目标的(弱)效果 (例如 致残(弱), 魔术(弱))。"
  L.Filter_SoulSummons    = "过滤灵魂召唤冷却"
  L.Filter_SoulSummonsPlayerTip    = "设置是否阻止显示你自己的灵魂召唤冷却 '光环'。"
  L.Filter_SoulSummonsTargetTip    = "设置是否阻止显示你目标的灵魂召唤冷却 '光环'。"
  L.Filter_VampLycan    = "过滤吸血鬼&狼人效果"
  L.Filter_VampLycanPlayerTip    = "设置是否阻止显示你自己的吸血症和狼化症增益。"
  L.Filter_VampLycanTargetTip    = "设置是否阻止显示你目标的吸血症和狼化症增益。"
  L.Filter_VampLycanBite    = "过滤吸血鬼&狼人咬人计时器"
  L.Filter_VampLycanBitePlayerTip    = "设置是否阻止显示你自己的吸血鬼&狼人咬人冷却计时器。"
  L.Filter_VampLycanBiteTargetTip    = "设置是否阻止显示你目标的吸血鬼&狼人咬人冷却计时器。"
  L.Filter_GroupDurationThreshold				= "超过此持续时间（以秒为单位）的组光环将不会显示。"

  -- ------------------------
  -- SETTINGS: CAST BAR
  -- ------------------------
  L.CastBar_Enable    = "开启释放&引导条"
  L.CastBar_EnableTip    = "设置是否启用可移动的施法条，以在激活前显示具有施法时间或引导时间的技能进度。"
  L.CastBar_Alpha    = "透明度"
  L.CastBar_AlphaTip    = "设置施放条在可见时的不透明程度。设置为100使该栏完全不透明。"
  L.CastBar_Scale    = "比例"
  L.CastBar_ScaleTip    = "以百分比设置施放条的尺寸。设置为100是默认大小。"

  -- cast bar (name)
  L.CastBar_NameHeader    = "施放技能名称文本"
  L.CastBar_NameShow    = "显示技能名称文本"

  -- cast bar (timer)
  L.CastBar_TimerHeader    = "施放计时文本"
  L.CastBar_TimerShow    = "显示施放计时文本"

  -- cast bar (bar)
  L.CastBar_BarHeader    = "施放计时条"
  L.CastBar_BarReverse    = "倒计时方向反向"
  L.CastBar_BarReverseTip    = "设置是否反转施放计时条的倒计时方向，使计时器向右减小。无论如何, 需要引导的技能都将向相反的方向增加。"
  L.CastBar_BarGloss    = "光滑条"
  L.CastBar_BarGlossTip    = "设置转换计时器条在显示时是否应显示为光滑。"
  L.CastBar_BarColor    = "条颜色"
  L.CastBar_BarColorTip    = "设置施放计时条颜色。左边的颜色选择定义施放条的开始 (当它开始倒数的时候) 第二个颜色是施放条的结束 (当它接近到期时)。"

  -- ------------------------
  -- SETTINGS: DISPLAY FRAMES
  -- ------------------------
  L.DisplayFrame_Alpha    = "窗口透明度"
  L.DisplayFrame_AlphaTip    = "设置此光环窗口在可见时的不透明程度。设置为100使窗口完全不透明。"
  L.DisplayFrame_Scale    = "窗口比例"
  L.DisplayFrame_ScaleTip    = "以百分比设置光环窗口的尺寸。设置为100是默认大小。"

  -- display frames (aura)
  L.DisplayFrame_AuraHeader    = "光环显示"
  L.DisplayFrame_Style    = "光环风格"
  L.DisplayFrame_StyleTip    = "设置此光环窗口的光环将显示的样式。\n\n|cffd100全显示|r - 显示技能名称和图标, 计时条 (可关闭)和文本。\n\n|cffd100只有图标|r - 只显示技能图标和计时器文本, 这种样式比其他样式提供了更多的光环增长方向选项。\n\n|cffd100最小显示|r - 只显示技能名称, 和更小的计时器。"
  L.DisplayFrame_AuraCooldown    = "显示计时动画"
  L.DisplayFrame_AuraCooldownTip    = "在光环图标周围显示一个计时器动画。这也使得光环比旧的显示模式更容易看到。使用下面的颜色设置自定义。"
  L.DisplayFrame_AuraBackground				= "使用图标背景"
  L.DisplayFrame_AuraBackgroundTip			= "在光环图标显示后面显示黑色背景。 仅当不使用计时器动画时才能禁用，因为此功能依赖于它才能正确显示。"
  L.DisplayFrame_AuraBorder					= "使用图标边框"
  L.DisplayFrame_AuraBorderTip				= "不使用 Srendarr 的黑色图标背景时，在图标周围显示游戏默认样式边框。"
  L.DisplayFrame_CooldownTimed    = "颜色: 计时增益&减益"
  L.DisplayFrame_CooldownTimedB    = "颜色: 计时增益"
  L.DisplayFrame_CooldownTimedD    = "颜色: 计时减益"
  L.DisplayFrame_CooldownTimedTip    = "设置有固定持续时间的光环的图标计时器动画颜色。\n\n左 = 增益\n右 = 减益."
  L.DisplayFrame_CooldownTimedBTip    = "设置有固定持续时间的增益的图标计时器动画颜色。"
  L.DisplayFrame_CooldownTimedDTip    = "设置有固定持续时间的减益的图标计时器动画颜色。"
  L.DisplayFrame_Growth    = "光环增长方向"
  L.DisplayFrame_GrowthTip					= "设置新光环将从锚点开始生长的方向。 对于居中设置，光环将从锚点向任一方向生长，顺序由排序选项和所选方向（左、右、上、下）决定。\n\n以 |cffd100Full|r 或 |cffd100Mini|r 样式显示时， 光环只能向上或向下生长。"
  L.DisplayFrame_Padding    = "光环增长间距"
  L.DisplayFrame_PaddingTip    = "设置每个显示光环之间的间距。"
  L.DisplayFrame_Sort    = "光环排序顺序"
  L.DisplayFrame_SortTip    = "置光环的排序方式。按字母顺序, 剩余持续时间或根据被施放的顺序; 还可以设置该顺序是升序还是降序。\n\n当以持续时间排序时, 任何被动或切换技能将按名称排序，并显示在最接近锚的位置 (正序), 或离锚最远的位置 (倒序), 其他计时技能则在其之前 (或之后)。"
  L.DisplayFrame_Highlight    = "切换光环图标高亮"
  L.DisplayFrame_HighlightTip    = "设置切换光环的图标是否高亮，以帮助区分被动光环。\n\n在 |cffd100最小|r 风格下不可用，因为没有图标被显示。"
  L.DisplayFrame_Tooltips    = "开启光环名称提示框"
  L.DisplayFrame_TooltipsTip    = "设置当在 |cffd100只有图标|r 风格下时，是否允许为光环名显示鼠标悬停提示框。"
  L.DisplayFrame_TooltipsWarn    = "必须暂时禁用提示框才能移动显示窗口, 否则提示框会阻碍移动。"
  L.DisplayFrame_AuraClassOverride    = "光环类覆盖"
  L.DisplayFrame_AuraClassOverrideTip    = "允许Srendarr处理在此条中的所有计时光环 (切换和被动光环忽略), 无论增益还是减益, 无视他们的实际类别。\n\n当需要将减益和AOE同时添加到一个窗口，并使两者使用相同的计时条和图标动画颜色时非常有用。"

  -- display frames (group)
  L.DisplayFrame_GRX    = "水平偏移"
  L.DisplayFrame_GRXTip    = "调整组队/团队框架增益图标的左右位置。"
  L.DisplayFrame_GRY    = "垂直偏移"
  L.DisplayFrame_GRYTip    = "调整组队/团队框架增益图标的上下位置。"

  -- display frames (name)
  L.DisplayFrame_NameHeader    = "技能名称文本"

  -- display frames (timer)
  L.DisplayFrame_TimerHeader    = "计时文本"
  L.DisplayFrame_TimerLocation    = "计时文本位置"
  L.DisplayFrame_TimerLocationTip    = "根据每个光环的图标设置计时器的位置。一个隐藏的设置，可以停止此处所有光环显示器的计时器标签显示。\n\n根据当前风格，只有特定的放置选项可用。"
  L.DisplayFrame_TimerHMS    = "为大于1小时的计时器显示分钟"
  L.DisplayFrame_TimerHMSTip    = "设置是否为大于1小时的计时器显示剩余分钟数。"

  -- display frames (bar)
  L.DisplayFrame_BarHeader    = "计时条"
  L.DisplayFrame_HideFullBar    = "隐藏计时条"
  L.DisplayFrame_HideFullBarTip    = "当在完全显示模式下, 完全隐藏计时条，只在图标旁显示光环名。"
  L.DisplayFrame_BarReverse    = "倒计时方向反向"
  L.DisplayFrame_BarReverseTip    = "设置是否反转计时条的倒计时方向, 使计时器向右减小。在 |cffd100全|r 风格下，这也会将光环图标放置在计时条右边而不是左边。"
  L.DisplayFrame_BarGloss    = "光滑条"
  L.DisplayFrame_BarGlossTip    = "设置计时条的显示是否应该是光滑的。"
  L.DisplayFrame_BarBuffTimed    = "颜色: 计时增益"
  L.DisplayFrame_BarBuffTimedTip    = "设置有固定持续时间的增益光环计时条颜色。左边的颜色选择定义施放条的开始 (当它开始倒数的时候) 第二个颜色是施放条的结束 (当它接近到期时)。"
  L.DisplayFrame_BarBuffPassive    = "颜色: 被动增益"
  L.DisplayFrame_BarBuffPassiveTip    = "设置无固定持续时间的被动增益计时条颜色。左边的颜色选择定义施放条的开始 (离图标最远的一侧) 第二个颜色是施放条的结束 (离图标最近的一侧)。"
  L.DisplayFrame_BarDebuffTimed    = "颜色: 计时减益"
  L.DisplayFrame_BarDebuffTimedTip    = "设置有固定持续时间的减益光环计时条颜色。左边的颜色选择定义施放条的开始 (当它开始倒数的时候) 第二个颜色是施放条的结束 (当它接近到期时)。"
  L.DisplayFrame_BarDebuffPassive    = "颜色: 被动减益"
  L.DisplayFrame_BarDebuffPassiveTip    = "设置无固定持续时间的被动减益计时条颜色。左边的颜色选择定义施放条的开始 (离图标最远的一侧) 第二个颜色是施放条的结束 (离图标最近的一侧)。"
  L.DisplayFrame_BarToggled    = "颜色: 切换光环"
  L.DisplayFrame_BarToggledTip    = "设置无固定持续时间的切换光环计时条颜色。左边的颜色选择定义施放条的开始 (离图标最远的一侧) 第二个颜色是施放条的结束 (离图标最近的一侧)。"

  -- ------------------------
  -- SETTINGS: PROFILES
  -- ------------------------
  L.Profile_Desc    = "此处可以管理设置配置，包括启用帐户全局配置的选项，该选项将对本帐户上所有角色应用相同的设置。由于这些选项是永久性的，必须先使用面板底部的复选框启用管理才可修改。"
  L.Profile_UseGlobal    = "使用账户全局配置"
  L.Profile_AccountWide    = "账户全局"
  L.Profile_UseGlobalWarn    = "切换本地和全局配置会重载界面。"
  L.Profile_Copy    = "选择一个配置以复制"
  L.Profile_CopyTip    = "选择一个配置，将其设置复制到当前配置上。当前配置将用于已登录的任何一个角色或账户全局配置(如开启)。现有的配置文件设置将被永久覆盖。\n\n这是无法撤销的!"
  L.Profile_CopyButton1    = "复制整个配置"
  L.Profile_CopyButton1Tip	= "复制整个已选择的配置，包括所有高亮光环配置。请参阅下面的选项。"
  L.Profile_CopyButton2	= "复制基础配置"
  L.Profile_CopyButton2Tip	= "从选择的配置复制所有东西，但排除高亮光环配置。在设置基础显示配置但不复制特定职业光环设置时比较有用。"
  L.Profile_CopyButtonWarn    = "复制配置会重载界面。"
  L.Profile_CopyCannotCopy    = "无法复制被选择的配置。请再试一次或选择其他配置。"
  L.Profile_Delete    = "选择一个配置以删除"
  L.Profile_DeleteTip    = "选择要从数据库中删除其设置的配置。如果在你没有使用账户全局配置的情况下该角色再次登录, 将创建新的默认设置。\n\n删除配置是永久性的!"
  L.Profile_DeleteButton    = "删除配置"
  L.Profile_Guard    = "开启配置管理"

  -- ------------------------
  -- Alt Names
  -- ------------------------
  L.YoungWasp    = "幼蜂"
  L.MolagKenaHit1    = "第一击"
  L.VolatileAOE    = "异变仆从技能"

  --Sepical Setting
  BB.SetFunHook(function(...)
    local _, name, _, key = ...
    if name == "LibMediaProvider_Registered" and key == "Srendarr Ability Proc" then
      local S = _G['Srendarr'].GetLocale()
      L = BB.TableCopy(L, S)
      _G['Srendarr'].GetLocale = function()
        return L
      end
    end
    return nil
  end, CALLBACK_MANAGER, "FireCallbacks")

end end

BB.AddonList["Srendarr"] = function()
  if not Srendarr then return false end
  return true 
end

--Tamriel Trade Centre
--4.19.943.18329
BB.AddonList["TamrielTradeCentre"] = function() if not TamrielTradeCentre then return false end
  ZO_CreateStringId("TTC_SETTING_INCLUDESALEPRICE", "显示售价")
  ZO_CreateStringId("TTC_SETTING_SEARCHONLINE", "在线搜索")
  ZO_CreateStringId("TTC_SETTING_SEARCHONLINESORTBY", "排序方式")
  ZO_CreateStringId("TTC_SETTING_SEARCHONLINESORTBYLASTSEEN", "最后看见")
  ZO_CreateStringId("TTC_SETTING_SEARCHONLINESORTBYPRICE", "价格")
  ZO_CreateStringId("TTC_SETTING_SEARCHONLINESORTORDER", "顺序")
  ZO_CreateStringId("TTC_SETTING_SEARCHONLINESORTASC", "升序")
  ZO_CreateStringId("TTC_SETTING_SEARCHONLINESORTDESC", "降序")
  ZO_CreateStringId("TTC_PRICE_SALEAVGX", "平均售价： %s")
  ZO_CreateStringId("TTC_PRICE_XSALESYITEMS", "(%s 条已售/共%s 件)")
  ZO_CreateStringId("TTC_PRICE_XSALES", "(%s 条已售)")
  ZO_CreateStringId("TTC_MSG_RECORDEDDATACLEARED", "自动记录数据已清除")
return true end

--[[ Template 1, "" = folder name

--
--
BB.AddonList[""] = function() if not  then return false end

return true end

]]

--[[ Template 2, "" = folder name

--
--
do if not BB.SV.BanList[""] then

end end

BB.AddonList[""] = function() if not  then return false end

return true end

]]