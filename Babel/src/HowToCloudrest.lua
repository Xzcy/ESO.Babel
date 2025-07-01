local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["HowToCloudrest"] = function() if not HowToCloudrest then return false end
  local NewOption = {
		{
			type = "dropdown",
			name = "默认 '启用' 预设",
			tooltip = "'启用' 预设后，将为选择的身份显示推荐的UI元素",
		},
		{
			type = "description",
			text = "|cff0000WARNING:|r 这些配置文件将覆盖您已自定义的'启用'设置。但是，它不会更改您已经自定义的元素的大小或位置。配置文件无法更改（目前无法保存预设！",
		},
		{
			type = "checkbox",
			name = "解锁所有",
			tooltip = "使用它设置所有已启用通知的位置",
		},
		{
			type = "description",
			text = "屏幕通知测试 (CSA):",
		},
		{
			type = "button",
			name = "测试 CSA",
		},
		{
			type = "submenu",
			name = "通常",
			controls = {
				{
					type = "header",
					name = "定身通知选项",
				},
				{
					type = "checkbox",
					name = "启用 藤蔓瞄准 通知",
					tooltip = "当藤蔓瞄准你缠绕时，显示通知",
				},
				{
					type = "checkbox",
					name = "启用 黑暗利爪 通知",
					tooltip = "当希罗利亚对你释放黑暗利爪时，显示通知 (定身).",
				},
				{
					type = "checkbox",
					name = "解锁定身通知",
					tooltip = "解锁定身通知位置（藤蔓缠绕和黑暗利爪）",
				},
				{
					type = "slider",
					name = "定身通知尺寸",
					tooltip = "设置藤蔓缠绕和黑暗利爪的定身通知尺寸",
				},
			}
		},
		{
			type = "submenu",
			name = "小王选项",
			controls = {
				{
					type = "header",
					name = "通常",
				},
				{
					type = "checkbox",
					name = "启用 小王列表",
					tooltip = "显示包含有关小王传送、打断和特殊技能的信息的小王列表",
				},
				{
					type = "checkbox",
					name = "解锁 小王列表",
					tooltip = "设置小王列表的位置",
				},
				{
					type = "slider",
					name = "小王列表尺寸",
					tooltip = "设置小王列表的尺寸",
				},
				{
					type = "divider",
				},
				{
					type = "checkbox",
					name = "启用 小王传送 计时",
					tooltip = "显示一个计时器，它会告诉你小王传送的冷却时间",
				},
				{
					type = "checkbox",
					name = "启用 小王打断 计时",
					tooltip = "显示一个计时器，它会告诉你小王需要打断的技能的冷却时间",
				},
				{
					type = "checkbox",
					name = "启用 小王技能 计时",
					tooltip = "显示一个计时器，它会告诉你小王使用技能的冷却时间",
				},
				{
					type = "divider"
				},
				{
					type = "checkbox",
					name = "启用 小王打断 通知",
					tooltip = "当瑞丽昆恩咏唱震荡光束/加伦韦咏唱冰爆时，显示打断通知",
				},
				{
					type = "checkbox",
					name = "解锁 小王打断 通知位置",
					tooltip = "设置小王打断通知的位置",
				},
				{
					type = "slider",
					name = "小王打断 通知尺寸",
					tooltip = "设置小王打断通知的大小",
				},
				{
					type = "divider",
				},
				{	type = "checkbox",
					name = "启用 小王重击 通知",
					tooltip = "监控所有小王重击",
				},
				{
					type = "checkbox",
					name = "解锁 小王重击 通知位置",
					tooltip = "设置小王重击通知位置.",
				},
				{
					type = "slider",
					name = "小王重击通知尺寸",
					tooltip = "设置小王重击通知尺寸",
				},
				{
					type = "header",
					name = "希罗利亚",
				},
				{
					type = "checkbox",
          name = "启用 叠火 通知",
          tooltip = "显示叠火点名玩家，斩杀阶段显示谁左谁右",
        },
        {
					type = "checkbox",
          name = "解锁 叠火 通知",
          tooltip = "设置叠火通知位置",
        },
        {
					type = "slider",
          name = "叠火通知尺寸",
          tooltip = "设置叠火通知尺寸",
				},
				{
					type = "header",
					name = "瑞丽昆恩",
				},
				{
					type = "checkbox",
					name = "启用 瑞丽昆恩重击 通知",
					tooltip = "当你需要从瑞丽昆恩重击中寻找AOE时，显示计时器",
				},
				{
					type = "checkbox",
					name = "解锁 瑞丽昆恩重击 通知",
					tooltip = "设置瑞丽昆恩重击通知的位置",
				},
				{
					type = "slider",
					name = "瑞丽昆恩重击通知尺寸",
					tooltip = "设置瑞丽昆恩重击通知的尺寸",
				},
				{
					type = "divider",
				},
				{
					type = "checkbox",
					name = "启用 过载 通知",
					tooltip = "追踪超载机制，并为你提示剩余时间",
				},
				{
					type = "checkbox",
					name = "解锁 过载 通知位置",
					tooltip = "设置过载通知位置",
				},
				{
					type = "slider",
					name = "过载通知尺寸",
					tooltip = "设置过载通知尺寸",
				},
				{
					type = "checkbox",
					name = "显示 过载 屏幕边缘提示",
					tooltip = "当你过载时，在屏幕边缘显示颜色提示",
				},
				{
					type = "checkbox",
					name = "边缘提示预览",
					tooltip = "用于预览屏幕边缘提示的颜色",
				},
				{	type = "checkbox",
					name = "启用 过载 提示闪烁",
					tooltip = "启用时，'严禁切手'通知将会闪烁，使其更易于跟踪",
				},
				{
					type = "slider",
					name = "闪烁频率",
					tooltip = "设置提示的闪烁频率.",
				},
				{
					type = "dropdown",
					name = "过载边缘提示颜色",
					tooltip = "选择想要的过载边缘提示颜色",
				},
				{
					type = "header",
					name = "加伦韦",
				},
				{
					type = "checkbox",
          name = "显示 冰风 通知",
          tooltip = "追踪何时需要丢冰风，以及冰风何时被其他人丢了",
        },
        {
					type = "checkbox",
          name = "解锁 冰风 通知位置",
          tooltip = "设置冰风通知位置",
        },
        {
					type = "slider",
          name = "冰风通知尺寸",
          tooltip = "设置冰风通知尺寸",
				},
				{
					type = "divider",
				},
				{
					type = "checkbox",
          name = "启用 冰彗星 通知",
          tooltip = "冰彗星点你的时候告诉你",
          default = true,
        },
        {
					type = "checkbox",
          name = "解锁冰彗星通知位置",
          tooltip = "设置冰彗星通知位置",
        },
        {
					type = "slider",
          name = "冰彗星通知尺寸",
          tooltip = "设置冰彗星通知尺寸",
        },
			} -- Mini Boss submenu end
		},
		{
			type = "submenu",
			name = "传送门选项",
			controls = {
				{
					type = "checkbox",
					name = "启用 传送门 通知",
					tooltip = "显示传送门计时，以及下个下楼的组",
				},
				{
					type = "checkbox",
					name = "解锁 传送门 通知位置",
					tooltip = "设置传送门追踪计时的位置",
				},
				{
					type = "slider",
					name = "传送门通知尺寸",
					tooltip = "设置传送门通知尺寸",
				},
				{
					type = "divider",
				},
				{
					type = "checkbox",
					name = "启用 传送门生成 通知",
					tooltip = "传送门出现时通知",
				},
				{
					type = "checkbox",
					name = "解锁 传送门生成 通知",
					tooltip = "设置解锁传送门出现通知位置",
				},
				{
					type = "slider",
					name = "传送门通知尺寸",
					tooltip = "设置传送门通知尺寸",
				},
			}
		},
		{
			type = "submenu",
			name = "泽玛亚设置",
			controls = {
				{
					type = "checkbox",
					name = "启用 泽玛亚传送 通知",
					tooltip = "显示泽玛亚即将进入下个位置的计时器",
				},
				{	type = "checkbox",
					name = "解锁 泽玛亚传送 通知",
					tooltip = "设置泽玛亚传送通知位置",
				},
				{	type = "slider",
					name = "泽玛亚传送 通知尺寸",
					tooltip = "设置泽玛亚传送通知尺寸",
				},
				{
					type = "divider",
				},
				{
					type = "checkbox",
					name = "启用 黑圈引导剩余 通知",
					tooltip = "告诉你黑圈引导的剩余时间",
				},
				{
					type = "checkbox",
					name = "解锁 黑圈引导剩余 通知",
					tooltip = "设置黑圈引导通知位置"
				},
				{	type = "slider",
					name = "黑圈引导剩余 通知尺寸",
					tooltip = "设置黑圈引导通知尺寸"
				},
				{
					type = "divider",
				},
				{
					type = "checkbox",
					name = "启用 黑圈引导冷却 通知",
					tooltip = "告知下次黑圈引导的计时"
				},
				{
					type = "checkbox",
					name = "解锁 黑圈引导冷却 通知",
					tooltip = "设置黑圈引导冷却通知位置"
				},
				{	type = "slider",
					name = "黑圈引导冷却 通知尺寸",
					tooltip = "设置黑圈引导冷却通知尺寸",
				},
				{
					type = "divider",
				},
				{
					type = "checkbox",
					name = "启用 坠落打断 通知",
					tooltip = "告诉你什么时候打断泽玛亚的坠楼技能施法",
				},
				{
					type = "checkbox",
					name = "解锁 坠落打断 通知",
					tooltip = "设置坠落打断通知位置",
				},
				{
					type = "slider",
					name = "坠落打断 通知尺寸",
					tooltip = "设置坠落打断通知尺寸",
				},
				{
					type = "divider",
				},
				{
					type = "checkbox",
					name = "启用 有害标记(斩杀阶段) 通知",
					tooltip = "显示下一次泽玛亚点名有害标记的计时器",
				},
				{
					type = "checkbox",
					name = "解锁 有害标记(斩杀阶段) 通知",
					tooltip = "设置有害标记(斩杀阶段)通知位置",
				},
				{
					type = "slider",
					name = "有害标记(斩杀阶段) 通知尺寸",
					tooltip = "设置有害标记(斩杀阶段)通知尺寸",
				},
				{
					type = "divider",
				},
				{
					type = "checkbox",
					name = "启用 黑球 计时器",
					tooltip = "告诉你泽玛亚产生黑球的时间点，和黑球冲向人群的时间",
				},
				{
					type = "checkbox",
					name = "解锁 黑球 计时器",
					tooltip = "设置打球计时器位置",
				},
				{
					type = "slider",
					name = "黑球 计时器尺寸",
					tooltip = "设置打球计时器尺寸",
				},
				{
					type = "divider",
				},
				{
					type = "checkbox",
					name = "启用 黑球生成 通知",
					tooltip = "当泽玛亚产生黑球时通知",
				},
				{
					type = "checkbox",
					name = "解锁 黑球生成 通知",
					tooltip = "设置黑球生成通知位置",
				},
				{
					type = "slider",
					name = "黑球生成 通知尺寸",
					tooltip = "设置黑球生成通知尺寸",
				},
				{
					type = "divider",
				},
				{
					type = "checkbox",
					name = "启用 黑球 追踪",
					tooltip = "告诉你未被击杀的黑球数量",
				},
				{
					type = "checkbox",
					name = "在斩杀阶段启用 黑球 追踪",
					tooltip = "在斩杀阶段中，是否告知未被击杀的黑球数量",
				},
				{
					type = "checkbox",
					name = "解锁 黑球 追踪",
					tooltip = "设置黑球追踪位置",
				},
				{
					type = "slider",
					name = "黑球 追踪尺寸",
					tooltip = "设置黑球追踪尺寸",
				},
				{
					type = "divider",
				},
				{
					type = "checkbox",
					name = "启用 藤蔓生成 通知",
					tooltip = "当泽玛亚产生藤蔓时，显示通知",
				},
				{
					type = "checkbox",
					name = "解锁 藤蔓生成 通知",
					tooltip = "设置藤蔓生成通知位置",
				},
				{
					type = "slider",
					name = "藤蔓生成 通知尺寸",
					tooltip = "设置藤蔓生成通知尺寸",
				},
			} -- Z'Maja submenu end
		},
	}
  
  --Special Setting
  BB.SetMenuPatch("HowToCloudrest_Settings", NewOption)
  
  local Color = HowToCloudrest.Color
  BB.TableCopy({
    RazorThorns = Color.zmajaDark(">> 定身 <<"),
    DarkTalons = Color.siroLight(">> 定身 <<"),

    Mini_Jump_Off_Cooldown = Color.yellow("立刻"),
    Mini_Jump_Cast = Color.red("现在"),

    Mini_Bash_Off_Cooldown = Color.yellow("立刻"),
    Mini_Bash_Cast = Color.red("打断"),
    Mini_Bash_Faded = Color.green("完成"),

    Mini_Skill_Off_Cooldown = Color.yellow("立刻"),
    Mini_Skill_Cast = Color.red("现在"),

    Mini_Dead = Color.green("死亡"),

    -- Siroria
    Flare = Color.siroLight("        叠火 ") .. Color.white("@Floliroy") .. Color.siroLight(": "),
    FlareFunc = function(name) 
      return Color.siroLight("        叠火 ") .. Color.white(name)  .. Color.siroLight(": ") 
    end,
    FlareExecFunc = function (name1, name2, timer) 
        return Color.white(name1) .. Color.siroLight("|t100%:100%:Esoui/Art/Buttons/large_leftarrow_up.dds|t 叠火: ") .. Color.red(timer) 
            .. Color.siroLight("|t100%:100%:Esoui/Art/Buttons/large_rightarrow_up.dds|t") .. Color.white(name2)
    end,

    -- Relequen
    Announcement_ReleBash_Faded = Color.releLight("OK"),
    Announcement_ReleBash_1 = Color.releLight("打断"),
    Announcement_ReleBash_2 = Color.red(">") .. Color.releLight("打断") .. Color.red("<"),
    Announcement_ReleBash_3 = Color.red(">>") .. Color.releLight("打断") .. Color.red("<<"),
    Announcement_ReleBash_4 = Color.red(">>>") .. Color.releLight("打断") .. Color.red("<<<"), -- never gets used

    Overload_Incoming = Color.releLight("过载生效: "),
    Overload_Static = Color.releDark("严禁切手: "),
    Overload_Tab1 = Color.releLight("严禁 ") .. Color.releDark("切手    : "),
    Overload_Tab2 = Color.releDark("   严禁 ") .. Color.releLight("切手 : "),

    ReleHA = Color.releLight("瑞丽重击: "),

    -- Galenwe
    Announcement_GaleBash_Faded = Color.galeDark("OK"),
    Announcement_GaleBash_1 = Color.galeDark("打断"),
    Announcement_GaleBash_2 = Color.red(">") .. Color.galeDark("打断") .. Color.red("<"),
    Announcement_GaleBash_3 = Color.red(">>") .. Color.galeDark("打断") .. Color.red("<<"),
    Announcement_GaleBash_4 = Color.red(">>>") .. Color.galeDark("打断") .. Color.red("<<<"),
    Announcement_GaleBash_5 = Color.yellow(">>>") .. Color.galeDark("打断") .. Color.yellow("<<<"),
    Announcement_GaleBash_6 = Color.red(">>>") .. Color.galeDark("打断") .. Color.red("<<<"),

    Hoarfrost_Base = Color.galeDark("丢冰风: "),
    Hoarfrost_Base_Last = Color.galeDark("丢 ") .. Color.green("末次") .. Color.galeDark(" 冰风: "),
    Hoarfrost_Pick_Up = Color.galeDark("捡冰风!"),
    Hoarfrost_Incoming = Color.galeDark("冰风 ") .. Color.red("立刻"),
    Hoarfrost_Drop = Color.galeDark("丢冰风 ") .. Color.red("就现在!"),
    Hoarfrost_Drop_Last = Color.galeDark("丢 ") .. Color.green("末次") .. Color.galeDark(" 冰风 ") .. Color.red("就现在!"),

    ChillingComet_Base = Color.galeDark("冰彗星: "),

    -- Portal
    Portal_Open_Cast_1 = Color.portalOpen("传送门 "),
    Portal_Open_Cast_2 = Color.portalOpen(" 开启!"),
    Portal_Open_1 = Color.portalOpen("传送门 "),
    Portal_Open_2 = Color.portalOpen(" 关闭: "),
    Portal_Off_Cooldown = Color.yellow("马上"),
    Portal_Closed_Cast = Color.green("传送门 完成!"),
    Portal_Closed_1 = Color.portalClosed("下个传送门 ( "),
    Portal_Closed_2 = Color.portalClosed(" ): "),
    Portal_Out_Of_Time = Color.red("传送门 失败"),

    Portal_Announcement_1 = Color.portalOpen("传送门 "),
    Portal_Announcement_2 = Color.portalOpen(" 开启!"),

    -- Z'Maja
    ZMaja_Jump_Base = Color.zmajaDark("泽玛亚 传送: "),
    ZMaja_Jump_Off_Cooldown = Color.yellow("立刻"),
    ZMaja_Jump_Cast = Color.red("现在"),

    ZMaja_Bash_Cast_1 = Color.red(">") .. Color.zmajaDark("打断") .. Color.red("<"),
    ZMaja_Bash_Cast_2 = Color.red(">>") .. Color.zmajaDark("打断") .. Color.red("<<"),
    ZMaja_Bash_Cast_3 = Color.red(">>>") .. Color.zmajaDark("打断") .. Color.red("<<<"),
    ZMaja_Bash_Cast_4 = Color.yellow(">>>") .. Color.zmajaDark("打断") .. Color.yellow("<<<"),
    ZMaja_Bash_Faded = Color.zmajaDark("OK"),

    ZMaja_BanefulMark_Base = Color.zmajaDark("有害标记: "),
    ZMaja_BanefulMark_Off_Cooldown = Color.yellow("立刻"),
    ZMaja_BanefulMark_Cast = Color.red("现在!"),

    ZMaja_CrushingDarkness_Kite_Base = Color.zmajaDark("引导: "),
    ZMaja_CrushingDarkness_Kite_Cast = Color.red("现在"),
    ZMaja_CrushingDarkness_Kite_Faded = Color.green("完成!"),

    ZMaja_CrushingDarkness_Next_Base = Color.zmajaDark("下次引导: "),
    ZMaja_CrushingDarkness_Next_Off_Cooldown = Color.yellow("立刻"),
    ZMaja_CrushingDarkness_Next_Cast = Color.green("现在"),

    ZMaja_MaliciousSphere_Timer_Next = Color.orbs("下次黑球: "),
    ZMaja_MaliciousSphere_Timer_Kill = Color.red("击杀") .. Color.orbs(" 黑球: "),
    ZMaja_MaliciousSphere_Timer_Off_Cooldown = Color.yellow("立刻"),
    ZMaja_MaliciousSphere_Timer_Cast = Color.red("现在"),
    ZMaja_MaliciousSphere_Timer_Failed = Color.red("失败"),
    ZMaja_MaliciousSphere_Timer_Success = Color.green("OK"),
    Zmaja_MaliciousSphere_OrbSpawning = Color.orbs("黑球生成!"),

    Zmaja_CreeperSpawning = Color.creeper("藤蔓生成!"),
    },  HowToCloudrest.Strings
  )
  HTC.String = HowToCloudrest.Strings
  HTC_Var_Reset_Values = HTC_AUX:DeepCopy(HTC)
  
  --SetFont
  function HowToCloudrest.SetFontSize(label, size)
    local path = "$(BOLD_FONT)"
    local outline = "soft-shadow-thick"
    label:SetFont(path .. "|" .. size .. "|" .. outline)
  end
  
  BB.SetAfterPart(
    function() 
      HTC_MiniFrame_TopRow_Skill:SetText("技能")
      HTC_MiniFrame_TopRow_Jump:SetText("传送")
      HTC_MiniFrame_TopRow_Bash:SetText("打断")
      HTC_MiniFrame_Siroria_Title:SetText("|cff4500希罗利亚|r")
      HTC_MiniFrame_Relequen_Title:SetText("|c33ccff瑞丽昆恩|r")
      HTC_MiniFrame_Galenwe_Title:SetText("|c3269df加伦韦|r")
    end
  )

return true end