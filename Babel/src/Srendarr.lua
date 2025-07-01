local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

do if not BB.SV.BanList["Srendarr"] then
  local L = {}

--Local_en.lua
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
  L.CastBar_AlphaTip    = "设置施法条在战斗外的不透明度。设置为0时完全隐藏。"
  L.CastBar_CAlphaTip		= "设置施法条在战斗中的不透明度。设置为0时完全隐藏。"
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
  L.DisplayFrame_Alpha    = "脱战时透明度"
  L.DisplayFrame_AlphaTip    = "设置此光环窗口在脱战时的不透明程度。设置为0时，窗口完全隐藏。"
  L.DisplayFrame_CAlpha		= "战斗中透明度"
  L.DisplayFrame_CAlphaTip	 = "设置此光环窗口在战斗中的不透明程度。设置为0时，窗口完全隐藏。"
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