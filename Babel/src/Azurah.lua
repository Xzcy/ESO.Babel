local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

do if not BB.SV.BanList["Azurah"] then
  --Translation Section
  local L = {}
  L.Azurah								        = "|c67b1e9A|c4779cezurah|r"
  L.Usage									        = "|c67b1e9A|c4779cezurah|r - 使用说明:\n|cffc600  /azurah unlock|r |cffffff =  解锁使UI元素可移动|r\n|cffc600  /azurah save|r |cffffff =  锁定UI并保存位置|r\n|cffc600  /azurah undo|r |cffffff =  撤销所有待定更改|r\n|cffc600  /azurah exit|r |cffffff =  锁定UI但不保存位置|r"
  L.ThousandsSeparator					  = "," -- used to separate large numbers in overlays
  L.ToggleCompassVisibility				= "切换 罗盘可见性"
  L.ToggleCombatVisibility				= "切换 全局不透明度"
  L.ToggleAbilityBlocking					= "切换 技能禁用"
  L.AzurahAbilityBlock					  = "技能禁用中"
  L.AzurahAbilityBlocked					= "|c67b1e9Azurah|r: 技能被设置禁用"

-- move window names
  L.Health								  = "玩家生命值"
  L.HealthSiege							= "攻城器械生命值"
  L.Magicka								  = "玩家法力值"
  L.Werewolf								= "狼人计时器"
  L.Stamina								  = "玩家耐力值"
  L.StaminaMount						= "坐骑耐力值"
  L.Experience							= "经验条"
  L.EquipmentStatus					= "装备状态"
  L.Synergy								  = "协同"
  L.Compass								  = "罗盘"
  L.ReticleOver							= "目标生命值"
  L.ActionBar								= "技能栏"
  L.PetGroup								= "宠物队伍"
  L.Group									  = "小队成员"
  L.Raid1									  = "Raid队伍 1"
  L.Raid2									  = "Raid队伍 2"
  L.Raid3									  = "Raid队伍 3"
  L.Raid4									  = "Raid队伍 4"
  L.Raid5									  = "Raid队伍 5"
  L.Raid6									  = "Raid队伍 6"
  L.FocusedQuest						= "任务追踪器"
  L.PlayerPrompt						= "玩家交互提示"
  L.AlertText								= "警告文本通知"
  L.CenterAnnounce					= "屏幕通知"
  L.InfamyMeter							= "赏金显示"
  L.TelVarMeter							= "泰尔瓦石倍率显示"
  L.ActiveCombatTips				= "进战提示"
  L.Tutorial								= "教程"
  L.CaptureMeter						= "联盟对战 占领进度"
  L.BagWatcher							= "背包监视"
  L.WerewolfTimer						= "狼人计时器"
  L.LootHistory							= "拾取历史"
  L.RamSiege								= "攻城锤"
  L.Subtitles								= "字幕"
  L.PaperDoll								= "纸娃娃"
  L.QuestTimer							= "任务计时器"
  L.PlayerBuffs							= "玩家 Buffs/Debuffs"
  L.TargetDebuffs						= "目标 Debuffs"
  L.Reticle								  = "准星"
  L.Interact								= "互动文本"
  L.BattlegroundScore				= "战场计分板"
  L.DialogueWindow					= "对话窗口"
  L.StealthIcon							= "潜行图标"
  L.EndlessArchive					= "无尽档案塔"
  L.WykkydReticle						= "准星框架尺寸被Wykkyd Full Immersion插件接管"
  L.WykkydSubtitles					= "字幕尺寸被Wykkyd Full Immersion插件接管"

-- --------------------------------------------
-- SETTINGS -----------------------------------
-- --------------------------------------------

-- dropdown menus
  L.DropOverlay1						= "不显示"
  L.DropOverlay2						= "显示所有"
  L.DropOverlay3						= "当前值 ＆ 最大值"
  L.DropOverlay4						= "当前值 ＆ 百分比"
  L.DropOverlay5						= "仅数值"
  L.DropOverlay6						= "仅百分比"
  L.DropColourBy1						= "默认"
  L.DropColourBy2						= "根据目标类型"
  L.DropColourBy3						= "根据目标等级"
  L.DropExpBarStyle1				= "默认"
  L.DropExpBarStyle2				= "总是显示"
  L.DropExpBarStyle3				= "总是隐藏"
  L.DropHAlign1							= "自动对齐"
  L.DropHAlign2							= "左侧对齐"
  L.DropHAlign3							= "右侧对齐"
  L.DropHAlign4							= "居中对齐"

-- tabs
  L.TabButton1							= "通用"
  L.TabButton2							= "属性"
  L.TabButton3							= "目标"
  L.TabButton4							= "技能栏"
  L.TabButton5							= "经验条"
  L.TabButton6							= "罗盘"
  L.TabButton7							= "偷窃"
  L.TabButton8							= "背包监视"
  L.TabButton9							= "狼人"
  L.TabButton10							= "配置文件"
  L.TabHeader1							= "通常设置"
  L.TabHeader2							= "玩家属性设置"
  L.TabHeader3							= "目标窗口设置"
  L.TabHeader4							= "技能栏设置"
  L.TabHeader5							= "经验条设置"
  L.TabHeader6							= "罗盘设置"
  L.TabHeader7							= "盗窃设置"
  L.TabHeader8							= "背包监视设置"
  L.TabHeader9							= "狼人计时器设置"
  L.TabHeader10							= "配置文件设置"

-- unlock window
  L.UnlockHeader						= "UI已解锁"
  L.ChangesPending					= "|cffffff存在改动!|r\n|cffff00点击 '锁定UI (并保存)' 来储存修改|r\n未保存的修改将在重新加载UI后丢失"
  L.UnlockGridEnable				= "启用 网格吸附"
  L.UnlockGridDisable				= "禁用 网格吸附"
  L.UnlockLockFrames				= "锁定UI (并保存)"
  L.UndoChanges							= "撤销未保存改动"
  L.ExitNoSave							= "退出且不保存"
  L.UnlockReset							= "重置为默认"
  L.UnlockResetConfirm			= "确认重置"

-- settings: generic
  L.SettingOverlayFormat				= "显示形式"
  L.SettingOverlayShield				= "盾值"
  L.SettingOverlayShieldTip			= "包含当前护盾的数值"
  L.SettingOverlayFancy					= "显示千位分隔符"
  L.SettingOverlayFancyTip			= "是否为该类别分解大数字.\n\n举例来说, 10000 将变为 10,000."
  L.SettingOverlayFont					= "字体"
  L.SettingOverlayStyle					= "字体颜色＆风格"
  L.SettingOverlaySize					= "字体大小"
  L.SettingUseReadyColor				= "技能就绪时颜色"
  L.SettingUseReadyColorTip			= "启用后，终极技能就绪时将修改字体颜色"
  L.SettingHorizontalOffset			= "横轴微调"
  L.SettingVerticalOffset				= "纵轴微调"

-- settings: general tab (1)
  L.GeneralWarning						  = "警告"
  L.GeneralAnchorDesc						= "解锁后允许使用鼠标移动UI位置，滚轮调节缩放比例。每个被解锁的UI窗口将会被命名，允许其在隐藏状态下也能够被移动\n\n锁定 将保存所有改动. 点击 '撤销未保存改动' 将重置所有未被锁定键保存的修改. 右键一个单独的UI窗口，将只会单独撤销其修改。退出且不保存 允许你临时维持界面修改，但在下次重载UI时将失效，你也可以再次解锁并保存修改。\n\n当解锁UI界面时，你可以通过Esc键离开插件设置界面，或者你可以在聊天栏输入 |cffff00/azurah unlock|r 指令来解锁UI界面. 使用 切换游戏光标 快捷键（默认为 . ）来允许你将鼠标移动至UI界面以操作。"
  L.GeneralEditFrameDesc				= "这个设置允许你调节任何你通过Azurah移动或缩放过的框架。"
  L.GeneralUIOptions						= "UI框架设置"
  L.GeneralDescription1					= " 来移动或缩放支持的框架或 "
  L.GeneralDescription2					= " 来设置透明度和其他选项。"
  L.GeneralDescription3					= "在改变技能栏尺寸后，你必须使用 |cffff00/reloadui|r 指令重载UI，否则切手将导致技能栏出错。同理，如果你在键盘和手柄模式间切换，也请在使用Azurah前重载UI。"
  L.GeneralEditFrames						= "修改UI框架设置"
  L.GeneralEditFrameChoice			= "选择要编辑的框架"
  L.GeneralEditFrameNone				= "没有框架可编辑"
  L.GeneralEditFrameReset				= "重置框架"
  L.GeneralEditFrameResetTip		= "清除Azurah对选择框架的所有修改。当修改与其他UI插件冲突时，这将非常有帮助。\n\n注意: 你需要使用 |cffff00/reloadui|r 指令重载UI来生效"
  L.GeneralAnchorUnlock					= "解锁UI窗口"
  L.GeneralNotification					= "通知文本"
  L.General_Notification				= "对齐方式"
  L.General_NotificationTip			= "选择通知文本的对齐方式. 默认来说, 自动对齐将根据通知文本框架的位置，选择左对齐或右对齐。"
  L.General_NotificationWarn		= "修改此选项后，需要解锁并移动通知框架，或者重载UI来生效"
  L.General_MiscHeader					= "杂项"
  L.General_GlobalOpacity				= "全局不透明度切换"
  L.General_GlobalOpacityTip		= "在此启用或使用快捷键启用，将暂时覆盖所有框架透明度的独立设置，并使所有框架可见。禁用时，各框架使用独立的不透明度设置。"
  L.General_ModeChange					= "键盘/手柄模式切换重载"
  L.General_ModeChangeTip				= "当切换键盘和手柄模式时自动重载UI。切换操作模式时，Azurah需要重载UI才可正常工作。"
  L.General_ATrackerDisable			= "禁用活动查找追踪"
  L.General_ATrackerDisableTip	= "禁用地下城和战场等活动的查找情况显示"

-- settings: attributes tab (2)
  L.AttributesFadeMin						= "可见性: 当满时"
  L.AttributesFadeMinTip				= "当该属性条为满时，设置其不透明度。100%为完全可见，0%为隐藏\n\n默认UI设置：0%."
  L.AttributesFadeMax						= "可见性: 当不满时"
  L.AttributesFadeMaxTip				= "当该属性条不满时，设置其不透明度。100%为完全可见，0%为隐藏\n\n默认UI设置：100%."
  L.AttributesLockSize					= "锁定属性尺寸"
  L.AttributesLockSizeTip				= "启用后锁定属性条，使受到血量奖励等情况下属性条的尺寸不变\n\n默认UI设置：关"
  L.AttributesCombatBars				= "可见性: 战斗中"
  L.AttributesCombatBarsTip			= "战斗中总是使用 '当不满时' 的可见性设置"
  L.AttributesOverlayHealth			= "文本: 生命值"
  L.AttributesOverlayMagicka		= "文本: 法力值"
  L.AttributesOverlayStamina		= "文本: 耐力值"
  L.AttributesOverlayFormatTip	= "设置如何为该属性条显示文本。\n\n默认UI设置为：不显示。"

-- settings: target tab (3)
  L.TargetLockSize						  = "锁定目标条尺寸"
  L.TargetLockSizeTip						= "启用后锁定目标条，使其受到血量奖励等情况下目标条的尺寸不变\n\n默认UI设置：关"
  L.TargetRPName							  = "隐藏目标框架中的 @账户名"
  L.TargetRPNameTip						  = "隐藏目标框架中的 @账户名 部分\r\n注意: 但你在设置中选择优先显示账户名时，该选项实际会隐藏 角色名 部分"
  L.TargetRPTitle							  = "隐藏目标框架中的 称号"
  L.TargetRPTitleTip						= "隐藏目标框架中的玩家称号"
  L.TargetRPTitleWarn						= "需要重载UI"
  L.TargetRPInteract						= "隐藏玩家互动中的 @账户名"
  L.TargetRPInteractTip					= "隐藏玩家互动框架中的 @账户名 部分\r\n注意: 但你在设置中选择优先显示账户名时，该选项实际会隐藏 角色名 部分"
  L.TargetColourByBar						= "目标生命条 颜色"
  L.TargetColourByBarTip				= "启用后，根据目标类型或等级，改变其生命条颜色"
  L.TargetColourByName					= "目标名称 颜色"
  L.TargetColourByNameTip				= "启用后，根据目标类型或等级，改变其名称颜色"
  L.TargetColourByLevel					= "目标等级 颜色"
  L.TargetColourByLevelTip			= "启用后，根据目标等级高级，改变其等级数值的颜色"
  L.TargetIconClassShow					= "显示目标玩家的职业标志"
  L.TargetIconClassShowTip			= "启用后在目标血条左侧显示职业标志"
  L.TargetIconClassByName				= "将职业标志显示在玩家名称左侧"
  L.TargetIconClassByNameTip		= "将职业标志移动到玩家名称左侧显示。需要先启用上一条选项"
  L.TargetIconAllianceShow			= "显示目标玩家的联盟"
  L.TargetIconAllianceShowTip		= "启用后在目标血条右侧显示所属联盟"
  L.TargetIconAllianceByName		= "将联盟标志显示在玩家名称右侧"
  L.TargetIconAllianceByNameTip	= "将联盟标志移动到玩家名称右侧显示。需要先启用上一条选项"
  L.TargetOverlayFormatTip			= "设置目标框架中生命值文本的显示形式\n\n默认UI设置：不显示"
  L.BossbarHeader							  = "Boss条设置"
  L.BossbarOverlayFormatTip			= "设置Boss框架中生命值文本的显示形式。Boss将会显示所有活动中boss的生命值总量\n\n默认UI设置：不显示"

-- settings: action bar tab (4)
  L.ActionBarHideBindBG			          		= "隐藏快捷键背景"
  L.ActionBarHideBindBGTip	          		= "启用时，隐藏技能栏快捷键的黑色背景"
  L.ActionBarHideBindText			          	= "隐藏快捷键文本"
  L.ActionBarHideBindTextTip		          = "启用时，隐藏技能栏下方的快捷键文本"
  L.ActionBarHideWeaponSwap			          = "隐藏切手图标"
  L.ActionBarHideWeaponSwapTip           	= "启用时，隐藏技能栏与快捷栏之间的切手图标"
  L.ActionBarBlockMageLight			          = "禁用 法师之光"
  L.ActionBarBlockMageLightTip	          = "启用时，禁止发动法师之光及其变形，也可以添加快捷键来切换该设置"
  L.ActionBarBlockExpertHunter	          = "禁用 专家猎手"
  L.ActionBarBlockExpertHunterTip	      	= "启用时，禁止发动专家猎手及其变形，也可以添加快捷键来切换该设置"
  L.ActionBarBlockedWarning			          = "显示禁用警告"
  L.ActionBarBlockedWarningTip	          = "当上述技能被Azurah阻止时，在聊天栏输出消息"
  L.ActionBarOverlayShow				          = "显示文本"
  L.ActionBarOverlayUltValue		          = "文本: 终极点 (数值)"
  L.ActionBarOverlayUltValueShowTip	      = "启用后，在终极技上显示当前终极点文本"
  L.ActionBarOverlayUltValueShowCost		  = "显示终极技消耗"
  L.ActionBarOverlayUltValueShowCostTip	  = "启用后，显示当前终极技的消耗"
  L.ActionBarOverlayUltPercent			      = "文本: 终极点 (百分比)"
  L.ActionBarOverlayUltPercentShowTip		  = "启用后，在终极技上显示当前终极点百分比"
  L.ActionBarOverlayUltPercentRelative	  = "显示相对百分比"
  L.ActionBarOverlayUltPercentRelativeTip	= "启用后，显示相对于当前终极技消耗的百分比，而不是相对于500终极点上限"
  L.ActionBarOverlayUltPercentCap			    = "显示不超过100%"
  L.ActionBarOverlayUltPercentCapTip		  = "当显示相对百分比时，不要使其数值显示超过100%"

-- settings: experience bar tab (5)
  L.ExperienceDisplayStyle				= "何时显示"
  L.ExperienceDisplayStyleTip			= "选择何时显示经验条\n\n注意: 即使选择总是显示, 制作或大地图中经验条还是会被隐藏"
  L.ExperienceOverlayFormatTip		= "选择如何为经验条显示文本\n\n默认UI设置：不显示"

-- settings: compass tab (6)
  L.CompassEnabled					    	= "启用罗盘"
  L.CompassEnabledTip					  	= "显示或隐藏罗盘，也可设置快捷键来切换该设置"
  L.CompassLabelScale					  	= "罗盘标签尺寸"
  L.CompassLabelScaleTip					= "设置罗盘标签的文本尺寸"
  L.CompassLabelPosition					= "罗盘标签位置"
  L.CompassLabelPositionTip				= "上下调节罗盘标签的位置"
  L.CompassWidth							    = "罗盘宽度"
  L.CompassWidthTip						    = "修改罗盘的宽度，默认为800。与标签尺寸互为独立设置"
  L.CompassHeight							    = "罗盘高度"
  L.CompassHeightTip					  	= "修改罗盘的高度，默认为39。与标签尺寸互为独立设置"
  L.CompassOpacity					    	= "罗盘不透明度"
  L.CompassOpacityTip					  	= "修改罗盘的不透明度，默认为100。"
  L.CompassHideBar					    	= "隐藏罗盘背景条"
  L.CompassHideBarTip					  	= "隐藏罗盘的背景材质"
  L.CompassPinLabel						    = "隐藏标签文本"
  L.CompassPinLabelTip				  	= "隐藏罗盘标签下方的文字\n\n默认UI设置：关"
  L.CompassReset							    = "重置罗盘"
  L.CompassResetTip1						  = "将罗盘重置为默认状态"
  L.CompassResetTip2					  	= "注意: Azurah对罗盘的修改兼容 Harvest Map 插件"
  L.CompassResetWarn					  	= "这将自动重载UI"

-- settings: thievery tab (7)
  L.Thievery_TheftBlocked				  	= "|c67b1e9A|c4779cezurah|r - 偷盗行为因你的设置被阻止"
  L.Thievery_TheftPrevent				  	= "阻止意外偷盗地图物品"
  L.Thievery_TheftPreventTip		  	= "启用后，阻止偷盗地图物品，包含各种武器、食物、饮品等\n\n注意此设置无法阻止偷盗容器物品"
  L.Thievery_TheftSafer				  	  = "更安全得偷盗地图物品"
  L.Thievery_TheftSaferTip			  	= "启用后，仅在完全潜行时可以偷盗地图物品\n\n注意此设置无法阻止偷盗容器物品"
  L.Thievery_CTheftSafer				  	= "更安全得偷盗容器物品"
  L.Thievery_CTheftSaferTip			  	= "启用后，仅在完全潜行时可以偷盗容器物品"
  L.Thievery_PTheftSafer				  	= "更安全得撬锁"
  L.Thievery_PTheftSaferTip				  = "启用后，仅在完全潜行时可以进行撬锁动作"
  L.Thievery_TheftSaferWarn				  = "此为技术性作弊!"
  L.Thievery_TheftAnnounceBlock			= "当偷盗行为被阻止时发送信息"
  L.Thievery_TheftAnnounceBlockTip	= "启用后，当偷盗行为被以上设置所阻止，在聊天栏发布信息"

-- settings: bag watcher tab (8)
  L.Bag_Desc							      	= "Azurah将创建一个背包容量条（外观类似于经验条）。其会在背包物品变化，或背包即将装满时显示"
  L.Bag_Enable						      	= "启用背包监视"
  L.Bag_ReverseAlignment					= "反转容量条的对齐方向"
  L.Bag_ReverseAlignmentTip				= "启用后，将容量条的增长方向以及图标位置反转"
  L.Bag_LowSpaceLock					  	= "低容量时始终显示"
  L.Bag_LowSpaceLockTip				  	= "启用后，背包低容量时将始终显示容量条"
  L.Bag_LowSpaceTrigger				  	= "低容量阈值"
  L.Bag_LowSpaceTriggerTip				= "设置多少格空间以下为背包低容量状态"

-- settings: werewolf tab (9)
  L.Werewolf_Desc						    	= "狼人计时器是一个单独可移动的窗口，其可显示变形剩余时间。初始被放置在终极技右侧"
  L.Werewolf_Enable					    	= "启用狼人计时器"
  L.Werewolf_Flash					    	= "计时延长时提示"
  L.Werewolf_FlashTip					  	= "启用后，当你的剩余变形时间延长时，计时器图标将短暂闪烁"
  L.Werewolf_IconOnRight					= "在右侧显示图标"
  L.Werewolf_IconOnRightTip				= "启用后，将在计时器右侧显示图标，而不是左侧"

-- settings: profiles tab (10)
  L.Profile_Desc						    	= "需要先打开当前页面最底部的配置文件管理选项，才可修改全局配置等设置内容。"
  L.Profile_UseGlobal					   	= "切换为使用全局配置"
  L.Profile_UseGlobalWarn					= "切换使用当前角色配置或全局配置，将会重载UI"
  L.Profile_Copy						      = "选择一份配置文件覆盖当前配置"
  L.Profile_CopyTip						    = "选择一份配置文件，并将其内容覆盖至当前活动的配置文件（角色配置或全局配置，依据你的设置）\n\n该操作无法撤销！"
  L.Profile_CopyButton				  	= "复制并覆盖当前配置"
  L.Profile_CopyButtonWarn				= "该操作会重载UI"
  L.Profile_Delete						    = "选择删除一份配置文件"
  L.Profile_DeleteTip					  	= "删除一份配置文件。如果那个角色在之后登陆，且没有使用全局配置，将会创建一份新的默认配置\n\n该操作无法撤销！"
  L.Profile_DeleteButton					= "删除配置文件"
  L.Profile_Guard						    	= "启用配置文件管理"

-- settings: edit frames tab (11)
  L.EditFrame_Select						  = "选择要修改的框架："
  L.EditFrame_Opacity					  	= "框架不透明度"
  L.EditFrame_OpacityTip					= "设置该框架的不透明程度"
  L.EditFrame_CombatOpt				  	= "战斗中设置"
  L.EditFrame_CombatOptTip				= "为该框架调整战斗状态下的设置"
  L.EditFrame_OpacityC				  	= "战斗中不透明度"
  L.EditFrame_OpacityCTip					= "设置该框架在战斗中的不透明程度"
  
  --Special Setting
  local function Fun()
    local OldL = Azurah.GetLocale()
    L = BB.TableCopy(L, OldL)
    Azurah.GetLocale = function() return L end
  end
  
  BB.SetGlobalHook(function() Fun() end, "Azurah", "GetDefaults")

end end

BB.AddonList["Azurah"] = function() 
  if not Azurah then return false end
  return true 
end