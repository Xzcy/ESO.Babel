local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["CombatMetronome"] = function() if not CombatMetronome then return false end
  --CMSettings.lua
  local Panels = {
    "General",
    "LATracker",
    "Progressbar",
    "Resources",
    "StackTracker",
  }
  
  local NewOptions = {
["General"] = {
			{
				type = "header",
				name = "一般设置"
			},
			{
				type = "checkbox",
				name = "账户设置",
        tooltip = "启用后，使用账户全局设置；关闭时，使用角色设置",
			},
			{	
				type = "checkbox",
				name = "自动清理缓存",
			},
			---------------
			---- DEBUG ----
			---------------
			{	type = "divider"},
			{	
				type = "checkbox",
				name = "启用Debug状态",
			},
			{	
				type = "submenu",
				name = "Debug选项(与玩家关系不大)",
				controls = {
					{	
            type = "checkbox",
						name = "Debug ability.lua triggers",
					},
					{
						type = "slider",
						name = "Ability trigger timer",
						tooltip = "The goal is to set it as low as possible and still have all the spells triggered",
					},
					{	type = "checkbox",
						name = "Debug ability.lua currentEvent",
					},
					{	type = "checkbox",
						name = "Debug ability.lua queuedEvent",
					},
					{	type = "checkbox",
						name = "Debug ability.lua AbilityUsed()",
					},
				},
			},
		},

["Progressbar"] = {
			{	
				type = "header",
				name = "施法条 / GCD追踪器",
				tooltip = "帮你追踪GCD，有效安排轻击和施法",
			},
			{
				type = "checkbox",
				name = "隐藏GCD追踪器",
				tooltip = "隐藏施法条，如果你只需要技能层数追踪器",
				warning = "激活时，所有与GCD追踪器有关设置都会失效",
			},
			{
				type = "checkbox",
				name = "在PVP区域隐藏施法条",
				tooltip = "在PVP区域隐藏施法条，以保持用户界面整洁",
			},
			{
				type = "checkbox",
				name = "预览",
				tooltip = "在屏幕右侧预览施法条，其无法调整大小或移动。离开设置菜单时重置",
				warning = "这将暂时禁用解锁功能。停用后才可解锁施法条位置",
			},
	---------------------------
	---- Position and Size ----
	---------------------------
			{
				type = "submenu",
				name = "位置 / 大小",
				controls = {
					{
						type = "checkbox",
						name = "解锁施法条",
						tooltip = "通过拖动中心/边缘来重新定位/调整施法条尺寸",
					},
          {
            type = "slider",
            name = "X轴偏移量",
          },
          {
            type = "button",
            name = "水平居中",
          },
          {
            type = "slider",
            name = "Y轴偏移量",
          },
          {
            type = "button",
            name = "垂直居中",
          },
          {
            type = "slider",
            name = "宽度",
          },
					{
						type = "checkbox",
						name = "动态宽度",
						tooltip = "为施法超过1s的技能增加施法条长度",
					},
					{
						type = "checkbox",
						name = "动态移动技能图标",
					},
					{
						type = "slider",
						name = "动态增宽倍率",
						tooltip = "数值越高，动态增加的宽度越多",
					},
          {
            type = "slider",
            name = "高度",
          },
				},
			},
	-----------------
	---- Visuals ----
	-----------------
			{
				type = "submenu",
				name = "视觉效果 / 色彩 / 布局",
				controls = {
					{
						type = "checkbox",
						name = "永久显示",
            tooltip = "如果不想在未使用时隐藏施法条，它会显示背景颜色",
					},
					{
						type = "checkbox",
						name = "华丽化",
            tooltip = "使施法条变得花哨",
					},
					{
            type = "colorpicker",
            name = "背景颜色",
            tooltip = "施法条的背景色",
          },
          {
            type = "colorpicker",
            name = "施法条颜色",
            tooltip = "施法条的颜色",
          },
          {
            type = "colorpicker",
            name = "Ping值区域颜色",
            tooltip = "Ping值区域颜色",
          },
          {
            type = "dropdown",
            name = "对齐",
            tooltip = "施法条的对齐方式",
          },
					{
            type = "checkbox",
            name = "为引导技能切换施法条颜色",
            tooltip = "在引导技能剩余1s以内改变施法条颜色，帮助在引导结束时切手",
            warning = "这是实验性功能，可能会有点不正常",
          },
          {
            type = "colorpicker",
            name = "引导技能颜色",
            tooltip = "释放引导技能时颜色",
          },
          {
            type = "dropdown",
            name = "标签字体",
            tooltip = "标签使用的字体",
          },
          {
            type = "dropdown",
            name = "字体样式",
            tooltip = "标签使用的字体样式",
          },
          {
            type = "slider",
            name = "字体大小",
            warning = "字体大小设置仅对剩余时间和技能名有效！",
          },
				},
			},
	------------------
	---- Behavior ----
	------------------
			{
				type = "submenu",
				name = "表现",
				controls = {
					{
            type = "slider",
            name = "最大延迟",
            tooltip = "设置最大显示延迟",
          },
          {
            type = "slider",
            name = "GCD调整",
            tooltip = "增加/减少显示的 GCD 长度",
          },
          {
            type = "slider",
            name = "全局重击调整",
            tooltip = "增加/减少重击的基准时间。除此以外，还会对特定重击类型进行额外调整",
          },
          {
            type = "slider",
            name = "全局施法调整",
            tooltip = "增加/减少技能施放的基准时间。除此以外，还会对特定技能进行额外调整",
          },
          {
            type = "checkbox",
            name = "脱战时显示GCD",
            tooltip = "在非战斗状态下也追踪GCD",
          },
          {
            type = "checkbox",
            name = "追踪所有GCD",
            tooltip = "追踪所有GCD",
          },
          {
            type = "checkbox",
            name = "为脱战时GCD显示ping值区域",
            tooltip = "启用时，为脱战时GCD显示ping值区域",
          },
					{
						type = "submenu",
						name = "显示更多GCD信息（注:原作奇妙代码无法汉化）",
						controls = {
							{
								type = "checkbox",
                tooltip = "显示 翻滚信息",
							},
							{
								type = "checkbox",
                tooltip = "显示 上下坐骑信息",
							},
							{
								type = "checkbox",
								name = "Show mount nickname",
                tooltip = "显示 坐骑名称",
							},
							{
								type = "checkbox",
                tooltip = "显示 助手和伙伴",
							},
							{
								type = "checkbox",
                tooltip = "显示 道具使用",
							},
							{
								type = "checkbox",
								tooltip = "显示 吸血鬼喂食和哀伤之刃等杀戮技能",
							},
							{
								type = "checkbox",
                tooltip = "显示 挣脱控制",
							},
						},
					},
					{
            type = "checkbox",
            name = "不显示Ping值区域",
            tooltip = "完全不在施法条上显示Ping值区域",
          },
					{
            type = "checkbox",
            name = "我不是重击侠",
            tooltip = "停止显示重击的施法条",
          },
					{
            type = "checkbox",
            name = "在重击时显示Ping值区域",
            tooltip = "在重击时显示Ping值区域。重击会在施法条进入Ping值区域时完成（本地估算），这是为了视觉一致性。",
          },
					{
            type = "checkbox",
            name = "在施法条上显示非瞬发技能名称",
            tooltip = "在施法条上显示需要引导或咏唱时间的技能的名称",
          },
					{
            type = "checkbox",
            name = "在施法条上显示所有技能名称",
            tooltip = "在施法条上显示所有技能名称，无论其是否具有施法时间",
          },
					{
            type = "checkbox",
            name = "在施法条上显示非瞬发技能剩余时间",
            tooltip = "在施法条上显示引导或咏唱技能的剩余时间",
          },
					{
            type = "checkbox",
            name = "在施法条上显示所有技能剩余时间",
            tooltip = "在施法条上显示所有技能的剩余时间，无论其是否具有施法时间",
          },
				},
			},
	----------------
	---- Sounds ----
	----------------
			{
				type = "submenu",
				name = "音效", 
				controls = {
          {
            type = "slider",
            name = "'tick' 和 'tock' 的音量",
            tooltip = "调整音量",
            warning = "您可能需要同时调整游戏音频设置，这样效果才会明显",
          },
          {
            type = "checkbox",
            name = "音效 'tick'",
            tooltip = "启用音效 'tick'，其标志技能的起始或中间部分",
          },
          {
            type = "checkbox",
            name = "音效 'tock'",
            tooltip = "启用音效 'tock'，其标志技能的结束部分",
            warning = "如果你没有听到这个提示，要么是你装了 perfect weave 插件，当然更大可能是你漏了轻击 ¯\\_(ツ)_/¯",
          },
          {
            type = "dropdown",
            name = "音效 'tick' 效果",
          },
          {
            type = "dropdown",
            name = "音效 'tock' 效果",
          },
          {
            type = "slider",
            name = "音效 'tick' 偏移量",
          },
          {
            type = "slider",
            name = "音效 'tock' 偏移量",
          },
          {
            type = "checkbox",
            name = "在技能的起始部分播放 'tick' 音效",
            tooltip = "使 'tick' 音效标志技能的起始部分",
          },
          {
            type = "checkbox",
            name = "重击时不要播放 'tick' 音效",
            tooltip = "因为重击很容易被取消，所以不推荐为其播放音效",
          },
          {
            type = "checkbox",
            name = "强制播放 'tock' 音效",
            tooltip = "即使你错过了轻击，并且下一个技能已在队列中，也播放 'tock' 音效以保持节奏",
          },
          {
            type = "checkbox",
            name = "在战斗外也播放音效",
            tooltip = "启用后，在战斗外也将播放 音效 'tick' 和 'tock'",
          },
				},
			},
	-------------------------------
	---- Ability Timer Adjusts ----
	-------------------------------
			{
				type = "submenu",
				name = "技能计时器调整",
				description = "调整特定技能的计时器，这会在全局调整的基础上进行",
				controls = {
          {
            type = "dropdown",
            name = "当前已装备技能: ",
          },
          {
            type = "button",
            name = "刷新技能列表",
          },
          {
            type = "editbox",
            name = "添加需要调整的技能（中文全称）",
          },
          {
            type = "dropdown",
            name = "选择技能",
          },
          {
            type = "slider",
            name = "调整GCD长度",
          },
          {
            type = "button",
            name = "移除技能调整",
          },
				},
			},
		},

["Resources"] = {
			-------------------
			---- Resources ----
			-------------------
			{	
				type = "header",
				name = "资源",
				tooltip = "在资源条上追踪各种资源",
			},
			{
        type = "checkbox",
        name = "解锁资源条",
        tooltip = "通过拖动中心/边缘，重新定位/调整资源栏大小",
      },
			{
        type = "checkbox",
        name = "将资源条固定在GCD追踪器顶部",
        tooltip = "关闭时，资源条可以独立拖动和调整",
        warning = "关闭此选项时，将自动调整资源条大小以适应GCD追踪器",
      },
			{
        type = "checkbox",
        name = "在PVP区域隐藏资源条",
        tooltip = "在PVP区域时隐藏资源条，保持界面干净",
      },
      {
        type = "checkbox",
        name = "预览",
        tooltip = "在屏幕右侧显示资源条用于预览，其无法移动",
        warning = "这会暂时禁止资源条的移动功能。禁用以解锁资源条。离开设置菜单时重置",
      },
			{
				type = "checkbox",
				name = "解锁斩杀提示器",
				tooltip = "解锁斩杀提示器的位置和尺寸",
			},
			{
				type = "header",
				name = "配置",
			},
			{
        type = "checkbox",
        name = "始终显示持有资源",
        tooltip = "关闭时，仅在瞄准可攻击目标时显示",
      },
			{
				type = "checkbox",
				name = "自动显示斩杀提示器",
				tooltip = "当使用生命值高亮或装备斩杀技能时，瞄准可斩杀敌人时显示提示",
			},
			{
				type = "colorpicker",
				name = "斩杀提示器颜色",
				tooltip = "终极技标签的颜色",
			},
			{
				type = "checkbox",
				name = "使用珊瑚/MK/巴塞套装时，显示法力/耐力",
				tooltip = "当这些套装之一激活时，自动显示法力/耐力",
				warning = "该设置需要LibSetDetection插件",
			},
      {
        type = "checkbox",
        name = "显示终极点",
        tooltip = "切换显示终极点",
      },
      {
        type = "slider",
        name = "终极点标签尺寸",
        tooltip = "设置终极点标签的尺寸",
      },
      {
        type = "colorpicker",
        name = "终极点标签颜色",
        tooltip = "终极点标签颜色",
      },
      {
        type = "checkbox",
        name = "显示耐力（百分比）",
        tooltip = "切换显示耐力",
      },
      {
        type = "slider",
        name = "耐力标签尺寸",
        tooltip = "设置耐力标签的尺寸",
      },
      {
        type = "colorpicker",
        name = "耐力标签颜色",
        tooltip = "设置耐力标签的颜色",
      },
      {
        type = "checkbox",
        name = "显示魔力（百分比）",
        tooltip = "切换显示魔力",
      },
      {
        type = "slider",
        name = "魔力标签大小",
        tooltip = "设置魔力标签的大小",
      },
      {
        type = "colorpicker",
        name = "魔力标签颜色",
        tooltip = "设置魔力标签的颜色",
      },
      {
        type = "checkbox",
        name = "显示目标血量",
        tooltip = "切换显示目标血量",
      },
      {
        type = "slider",
        name = "血量标签大小",
        tooltip = "设置血量标签的大小",
      },
      {
        type = "colorpicker",
        name = "血量标签颜色",
        tooltip = "设置血量标签的颜色",
      },
      {
        type = "checkbox",
        name = "将目标血量吸附在准星上",
        tooltip = "将目标血量放在准星旁",
      },
      {
        type = "checkbox",
        name = "将玩家法力和耐力吸附在准星上",
        tooltip = "将玩家法力和耐力放在准星旁",
      },
      {
        type = "slider",
        name = "目标血量斩杀线高亮",
        tooltip = "设置目标血量高亮阈值（0%不高亮）",
      },
      {
        type = "colorpicker",
        name = "血量高亮颜色",
        tooltip = "设置目标血量高亮的颜色",
      },
      {
        type = "checkbox",
        name = "在瞄准守卫时显示资源",
        tooltip = "在瞄准守卫时显示资源",
      },
		},

["LATracker"] = {
			------------------------------
			---- Light Attack Tracker ----
			------------------------------
			{	
				type = "header",
				name = "一般设置",
				tooltip = "让你可以追踪轻攻击，更好分析数据结果",
			},
			{
				type = "checkbox",
				name = "PVP区域隐藏轻攻击追踪",
				tooltip = "在PVP区域隐藏轻攻击追踪，保持UI整洁",
			},
			{	type = "checkbox",
				name = "解锁轻攻击追踪",
				tooltip = "使轻攻击追踪UI可以移动",
			},
			{	type = "dropdown",
				name = "追踪何物",
				tooltip = "定义追踪器是否显示每秒轻攻击、轻攻击时间间隔或其他",				
			},
			{	type = "slider",
				name = "战斗后追踪器显示维持时间",
				tooltip = "战斗结束后，跟踪器会持续显示结果的秒数",
			},
			{	type = "checkbox",
				name = "在战斗后显示轻攻击记录",
				tooltip = "提供战斗时间、每秒轻攻击、轻攻击总数的记录",
			},
		},

["StackTracker"] = {
			-----------------------
			---- Stack Tracker ----
			-----------------------
			------------------
			---- Position ----
			------------------
			{
				type = "header",
				name = "位置 / 尺寸",
			},
			{	type = "checkbox",
				name = "解锁层数追踪器",
				tooltip = "解锁层数追踪器的位置",
			},
			-------------------------
			---- Stacks to track ----
			-------------------------
			{
				type = "header",
				name = "需要追踪的技能",
			},
		},
}

local SkillNames = {
  "|t20:20:/esoui/art/icons/ability_sorcerer_bound_armaments.dds|t 契约武器",
  "|t20:20:/esoui/art/icons/class_buff_arcanist_crux.dds|t 魔核",
  "|t20:20:/esoui/art/icons/ability_warden_014.dds|t 受体感染",
  "|t20:20:/esoui/art/icons/ability_necromancer_001.dds|t 火焰颅骨 (及变形)",
  "|t20:20:/esoui/art/icons/ability_nightblade_005.dds|t 百折不挠 (及变形)",
  "|t20:20:/esoui/art/icons/ability_dragonknight_001_b.dds|t 熔火烈鞭",
}

--Speical Setting
  for i = 1, #SkillNames do
    local SkillMode = {
      type = "submenu",
      name = SkillNames[i],
      controls = {
        {
          type = "checkbox",
          name = "追踪技能层数",
        },
        {
          type = "checkbox",
          name = "PVP区域隐藏",
          tooltip = "在PVP区域中隐藏该追踪器，保持UI整洁",
        },
        {
          type = "slider",
          name = "追踪器尺寸",
        },
        {
          type = "header",
          name = "视觉及音效提示",
          tooltip = "当满层时的视觉和音效提示的设置",
        },
        {
          type = "checkbox",
          name = "满层时播放音效",
          tooltip = "当技能满层时，播放音效提示",
        },
        {
          type = "slider",
          name = "音效音量",
          tooltip = "调节提示音效的音量",
          warning = "你可能需要同时调节游戏的音量设置来达到显著效果",
        },
        {
          type = "dropdown",
          name = "音效选择",
        },
        {
          type = "checkbox",
          name = "视觉提示",
          tooltip = "达到特定层数时，给予更强的视觉提示",
        },
      },
    }
    table.insert(NewOptions["StackTracker"], SkillMode)
  end
  
  for i = 1, #Panels do
    BB.SetMenuPatch("CombatMetronome"..Panels[i].."Options", NewOptions[Panels[i]])
  end
  
  BB.SetKeybindingsReplace("COMBATMETRONOME_FORCE", "切换强制显示")
  BB.SetKeybindingsReplace("COMBATMETRONOME_TOGGLE_SOUND_CUES", "开关节拍器音效")
  BB.SetKeybindingsReplace("COMBATMETRONOME_TOGGLE_TICK", "开关'TICK'音效")
  BB.SetKeybindingsReplace("COMBATMETRONOME_TOGGLE_TOCK", "开关'TOCK'音效")
  
return true end