local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["CarosSkillPointSaver"] = function() if not CSPS then return false end
  --\lang\en.lua
  local L = {}
  
	L.SI_BINDING_NAME_CSPS_SHOW = "显示 Skill Point Saver"
	L.SI_BINDING_NAME_CSPS_CPHK1 = "CP栏预设 热键 1"
	L.SI_BINDING_NAME_CSPS_CPHK2 = "CP栏预设 热键 2"
	L.SI_BINDING_NAME_CSPS_CPHK3 = "CP栏预设 热键 3"
	L.SI_BINDING_NAME_CSPS_CPHK4 = "CP栏预设 热键 4"
	L.SI_BINDING_NAME_CSPS_CPHK5 = "CP栏预设 热键 5"
	L.SI_BINDING_NAME_CSPS_CPHK6 = "CP栏预设 热键 6"
	L.SI_BINDING_NAME_CSPS_CPHK7 = "CP栏预设 热键 7"
	L.SI_BINDING_NAME_CSPS_CPHK8 = "CP栏预设 热键 8"
	L.SI_BINDING_NAME_CSPS_CPHK9 = "CP栏预设 热键 9"
	L.SI_BINDING_NAME_CSPS_CPHK10 = "CP栏预设 热键 10"
	L.SI_BINDING_NAME_CSPS_CPHK11 = "CP栏预设 热键 11"
	L.SI_BINDING_NAME_CSPS_CPHK12 = "CP栏预设 热键 12"
	L.SI_BINDING_NAME_CSPS_CPHK13 = "CP栏预设 热键 13"
	L.SI_BINDING_NAME_CSPS_CPHK14 = "CP栏预设 热键 14"
	L.SI_BINDING_NAME_CSPS_CPHK15 = "CP栏预设 热键 15"
	L.SI_BINDING_NAME_CSPS_CPHK16 = "CP栏预设 热键 16"
	L.SI_BINDING_NAME_CSPS_CPHK17 = "CP栏预设 热键 17"
	L.SI_BINDING_NAME_CSPS_CPHK18 = "CP栏预设 热键 18"
	L.SI_BINDING_NAME_CSPS_CPHK19 = "CP栏预设 热键 19"
	L.SI_BINDING_NAME_CSPS_CPHK20 = "CP栏预设 热键 20"
	
	-- General UI
	L.CSPS_MyWindowTitle = "Caro's Skill Point Saver"
	
	L.CSPS_Tooltiptext_Close = "关闭窗口"
	L.CSPS_Tooltiptext_Read = "读取当前数据"
	L.CSPS_Tooltiptext_Save = "保存显示的数据"
	L.CSPS_Tooltiptext_Load = "加载保存的数据"
	L.CSPS_Tooltiptext_Apply = "应用冠军点数"
	L.CSPS_Tooltiptext_Help = "帮助!"
	L.CSPS_Tooltiptext_CP1 = "你想要应用蓝CP吗？"
	L.CSPS_Tooltiptext_CP2 = "你想要应用红CP吗？"
	L.CSPS_Tooltiptext_CP3 = "你想要应用绿CP吗？"
	
	L.CSPS_Tooltiptext_ApplyCP = "应用冠军点数"
	L.CSPS_Tooltiptext_ATTR = "应用属性点数"
	L.CSPS_Tooltiptext_Sk = "应用技能点数"
	
	L.CSPS_Tooltiptext_MinusSk = "降级/删除 此技能"
	L.CSPS_Tooltiptext_PlusSk = "升级/添加 此技能"
	L.CSPS_Tooltiptext_Optional = "显示额外选项"
	L.CSPS_Tooltiptext_SkIcon = "拖动技能，将其装备在热键栏上"
	L.CSPS_Tooltiptext_SrcCombo	 = "选择导入/导出格式"
	L.CSPS_Tooltiptext_AddProfile = "添加预设..."
	L.CSPS_Tooltiptext_RenameProfile = "重命名预设..."
	L.CSPS_Tooltiptext_DeleteProfile = "删除预设..."
	L.CSPS_Tooltiptext_ProfileCombo = "选择一个配置文件以加载/保存数据..."
	L.CSPS_Tooltiptext_MinusSkType = "删除该类型的所有技能"
	L.CSPS_Tooltiptext_MinusSkLine = "删除此技能线中的所有技能"
	L.CSPS_Tooltiptext_PlusSkLine = "添加所有被动技能，并将其设置为最高等级"
	L.CSPS_Tooltiptext_MinusAttr = "移除属性点（按住 %s 为 10 点）"
	L.CSPS_Tooltiptext_PlusAttr = "添加属性点（按住 %s 为 10 点）"
	L.CSPS_Tooltiptext_SaveProfile = "保存预设..."
	L.CSPS_Tooltiptext_CPProfile = "CP 预设" -- also used for the profile-section title
	L.CSPS_Tooltiptext_PlusCP = "添加CP点 (按住 %s 为 10 点 / 下一阶段)"
	L.CSPS_Tooltiptext_MinusCP = "移除CP点 (按住 %s 为 10 点 / 下一阶段)"
	L.CSPS_Tooltiptext_CpHbHk = "点击改变该预设的热键"
	L.CSPS_Tooltip_CPBar = "从列表中拖放一个技能到这里。右键单击可移除已装备的技能。"
	L.CSPS_Tooltip_CPPUpdate = "上次更新: <<1>>/<<2>>/<<3>>"
	L.CSPS_Tooltip_CPPWebsite = "如需了解最新信息，请访问\n<<1>>"
	L.CSPS_Tooltip_CPCustomBar = "切换 HUD中是否显示 CP装备栏"
	L.CSPS_Tooltip_CPCustomIcons = "切换 插件是否为装备的CP使用自定义图标"
	
	L.CSPS_Tooltip_ReverseLabel = "导入文本的标准顺序：编号 名称\n点击颠倒顺序为：名称 编号"
	L.CSPS_Tooltip_CapLabel = "激活时，插件将不会尝试导入超过该账户可用点数的CP"
	L.CSPS_Tooltip_SelectBarProfile = "|t26:26:esoui/art/miscellaneous/icon_lmb.dds|t: 选择 子预设 (%s)\n|t26:26:esoui/art/miscellaneous/icon_rmb.dds|t: 编辑 子预设" 
	L.CSPS_Tooltip_ImpExp_CleanUp = "这将删除文本中的所有特殊字符。它还将删除所有以破折号分隔的数字对，这些数字对可用于表示所需的冠军点范围（如在 AlcastHQ 上），但会在导入过程中导致错误。"
	
	L.CSPS_Tooltip_AddBind1 = "如果添加了此条件，每次加载所选 dressing room 设置时，都会自动应用当前组"
	L.CSPS_Tooltip_AddBind2 = "如果添加了此条件，每次加载所选 alpha gear 设置时，都会自动应用当前组"
	L.CSPS_Tooltip_AddBind3 = "如果添加了此条件，每次进入所选区域时，都会自动应用当前组"
	
	L.CSPS_Tooltip_CPAutoOpen = "勾选时，插件会在每次你进入CP窗口时显示"
	
	L.CSPS_Tooltiptext_DeleteBinding = "去除绑定"
	
	L.CSPS_Tooltip_AddConnection = "链接到当前预设"
	L.CSPS_Tooltip_RemoveConnection = "移除与当前预设的链接"
	L.CSPS_Tooltip_ShowConnection = "链接到子预设: %s\n\n 对该规范所做的更改可以应用到你的角色，但不会保存到当前的预设中。加载构建会自动尝试加载链接的子预设.\n\n|t26:26:esoui/art/miscellaneous/icon_rmb.dds|t: 移除链接"
  
  L.CSPS_Tooltip_DynamicProfile = "动态配置应从空白开始。每次保存时并非覆盖，而是将修改过的点数追加到配置中。加载一个动态配置时，CSPS将会按照保存的顺序逐步分配点数，直到点数上限。这种方式可以让你在升级过程中持续规划点数分配。"
	
	L.CSPS_Tooltiptext_LoadAndApply = "加载并应用"
	L.CSPS_MORPH = "<<1[无变形/变形 1/变形 $d]>>"
	L.CSPS_MyRank = "等级 %s"
	
	L.CSPS_CP_RED = "红CP"
	L.CSPS_CP_BLUE = "蓝CP"
	L.CSPS_CP_GREEN = "绿CP"
	
	L.CSPS_TxtCp = "CP"	-- shortest form for champion points
	
	--	Errormessages (chat)
	L.CSPS_NoSavedData = "尚无保存的数据"
	L.CSPS_TxtLangDiff = "游戏语言已更改。迁移按字母顺序排列的技能类型数据。"
	L.CSPS_Txt_NewProfile = "预设 " -- for numbered names
	L.CSPS_Txt_NewProfile2 = "新预设" -- for unnumbered names
	L.CSPS_Txt_StandardProfile = "标准"
	
	L.CSPS_CPP_Name = "名称"
	L.CSPS_CPP_Points = "点数"
	L.CSPS_CPP_Role = "角色"
	L.CSPS_CPP_Source = "来源"
	L.CSPS_CPP_Hotkey = "热键"
	L.CSPS_CPP_BtnCustAcc = "自定义\n(账户)"
	L.CSPS_CPP_BtnCustChar = "自定义\n(角色)"
	L.CSPS_CPP_BtnImportText = "从文本导入"
	L.CSPS_CPP_BtnPresets = "预设"
	L.CSPS_CPP_BtnHotBar = "仅限热区栏"
	L.CSPS_CPApplied = "CP成功应用"
	L.CSPS_CPNoChanges = "无需更改CP"
	L.CSPS_CPBar_GroupHeading = "当前组: %s/%s"
	L.CSPS_CPBar_GroupKeybind = "当前键位: %s"
	L.CSPS_Manage_Connections = "管理绑定"
	L.CSPS_CPLoadGroup = "加载组: "
	L.CSPS_CPOldPreset = "连接到已加载预案的 CP 预置会被标记为过时。您仍然可以使用这些预置，但建议切换到一些较新的可用预设"
	L.CSPS_BuildProfile = "建立预设"
  L.CSPS_IgnoreSubClasses = "无视副职业"
  L.CSPS_LAM_ShowAllClassSkills = "显示并编辑所有职业技能"
	L.CSPS_LAM_ShowAllClassSkillsTT = "启用后，你可以修改并保存未启用职业线中的技能"
	
	L.CSPS_CPValueTooHigh = "数值高于该技能的最大值"
	
	L.CSPS_CPPDescr_JoaTFarming = "该预置经过优化，可与插件 'Jack of all Trades' 一起使用，并侧重于采集资源（战斗、捕鱼和犯罪将在更高的CP等级添加）"
	L.CSPS_CPPDescr_JoaTFishing = "该预设经过优化，可与插件 ‘Jack of all Trades' 一起使用，并侧重于捕鱼（采集、战斗和犯罪将在更高的CP等级添加）"
	L.CSPS_CPPDescr_JoaTThieving = "该预设经过优化，可与插件 ‘Jack of all Trades' 一起使用，并侧重于犯罪（采集、战斗、捕鱼将在更高的CP等级添加）"
	L.CSPS_CPPDescr_CombatFocus = "该预置侧重于与战斗相关的绿色CP"
	
	L.CSPS_StrictOrder = "严格秩序"
	L.CSPS_Tooltiptext_StrictOrder = "启用时，插件在第一个技能点数不足时停止加载预设，而不是检查是否可以加载其余技能。选择此选项可能会增加未使用的点数，但可能会节省 3000 金币的重置费。"
	L.CSPS_CPPCurrentlyApplied = "目前应用:  <<1[无点数/1 点数/$d 点数]>>"
		
	L.CSPS_MSG_ApplyClosing = "CP系统中似乎有未应用的更改。请确保没有忘记应用它们。"
	
	L.CSPS_CPBar_LocTrial = "试炼 / 竞技场"
	L.CSPS_CPBar_LocCurr = "当前区域"
	L.CSPS_CPBar_LocType = "按种类"
	L.CSPS_CPBar_Location = "区域"
	
	L.CSPS_CPBar_AddBindings = "为该组添加自动应用的条件..."
	L.CSPS_CPBar_BindingsHeader = "该组的现有条件："
	L.CSPS_Bindings_Empty = "清空组"
	L.CSPS_Binding_Overwritten = "被改写: 组 %s (%s)"
	L.CSPS_Binding_Conflict = " 与组的现有绑定冲突 %s.\n|t26:26:esoui/art/miscellaneous/icon_rmb.dds|t: 去除现有的绑定"
	
	L.CSPS_CPBar_EditProfiles = "编辑预设"
	L.CSPS_CPBar_Apply = "加载并应用该组..."
	L.CSPS_CPBar_NoDR = "您要么没有安装 <<1>>，要么您使用的版本现在不支持"

	L.CSPS_QS_ApplyWait = "应用热区栏：%s（等待时间：%s）"
	L.CSPS_QS_TT_Edit = "|t26:26:esoui/art/miscellaneous/icon_rmb.dds|t: 改变"
	L.CSPS_QS_TT_Select = "|t26:26:esoui/art/miscellaneous/icon_lmb.dds|t: 选择"
	L.CSPS_QS_TT_TestIt = "|t26:26:esoui/art/miscellaneous/icon_rmb.dds|t: 立即行动"
	L.CSPS_SubProfiles_Edit = "编辑子预设"
	
	L.CSPS_Help_Oversection1 = "常规功能"
	L.CSPS_Help_Head1 = "保存数据"
	L.CSPS_Help_Sect1 = " 1. 点击 '读取当前数据'(|t24:24:esoui/art/help/help_tabicon_feedback_up.dds|t).\n2. 可选择点击技能旁的加/减号来调整技能（稍后您还可以编辑技能）\n3. 点击 '保存显示的数据'(|t24:24:esoui/art/mail/mail_tabicon_compose_up.dds|t)\n会保存所有技能、属性点、CP、快捷栏和装备(需要LibSets)"
	L.CSPS_Help_Head2 = "加载已保存的数据"
	L.CSPS_Help_Sect2 = "1. 点击 '加载保存的数据' (|t24:24:esoui/art/mail/mail_tabicon_inbox_up.dds|t)\n2. 的加减号来调整技能。\n3.  点击每个部分上方或右侧的一个应用按钮 (|t24:24:esoui/art/buttons/accept_up.dds|t)，应用您的技能、属性等\n您所选的数据已应用\n应用技能时，请注意必须单独应用您的热栏。请确保您的热栏显示在插件底部。如果没有，请单击 '选项'（右上角 |t24:24:esoui/art/skillsadvisor/advisor_tabicon_settings_up.dds|t）并启用热栏。然后点击插件底部的 '应用'（|t24:24:esoui/art/buttons/accept_up.dds|t）。"
	L.CSPS_Help_Head3 = "创建预设"
	L.CSPS_Help_Sect3 = "您可以将所有数据（技能、属性和CP）保存到不同的预设中\n1. 通过插件窗口左上角的下拉菜单选择现有预设，或点击旁边的加号按钮创建新预设\n 除标准配置文件外，您还可以重命名或删除所有已创建的预设(|t24:24:esoui/art/buttons/edit_up.dds|t, |t24:24:esoui/art/buttons/minus_up.dds|t) \n3. 为了使保存的数据尽可能少，建议只将应用时实际需要更改的技能保存到预设中。使用相应的减号按钮可从预设中删除整行技能。\n4. 完成编辑后，别忘了保存预设(|t24:24:esoui/art/mail/mail_tabicon_compose_up.dds|t)"
	L.CSPS_Help_Head4 = "应用 预设/重置"
	L.CSPS_Help_Sect4 = "要应用技能点或属性点预设，首先要在神龛花费金币来进入技能或属性重置\n在大多数情况下，重置变形就足够了。保持在重置模式下应用更改。完成后在 eso 技能窗口中确认更改。请注意，只要游戏仍处于重置模式且尚未确认更改，插件就会将您的更改视为冲突。另外，您也可以在应用预设前在军械库中使用空栏。请注意，插件无法更改您的装备"
	L.CSPS_Help_Head5 = "自定义CP图标"
	L.CSPS_Help_Sect5 = "为了使冠军插槽更容易区分，插件可以为每个可插槽技能使用不同的图标。点击 '选项'（右上角，|t24:24:esoui/art/skillsadvisor/advisor_tabicon_settings_up.dds|t）并激活 '自定义 CP 图标' 选框"
	L.CSPS_Help_Head6 = "独立CP栏"
	L.CSPS_Help_Sect6 = "该插件可以在单独的条形图中显示您已插槽的冠军技能，作为游戏内覆盖的一部分，帮助您跟踪当前激活的技能。 点击 '选项'（右上角，|t24:24:esoui/art/skillsadvisor/advisor_tabicon_settings_up.dds|t）并激活 '独立 CP 栏' 选框。还可选择是否将插槽显示在一行（1x12）、三行（3x4）或只显示当前CP技能树(1x4)"
	L.CSPS_Help_Oversection7 = "子预设"
	L.CSPS_Help_Head7 = "常规子预设"
	L.CSPS_Help_Sect7 = "您可以选择为技能、快捷栏或CP等构建的不同方面创建单独的子预设 \n1. 根据要保存的规范，点击右上角的按钮之一(|t24:24:esoui/art/champion/champion_points_magicka_icon-hud-32. dds|t，|t24:24:esoui/art/champion/champion_points_health_icon-hud-32.dds|t，|t24:24:esoui/art/champion/champion_points_stamina_icon-hud-32.dds|t ...)\n2. 选择只为当前角色保存子预设，还是让整个账户都能使用\n3. 对于CP，您也可以加载插件中的预设，而不用创建自己的预设" 
	L.CSPS_Help_Head8 = "自动化(绑定组)" 
	L.CSPS_Help_Sect8 = "您可以创建绑定组，通过按键绑定或自动加载，包括CP热区栏和/或快捷键预设。您也可以加载完整的构建预设，但不建议这样做，因为应用完整预设可能会消耗金币或根本无法运行。插件仅在设置中激活时启用该功能。您最多可以定义 20 个全账户组和 20 个基于角色的组。每个组都可以通过控制设置分配一个绑定键位。如果存在具有相同按键绑定的全账户组和基于角色的组，插件将始终加载基于角色的组。"
	L.CSPS_Help_Head9 = "设置绑定组"
	L.CSPS_Help_Sect9 = "1.  要设置自动化，请单击 '选项' (|t24:24:esoui/art/skillsadvisor/advisor_tabicon_settings_up.dds|t)\n2. 点击 '管理绑定'.\n3. 使用顶部的箭头 |t24:24:esoui/art/buttons/large_leftarrow_up.dds|t 和 |t24:24:esoui/art/buttons/large_rightarrow_up.dds|t 选择组 \n4. 现在可以通过已定义的绑定键位或以下章节介绍的自动选项加载和应用所选的子预设"
	L.CSPS_Help_Head10 = "绑定到区域"
	L.CSPS_Help_Sect10 = "在绑定管理器中，您可以选择是否在进入特定位置（如特定试验或竞技场）后应用绑定组 \n1. 点击 '区域' \n2. 选择当前组应自动应用的区域 \n3. 现在，每次进入所选区域时，插件都会加载选定预设"
	L.CSPS_Help_Head11 = "Dressing Room / Alpha Gear / Wizard's Wardrobe"
	L.CSPS_Help_Sect11 = "您还可以使用绑定管理器将绑定组绑定到Dressing Room、Alpha Gear或Wizard's Wardrobe \n1. 点击 'DR', 'AG' 或 'WW'.\n2. 选择技能或装备配置绑定至CP栏预设\n3. 现在，每次通过Dressing Room、Alpha Gear或Wizard's Wardrobe 装备所选装备/技能时，绑定组也会应用"
	L.CSPS_Help_Oversection12 = "导入/\n导出"
	L.CSPS_Help_Head12 = "常规导入/导出"
	L.CSPS_Help_Sect12 = "1. 点击 '设置' (|t24:24:esoui/art/skillsadvisor/advisor_tabicon_settings_up.dds|t)\n2. 点击 '导入/导出'，打开导入/导出窗口 \n3. 使用右上角的下拉菜单选择要导入和/或导出的数据和格式 \n4. 根据所选格式的不同，您现在有不同的选择 \n5. 要导入数据，首先要将其复制到剪贴板，然后粘贴到导入文本字段 (Ctrl+V)。"
	L.CSPS_Help_Head13 = "基于文本的CP导入 (1/3)"
	L.CSPS_Help_Sect13 = "1. 对于该选项，首先要选择要导入的CP规范 \n2. 导入文本应包含CP技能的英文名称和相应数值 \n3. 标准格式是数字形式的数值，然后是技能名称（例如 '10 Tireless Discipline' 或 '(10) → Tireless Discipline')。您可以点击页面底部的选框来切换顺序。请注意，文本中实际的冠军点数旁不应包含任何数字"
	L.CSPS_Help_Head14 = "基于文本的CP导入 (2/3)"
	L.CSPS_Help_Sect14 = "4. 如果文本中包含可插槽的CP技能，插件将从顶部开始应用这些技能。如果您只想让某些技能插槽，请在文本中使用附加关键字 'slot'(必须放在名称旁边，而不是数值旁边)标记它们。\n5. 如果插件无法识别一个或多个技能名称，您可以从列表中手动选择。在分配或放弃所有值之前，该过程不会结束"
	L.CSPS_Help_Head15 = "基于文本的CP导入 (3/3)"
	L.CSPS_Help_Sect15 = "如果文本中包含同一冠军技能的多个值，则只会导入最后一个值。点击导入按钮的同时按住 shift 键，即可将这些值相加 \n使用右键单击可创建动态预设，另外按住 Ctrl 键可使其覆盖整个帐户。动态预设中保存的CP将从上到下依次应用，直到达到当前可用CP点数的上限"
	L.CSPS_Help_Head16 = "手把手 从 AlcastHQ 或 JustLootIt 导入"
	L.CSPS_Help_Sect16 = "1. 点击右上角的蓝色、红色或绿色 CP 图标(取决于您希望导入的 CP 颜色) \n2. 点击 '从文本导入'(Ctrl+V) \n3. 将网站上的文本粘贴到导入文本字段中 \n4. 确保 'slot'一词只出现在你真正想要插槽的CP技能后面 \n5. 点击右下角的 '清理文本' \n6. 选中 '顺序颠倒' 选框(因为 AlcastHQ 和 JustLootIt 都是先列出名称，再列出数值) \n7. 点击 '导入文本' \n8. 点数现已加载到插件中。现在，您可以点击 '自定义(账户)'或 '自定义(角色)'，然后点击这些按钮下方的加号按钮，将它们保存到新预设，或者点击 CP 预设部分下方的应用按钮来应用它们"

	-- Dialogs
	L.CSPS_MSG_ConfirmSave = "真的要将显示的数据保存为预设'<<1>>'？这会覆盖现有数据 <<2>>"
	L.CSPS_MSG_ConfirmApply = "可用技能点: %s\n实际需要的技能点: %s\n\n冲突: %s\n尚未解锁: %s\n已处于另一变形: %s\n已经为更高等级: %s\n变形/等级尚未解锁: %s\n\n应用这些技能点？"
	L.CSPS_MSG_ConfirmApplyTitle = "CSPS - 技能点"
	L.CSPS_MSG_ConfirmAttrTitle = "CSPS - 属性点"
	L.CSPS_MSG_ConfirmAttr = "需要的属性点: <<1>>\n可用属性点: <<2>>\n应用这些属性点?"
	L.CSPS_MSG_ConfirmAttr1 = "无法应用属性点; 可用属性点不足。请先重置旧属性"
	L.CSPS_MSG_ConfirmAttr2 = "无法应用属性点; 至少一种属性比预设值要高。 请先重置旧属性"	
	L.CSPS_MSG_RenameProfile = "为预设选择新名称 '<<1>>':<<2>>"
	L.CSPS_MSG_DeleteProfile = "确定删除预设 '<<1>>'?<<2>><<3>>"
	L.CSPS_MSG_DeleteProfileStan =  "标准预设将被加载"
	L.CSPS_MSG__ChangeProfile = "预设 '<<1>>' 可能存在未保存修改。你确定要加载预设 '<<2>>'?<<3>>"
	L.CSPS_MSG_DeleteSkillType = "你确定要从预设中移除所有 '<<1>>' 技能？" -- <<1>> can either be a skill type or a skill line 
	L.CSPS_MSG_CpPurchTitle = "应用CP点数..."
	L.CSPS_MSG_CpPurchChosen = "需求的点数: "
	L.CSPS_MSG_CpPurchCost = "花费: <<1>>|t28:28:esoui/art/loot/icon_goldcoin_pressed.dds|t" -- the cost and a coin-icon
	L.CSPS_MSG_CpPurchNow = "确定现在应用选择的CP点数？"
	L.CSPS_MSG_CpPurchFailed = "应用CP点数失败"
	L.CSPS_MSG_CpPurchSuccess = "成功应用CP点数"
	L.CSPS_MSG_CpPointsMissing = "CP点数不足 - 移除点数后重试"
	L.CSPS_MSG_Unslotted = "下列可插槽技能无法插槽："
	L.CSPS_MSG_NoCPProfiles = "\n\n|cff7723WARNING!|r\n这不是保存CP预设的最佳方法！如果您只想保存CP预设，请使用右上角的三个按钮打开CP预设部分。在那里，您可以找到用于创建和保存预设的单独按钮(|t28:28:esoui/art/champion/champion_points_magicka_icon-hud-32.dds|t, |t28:28:esoui/art/champion/champion_points_health_icon-hud-32.dds|t, |t28:28:esoui/art/champion/champion_points_stamina_icon-hud-32.dds|t)"
	L.CSPS_MSG_CPPaths = "最便宜的解锁路径 '<<C:1>>':\n\n<<2>>"
	L.CSPS_MSG_CPPathOpt = "|c<<1>>选项 <<2>> (<<3>>)|r:" -- 1 color 2 number 3 points
	
	--	Errorcodes
	L.CSPS_ErrorNumber1 = "技能已学习"
	L.CSPS_ErrorNumber2 = "技能已处于另一变形。请在尝试应用前重置技能或变形"
	L.CSPS_ErrorNumber3 = "技能的当前等级已经超过你尝试应用的"
	L.CSPS_LoadingError = "请检查技能: <<C:1>>"
	
	-- Options
	L.CSPS_KeepLastBuild = "在关闭时保留最后一次构建"
	L.CSPS_KeepLastBuildTT = "如果激活，在关闭窗口时，插件会始终将当前构建保存到一个不可见的配置文件中。下次启动游戏并打开插件时，该配置文件将被加载，这样您就可以继续之前的操作。如果未激活，插件将始终以当前应用的实际构建文件启动"
	L.CSPS_DeleteLastBuilds = "是否应该删除所有角色的临时预设？"
	L.CSPS_ShowHb = "显示热区栏"
	L.CSPS_AutoOpen = "自动打开..."
	L.CSPS_CPAutoOpen = "CP界面"
	L.CSPS_CPCustomBar = "单独CP栏"
	L.CSPS_CPCustomIcons = "自定义CP图标"
	L.CSPS_CPCustomBarLayout = "图层"
	L.CSPS_ArmoryAutoOpen = "军械库"
	L.CSPS_Tooltip_ArmoryAutoOpen = "选定时，使用军械库时显示插件"
	L.CSPS_SkillWindowAutoOpen = "技能界面"
	L.CSPS_StatsWindowAutoOpen = "角色界面"
	L.CSPS_BtnApplyAll = "全部应用"
	L.CSPS_ShowBtnApplyAll = "显示 '全部应用' 按钮"
	L.CSPS_ShowDateInProfileName = "在预设名中显示最后修改时间"
	L.CSPS_AcceptedLevelDifference = "接受等级差异"
	L.CSPS_AcceptedLevelDifferenceTooltip = "CSPS 只会在您的角色等级与物品等级之差小于所选值的情况下找到并装备装备"
	L.CSPS_RequiresLibSets = "该功能需要安装并激活 LibSets"
	L.CSPS_ShowGearMarkers = "显示库存标记"
	L.CSPS_ShowGearMarkersTooltip = "只有符合已保存预设的套装物品才会显示标记。更改后保存预设，以标记相应的套装物品"
	L.CSPS_ShowGearMarkerDataBased = "显示符合数据的物品"
	L.CSPS_ShowGearMarkerDataBasedTooltip = "如果物品是按其属性而非唯一ID 保存的，则插件可以标记符合数据的物品。否则，它只会标记保存为 '唯一'的物品"
	L.CSPS_SavedSpecific = "保存在: %s"
	L.CSPS_SavedData = "适用于: %s"
	
	L.CSPS_LAM_ShowCpPresetNotifications = "加载CP预设时通知"
	L.CSPS_LAM_ShowCpNotSaved = "CP技能变动尚未应用"
	L.CSPS_LAM_ShowSaveOther = "打开子预设部分时保存一般预设"
	L.CSPS_LAM_KB_Descr = "您可以将子预设组合成组，并通过热键应用。您可以定义 20 个全账户组和 20 个与当前角色绑定的组。您可以定义多达 20 个热键来快速加载和应用这些组。如果基于角色的组不为空，按下热键将加载该组。否则将加载具有相同编号的全账户组。您可以定义一个单独的键来强制插件加载整个账户的组，而不是基于角色的组"
	L.CSPS_LAM_KB_ShiftMode = "强制为热键加载全账户组而非基于角色的组"
	L.CSPS_LAM_ShowOutdatedPresets = "在预设列表中显示过时预置"
	L.CSPS_LAM_ShowBindBuild = "在绑定管理器中显示构建配置文件(请注意：在尝试加载需要应用神龛等的配置文件时，自动操作可能不起作用)"
	L.CSPS_LAM_JumpShiftKey = "键(调整属性/CP时以10为单位，或链接子预设)"
	L.CSPS_LAM_SortCP = "CP技能顺序"
	L.CSPS_LAM_SortCP_1 = "标准"
	L.CSPS_LAM_SortCP_2 = "按字母顺序"
	L.CSPS_LAM_SortCP_3 = "按字母顺序, 被动技能独立"
	L.CSPS_LAM_ShowNumSetItems = "在物品名称后显示有效套装物品的数量。如果武器是套装的一部分，编号将显示为（主手/副手）"
	L.CSPS_IgnoreEmptyOutfitSlots = "无视空置的外观装备栏"
  L.CSPS_LAM_VersionHistory = "预设历史版本数量"
	L.CSPS_LAM_VersionHistoryTT = "为一个预设保存多少个历史版本？修改会增大保存变量的文件大小"
	L.CSPS_LAM_BGAlpha = "背景透明度"
	L.CSPS_LAM_WinAlpha = "窗口透明度"
	L.CSPS_LAM_Modules = "已启用模块"
	
	L.CSPS_Dynamic = "动态"
	L.CSPS_Static = "常规/静态"
  
	-- Presets
	L.CSPS_MSG_SwitchCP = "将CP点投入 |c<<1>>'<<2>>'|r，而不是其他插槽技能，确保始终可能有收益"
	L.CSPS_MSG_SituationalCP = "根据情况，考虑用以下技能之一来代替插槽: "
	L.CSPS_CPP_Tank = "坦克"
	L.CSPS_AOE = "AOE伤害"
	L.CSPS_CRIT = "暴击伤害"
	L.CSPS_OffBalance = "失衡"
	
	-- Import/Export
	L.CSPS_ImpEx_BtnImpLink = "导入链接"
	L.CSPS_ImpEx_BtnImpText = "导入文本"
	L.CSPS_ImpEx_BtnExpLink = "生成链接"
	L.CSPS_ImpEx_BtnExpText = "生成文本"
	L.CSPS_ImpEx_Standard = "您可以从 eso-skillfactory.com 粘贴链接（Ctrl+V）来导入构建，也可以点击 '生成链接' 来为当前选定的构建生成链接，然后复制（Ctrl+C）并导出到浏览器中，在 eso-skillfactory.com 上查看"
	L.CSPS_ImpEx_CpAsText = "您可以将文本形式的 CP 设置粘贴到此字段中（Ctrl+V）。标准格式是 数字格式的数值，然后是技能名称(英文)。如果要应用的文本使用了不同的顺序，请单击底部的顺序选框。如果文本中包含 CP 范围的数字（如源自 AlcastHQ 或 JustLootIt文本），请单击底部的 '清理' 按钮将其删除。然后点击 '导入文本'。只要所有CP 名称都写得完整正确，插件就会自动将它们填入表格，供您查看和应用。"
	L.CSPS_ImpEx_BtnImpTT = "首先将链接粘贴（Ctrl+V）到下面的字段中"
	L.CSPS_ImpEx_BtnImpTTCP = "首先将文本粘贴（Ctrl+V）到下面的字段中 \n按住 Ctrl 为预设生成代码 \n使用右键单击创建动态预设，另外按住 Ctrl 键使其覆盖整个账户\n如果按下 Shift 键，同一CP 技能的多个条目数值将相加而不是替换"
	L.CSPS_ImpEx_BtnExpTT = "从当前显示的构建中生成链接"
	L.CSPS_ImpEx_NoData = "未找到数据。在尝试生成链接之前，请先为角色加载数据。"
	L.CSPS_ImpEx_ErrHb = "导入热区栏 <<1>> 时出错"
	L.CSPS_ImpEx_ErrSk = "无法映射技能: <<1>>"
	L.CSPS_ImpExp_TextSk = "文本导出"
	L.CSPS_ImpExp_TextOd = "其他数据"
	L.CSPS_ImpEx_HbTxt = "热区栏"
	L.CSPS_ImpEx_CsvCP = "以逗号分隔 CP 列表"
	L.CSPS_ImpEx_TxtCP2_1 = "CP |cA6D852(绿, 从文本)|r" 
	L.CSPS_ImpEx_TxtCP2_2 = "CP |c5CBDE7(蓝, 从文本)|r" 
	L.CSPS_ImpEx_TxtCP2_3 = "CP |cDE6531(红, 从文本)|r"
	L.CSPS_ImpExp_TxtOrder1 = "值 → 名称(/Slot)"
	L.CSPS_ImpExp_TxtOrder2 = "名称(/Slot) → 值"
	L.CSPS_ImpExp_TxtOrder3 = "名称 → 值 ( → Slot)"
	L.CSPS_ImpEx_CapLabel = "限制点数"
	L.CSPS_ImpEx_LangTT = "使用 %s 代替英文作为CP技能名称的语言（如果要从英文网站导入 CP，请勿激活此选项）"
	L.CSPS_ImpExp_CleanUp = "清理文本"
	L.CSPS_ImpExp_Transfer = "转移..."
	L.CSPS_ImpExp_TransferLoad = "加载"
	L.CSPS_ImpExp_TransConfirm = "|cDE6531您真的希望将所有绑定从 <<1>> 转移到 <<2>>？所有当前绑定都将被覆盖。这个过程是不可逆的。|r"
	L.CSPS_ImpExp_Transfer_Server = "服务器"
	L.CSPS_ImpExp_Transfer_Profiles = "预设..."
	L.CSPS_ImpExp_Transfer_CPP = "CP预设..."
	L.CSPS_ImpExp_Transfer_CPHb = "CP栏..."
	L.CSPS_ImpExp_Transfer_CopyReplace = "转移所有热区栏预设和绑定（替换当前预设）"
	L.CSPS_ImpExp_Transfer_CopyAdd = "转移所有热区栏预设和绑定（保留当前预设）"
	
	L.CSPS_Tooltip_Transfer_CopyReplace = "|cDE6531当前为该角色设置的所有绑定和热区栏预设都将被覆盖|r"
	L.CSPS_Tooltip_Transfer_CopyAdd = "转移热区栏预设，但保留现有预设\n|cDE6531当前为该角色设置的所有绑定都将被覆盖|r"
	
	L.CSPS_CPImp_Success = "成功映射技能:"
	L.CSPS_CPImp_Unmapped = "尚未分配技能:"
	L.CSPS_CPImp_BtnApply = "应用映射"
	L.CSPS_CPImp_BtnDiscard = "弃用"
	L.CSPS_CPImp_BtnDiscardAll = "弃用所有"
	L.CSPS_CPImp_New = "|c<<1>> <<2>>/<<3>> 映射 <<4>> 指向: <<C:5>>|r"
	L.CSPS_CPImp_Note = "单击下面列表中的技能，手动映射该技能。请注意，只有在所有技能都已映射或放弃后，才会应用该映射"
	L.CSPS_CPImp_NoMatch = "找不到任何匹配数据"
	
	--New with 5.5.0
	L.CSPS_ScribingGoToStation = "%s\n请到纂刻台刻印你的纂刻技能（需要花费 %s 墨水）"
	L.CSPS_CannotBeScribed = "<<1[技能/1 技能/$d 技能]>> 无法刻印"
	L.CSPS_ScribingGo = "%s\n刻印你的纂刻技能（将消耗 %s 墨水，您拥有 %s）"
	L.CSPS_NothingToScribe = "没有什么可刻印的"
	L.CSPS_ScribeGo = "刻印: <<C:1>>"
	L.CSPS_ScribingDiag = "%s 技能将被刻印 (这将消耗 %s 墨水)"
	L.CSPS_ScribeNotEnough = "您无法刻印所选技能（墨水不足）"
	L.CSPS_CustomStyles = "应用自定义样式: %s\n锁定的自定义样式: %s\n\n%s"
	
  for stringId, stringValue in pairs(L) do
    ZO_CreateStringId(stringId, stringValue)
  end
  
  --Special Setting
  BB.SetAfterPart(
    function()
      CSPSWindowOptionsBtnImpExp:SetText("导入/导出")
      CSPSWindowOptionsBtnManageBars:SetText("管理键位绑定")
      CSPSWindowOptionsBtnExtendetOptions:SetText("额外设置")
      CSPSWindowManageBarsLblBindList:SetText("该组的现有条件: ")
      CSPSWindowSubProfilesCustomAcc:SetText("自定义\r\n(账户)")
      CSPSWindowSubProfilesCustomChar:SetText("自定义\r\n(角色)")
      CSPSWindowSubProfilesImportFromText:SetText("从文本导入")
      CSPSWindowSubProfilesPresets:SetText("预设")
      CSPSWindowSubProfilesBarsOnly:SetText("仅限热区栏")
      CSPSWindowImportExportLblCap:SetText("有限点数")
      CSPSWindowImportExportCleanUpText:SetText("清理文本")
      CSPSWindowSubProfilesHeaderName:SetText("名称")
    end
  )

return true end