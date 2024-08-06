local BB = MABabel

--Elm's Markers
BB.AddonList["ElmsMarkers"] = function() if not ElmsMarkers then return false end
  local NewOption = {
		{
			type = "header",
			name = "配置：/elms 打开ElmsMarkers UI，方便添加/移除标记",
		},
		{
			type = "checkbox",
			name = "显示标记",
			tooltip = "切换UI显示",
		},
		{
			type = "button",
			name = "清空当前区域",
			tooltip = "这将会移除当前区域的所有标记",
		},
		{
			type = "slider",
			name = "标记尺寸",
		},
		{
			type = "header",
			name = "团队标记",
		},
		{
			type = "checkbox",
			name = "订阅 队长标记",
			tooltip = "自动接收队长的群发标记\r\n译注：需队长使用/elms pp或/elms rr指令或在插件UI中 群发/删标记",
		},
		{
			type = "checkbox",
			name = "订阅 队长警报",
			tooltip = "自动接收队长的集合指令警报\r\n译注：需队长绑定集合指令的快捷键并使用",
		},
		{
			type = "button",
			name = function() return ElmsMarkers.savedVars.locked and "重定位UI" or "锁定UI" end,
			tooltip = "切换重新定位插件UI",
			func = function(value)
				ElmsMarkers.UnlockUI(ElmsMarkers.savedVars.locked)
					 if not ElmsMarkers.savedVars.locked then
								value:SetText("锁定UI")
					 else
								value:SetText("重定位UI")
					 end
			end,
		},
		{
			type = "slider",
			name = "警告尺寸",
			tooltip = "设置警告的尺寸 (需要搭配上方的按钮使用)",
 		},
		{
			type = "header",
			name = " 导入",
		},
		{
			type = "editbox",
			name = "配置",
			tooltip = "输入有效的 ElmsMarkers 字符串，在当前区域导入标记",
		},
		{
			type = "button",
			name = "导入",
			tooltip = "为当前区域导入设置",
		},
		{
			type = "header",
			name = " 导出字符串",
		},
		{
			type = "editbox",
			name = "配置",
			tooltip = "描述您为该区域配置的标记的字符串",
		},
	}
  
  --Special
  BB.SetMenuPatch(ElmsMarkers.name.."Options", NewOption)
  
  BB.SetAfterPart(
    function()
      ElmsMarkers_Frame_Title_Subtitle:SetText("放置新标记")
      ElmsMarkers_Frame_Button_Group_Place_Button:SetText("放置")
      ElmsMarkers_Frame_Button_Group_Place_Publish_Button:SetText("放置并发布")
      ElmsMarkers_Frame_Button_Group_Remove_Button:SetText("移除")
      ElmsMarkers_Frame_Button_Group_Remove_Publish_Button:SetText("移除并发布")
    end
  )

return true end

--English Tooltips
BB.AddonList["EnglishTooltips"] = function() if not EnglishTooltips then return false end
  local Strings = {
    [SI_ENGLISHTOOLTIPS_TOOLTIP_FORMAT] = "弹窗中信息格式",
    [SI_ENGLISHTOOLTIPS_TOOLTIP_NEW_LINE] = "另起一行显示翻译",
    [SI_ENGLISHTOOLTIPS_EQUIPMENT] = "装备",
    [SI_ENGLISHTOOLTIPS_EQUIPMENT_DESC] = "装备 (护甲, 饰品 & 武器)",
    [SI_ENGLISHTOOLTIPS_EQUIPMENT_SETNAME] = "套装名",
    [SI_ENGLISHTOOLTIPS_EQUIPMENT_SETNAME_DESC] = "显示套装名而不是物品名",
    [SI_ENGLISHTOOLTIPS_EQUIPMENT_ENCHANTMENT] = "附魔",
    [SI_ENGLISHTOOLTIPS_EQUIPMENT_ENCHANTMENT_DESC] = "显示附魔名称",
    [SI_ENGLISHTOOLTIPS_EQUIPMENT_ENCHANTMENT_COLOR] = "附魔品质颜色",
    [SI_ENGLISHTOOLTIPS_EQUIPMENT_ENCHANTMENT_COLOR_DESC] = "在弹窗中显示附魔品质颜色",
    [SI_ENGLISHTOOLTIPS_EQUIPMENT_TRAIT] = "特质",
    [SI_ENGLISHTOOLTIPS_EQUIPMENT_TRAIT_DESC] = "显示特质名称",
    [SI_ENGLISHTOOLTIPS_CHAMPION_POINTS] = "冠军点数",
    [SI_ENGLISHTOOLTIPS_CHAMPION_POINTS_DESC] = "显示冠军点数技能名称",
    [SI_ENGLISHTOOLTIPS_ABILITIES] = "技能",
    [SI_ENGLISHTOOLTIPS_ABILITIES_DESC] = "显示技能名称",
    [SI_ENGLISHTOOLTIPS_MATERIALS] = "材料",
    [SI_ENGLISHTOOLTIPS_MATERIALS_DESC] = "材料, 原材料, 品质材料, 风格材料, 特质材料",
    [SI_ENGLISHTOOLTIPS_GLYPH] = "雕文",
    [SI_ENGLISHTOOLTIPS_GLYPH_DESC] = "护甲, 武器和饰品雕文",
    [SI_ENGLISHTOOLTIPS_CONSUMABLE] = "药水 & 毒药",
    [SI_ENGLISHTOOLTIPS_CONSUMABLE_DESC] = "药水, 毒药",
    [SI_ENGLISHTOOLTIPS_FOOD] = "食物 & 饮料",
    [SI_ENGLISHTOOLTIPS_FOOD_DESC] = "食物, 饮料",
    [SI_ENGLISHTOOLTIPS_TROPHIES] = "奖励",
    [SI_ENGLISHTOOLTIPS_TROPHIES_DESC] = "调查报告, 藏宝图, 博物馆藏品, 符文箱碎片, 收藏品碎片, 可调制作台, 各种容器",
    [SI_ENGLISHTOOLTIPS_CRAFTING_MOTIFS] = "制作样式",
    [SI_ENGLISHTOOLTIPS_CRAFTING_MOTIFS_DESC] = "显示制作样式名称",
    [SI_ENGLISHTOOLTIPS_FURNISHING] = "家具",
    [SI_ENGLISHTOOLTIPS_FURNISHING_DESC] = "显示可放置的家具名称",
    [SI_ENGLISHTOOLTIPS_RECIPES] = "配方",
    [SI_ENGLISHTOOLTIPS_RECIPES_DESC] = "显示配方名称",
    [SI_ENGLISHTOOLTIPS_MASTER_WRITS] = "大师委托",
    [SI_ENGLISHTOOLTIPS_MASTER_WRITS_DESC] = "显示大师委托的名称",
    [SI_ENGLISHTOOLTIPS_PVP] = "PvP相关",
    [SI_ENGLISHTOOLTIPS_PVP_DESC] = "攻城器械, 修理包, 传送石",
    [SI_ENGLISHTOOLTIPS_CROWN_ITEMS] = "皇冠物品",
    [SI_ENGLISHTOOLTIPS_CROWN_ITEMS_DESC] = "皇冠物品, 皇冠修理包",
    [SI_ENGLISHTOOLTIPS_MISCELLANEOUS] = "杂项",
    [SI_ENGLISHTOOLTIPS_MISCELLANEOUS_DESC] = "修理包, 撬锁器, 灵魂宝石, 鱼, 鱼饵, 垃圾",
    [SI_ENGLISHTOOLTIPS_UPDATE_BUTTON] = "更新数据库",
    [SI_ENGLISHTOOLTIPS_UPDATE_BUTTON_DESC] = "在数据损坏或游戏发布新版本时，需要更新数据库",
    [SI_ENGLISHTOOLTIPS_UPDATE_BUTTON_WARNING] = "注意:\n该选项将会自动开始重载用户界面！",
    [SI_ENGLISHTOOLTIPS_UPDATE_MSG] = "请更新 \"English Tooltips\" 插件数据库！打开插件设置界面，并点击 更新数据库 按钮",
  }

  for stringId, stringValue in pairs(Strings) do
    SafeAddString(stringId, stringValue, 2)
  end
  
return true end

--Fancy Action Bar+
BB.AddonList["FancyActionBar+"] = function() if not FancyActionBar then return false end
  local ACTION_BAR = GetControl("ZO_ActionBar1")
  local NewOption = {
    {
      type = "button";
      name = "显示/隐藏 技能栏";
      tooltip = "仅在当前设置界面中应用";
      func = function() ACTION_BAR:SetHidden(not ACTION_BAR:IsHidden()) end;
    },
    --===========[	Actionbar Scaling	]===================
    {
      type = "submenu";
      name = "|cFFFACD技能栏 尺寸 & 位置|r";
      controls =
      {
        {
          type = "description";
          title = "此部分功能仍在测试与其他插件的兼容性，请谨慎启用";
        },
        {
          type = "description";
          title = "[ |cffdf80键盘模式 UI|r ]";
        },
        {
          type = "checkbox";
          name = "启用 技能栏尺寸调整";
        },
        {
          type = "slider";
          name = "技能栏尺寸";
        },
        {
          type = "checkbox";
          name = "启用 技能栏重定位（键盘）";
        },
        { type = "divider" },
        {
          type = "description";
          title = "[ |cffdf80手柄模式 UI|r ]";
        },
        {
          type = "checkbox";
          name = "启用 技能栏尺寸调整";
        },
        {
          type = "slider";
          name = "技能栏尺寸";
        },
        {
          type = "checkbox";
          name = "启用 技能栏重定位（手柄）";
        },
        { type = "divider" },
        { type = "divider" },
        {
          type = "description";
          title = "[ |cffdf80调整快捷栏位置|r ]";
        },
        {
          type = "slider";
          name = "横向 (X轴) 位置";
        },
        {
          type = "slider";
          name = "纵向 (Y轴) 位置";
        },
        { type = "divider" },
        {
          type = "description";
          title = "[ |cffdf80调整终极技位置|r ]";
        },
        {
          type = "slider";
          name = "横向 (X轴) 位置";
        },
        {
          type = "slider";
          name = "纵向 (Y轴) 位置";
        },
      };
    },
    --===========[    General    ]===================
    {
      type = "submenu";
      name = "|cFFFACD一般设置|r";
      controls =
      {
        --============[	Font/Back Bar Settings	]===============
        {
          type = "description";
          title = "[ |cffdf80主手 & 副手 技能栏位置|r ]";
          text = "所有修改将在一次切手后生效";
        },
        {
          type = "checkbox";
          name = "固定技能栏位置";
          tooltip = "切手时，不交换主手和副手技能栏位置";
        },
        {
          type = "checkbox";
          name = "主手技能栏在上 (用于固定模式)";
          tooltip = "开 = 主手栏在上，副手栏在下\n关 = 主手栏在下，副手栏在上";
        },
        {
          type = "checkbox";
          name = "当前技能栏在上 (用于非固定模式)";
          tooltip = "开 = 当前技能栏在上\n关 = 当前技能栏在下";
        },
        --============[	Backbar Visuals	]=====================
        {
          type = "description";
          title = "[ |cffdf80非激活技能栏可见性|r ]";
        },
        {
          type = "slider";
          name = "非激活技能栏 透明度";
          tooltip = "越低，越透明";
        },
        {
          type = "slider";
          name = "非激活技能栏 去饱和度";
          tooltip = "越高，越黑白";
        },
        { type = "description"},
        --============[	Keybinds On / Off	]===================
        {
          type = "description";
          title = "[ |cffdf80快捷键文字|r ]";
        },
        {
          type = "checkbox";
          name = "显示快捷键";
          tooltip = "在技能栏上显示快捷键文字";
        },
        { type = "description"},
      };
    },
    --============[	UI Customization	]===================
    {
      type = "submenu";
      name = "|cFFFACDUI 设置|r";
      controls =
      {
        --============[	Buttom Frames	]=======================
        {
          type = "description";
          title = "[ |cffdf80技能按钮边框|r ]";
          text = "仅用于键盘模式 UI";
        },
        {
          type = "checkbox";
          name = "显示边框";
          tooltip = "为技能栏上的技能添加边框";
        },
        {
          type = "colorpicker";
          name = "边框颜色";
        },
        {
          type = "checkbox";
          name = "隐藏默认边框";
          tooltip = "隐藏默认技能栏边框\n如果已启用该设置，则在禁用时需要重新加载UI，以便非激活技能栏能正确显示";
        },
        { type = "divider" },

        --============[	Active Highlight	]===================
        {
          type = "description";
          title = "[ |cffdf80激活技能高亮|r ]";
        },
        {
          type = "checkbox";
          name = "显示高亮";
          tooltip = "激活的技能将被高亮";
        },
        {
          type = "colorpicker";
          name = "高亮颜色";
        },
        { type = "divider" },
        --============[   Toggled Highlight  ]===================
        {
          type = "description";
          title = "[ |cffdf80切换类技能高亮|r ]";
          text = "启用时为切换类技能的激活显示不同颜色。禁用时，采用激活技能高亮颜色";
        },
        {
          type = "checkbox";
          name = "显示高亮";
        },
        {
          type = "colorpicker";
          name = "高亮颜色";
        },
        { type = "divider" },
        --============[  Active Bar Arrow  ]=====================
        {
          type = "description";
          title = "[ |cffdf80激活技能栏指针|r ]";
          text = "启用后切手一次使修改生效";
        },
        {
          type = "checkbox";
          name = "显示指针";
          tooltip = "在当前技能栏旁边显示一个指针";
        },
        {
          type = "colorpicker";
          name = "指针颜色";
        },
        { type = "divider" },

        --=============[  Quickslot Position  ]==================
        {
          type = "checkbox";
          name = "调整快捷栏摆放";
          tooltip = "当隐藏指针时，使快捷栏更靠近技能栏\n在手柄模式下，还会移动终极技位置（如果|cff6600隐藏|r了终极技的快捷键）";
        },
        { type = "divider" },
        {
          type = "description";
          title = "[ |cffdf80杂项|r ]";
          text = "额外杂项设置";
        },
        {
          type = "checkbox";
          name = "显示 手柄模式终极技快捷键";
          tooltip = "在手柄模式显示 LB RB 字符";
        },
        --=============[  Skill Styles  ]==================
        {
          type = "checkbox";
          name = "在技能栏显示技能样式图标";
        },
      };
    },
    --=============[  Timer Display  ]=======================
    {
      type = "submenu";
      name = "|cFFFACD计时器 UI|r";
      controls =
      {
        {
          type = "submenu";
          name = "|cFFFACD说明|r";
          controls =
          {
            {
              type = "description";
              text = "在此你可以调整计时器的尺寸和位置，技能层数和目标数等显示\n键盘模式和手柄模式需要分别设置.\n计时器的小数点设置被应用于两种模式";
            },
          };
        },
        --============[ Keyboard UI ]=========================
        {
          type = "submenu";
          name = "|cFFFACD键盘模式 UI|r";
          controls =
          {
            --============[ Keyboard Duration ]====================
            {
              type = "submenu";
              name = "|cFFFACD计时器显示设置|r";
              controls =
              {
                {
                  type = "dropdown";
                  name = "字体";
                  tooltip = "选择计时器的字体";
                },
                {
                  type = "slider";
                  name = "字体尺寸";
                },
                {
                  type = "dropdown";
                  name = "字体样式";
                  tooltip = "选择字体显示的样式";
                },
                {
                  type = "slider";
                  name = "调整计时器高度";
                  tooltip = "移动计时器 [<- 下] 或 [上 ->]";
                },
                {
                  type = "colorpicker";
                  name = "计时器颜色";
                },
              };
            },
            --============[ Keyboard Stacks ]======================
            {
              type = "submenu";
              name = "|cFFFACD层数显示设置|r";
              controls =
              {
                {
                  type = "dropdown";
                  name = "字体";
                  tooltip = "选择键盘模式UI中技能层数的字体";
                },
                {
                  type = "slider";
                  name = "字体尺寸";
                },
                {
                  type = "dropdown";
                  name = "字体样式";
                  tooltip = "选择字体显示的样式";
                },
                {
                  type = "colorpicker";
                  name = "层数颜色";
                },
                {
                  type = "slider";
                  name = "横向移动";
                  tooltip = "移动层数 [<- 左] 或 [右 ->]";
                },
                {
                  type = "slider";
                  name = "纵向移动";
                  tooltip = "移动层数 [<- 上] 或 [下 ->]";
                },
              };
            },
            --============[ Keyboard Targets ]======================
            {
              type = "submenu";
              name = "|cFFFACD目标显示设置|r";
              controls =
              {
                {
                  type = "dropdown";
                  name = "字体";
                  tooltip = "选择键盘模式UI中技能目标的字体";
                },
                {
                  type = "slider";
                  name = "字体尺寸";
                },
                {
                  type = "dropdown";
                  name = "字体样式";
                  tooltip = "选择字体显示的样式";
                },
                {
                  type = "colorpicker";
                  name = "目标颜色";
                },
                {
                  type = "slider";
                  name = "横向移动";
                  tooltip = "移动目标 [<- 左] 或 [右 ->]";
                },
                {
                  type = "slider";
                  name = "纵向移动";
                  tooltip = "移动层数 [<- 上] 或 [下 ->]";
                },
              };
            },
            --==========[ Keyboard Ultimate Duration ]=============
            {
              type = "submenu";
              name = "|cFFFACD终极技计时器设置|r";
              controls =
              {
                {
                  type = "checkbox";
                  name = "显示终极技计时器";
                },
                { type = "description"},
                {
                  type = "dropdown";
                  name = "字体";
                  tooltip = "选择显示的字体";
                },
                {
                  type = "slider";
                  name = "字体尺寸";
                },
                {
                  type = "dropdown";
                  name = "字体样式";
                  tooltip = "选择计时器字体的样式";
                },
                {
                  type = "colorpicker";
                  name = "终极技计时器颜色";
                },
                {
                  type = "slider";
                  name = "纵向移动";
                  tooltip = "[<- 下] 或 [上 ->]";
                },
                {
                  type = "slider";
                  name = "横向";
                  tooltip = "[<- 左] 或 [右 ->]";
                },
              };
            },
            --===========[ Keyboard Ultimate Value ]===============
            {
              type = "submenu";
              name = "|cFFFACD终极点设置|r";
              controls =
              {
                {
                  type = "checkbox";
                  name = "显示 终极点";
                },
                {
                  type = "dropdown";
                  name = "显示模式";
                  tooltip = "Dynamic: 当终极点不足时，显示 当前 / 消耗。足够时，仅显示当前值\nStatic: 总是显示 当前 / 消耗";
                },
                {
                  type = "dropdown";
                  name = "字体";
                  tooltip = "选择显示的字体";
                },
                {
                  type = "slider";
                  name = "字体尺寸";
                },
                {
                  type = "dropdown";
                  name = "字体样式";
                  tooltip = "选择显示字体的样式";
                },
                {
                  type = "slider";
                  name = "纵向移动";
                  tooltip = "[<- 下] 或 [上 ->]";
                },
                {
                  type = "slider";
                  name = "横向移动";
                  tooltip = "[<- 左] 或 [右 ->]";
                },
                { type = "divider";
                },
                {
                  type = "colorpicker";
                  name = "终极点基础颜色";
                },
                {
                  type = "colorpicker";
                  name = "终极技可用颜色";
                },
                {
                  type = "colorpicker";
                  name = "满终极点颜色";
                },
                {
                  type = "colorpicker";
                  name = "终极技 '几乎可用' 颜色";
                },
                {
                  type = "slider";
                  name = "终极技 '几乎可用' 阈值 %";
                },
                { type = "divider";
                },
                {
                  type = "description";
                  title = "伙伴终极技";
                  text = "伙伴终极点的显示将会继承玩家设置\n在下面设置位置";
                },
                {
                  type = "checkbox";
                  name = "为伙伴显示终极点";
                },
                {
                  type = "slider";
                  name = "纵向移动";
                  tooltip = "[<- 下] 或 [上 ->]";
                },
                {
                  type = "slider";
                  name = "横向移动";
                  tooltip = "[<- 左] 或 [右 ->]";
                },
              };
            },
            --============[ Keyboard Quick Slot ]==================
            {
              type = "submenu";
              name = "|cFFFACD快捷栏显示设置|r";
              controls =
              {
                {
                  type = "checkbox";
                  name = "快捷栏冷却计时器";
                },
                { type = "description" },
                {
                  type = "dropdown";
                  name = "字体";
                  tooltip = "选择显示的字体";
                },
                {
                  type = "slider";
                  name = "字体尺寸";
                },
                {
                  type = "dropdown";
                  name = "字体样式";
                  tooltip = "选择显示字体的样式";
                },
                {
                  type = "colorpicker";
                  name = "计时器颜色";
                },
                {
                  type = "slider";
                  name = "纵向移动";
                  tooltip = "[<- 下] 或 [上 ->]";
                },
                {
                  type = "slider";
                  name = "横向移动";
                  tooltip = "[<- 左] 或 [右 ->]";
                },
              };
            },
          };
        },
        { type = "divider" },
        --============[	Gamepad UI	]=========================
        {
          type = "submenu";
          name = "|cFFFACD手柄模式 UI|r";
          controls =
          {
            --============[	Gamepad Duration	]===================
            {
              type = "submenu";
              name = "|cFFFACD计时器设置|r";
              controls =
              {
                {
                  type = "dropdown";
                  name = "字体";
                  tooltip = "选择显示的字体";
                },
                {
                  type = "slider";
                  name = "字体尺寸";
                },
                {
                  type = "dropdown";
                  name = "字体样式";
                  tooltip = "选择显示字体的样式";
                },
                {
                  type = "slider";
                  name = "调整计时器高度";
                  tooltip = "移动计时器 [<- 下] 或 [上 ->]";
                },
                {
                  type = "colorpicker";
                  name = "计时器颜色";
                },
              };
            },
            --============[	Gamepad Stacks	]======================
            {
              type = "submenu";
              name = "|cFFFACD层数显示设置|r";
              controls =
              {
                {
                  type = "dropdown";
                  name = "字体";
                  tooltip = "选择显示的字体";
                },
                {
                  type = "slider";
                  name = "字体尺寸";
                },
                {
                  type = "dropdown";
                  name = "字体样式";
                  tooltip = "选择显示字体的样式";
                },
                {
                  type = "slider";
                  name = "横向移动";
                  tooltip = "移动层数 [<- 左] 或 [右 ->]";
                },
                {
                  type = "slider";
                  name = "纵向移动";
                  tooltip = "移动层数 [<- 上] 或 [下 ->]";
                },
                {
                  type = "colorpicker";
                  name = "层数颜色";
                },
              };
            },
            --============[	Gamepad Targets	]======================
            {
              type = "submenu";
              name = "|cFFFACD目标显示设置|r";
              controls =
              {
                {
                  type = "dropdown";
                  name = "字体";
                  tooltip = "选择显示的字体";
                },
                {
                  type = "slider";
                  name = "字体尺寸";
                },
                {
                  type = "dropdown";
                  name = "字体样式";
                  tooltip = "选择显示字体的样式";
                },
                {
                  type = "slider";
                  name = "横向移动";
                  tooltip = "移动目标 [<- 左] 或 [右 ->]";
                },
                {
                  type = "slider";
                  name = "纵向移动";
                  tooltip = "移动目标 [<- 上] or [下 ->]";
                },
                {
                  type = "colorpicker";
                  name = "目标颜色";
                },
              };
            },
            --============[ Gamepad Ultimate  ]====================
            {
              type = "submenu";
              name = "|cFFFACD终极技计时器设置|r";
              controls =
              {
                {
                  type = "checkbox";
                  name = "显示终极技计时器";
                },
                { type = "description"},
                {
                  type = "dropdown";
                  name = "字体";
                  tooltip = "选择计时器显示的字体";
                },
                {
                  type = "slider";
                  name = "字体尺寸";
                },
                {
                  type = "dropdown";
                  name = "字体样式";
                  tooltip = "选择显示字体的样式";
                },
                {
                  type = "colorpicker";
                  name = "终极技计时器颜色";
                },
                {
                  type = "slider";
                  name = "纵向移动";
                  tooltip = "[<- 下] 或 [上 ->]";
                },
                {
                  type = "slider";
                  name = "横向移动";
                  tooltip = "[<- 左] 或 [右 ->]";
                },
              };
            },
            --===========[ Gamepad Ultimate Value ]===============
            {
              type = "submenu";
              name = "|cFFFACD终极点设置|r";
              controls =
              {
                {
                  type = "checkbox";
                  name = "显示终极点";
                },
                {
                  type = "dropdown";
                  name = "显示模式";
                  tooltip = "Dynamic: 当终极点不足时，显示 当前 / 消耗。足够时，仅显示当前终极点\nStatic: 总是显示 当前 / 消耗";
                },
                {
                  type = "dropdown";
                  name = "字体";
                  tooltip = "选择显示的字体";
                },
                {
                  type = "slider";
                  name = "字体尺寸";
                },
                {
                  type = "dropdown";
                  name = "字体样式";
                  tooltip = "选择显示字体的样式";
                },
                {
                  type = "slider";
                  name = "纵向移动";
                  tooltip = "[<- 下] 或 [上 ->]";
                },
                {
                  type = "slider";
                  name = "横向移动";
                  tooltip = "[<- 左] 或 [右 ->]";
                },
                { type = "divider";
                },
                {
                  type = "colorpicker";
                  name = "终极点基础颜色";
                },
                {
                  type = "colorpicker";
                  name = "终极技可用颜色";
                },
                {
                  type = "colorpicker";
                  name = "满终极点颜色";
                },
                {
                  type = "colorpicker";
                  name = "终极技 '几乎可用' 颜色";
                },
                {
                  type = "slider";
                  name = "终极技 '几乎可用' 阈值 %";
                },
                { type = "divider";
                },
                {
                  type = "description";
                  title = "伙伴终极技";
                  text = "伙伴终极点显示将会继承玩家设置\n在下方调整位置";
                },
                {
                  type = "checkbox";
                  name = "显示伙伴终极点";
                },
                {
                  type = "slider";
                  name = "纵向移动";
                  tooltip = "[<- 下] 或 [上 ->]";
                },
                {
                  type = "slider";
                  name = "横向移动";
                  tooltip = "[<- 左] 或 [右 ->]";
                },
              };
            },
            --============[	Gamepad Quick Slot	]==================
            {
              type = "submenu";
              name = "|cFFFACD快捷栏显示设置|r";
              controls =
              {
                {
                  type = "checkbox";
                  name = "快捷栏冷却计时器";
                },
                { type = "description";
                },
                {
                  type = "dropdown";
                  name = "字体";
                  tooltip = "选择显示的字体";
                },
                {
                  type = "slider";
                  name = "字体尺寸";
                },
                {
                  type = "dropdown";
                  name = "字体样式";
                  tooltip = "选择显示字体的样式";
                },
                {
                  type = "colorpicker";
                  name = "快捷栏计时器颜色";
                },
                {
                  type = "description";
                  text = "调整位置";
                },
                {
                  type = "slider";
                  name = "纵向移动";
                  tooltip = "[<- 下] 或 [上 ->]";
                },
                {
                  type = "slider";
                  name = "横向移动";
                  tooltip = "[<- 左] 或 [右 ->]";
                },
              };
            },
          };
        },
        { type = "divider" },
        --============[	Expiration Settings	]=================
        {
          type = "submenu";
          name = "|cFFFACD键盘模式 & 手柄模式 通用设置|r";
          controls =
          {
            --============[  Timer Fade Delay  ]==================
            {
              type = "description";
              title = "[ |cffdf80计时器渐隐|r ]";
            },
            {
              type = "checkbox";
              name = "延迟计时器隐藏";
              tooltip = "在计时器抵达0后延长显示一段时间，以提醒技能过期";
            },
            {
              type = "slider";
              name = "隐藏延迟";
              tooltip = "在技能过期后，你想要计时器显示0的额外时间";
            },
            { type = "description"},
            --============[  Timer Decimals  ]====================
            {
              type = "description";
              title = "[ |cffdf80计时器小数点显示|r ]";
            },
            {
              type = "dropdown";
              name = "启用 计时器小数点";
              tooltip = "Always = 激活计时器时总是显示小数点\nExpire = 启用阈值设置\nNever = 从不显示";
            },
            {
              type = "slider";
              name = "显示小数点的阈值";
              tooltip = "当计时器少于选定秒数后，开始显示小数点";
            },
            { type = "description"},
            --============[  Expiring Effect Start  ]=============
            {
              type = "description";
              title = "[ |cffdf80过期计时器显示效果|r ]";
            },
            {
              type = "slider";
              name = "过期计时器阈值";
              tooltip = " 当计时器少于选定秒数后，改变计时器的颜色和高光";
            },
            --============[	Expiring Timer Color	]=============
            { 
              type = "description"; 
              title = "[ |cffdf80计时器文本|r ]";
            },
            {
              type = "checkbox";
              name = "过期计时器 字体颜色";
              tooltip = "当计时器少于选定秒数后，改变计时器颜色";
            },
            {
              type = "colorpicker";
              name = "选择文本颜色";
            },
            { type = "description"},
            --============[	Expiring Highlight Color	]=========
            { 
              type = "description"; 
              title = "[ |cffdf80高亮|r ]";
            },
            {
              type = "checkbox";
              name = "过期计时器 高亮颜色";
              tooltip = "当计时器少于选定秒数后，改变计时器高亮";
            },
            {
              type = "colorpicker";
              name = "选择高亮颜色";
            },
          };
        },
      };
    },
    { type = "divider" },
    --==============[  Ability Config  ]=====================
    {
      type = "submenu";
      name = "|cFFFACD技能配置|r";
      controls =
      {
        {
          type = "submenu";
          name = "|cFFFACD当前装备技能|r";
          controls =
          {
            {
              type = "description";
              title = "主手";
            },
            {
              type = "description";
              title = "副手";
            },
          };
        },
        {
          type = "submenu";
          name = "|cFFFACD追踪效果|r";
          controls =
          {
            {
              type = "submenu";
              name = "说明";
              controls =
              {
                {
                  type = "description";
                  text = "在此你可以编辑特定技能的计时器需要追踪什么效果\n你需要在点击确定前，填写技能ID和想要新追踪的效果\n该功能尚处早期测试，部分技能可能出错。你可以随时重置你修改过的技能，使之正常运行";
                },
              };
            },
            { type = "divider" },
            {
              type = "checkbox";
              name = "账户设置";
              tooltip = "启用时，为该账户下所有角色应用修改。禁用时，只为当前角色应用修改";
            },
            { type = "divider" },
            {
              type = "dropdown";
              name = "已保存的修改";
              tooltip = "可以查看你进行过修改的技能";
            },
            { type = "description"},
            {
              type = "editbox";
              name = "技能ID";
              tooltip = "输入你想要修改技能的ID（数字）";
            },
            {
              type = "description";
              title = "所选技能:";
            },
            {
              type = "dropdown";
              name = "修改类型";
              tooltip = "选择你想要对技能应用哪种修改（Disable：禁用追踪；Reset：重置为默认；New ID：设置新追踪）";
            },
            { type = "description"},
            {
              type = "editbox";
              name = "新的效果ID";
              tooltip = "输入你想要为所选技能追踪的新的效果ID（数字）\n译注：在BUI插件的增益一栏设置中较易获取各种Buff的ID";
            },
            {
              type = "description";
              title = "所选效果:";
            },
            {
              type = "button";
              name = "确认修改";
            },
          };
        },
        --==============[  External Buff Tracking  ]==============
        {
          type = "submenu";
          name = "|cFFFACD从他人获取的Buffs|r";
          controls =
          {
            {
              type = "submenu";
              name = "说明";
              controls =
              {
                { type = "description"; text = "在此你可以允许计时器追踪队友给予Buff的持续时间\n你也可以选择不想追踪的效果，如果其来源不是自身";
                },
              };
            },
            {
              type = "checkbox";
              name = "追踪其他人给予的Buffs";
            },
            { type = "description"},
            {
              type = "editbox";
              name = "添加黑名单";
              tooltip = "当你从其他人获取效果时，不想更新这些技能ID的计时器";
            },
            {
              type = "description";
              title = "所选Buff:";
            },
            { type = "description"},
            {
              type = "button";
              name = "确认黑名单";
            },
            { type = "description"},
            {
              type = "dropdown";
              name = "黑名单列表";
            },
            {
              type = "button";
              name = "从黑名单移除";
            },
          };
        },
        --==================[  Target Debuffs  ]==================
        {
          type = "submenu";
          name = "|cFFFACD目标的Debuffs|r";
          controls =
          {
            {
              type = "checkbox";
              name = "当前目标Debuff计时器";
              tooltip = "当改变目标时更新Debuff持续时间计时器，以具体显示目标身上的剩余时间\n仅用于存活的目标";
            },
            {
              type = "checkbox";
              name = "为最后目标保持计时器";
              tooltip = "当你看向其他方向时保持计时器，直到你瞄准一个新的目标";
            },
            {
              type = "checkbox";
              name = "显示 嘲讽免疫层数";
              tooltip = "多次嘲讽会导致目标获得嘲讽免疫，该选项追踪嘲讽免疫状态";
            },
            {
              type = "description";
              text = "更多选项，敬请期待";
            },
          }
        },
        --============[  Additional Tracking Options  ]===========
        {
          type = "submenu";
          name = "|cFFFACD额外追踪选项|r";
          controls =
          {
            {
              type = "description";
              title = "[ |cffdf80追踪效果的持续阈值|r ]";
              text = "根据效果的持续时间，设置过短或过长时无视这些效果";
            },
            {
              type = "slider";
              name = "最小值";
            },
            {
              type = "slider";
              name = "最大值";
            },
            { type = "divider" },
            {
              type = "checkbox";
              name = "在技能栏显示 咏唱/引导计时器";
              tooltip = "当技能为咏唱或引导类型时，在使用时显示计时器";
            },
            { type = "divider" },
            {
              type = "description";
              title = "[ |cffdf80多目标效果追踪选项|r ]";
              text = "配置目标计数的表现和追踪的技能";
            },
            {
              type = "checkbox";
              name = "显示目标计数";
              tooltip = "可追踪的多目标技能，将在左上角显示目标计数";
            },
            {
              type = "checkbox";
              name = "仅单目标生效时也显示目标计数";
              tooltip = "当仅有一个目标生效效果时，也显示目标计数。注意当'目标的Debuffs'设置启用时，该选项不会对Debuff监控有效。";
            },
            { type = "divider" },
            {
              type = "editbox",
              name = "添加黑名单",
              tooltip =
              "输入你不想要追踪目标计数的技能ID",
            },
            {
              type = "description",
              title = "所选技能:",
            },
            { type = "description"},
            {
              type = "button",
              name = "确认黑名单",
            },
            { type = "description"},
            {
              type = "dropdown",
              name = "黑名单列表",
            },
            {
              type = "button",
              name = "从黑名单移除",
            },
          };
        },
      };
    },
    { type = "divider" },

    --============[	Miscellaneous	]=======================
    {
      type = "submenu";
      name = "|cFFFACD杂项|r";
      controls =
      {

        {
          type = "checkbox";
          name = "死亡时显示技能栏";
          tooltip = "启用时，在死亡状态也显示技能栏";
        },
        {
          type = "checkbox";
          name = "阻止在交易中使用技能";
          tooltip = "在交易中时阻止使用技能，但允许在设置和地图界面使用技能\n这个功能将会阻止 Perfect Weave 插件正常工作";
        },
        {
          type = "checkbox";
          name = "启用 Perfect Weave 插件兼容";
          tooltip = "如果你想同时使用 FAB+ 和 Perfect Weave 插件，推荐开启";
        },
        { type = "description"},
        --============[	Enemy Markers	]=======================
        {
          type = "description";
          title = "[ |cffdf80敌方标记|r ]";
          text = "这复制了 Untaunted 插件中类似的功能";
        },
        {
          type = "checkbox";
          name = "显示敌方标记";
          tooltip = "在你正在交战的敌方头顶显示红色箭头";
        },
        {
          type = "slider";
          name = "敌方标记尺寸";
        },
        { type = "divider" },
        --===============[  GCD Tracker  ]======================
        {
          type = "submenu";
          name = "|cFFFACDGCD 追踪器|r";
          controls =
          {
            {
              type = "description";
              title = "早期测试版本\n工作正常但不太美观";
            },
            {
              type = "checkbox";
              name = "启用GCD追踪";
            },
            {
              type = "checkbox";
              name = "仅战斗中";
            },

            { type = "divider" },

            {
              type = "slider";
              name = "高度";
            },
            {
              type = "slider";
              name = "宽度";
            },
            {
              type = "colorpicker";
              name = "填充颜色";
            },
            {
              type = "colorpicker";
              name = "边缘颜色";
            },
          };
        },
      };
    },
    { type = "divider" },
    --===============[  Debugging  ]========================
    {
      type = "description";
      title = "[ |cffdf80调试|r ]";
    },
    {
      type = "checkbox";
      name = "调试模式";
      tooltip = "在聊天栏显示调试信息";
    },
    { type = "divider" },
    {
      type = "description";
    },
  }
  
  --Special Setting
  BB.SetMenuPatch(FancyActionBar.GetName().."Menu", NewOption)
  
return true end

--Furniture Catalogue
BB.AddonList["FurnitureCatalogue"] = function() if not FurC then return false end
  local filterDisabled = "禁用此过滤器"
  local strings = {
    FURC_AV_RAZ = "拉祖法",
    FURC_AV_MUL = "穆尔维瑟·瓦林",

    FURC_AV_NAR = "纳瓦文德",
    FURC_AV_ALI = "阿里诺尔, 河边集市",
    FURC_AV_UNW = "安沃尔蒂",
    FURC_AV_CUR = "库瑞威",
    FURC_AV_NAL = "纳利瑟文",
    FURC_AV_TAR = "塔米姆",
    FURC_AV_LTS = "听汪海",
    FURC_AV_HER = "赫拉达·加斯克罗夫特",
    FURC_AV_FRO = "雪发弗罗希尔德",
    FURC_AV_LOT = "洛佐图斯克",
    FURC_AV_ROH = "罗齐卡",
    FURC_AV_ATH = "马瑟拉各",
    FURC_AV_MAL = "马拉迪克",
    FURC_AV_KRR = "拉兹特布",
    FURC_AV_HAR = "汉武夫",
    FURC_KITTY_LATHA = "拉萨西姆",
    FURC_KITTY_YATAVA = "亚塔瓦",
    FURC_SKYRIM_MASELA = "玛瑟拉",
    FURC_SKYRIM_NETINDELL = "玛瑟拉",
    FURC_AV_ADO = "阿多萨·维拉洛",
    FURC_AV_ENC = "附魔师",
    FURC_AV_ALC = "炼金术士",
    FURC_AV_OUT = "罪犯避难所, 商人",
    FURC_AV_COO = "厨师",
    FURC_AV_CLO = "制衣师",
    FURC_AV_CAR = "木匠",
    FURC_AV_BSM = "铁匠",
    FURC_AV_ARTAEUM = "阿蒂姆",
    FURC_AV_CAPITAL = "任何阵营首都",

    -- Furniture Shopping List
    SI_FURC_ONE_TO_SHOPPINGLIST =         "添加 1 到购物清单",
    SI_FURC_FIVE_TO_SHOPPINGLIST =        "添加 5 到购物清单",
    SI_FURC_TOGGLE_SHOPPINGLIST =         " 切换购物清单",

    -- GUI and debug
    SI_FURC_MENU_HEADER =                 "- |cD3B830家具|r:",
    SI_FURC_REMOVE_FAVE =                 " 移除收藏夹",
    SI_FURC_ADD_FAVE =                     " 添加收藏夹",
    SI_FURC_POST_ITEMSOURCE =             " 发布项目来源",
    SI_FURC_POST_RECIPE =                 " 发布食谱",
    SI_FURC_POST_ITEM =                   " 发布项目",
    SI_FURC_POST_MATERIAL =               " 发布材料",
    SI_FURC_DIALOGUE_RESET_DB_HEADER =    "真的要重新创建家具数据库吗？",
    SI_FURC_DIALOGUE_RESET_DB_BODY =      "这将从头开始重新创建 FurnitureCatalogue 数据库",
    SI_FURC_TEXTBOX_FILTER_DEFAULT =      "按文本搜索过滤",
    SI_FURC_DEBUG_CHARSCANCOMPLETE =      "家具目录：字符扫描完成...",
    SI_FURC_VERBOSE_STARTUP =             "家具目录：如果您错过任何食谱，请点击 UI 中的刷新按钮触发对您的家具工匠的扫描.",
    SI_FURC_VERBOSE_DB_UPTODATE =         "家具目录：数据库是最新的。",
    SI_FURC_VERBOSE_SCANNING_DATA_FILE =  "家具目录：扫描数据文件...",
    SI_FURC_VERBOSE_SCANNING_CHARS =      "不是扫描文件，现在扫描角色知识...",
    SI_FURC_ITEMSOURCE_EMPTY =            "项目来源未知。\n尝试重新扫描文件（刷新按钮右键单击）.\n如果该物品仍然未知 - 并且不是周末家具商当前库存的一部分 - 请将带有物品链接和来源的邮件发送至@berylbones。",
    SI_FURC_RUMOUR_SOURCE_RECIPE =        "此配方已被数据挖掘，但未在游戏中出现",
    SI_FURC_RUMOUR_SOURCE_ITEM =          "该物品已被数据挖掘，但未在游戏中出现",
    SI_FURC_STRING_CRAFTABLE_BY =         "可以制作 ",
    SI_FURC_STRING_CANNOT_CRAFT =         "你还不能制作这个",
    SI_FURC_STRING_VENDOR =               "所售 <<1>> in <<2>> (<<3>><<4>>)",
    SI_FURC_STRING_AP =                   " AP",
    SI_FURC_STRING_ASSHOLE =              "扎尼尔·瑟兰",
    SI_FURC_STRING_HC =                   "空洞之城",
    SI_FURC_STRING_WASSOLDBY =            "被卖给 <<1>> in <<2>> (<<3>>) <<4>>",
    SI_FURC_STRING_WEEKEND_AROUND =       "(大约 <<1>>)",
    SI_FURC_REQUIRES_ACHIEVEMENT =        ", 要求 ",
    SI_FURC_PSIJIC_RANK =                 "赛伊克教团等级 ",
    SI_FURC_STRING_WRIT_VENDOR =          "大师令状供应商",
    SI_FURC_STRING_WRIT_VENDOR_TT =       "可在您联盟的首都获得大师令状",
    SI_FURC_STRING_ROLIS =                "所售 |cd68957罗利斯·哈拉鲁|r <<1>>",
    SI_FURC_STRING_FAUSTINA =             "所售 |cd68957法斯提纳·库里奥|r <<1>>",
    SI_FURC_STRING_FOR_VOUCHERS =         "for <<1>> 券",
    SI_FURC_FESTIVAL_DROP =               "期间可以获得 <<1>> (<<2>>)",
    SI_FURC_WW_DUNGEON_DROP =             "怪物猎手要塞掉落/献祭之境",
    SI_FURC_DOM_DUNGEON_DROP =            "掉落在马拉塔深渊",
    SI_FURC_STRING_RECIPELEARNED =        "配方学习： <<1>> <<2>> <<3>>",
    SI_FURC_STRING_RECIPESFORCHAR =       "食谱 <<1>>",
    SI_FURC_STRING_VOUCHER_VENDOR =       "由任一者出售 罗利斯·哈拉鲁 or 法斯提纳·库里奥",
    SI_FURC_QUESTREWARD =                 "任务奖励 ",
    SI_FURC_GEYSER =                      "夏暮岛上的间歇泉奖励蛤蜊掉落",
    SI_FURC_GIANT_CLAM =                  "夏暮岛上的巨蛤和间歇泉奖励蛤蜊掉落",
    SI_FURC_ELF_PIC =                     "很少从夏暮岛的宝箱中掉落",
    SI_FURC_LEVELUP =                     "可以作为升级奖励获得",
    SI_FURC_SLAVES_DAILY =                "来自 幽暗沼泽 每日任务奖励箱",
    
    -- =============================== --
    -- ============ MENU ============= --
    -- =============================== --

    SI_FURC_STRING_MENU_DEBUG =               "启用调试输出",
    SI_FURC_STRING_MENU_RESET_DB_NAME =       "|cFF0000重置数据库",
    SI_FURC_STRING_MENU_RESET_DB_TT =         "这将重置家具数据库。",
    SI_FURC_STRING_MENU_RESET_DB_WARNING =    "您的所有数据都将被重置。 只会考虑此角色的配方知识。",
    SI_FURC_STRING_MENU_RESCAN_RUMOUR_NAME =  "重新扫描谣言食谱",
    SI_FURC_STRING_MENU_RESCAN_RUMOUR_TT =    "将根据更新列表更新谣言食谱",
    SI_FURC_STRING_MENU_SCAN_FILES_NAME =     "扫描文件",
    SI_FURC_STRING_MENU_SCAN_FILES_TT =       "将对家具目录文件中的数据进行全面扫描",
    SI_FURC_STRING_MENU_SCAN_CHAR_NAME =      "扫描角色",
    SI_FURC_STRING_MENU_SCAN_CHAR_TT =        "将对您已知的家具配方进行全面扫描并相应地更新数据库",
    SI_FURC_STRING_MENU_DELETE_CHAR_NAME =    "删除角色",
    SI_FURC_STRING_MENU_DELETE_CHAR_TT =      "从数据库中删除该角色的所有知识。 \n下次启用加载项登录时，将再次扫描角色。 \n 如果他们不知道任何食谱，角色名称将不会出现在下拉列表中！",
    SI_FURC_STRING_MENU_DELETE_CHAR_WARNING = "角色知识会被立即抹去",
    SI_FURC_STRING_MENU_ENABLE_SHOPPINGLIST = "启用集成？",
    SI_FURC_STRING_MENU_SKIP_INITIALSCAN =    "跳过初始扫描？",
    SI_FURC_STRING_MENU_SKIP_INITIALSCAN_TT = "选中此项以在登录时不扫描角色的食谱。 \n多亏了 votan 出色的 LibAsync，无论如何，延迟现在都消失了。",
    SI_FURC_STRING_MENU_HEADER_ICONS =        "库存和银行图标",
    SI_FURC_STRING_MENU_ADD_ITEMS_NAME =      "将项目添加到已知/未知的食谱？",
    SI_FURC_STRING_MENU_ADD_ITEMS_TT =        "您不应该注意到任何延迟",
    SI_FURC_STRING_MENU_IT_UNKNOWN_NAME =     "只标记未知的食谱？",
    SI_FURC_STRING_MENU_IT_THIS_ONLY =        "只针对这个角色？",
    SI_FURC_STRING_MENU_IT_THIS_ONLY_TT =     "否则将在整个帐户范围内。",
    SI_FURC_STRING_MENU_USETINY =             "使用微小的界面？",
    SI_FURC_STRING_MENU_USETINY_TT =          "使用更小的界面 (像Craft Store). \n您可以通过单击 +/- 按钮从 UI 切换它。",

    SI_FURC_STRING_MENU_STARTSILENT =         "静静地开始?",
    SI_FURC_STRING_MENU_STARTSILENT_TT =      "抑制启动消息",
    SI_FURC_STRING_MENU_SHOWICONONLEFT =      "在左侧显示已知/未知图标?",
    SI_FURC_STRING_MENU_SHOWICONONLEFT_TT =   "在库存项目的左侧或右侧显示绿色复选/红色 X 图标（需要重新加载）",
    SI_FURC_STRING_MENU_FONTSIZE =            "字体大小",
    SI_FURC_STRING_MENU_FONTSIZE_TT =         "在此处调整 FurnitureCatalogue 的字体大小",
    SI_FURC_STRING_MENU_DEFAULT_DD =          "默认下拉列表值",
    SI_FURC_STRING_MENU_DEFAULT_DD_USE =      "将在初始启动时设置",
    SI_FURC_STRING_MENU_DEFAULT_DD_USE_TT =   "如果您打开和关闭 UI，这些不会重置",
    SI_FURC_STRING_MENU_DEFAULT_DD_RESET =    "关闭 UI 时重置过滤器?",
    SI_FURC_STRING_MENU_DEFAULT_DD_RESET_TT = "如果您选中此项，打开和关闭将导致过滤器重置为您在下面设置的任何值。",
    SI_FURC_STRING_MENU_DEFAULT_DD_SOURCE =   "默认源过滤器",
    SI_FURC_STRING_MENU_DEFAULT_DD_CHAR =     "默认字符过滤器",
    SI_FURC_STRING_MENU_DEFAULT_DD_VERSION =  "默认版本过滤器",
    SI_FURC_STRING_MENU_FILTERING =           "目录过滤",
    SI_FURC_STRING_MENU_FILTER_BOOKS =        "魔法公会书籍",
    SI_FURC_STRING_MENU_FILTER_BOOKS_N =      "把书藏起来？",
    SI_FURC_STRING_MENU_FILTER_BOOKS_TT =     "一个真正的书迷知道每件事都在心里。 隐藏家具目录中的书籍？",
    SI_FURC_STRING_MENU_LUXURY =              "豪华家具",
    SI_FURC_STRING_MENU_LUXURY_N =            "将奢侈品视为可购买的物品？",
    SI_FURC_STRING_MENU_LUXURY_TT =           "这将显示 扎尼尔·瑟兰 出售的所有商品 '可购买' 并停用自定义筛选器",
    SI_FURC_STRING_MENU_LUXURY_WARN =         "隐藏下拉条目需要重新加载 UI（为了您的方便不会自动发生）",
    SI_FURC_STRING_MENU_RUMOUR =              "传闻食谱",
    SI_FURC_STRING_MENU_RUMOUR_DESC =         "家具数据库包含我已通过数据挖掘的食谱列表。\n然而，并不是所有这些都在游戏中出现过。\n启用此选项可将它们从默认过滤器中排除。\n您仍然可以使用他们自己的过滤器查看它们，您可以在下面禁用它们。",
    SI_FURC_STRING_CONTEXTMENU_INVENTORY =    "禁用库存中的上下文菜单？",
    SI_FURC_STRING_CONTEXTMENU_INVENTORY_TT = "禁用库存项目的上下文，例如发布材料和添加到收藏夹。",
    SI_FURC_STRING_CONTEXTMENU_DIVIDER =      "不要在上下文菜单中使用分隔符？",
    SI_FURC_STRING_CONTEXTMENU_DIVIDER_TT =   "在 - 家具条目上方的上下文菜单中添加分隔符。 勾选禁用",
      
    SI_FURC_SHOW_RUMOUR_TT =                  "仅确认项目。 点击显示谣言项目。",
    SI_FURC_HIDE_RUMOUR_TT =                  "显示谣言（未经证实）的项目。 点击隐藏。",
    
    SI_FURC_SHOW_CROWN_TT =                   "隐藏的皇冠商店。 点击显示。",
    SI_FURC_HIDE_CROWN_TT =                   "显示皇冠商店。 点击隐藏。",
      
    SI_FURC_STRING_MENU_RUMOUR_N =            "隐藏谣言食谱？",
    
    SI_FURC_STRING_MENU_CROWN =               "皇冠商店物品",
    SI_FURC_STRING_MENU_CROWN_N =             "隐藏皇冠商店物品?",
    SI_FURC_STRING_MENU_CROWN_DESC =          "每当工具提示显示家具项目时，家具数据库就会更新。 \n有些物品只能通过皇冠商店获得。\n选中此框可将它们排除在默认过滤器之外 (您仍然可以通过从源下拉列表中选择“皇冠商店”来查看它们）.",
    SI_FURC_STRING_MENU_FALL_HIDE_UI_BUTTON = "在搜索框中隐藏 UI 按钮?", 

      -- Filter text search
    SI_FURC_STRING_MENU_HEADER_F_ALL_ON_TEXT =  "文本搜索的过滤器设置",
    SI_FURC_STRING_MENU_F_ALL_ON_TEXT =         "配置此过滤器",
    SI_FURC_STRING_MENU_HEADER_F_ALL_DESC =     "使用禁用的下拉菜单为文本搜索配置过滤器设置。 \n这些设置只有在您没有设置来源、字符或版本过滤器时才会生效。",

    SI_FURC_STRING_MENU_FILTER_ALL_ON_TEXT =    "在没有设置下拉过滤器的情况下进行文本搜索时搜索过滤的项目?",
    SI_FURC_STRING_MENU_FILTER_ALL_ON_TEXT_TT = "在没有任何下拉菜单的情况下进行文本搜索时 ",
    SI_FURC_STRING_MENU_FALL_HIDE_BOOKS =       "仍然隐藏书籍",
    SI_FURC_STRING_MENU_FALL_HIDE_BOOKS_TT =    "即使过滤所有项目，仍然隐藏书籍?",
    SI_FURC_STRING_MENU_FALL_HIDE_CROWN =       "无论如何隐藏皇冠商店物品",
    SI_FURC_STRING_MENU_FALL_HIDE_CROWN_TT =    "即使过滤所有物品，仍然隐藏皇冠商店物品？",
    SI_FURC_STRING_MENU_FALL_HIDE_RUMOUR =      "无论如何隐藏谣言项目",
    SI_FURC_STRING_MENU_FALL_HIDE_RUMOUR_TT =   "即使在过滤所有项目时，仍然隐藏谣言项目?",
    
      -- Hide menu entries
    SI_FURC_STRING_MENU_HIDE_MENU =               "隐藏菜单项?",
    SI_FURC_STRING_MENU_HIDE_MENU_TT =            "从下拉菜单中隐藏“皇冠商店”和“谣言食谱”\n默认情况下为皇冠商店激活，因为还没有任何项目",
    SI_FURC_STRING_MENU_HIDE_MENU_RUMOUR =        "隐藏“谣言食谱”下拉条目?",
    SI_FURC_STRING_MENU_HIDE_MENU_CROWN =         "隐藏“皇冠商店”下拉条目？",
    SI_FURC_STRING_MENU_HIDE_MENU_TT =            "需要重新加载 UI (为了您的方便，不会自动发生)",
    SI_FURC_STRING_MENU_TOOLTIP =                 "启用工具提示?",
    SI_FURC_STRING_MENU_TOOLTIP_COLOR =           "为工具提示着色以使其清晰?",
    SI_FURC_STRING_MENU_TOOLTIP_COLOR_TT =        "将区分颜色“能”和“不能”",
    SI_FURC_STRING_MENU_TOOLTIP_HIDE_KNOWN =      "从工具提示中隐藏项目知识",
    SI_FURC_STRING_MENU_TOOLTIP_HIDE_KNOWN_TT =   "从工具提示中隐藏“可以由...制作”",
    SI_FURC_STRING_MENU_TOOLTIP_HIDE_UNKNOWN =    "如果项目未知则隐藏",
    SI_FURC_STRING_MENU_TOOLTIP_HIDE_UNKNOWN_TT = "隐藏'你还不能制作这个'",
    SI_FURC_STRING_MENU_TOOLTIP_HIDE_SOURCE =     "隐藏物品来源?",
    SI_FURC_STRING_MENU_TOOLTIP_HIDE_STATION =    "隐藏制作站?",

    -- =============================== --
    -- ==== GUI: Dropdown entries ==== --
    -- =============================== --

    SI_FURC_NONE =                "源过滤器：关闭",
    SI_FURC_FAVE =                "收藏夹",
    SI_FURC_CRAFTING =            "可制作：全部",
    SI_FURC_CRAFTING_KNOWN =      "可制作：已知",
    SI_FURC_CRAFTING_UNKNOWN =    "可制作：未知",
    SI_FURC_VENDOR =              "可购买（金币）",
    SI_FURC_PVP =                 "可购买 (AP)",
    SI_FURC_CROWN =               "皇冠商店",
    SI_FURC_RUMOUR =              "谣言项目",
    SI_FURC_LUXURY =              "奢侈品",
    SI_FURC_RUMOUR =              "谣言项目",

    SI_FURC_FILTER_VERSION_OFF =      "版本过滤器: 关",
    SI_FURC_FILTER_VERSION_HS =       "家园",
    SI_FURC_FILTER_VERSION_M =        "晨风",
    SI_FURC_FILTER_VERSION_R =        "瑞驰号角",
    SI_FURC_FILTER_VERSION_CC =       "发条城",
    SI_FURC_FILTER_VERSION_DRAGON =   "龙骨",
    SI_FURC_FILTER_VERSION_ALTMER =   "夏暮岛",
    SI_FURC_FILTER_VERSION_WEREWOLF = "猎狼人",
    SI_FURC_FILTER_VERSION_SLAVES =   "幽暗沼泽",
    SI_FURC_FILTER_VERSION_WOTL =     "怒灵石",
    SI_FURC_FILTER_VERSION_KITTY =    "艾斯维尔",
    SI_FURC_FILTER_VERSION_SCALES =   "断鳞者",
    SI_FURC_FILTER_VERSION_DRAGON2 =  "龙之要塞",
    SI_FURC_FILTER_VERSION_HARROW =   "血疫风暴",
    SI_FURC_FILTER_VERSION_SKYRIM =   "灰沼",
    SI_FURC_FILTER_VERSION_STONET =   "石与荆棘",
    SI_FURC_FILTER_VERSION_MARKAT =   "马卡斯城",
    SI_FURC_FILTER_VERSION_FLAMES =   "野心之火",
    SI_FURC_FILTER_VERSION_BLACKW =   "黑木",
    SI_FURC_FILTER_VERSION_DEADL =    "死地",
    SI_FURC_FILTER_VERSION_TIDES = 	"潮起",
    SI_FURC_FILTER_VERSION_BRETON = 	"高岛",
    SI_FURC_FILTER_VERSION_DEPTHS = 	"失落深渊",
    SI_FURC_FILTER_VERSION_DRUID = 	"焱歌",
    SI_FURC_FILTER_VERSION_SCRIBE = 	"命运书写师",
    SI_FURC_FILTER_VERSION_NECROM = 	"死灵之地",
    SI_FURC_FILTER_VERSION_BASED = "基础游戏补丁",
    SI_FURC_FILTER_VERSION_ENDLESS = "泰尔瓦尼的秘密",

    -- =============================== --
    -- = GUI: Dropdown entry tooltip = --
    -- =============================== --

    SI_FURC_NONE_TT =             "禁用此过滤器",
    SI_FURC_FAVE_TT =             "显示您的收藏夹",
    SI_FURC_CRAFTING_TT =         "显示所有可制作的物品",
    SI_FURC_CRAFTING_KNOWN_TT =   "仅显示已知的可制作物品",
    SI_FURC_CRAFTING_UNKNOWN_TT = "仅显示未知的可制作物品",
    SI_FURC_VENDOR_TT =           "仅显示无法制作的物品",
    SI_FURC_PVP_TT =              "以联盟点数出售的物品",
    SI_FURC_CROWN_TT =            "显示只能从皇冠商店获得的物品",
    SI_FURC_RUMOUR_TT =           "已被数据挖掘但尚未确认存在的物品和配方",
    SI_FURC_LUXURY_TT =           "某些时候由 扎尼尔·瑟兰, 西塞罗的一般杂货铺, 冷港 出售的物品",
    SI_FURC_OTHER_TT =            "显示可以采集/偷窃/找到的物品",
          
    SI_FURC_FILTER_VERSION_OFF_TT =       filterDisabled,
    SI_FURC_FILTER_VERSION_HS_TT =        "家园 更新中发布的项目", 
    SI_FURC_FILTER_VERSION_M_TT =         "YOU N\'WAH!", 
    SI_FURC_FILTER_VERSION_R_TT =         "因为我们所需要的只是更多的瑞驰人n", 
    SI_FURC_FILTER_VERSION_CC_TT =        "飞轮转动的地方，黄铜很漂亮", 
    SI_FURC_FILTER_VERSION_DRAGON_TT =    "如果你从 纳西斯·德伦 那里得到这个，那么......", 
    SI_FURC_FILTER_VERSION_ALTMER_TT =    "还是觉得丹莫不好？",
    SI_FURC_FILTER_VERSION_WEREWOLF_TT =  "在狩猎场, 狼人追杀你",
    SI_FURC_FILTER_VERSION_SLAVES_TT =    "亚龙人的孩子在学校学什么？希思特树.",
    SI_FURC_FILTER_VERSION_WOTL_TT =      "怒灵石!",
    SI_FURC_FILTER_VERSION_KITTY_TT =     "虎人的家具, 如果你有金币!",
    SI_FURC_FILTER_VERSION_SCALES_TT =    "Fus Ro Dah?",
    SI_FURC_FILTER_VERSION_DRAGON2_TT =   "现在有更多的龙",
    SI_FURC_FILTER_VERSION_HARROW_TT =    "气候变化是真实的",
    SI_FURC_FILTER_VERSION_SKYRIM_TT =    "他们在卖天际 *再一次*!",
    SI_FURC_FILTER_VERSION_STONET_TT =    "这不是真的石头",
    SI_FURC_FILTER_VERSION_MARKAT_TT =	"使用 矮人 管道",
    SI_FURC_FILTER_VERSION_FLAMES_TT =	"Mildly 易燃的",
    SI_FURC_FILTER_VERSION_BLACKW_TT =	"梅鲁涅斯 永远学不会",
    SI_FURC_FILTER_VERSION_DEADL_TT =		"这是什么地方有闪闪发光的肉?",
    SI_FURC_FILTER_VERSION_TIDES_TT =		"红卫. 结构. 家具 (有点儿?)",
    SI_FURC_FILTER_VERSION_BRETON_TT = 	"这里是海盗",
    SI_FURC_FILTER_VERSION_DEPTHS_TT =	"潘格瑞到底是什么?",
    SI_FURC_FILTER_VERSION_DRUID_TT = 	"记住什么时候我们可以阻止?",
    SI_FURC_FILTER_VERSION_SCRIBE_TT = 	"书籍和事物",
    SI_FURC_FILTER_VERSION_NECROM_TT = 	"这么多触手",
    SI_FURC_FILTER_VERSION_BASED_TT = "当你没有名字的时候",
    SI_FURC_FILTER_VERSION_ENDLESS_TT = "现在有了无限的触手",

    SI_FURC_FILTER_CHAR_OFF =     "字符过滤器: 关", 
    SI_FURC_FILTER_CHAR_OFF_TT =  filterDisabled, 
    
    -- =============================== --
    -- ========= GUI: Heading ======== -- 
    -- =============================== --
    
    SI_FURC_LABEL_ENTRIES =       " 条目 -", 
      
      -- =============================== --
    -- ========= Item Sources ======== -- 
    -- =============================== --
    SI_FURC_CANBEPICKED =           "可以被扒窃",
    SI_FURC_CANBESTOLEN =           "可以被偷",
    SI_FURC_CANBESCRYED =           "来自探知",
    SI_FURC_CROWNSTORESOURCE =      "皇冠商店 ",
    SI_FURC_CANBEFISHED =           "可以钓鱼",
    SI_FURC_HARVEST =               "从收获节点",
    SI_FURC_WW =                    "偶尔在木材点中发现",
    SI_FURC_PLANTS =                "从收获植物",
    SI_FURC_SCAMBOX =               "皇冠箱",
    SI_FURC_SCAMBOX_GEMS =          "皇冠箱宝石",
    SI_FURC_HOUSE =                 "来自带家具的购买 <<1>>",
    SI_FURC_AUTOMATON =             "来自 机械体",
    SI_FURC_TOMBS =                 "瓦登费尔的祖先墓葬和遗址",
    SI_FURC_DAEDRA_SOURCE =         "来自 魔族 和 暗锚 的宝箱",
    SI_FURC_DB =                    "黑暗兄弟会物资供应商分发这些 ",
    SI_FURC_DB_POISON =             "用毒药",
    SI_FURC_DB_STEALTH =            "作为一种不那么引人注目的方法",
    SI_FURC_DB_EQUIP =			  "有装备",
    SI_FURC_DAILY_ASH =             "灰原之民 每日任务奖励",
    SI_FURC_DAILY_ELSWEYR =         "艾斯维尔每日任务奖励",
    SI_FURC_EVENT_ELSWEYR =         "艾斯维尔龙事件",
    SI_FURC_PLUNDERSKULL =          "女巫节期间掠夺头骨掉落",
    SI_FURC_VV_PAINTING =           "极少来自 瓦登费尔 的箱子或锁箱",
    SI_FURC_DROP =                  "此商品为掉落物 ", 
    SI_FURC_DROP_ALTMER =           "该物品是夏暮岛的掉落物", 
    SI_FURC_FLAME_ATRONACH =        "烈焰侍灵",
    SI_FURC_DWEMER = "矮人",
    SI_FURC_REAPER =                "收割者的收获",
    SI_FURC_CHESTS =                "来自宝箱",
    SI_FURC_ITEMSOURCE_SAFEBOX =    "极少来自保险箱",
    SI_FURC_CHEST_VV =              "极少来自 瓦登费尔 的箱子",
    SI_FURC_DRAGON_DUNGEON_DROP =   "獠牙巢穴/唤鳞者之巅",
    SI_FURC_DATAMINED_UNCLEAR =     "该物品已在游戏中出现，但尚不清楚您可以在何处获得它。",
    SI_FURC_ITEMSOURCE_ITEMPACK =   "皇冠商店物品包的一部分 [<<1>>] ",
    SI_FURC_EVENT_BLACKWOOD = 	    "来自参与黑木之宝事件",
    SI_FURC_TRIBUTE = 			        "来自 礼赞传说 奖励金库",
    SI_FURC_TRIBUTE_RANKED = 			  "来自 礼赞传说排位赛 (系统奖励邮件)",
    
    SI_FURC_SEEN_IN_GUILDSTORE =    "在公会商店看到",
    SI_FURC_OTHER = "其他",
    SI_FURC_FILTER_VERSION_SCIONS_TT = "是的老白, 后裔！",
    SI_FURC_FILTER_VERSION_SCIONS = "伊瑟利亚的后裔",
    SI_FURC_STRING_MENU_TOOLTIP_HIDE_MATERIAL = "隐藏材料？",
    SI_FURC_STRING_MENU_DEBUG_TT = "只有启用调试日志记录器时才会生效",
    SI_FURC_STRING_MENU_TOOLTIP_DATEFORMAT_TT = "影响豪华家具信息",
    SI_FURC_STRING_MENU_TOOLTIP_DATEFORMAT = "首选日期格式",
  }
  for stringId, stringValue in pairs(strings) do
    ZO_CreateStringId(stringId, stringValue)
    SafeAddVersion(stringId, 1)
  end
return true end

--Guild Hall Button
do if not BB.SV.BanList["GuildHallButton"] then
  local function Fun()
    local Strings = {
      [SI_GUILDHALLBUTTON_ADD_ON_COMPATIBILITY_IS_AND_7D8F8298C885E6090] = '插件兼容性为 <<1>> 和 <<2>>',
      [SI_GUILDHALLBUTTON_ADD_ON_MENU_CALL_FAILED_00111DF3F9FE114E68529] = '插件菜单调用失败: ',
      [SI_GUILDHALLBUTTON_ADD_ON_MENU_LIBRARY_LIBADDONMENU_UNAV_B27E5A9] = 'LibAddonMenu-2.0不可用或版本过低',
      [SI_GUILDHALLBUTTON_ADD_ON_VERSION_IS_5291C2A5F3AB8A534B4548167A0] = '插件版本 <<1>>.<<2>>.<<3>>+<<4>>',
      [SI_GUILDHALLBUTTON_AND_NOT_JUST_THEIR_PRINCIPAL_RESIDENC_F5C9A18] = '不仅是他们的主要住所。但如果您没有访问权限，则只会收到一条错误信息，',
      [SI_GUILDHALLBUTTON_API_VERSION_IS_004E3AEED6FF731AA19AD7DE9853CE] = 'API版本 <<1>>',
      [SI_GUILDHALLBUTTON_ATTEMPT_TO_ESTABLISH_CASTELLAN_OF_GUI_CC4B320] = '尝试建立大厅持有者失败（公会 编号 <<1>> ID <<2>> )：',
      [SI_GUILDHALLBUTTON_BUTTON_PRESS_FAILED_58F2A2731EFB8ADB0A00380C7] = '按钮触发失败：',
      [SI_GUILDHALLBUTTON_CAN_T_IDENTIFY_AS_A_GUILD_MEMBER_CHEC_4AB3D5C] = '无法识别公会成员 "<<1>>" : 请检查拼写和 ',
      [SI_GUILDHALLBUTTON_CAN_T_IDENTIFY_AS_A_GUILD_MEMBER_CHEC_66E96E4] = '无法识别公会成员 "<<1>>" : 请检查拼写和大小写',
      [SI_GUILDHALLBUTTON_CAN_T_IDENTIFY_AS_A_PLAYER_NAME_CHECK_76A9A7C] = '无法识别玩家名 "<<1>>" : 检查配置设置',
      [SI_GUILDHALLBUTTON_CAN_T_IDENTIFY_AS_A_PLAYER_NAME_CHECK_861DA12] = '无法识别玩家名 "<<1>>" : 检查配置 ',
      [SI_GUILDHALLBUTTON_CAN_T_IDENTIFY_AS_A_VALID_PLACE_TO_GO_E51FE3A] = '无法确定 <<1>> 为有效位置',
      [SI_GUILDHALLBUTTON_CAN_T_IDENTIFY_A_SUITABLE_HOUSE_AS_GU_7E3FF7F] = '找不到合适的房屋作为 <<1>> 的公会大厅，无法前往',
      [SI_GUILDHALLBUTTON_CAN_T_IDENTIFY_THE_GUILD_HALL_YET_D94246312D6] = '尚未确定公会大厅',
      [SI_GUILDHALLBUTTON_CAN_T_MATCH_WITH_ANY_HOUSE_NAME_A1F61693F689F] = '无法将 <<1>> 与任何房屋名称匹配',
      [SI_GUILDHALLBUTTON_CASTELLAN_OFFICER_71F06C6EBA715C8542DCAE0BB06] = '大厅持有人',
      [SI_GUILDHALLBUTTON_COMMAND_GUILDHALL_INVALID_EXPECTING_A_209A738] = '指令 /guildhall <<1>> 无效: 需要公会编号 1..5 (或 ',
      [SI_GUILDHALLBUTTON_COMMAND_GUILDHALL_INVALID_EXPECTING_A_6A17FFE] = '指令 /guildhall <<1>> 无效: 需要公会编号 1..5 (或 空)',
      [SI_GUILDHALLBUTTON_COMMAND_GUILDHALL_INVALID_EXPECTING_A_6F6ED75] = '指令 /guildhall <<1>> 无效: 需要公会编号 1..5 (非 ',
      [SI_GUILDHALLBUTTON_COMMAND_GUILDHALL_INVALID_YOU_DO_NOT__8A5B05B] = '指令 /guildhall <<1>> 无效: 你没有编号的公会 ',
      [SI_GUILDHALLBUTTON_COMMAND_GUILDHALL_INVALID_YOU_DO_NOT__DDF0A2B] = '指令 /guildhall <<1>> 无效: 你没有编号的公会 <<1>>',
      [SI_GUILDHALLBUTTON_CONFIGURATION_REPORT_FAILED_32D073A88E532C36A] = '配置报告失败：',
      [SI_GUILDHALLBUTTON_COULD_NOT_IDENTIFY_AS_A_HOUSE_IGNORIN_8A1AA1C] = '无法将 <<1>> 识别为房屋：忽略它',
      [SI_GUILDHALLBUTTON_COULD_NOT_SET_GUILD_HALL_NAME_FOR_36F4E3BF265] = '无法为 <<1>> 设置公会大厅名称： ',
      [SI_GUILDHALLBUTTON_DEFAULT_GUILD_HALL_IS_GUILD_LEADER_S__343533A] = '默认公会大厅是公会会长的主要住所。启用覆盖功能可指定不同的内容。',
      [SI_GUILDHALLBUTTON_DEFAULT_GUILD_HALL_IS_GUILD_LEADER_S__FBB32DB] = '默认公会大厅是公会会长的主要住所。启用 ',
      [SI_GUILDHALLBUTTON_DESTINATIONS_201376A014EB6075E874622EAB261986] = '目的地',
      [SI_GUILDHALLBUTTON_DISPLAY_TRACEBACK_N_IN_A_UI_ERROR_WIN_6B73666] = '在用户界面错误窗口中显示跟踪记录，从新到旧',
      [SI_GUILDHALLBUTTON_ENABLE_VISIT_COMMAND_66801F4064B19943409289CA] = '启用 /visit 指令',
      [SI_GUILDHALLBUTTON_END_OF_TRACEBACK_4F6563DA25EEBEA7B9157AD45627] = '追踪结束 <<1>>',
      [SI_GUILDHALLBUTTON_ERROR_WHILE_EXECUTING_COMMAND_E6CC53DD796BE01] = '执行命令时出错 ',
      [SI_GUILDHALLBUTTON_ERROR_WHILE_EXECUTING_COMMAND_VISIT_B6388D7B9] = '执行 /visit 命令时出错 ',
      [SI_GUILDHALLBUTTON_EX_GUILD_96D2B2882E8EAF999C8D4AED6505588C_000] = '前公会',
      [SI_GUILDHALLBUTTON_FAILED_TO_PROCESS_JOINED_GUILD_EVENT_2D458D53] = '处理加入公会事件失败：',
      [SI_GUILDHALLBUTTON_FAILED_TO_PROCESS_JOINED_GUILD_EVENT_A0F9509C] = '处理加入公会事件失败：',
      [SI_GUILDHALLBUTTON_FAILED_TO_PROCESS_LEFT_GUILD_EVENT_92EF764328] = '处理离开公会事件失败：',
      [SI_GUILDHALLBUTTON_FAILED_TO_PROCESS_LEFT_GUILD_EVENT_BD8C059BAB] = '处理离开公会事件失败：',
      [SI_GUILDHALLBUTTON_FAILED_TO_RETRIEVE_CONFIGURED_HOUSE_N_664FB85] = '检索已配置的房屋名称失败：',
      [SI_GUILDHALLBUTTON_FAILED_TO_RETRIEVE_CONFIGURED_HOUSE_N_7BFA8A6] = '检索已配置的房屋名称失败：',
      [SI_GUILDHALLBUTTON_GH_58C1A39F0D84CF0A66EE05448A7267A7_000000000] = '/gh',
      [SI_GUILDHALLBUTTON_GH_TRACEBACK_B5CC4EC82980C9D53FE5E3B1FE5E885B] = '/gh traceback',
      [SI_GUILDHALLBUTTON_GUILDHALL_5C3DEEE0E8CAB6EB2989E7B210FEC61B_00] = '/guildhall',
      [SI_GUILDHALLBUTTON_GUILDHALL_E92A91F2910C5C17F2B63FBB99F866D3_00] = '/guildhall <<1>>',
      [SI_GUILDHALLBUTTON_GUILDHALL_F5F658A21522BF8EEB59D12485DD8A58_00] = '/guildhall <<1>> <<2>>',
      [SI_GUILDHALLBUTTON_GUILD_186E1B907496E328562844EA16A01BA8_000000] = '公会 <<1>>',
      [SI_GUILDHALLBUTTON_GUILD_HALL_BD3549AC09EB9DD7E98ADC80BBC51E87_0] = '<<1>> 公会大厅',
      [SI_GUILDHALLBUTTON_GUILD_HALL_BUTTON_A1BB155E045F550CBF963FAAE85] = 'Guild Hall Button',
      [SI_GUILDHALLBUTTON_GUILD_HALL_BUTTON_CANNOT_REGISTER_ANY_154E1C7] = 'Guild Hall Button 无法注册 <<1[any/the following/the ',
      [SI_GUILDHALLBUTTON_GUILD_HALL_BUTTON_CANNOT_REGISTER_ANY_8D488C2] = 'Guild Hall Button 无法注册 <<1[any/the following/the following]>> slash <<1[command/command/commands]>> 由于 <<1[conflicts/a conflict/conflicts]>>: <<2>> 无法正常工作，因为 <<1[it has/it has/they have]>> 已被注册或 <<1[.../another add-on/other add-ons]>>.',
      [SI_GUILDHALLBUTTON_GUILD_HALL_BUTTON_TRACEBACK_FROM_97C6E05173B0] = 'Guild Hall Button 追踪 <<1>> 从 <<2>>',
      [SI_GUILDHALLBUTTON_GUILD_HALL_BUTTON_TRACEBACK_FROM_IDEN_74242CC] = 'Guild Hall Button 追踪 <<1>> 从 <<2>>: 相同于追踪 <<3>> ',
      [SI_GUILDHALLBUTTON_GUILD_HALL_BUTTON_TRACEBACK_FROM_IDEN_EB02DB1] = 'Guild Hall Button 追踪 <<1>> 从 <<2>>: 相同于追踪 ',
      [SI_GUILDHALLBUTTON_GUILD_HALL_CEFFA39898CBD2ACE5339DBB4750CCF9_0] = '公会大厅 <<1>>',
      [SI_GUILDHALLBUTTON_GUILD_HALL_DAA0E11C3F5AD09A5CFA0E3E5F7CE0E0_0] = '公会大厅',
      [SI_GUILDHALLBUTTON_GUILD_HALL_G_3253A38A280D24AF21D3D09AFF0ACFCA] = '公会大厅 <<G:1>>',
      [SI_GUILDHALLBUTTON_GUILD_LEADER_282636F0BFB2DA3BE6370AD4EA292296] = '公会会长',
      [SI_GUILDHALLBUTTON_GUILD_LEADER_90E5A1A286AAA741EC3CE1B060C60ECA] = '(公会会长)',
      [SI_GUILDHALLBUTTON_GUILD_LEADER_S_HOUSE_1D20F2D72501178F16DBD137] = '公会会长的房子',
      [SI_GUILDHALLBUTTON_IDENTIFIED_AS_HOUSE_ID_E5333A37F7DEC36BA81350] = '确定 <<1>> 为房屋 ID <<2>>： <<3>>',
      [SI_GUILDHALLBUTTON_IF_IN_DOUBT_LEAVE_THESE_OPTIONS_SWITC_8402CC2] = '如有疑问，请关闭这些选项',
      [SI_GUILDHALLBUTTON_LIST_10AE9FC7D453B0DD525D0EDF2EDE7961_0000000] = '列表',
      [SI_GUILDHALLBUTTON_NAME_OF_GUILD_HALL_8E78D14941704F91BFD3B0A368] = '公会大厅的名称',
      [SI_GUILDHALLBUTTON_NAME_OF_THE_GUILD_OFFICER_WHO_IS_THE__98E12BC] = '正式拥有公会大厅的公会成员姓名',
      [SI_GUILDHALLBUTTON_NO_TRACEBACK_NUMBERED_IS_AVAILABLE_F26D90C3D1] = '没有编号为 <<1>> 的追踪记录',
      [SI_GUILDHALLBUTTON_OR_IF_YOU_TRY_TO_VISIT_A_HOUSE_THE_PL_4532305] = '或者，如果你试图访问玩家并不拥有的房子。',
      [SI_GUILDHALLBUTTON_OVERRIDE_DEFAULT_GUILD_HALL_39BCB7E69E761919F] = '覆盖默认公会大厅',
      [SI_GUILDHALLBUTTON_PRINCIPAL_RESIDENCE_36D90080A5B25024E5AEE830E] = '主要住所',
      [SI_GUILDHALLBUTTON_PRINCIPAL_RESIDENCE_78EC4E220CF3D0743E140FA7F] = '(主要住所)',
      [SI_GUILDHALLBUTTON_RELOAD_UI_ON_JOINING_A_NEW_GUILD_CA066F65A25F] = '加入公会时重新加载UI',
      [SI_GUILDHALLBUTTON_RELOAD_UI_ON_LEAVING_A_GUILD_B9D56C736C853187] = '离开公会时重新加载UI',
      [SI_GUILDHALLBUTTON_REPORT_ADD_ON_GUILD_CONFIGURATION_C33080ECFDF] = '报告插件公会配置',
      [SI_GUILDHALLBUTTON_REPORT_ADD_ON_VERSION_AND_COMPATIBILI_AD2F13B] = '报告插件版本和兼容性',
      [SI_GUILDHALLBUTTON_SHORT_NAME_MATCHES_N_DIFFERENT_HOUSES_8568A2E] = '简称 <<1>> 匹配 <<n:2>> 不同的房屋： <<3>>',
      [SI_GUILDHALLBUTTON_SPECIFY_WHEN_THE_GUILD_HALL_IS_NOT_TH_3806928] = '指明，当公会大厅不是寨主成员的主要住所',
      [SI_GUILDHALLBUTTON_SPECIFY_WHEN_THE_GUILD_HALL_IS_NOT_TH_CC3B44E] = '指明，当公会大厅不是寨主成员的主要 ',
      [SI_GUILDHALLBUTTON_SWITCH_ON_TO_AUTOMATICALLY_ISSUE_A_RE_4670B3B] = '加入公会后自动发出 /reloadui 命令。如果连续加入 2 个公会，将收到 2 个 /reloadui 命令。这可能不是您想要的',
      [SI_GUILDHALLBUTTON_SWITCH_ON_TO_AUTOMATICALLY_ISSUE_A_RE_B3BBD1A] = '打开开关，以代表自动发出 /reloadui 命令 ',
      [SI_GUILDHALLBUTTON_SWITCH_ON_TO_AUTOMATICALLY_ISSUE_A_RE_E43C442] = '离开公会后自动发出 /reloadui 命令。如果连续离开 2 个公会，将收到 2 个 /reloadui 命令。这可能不是您想要的',
      [SI_GUILDHALLBUTTON_SWITCH_ON_TO_ENABLE_THE_VISIT_COMMAND_64BC609] = '打开 /visit 命令。这不仅允许您访问公会大厅，还允许您访问任何玩家的房屋，',
      [SI_GUILDHALLBUTTON_SWITCH_ON_TO_ENABLE_THE_VISIT_COMMAND_65E801F] = '打开以启用 /visit 命令',
      [SI_GUILDHALLBUTTON_THIS_HAPPENS_WHEN_YOU_LOG_OUT_OR_ISSU_4733C41] = '重新登录或使用 /reloadui 命令可刷新信息。',
      [SI_GUILDHALLBUTTON_TO_SEE_THE_TRACEBACK_F9049B53E0EBFA176BE850E8] = '以查看追踪结果: ',
      [SI_GUILDHALLBUTTON_TRACEBACK_756563A5EFEAF4D400B526843A8570EA_00] = '追踪',
      [SI_GUILDHALLBUTTON_TRANSLATION_VERSION_298B3874E461321DA828F865C] = '$Id: en.lua 911 2022-03-14 22:58:16Z paulk $',
      [SI_GUILDHALLBUTTON_TRANSLATION_VERSION_98252F5CD90D00AD9997604D6] = '文本版本 <<1>> <<2>> <<3>>',
      [SI_GUILDHALLBUTTON_TRAVELING_TO_C_S_HOUSE_AT_A614E93F6DC98ADC724] = '传送至 <<C:1>> 在 <<2>> 的房屋',
      [SI_GUILDHALLBUTTON_TRAVELING_TO_C_S_HOUSE_L_C79CEBD4996B18D20E2E] = '传送至 <<C:1>> 在 <<2>> 的房屋',
      [SI_GUILDHALLBUTTON_TRAVELING_TO_THE_GUILD_HALL_B279E35A01DA3A10F] = '传送至 <<1>> 的公会大厅 <<2>>',
      [SI_GUILDHALLBUTTON_TRAVELING_TO_YOUR_HOUSE_AT_6182CC27C860F0760D] = '传送至 你在 <<1>> 的房屋',
      [SI_GUILDHALLBUTTON_TRAVELING_TO_YOUR_HOUSE_L_7AF705F3135F6A1A55B] = '传送至 你在 <<1>> 的房屋',
      [SI_GUILDHALLBUTTON_TRAVEL_L_F68A5C5D8DBEE3FEC8A44B00F3847891_000] = '传送至 <<1>> (<<2>>)',
      [SI_GUILDHALLBUTTON_TRAVEL_TO_570AFA648090A8DFA32AE1D5BCC11830_00] = '传送至 <<1>> (<<2>>)',
      [SI_GUILDHALLBUTTON_TRAVEL_TO_GUILD_HALL_62037739554C73EFB0A3327B] = '传送至公会大厅',
      [SI_GUILDHALLBUTTON_VERSION_2AF72F100C356273D46284F6FD1DFC08_0000] = '版本',
      [SI_GUILDHALLBUTTON_VERSION_INFORMATION_9D11E23779D9604067DD20E35] = '版本信息',
      [SI_GUILDHALLBUTTON_VISITING_C_S_HOUSE_D1C9CCB9C9BC05CEA78075A5EB] = '拜访 <<C:1>> 的房屋',
      [SI_GUILDHALLBUTTON_VISITING_C_S_HOUSE_L_BAA1050C3487F904AC18303C] = '拜访 <<C:1>> 在 <<2>> 的房屋',
      [SI_GUILDHALLBUTTON_VISITING_YOUR_HOUSE_L_FEF218F331CFB2D9C49457F] = '拜访你在 <<1>> 的房屋',
      [SI_GUILDHALLBUTTON_VISIT_89B0F4A089D457D7FEC4E29BD987543D_000000] = '/visit',
      [SI_GUILDHALLBUTTON_VISIT_ANYONE_S_HOUSE_5082C66C9F0FA0FAEBC5151D] = '拜访任何人的房屋',
      [SI_GUILDHALLBUTTON_VISIT_A_PLAYER_S_HOUSE_B7AA090447E6AE8E6230A8] = '拜访某人的房屋',
      [SI_GUILDHALLBUTTON_VISIT_B4C0AE96A2003D3DA92E3A709B854322_000000] = '/visit <<1>>',
      [SI_GUILDHALLBUTTON_WHEN_LEAVING_AND_JOINING_GUILDS_64B318ABDED04] = '离开和加入公会时',
      [SI_GUILDHALLBUTTON_WHEN_YOU_LEAVE_A_GUILD_OR_JOIN_A_NEW__945F71F] = '当您离开或加入公会时，该界面不会自动更新。',
      [SI_GUILDHALLBUTTON_WHEN_YOU_LEAVE_A_GUILD_OR_JOIN_A_NEW__E576C17] = '离开公会或加入新公会时，此界面将不会显示 ',
      [SI_GUILDHALLBUTTON_YOU_CAN_CHOOSE_TO_HAVE_THE_GUILD_HALL_320D2F0] = '您可以选择在离开或加入公会时让 Guild Hall Button 自动重新加载用户界面。',
      [SI_GUILDHALLBUTTON_YOU_CAN_CHOOSE_TO_HAVE_THE_GUILD_HALL_4C21598] = '您可以选择让 Guild Hall Button 自动进入用户界面 ',
      [SI_GUILDHALLBUTTON__935DFC8294ACC5E24C96FD80891549B2_00000000000] = '<<1>><<2>><<3>><<4>><<5>>',
    }
    
    for k,v in pairs(Strings) do
      SafeAddString(k, v, 2)
    end
    
  end

  --Special Setting
  BB.SetGlobalHook(function() Fun() end, "GuildHallButton", "name")

end end

BB.AddonList["GuildHallButton"] = function() 
  if not GuildHallButton then return false end
  return true
end

--GuildDonate
BB.AddonList["GuildDonate"] = function() if not GuildDonate then return false end
  ZO_CreateStringId("GD_DEBUG_LOG",   "显示调试日记")
  ZO_CreateStringId("GD_AUTO",        "自动向所有公会捐款")
  ZO_CreateStringId("GD_WEEKLY",      "每周 (从 <<1>> 至 ...)")
  ZO_CreateStringId("GD_MONDAY",      "周一")
  ZO_CreateStringId("GD_TUESDAY",     "周二")
  ZO_CreateStringId("GD_WEDNESDAY",   "周三")
  ZO_CreateStringId("GD_THURSDAY",    "周四")
  ZO_CreateStringId("GD_FRIDAY",      "周五")
  ZO_CreateStringId("GD_SATURDAY",    "周六")
  ZO_CreateStringId("GD_SUNDAY",      "周日")
  ZO_CreateStringId("GD_HISTORY",     "历史")
  ZO_CreateStringId("GD_DATE",        "日期")
  ZO_CreateStringId("GD_MAX_HISTORY", "历史记录的最大数量")
return true end

--Harven's Improved Skills Window
BB.AddonList["HarvensImprovedSkillsWindow"] = function()
  BB.SetAfterPart(
    function()
      if ZO_SkillsHarvensShowTotalLabel then
        ZO_SkillsHarvensShowTotalLabel:SetText("显示 技能线升级进度")
        ZO_SkillsHarvensShowDetailsLabel:SetText("显示 技能详细升级进度")
        BB.ActiveAddons["HarvensImprovedSkillsWindow"] = true
      end
    end
  )
return false end

--Harvest
BB.AddonList["HarvestMap"] = function() if not Harvest then return false end
  Harvest.localizedStrings = {
    -- top level description
    esouidescription = "有关插件描述和常见问题，请访问esoui.com上的插件页面",
    openesoui = "打开ESOUI",
    exchangedescription2 = "你可以通过安装HarvestMap-Data插件来获取最新的资源位置信息。更多有关这方面的信息，请参阅ESOUI上的插件描述信息。",

    notifications = "通知和警告",
    notificationstooltip = "在屏幕右上角显示通知和警告。",
    moduleerrorload = " <<1>> 插件被禁用了。\n此区域没有可用数据。",
    moduleerrorsave = " <<1>> 插件被禁用了。\n此节点的位置信息没有被保存。",

    -- outdated data settings
    outdateddata = "过时的数据设置",
    outdateddatainfo = "这些数据相关的设置在这台计算机上的所有帐户和角色之间共享.",
    timedifference = "只保存最近的数据",
    timedifferencetooltip = "HarvestMap 收获地图将只保存最近X天的数据。\n这可以防止显示可能已经过时的旧数据。\n设置为0以保存任何数据，不论其时间.",
    applywarning = "旧数据一旦删除，就无法恢复!",

    -- account wide settings
    account = "账户全局设置",
    accounttooltip = "下面的所有设置对每个角色都是相同的",
    accountwarning = "更改此设置将重新加载UI.",

    -- map pin settings
    mapheader = "地图标记设置",
    mappins = "在主地图上启用标记",
    minimappins = "在小地图上启用标记",
    minimappinstooltip = "支持的小地图插件: Votan, Fyrakin 和 AUI",
    level = "在地点图标之上显示标记",
    hasdrawdistance = "只显示附近的地图标记",
    hasdrawdistancetooltip = "开启时, HarvestMap 收获地图只为靠近玩家的采集地点创建地图标记.\n此设置只影响游戏内地图。小地图上则会自动启用此选项!",
    hasdrawdistancewarning = "此设置只影响游戏内地图。小地图上则会自动启用此选项!",
    drawdistance = "地图标记距离",
    drawdistancetooltip = "绘制地图标记的距离阈值。此设置也影响小地图!",
    drawdistancewarning = "此设置也影响小地图",

    visiblepintypes = "可见的标志类型",
    custom_profile = "自定义",
    same_as_map = "与地图设置相同",

    -- compass settings
    compassheader = "罗盘设置",
    compass = "启用罗盘标记显示",
    compassdistance = "最大标记距离",
    compassdistancetooltip = "显示在罗盘上标记的最大距离(以米为单位).",

    -- 3d pin settings
    worldpinsheader = "3D标记设置",
    worldpins = "开启3D标记",
    worlddistance = "最大3D标记距离",
    worlddistancetooltip = "显示采集位置的最大距离(以米为单位)。当一个位置较远时, 则不会显示3D标记。",
    worldpinwidth = "3D标记宽度",
    worldpinwidthtooltip = "3D标记的宽度，单位为厘米。",
    worldpinheight = "3D标记高度",
    worldpinheighttooltip = "3D标记的高度，单位为厘米。",
    worldpinsdepth = "为3D标记使用深度提升",
    worldpinsdepthtooltip = "关闭时, 3D标记将不会隐藏在其他物体后面。",
    worldpinsdepthwarning = "由于一个游戏BUG, 当在游戏的视频选项中将二次取样质量设置为中等或者低时，此选项无法生效。",


    -- respawn timer settings
    visitednodes = "访问节点和采集助手",
    rangemultiplier = "访问的节点范围",
    rangemultipliertooltip = "在X米内的节点才会被刷新计时器和采集助手访问。",
    usehiddentime = "隐藏最近访问的节点",
    usehiddentimetooltip = "隐藏您最近访问过的标记位置。",
    hiddentime = "隐藏的持续时间",
    hiddentimetooltip = "最近访问的节点将被隐藏X分钟。",
    hiddenonharvest = "只在采集之后隐藏节点",
    hiddenonharvesttooltip = "开启后只当你采集完成时隐藏标记。关闭后当你访问时标记也将被隐藏",

    -- spawn filter
    spawnfilter = "已生成资源筛选",
    nodedetectionmissing = "仅当NodeDetection库启用时，以下选项方有效",
    spawnfilterdescription = "当启用时，HarvestMap将会隐藏未生成资源的图标。\r\n举例来说，如果其他玩家已经采集该资源点，此处的图标将被隐藏直到资源再生。\r\n该选项仅对可收获的制造材料有效。HarvestMap无法检测生成的地图容器，如箱子，重麻袋和塞伊克传送门等。\r\n如果其他插件隐藏或重新缩放罗盘，该筛选将失效。",
    spawnfilter_map = "在主地图上应用筛选",
    spawnfilter_minimap = "在小地图上应用筛选",
    spawnfilter_compass = "在罗盘上应用筛选",
    spawnfilter_world = "在3D标记上应用筛选",
    spawnfilter_pintype = "对以下类型启用筛选：",

    -- pin type options
    pinoptions = "标记类型选项",
    pinsize = "标记尺寸",
    pinsizetooltip = "设置地图上的标记尺寸",
    pincolor = "标记颜色",
    pincolortooltip = "设置地图和罗盘上标记的颜色",
    savepin = "保存位置",
    savetooltip = "启用在发现资源时保存它们的位置",
    pintexture = "标记图标",

    -- pin type names
    pintype1 = "锻造和首饰",
    pintype2 = "纤维织物",
    pintype3 = "符文石和赛伊克传送门",
    pintype4 = "蘑菇",
    pintype13 = "草药/花朵",
    pintype14 = "水生植物",
    pintype5 = "木材",
    pintype6 = "宝箱",
    pintype7 = "溶剂",
    pintype8 = "钓鱼点",
    pintype9 = "重麻袋",
    pintype10 = "盗贼的宝藏",
    pintype11 = "审判容器",
    pintype12 = "隐藏物品",
    pintype15 = "巨型水蚌",
    -- pin type 16, 17 used to be jewlry and psijic portals 
    -- but the locations are the same as smithing and runes
    pintype18 = "未知节点",
    pintype19 = "猩红奈恩根",

    -- extra map filter buttons
    deletepinfilter = "删除HarvestMap标记",
    filterheatmap = "热力地图模式",

    -- localization for the farming helper
    goldperminute = "每分钟的金币:",
    farmresult = "HarvestFarm 结果",
    farmnotour = "HarvestFarm 不能基于设定的最小路线长度计算出一个良好的收割路线",
    farmerror = "HarvestFarm 错误",
    farmnoresources = "没有找到资源。\n此地图上没有资源，或者您没有选择任何资源类型。",
    farmsuccess = "HarvestFarm 计算出了一条每公里 <<1>> 节点的收割线路。\n\n按一下其中一个路线标记以设定路线的起点。",
    farmdescription = "HarvestFarm 将计算出一条非常高效的资源收割线路。\n在生成一条线路之后, 点击其中一个被选择的资源来设置线路的起点。",
    farmminlength = "最小路径长度",
    farmminlengthdescription = "路线越长, 当您开始下一个循环时，资源重新出现的机会就越大。\n然而，一个较短的线路将获得更高的收割效率。",
    tourpin = "你线路的下一个目标",
    calculatetour = "计算线路",
    showtourinterface = "显示路线界面",
    canceltour = "取消线路",
    reverttour = "恢复线路方向",
    resourcetypes = "资源类型",
    skiptarget = "跳过当前目标",
    removetarget = "删除当前目标",
    nodesperminute = "每分钟的节点数",
    distancetotarget = "到下一个资源的距离",
    showarrow = "显示方向",
    removetour = "删除路线",
    undo = "撤消最后的变动",
    tourname = "线路名：",
    defaultname = "未命名的线路",
    savedtours = "此地图已保存的线路：",
    notourformap = "此地图没有已保存线路",
    load = "载入",
    delete = "删除",
    saveexiststitle = "请确认",
    saveexists = "此地图已有一个以 <<1>> 命名的线路了。您要覆盖它吗?",
    savenotour = "没有可保存的线路",
    loaderror = "此线路无法被载入",
    removepintype = "您想从路线中删除 <<1>> 吗?",
    removepintypetitle = "确认删除",

    -- extra harvestmap menu
    farmmenu = "收割线路编辑器",
    editordescription = "在此菜单中，您可以创建和编辑线路。\r\n如果目前没有其他被激活的线路, 您可以通过点击地图标记创建一个线路。\r\n如果有被激活的线路, 您可以通过替换其中一部分来编辑线路:\r\n- 首先点击您线路(红色)中的一个标记。\r\n- 然后，点击你想添加到路线中的标记。 (一条绿色线路将会出现)\r\n- 最后，再次点击你的红色线路中的标记。\r\n现在绿色线路将被插入红色线路。",
    editorstats = "节点数量: <<1>>\r\n长度: <<2>> 米\r\n每公里节点数: <<3>>",

    -- filter profiles
    filterprofilebutton = "打开筛选配置菜单",
    filtertitle = "筛选配置菜单",
    filtermap = "地图标记的筛选配置",
    filtercompass = "罗盘标记的筛选配置",
    filterworld = "3D标志的筛选配置",
    unnamedfilterprofile = "未命名配置",
    defaultprofilename = "默认筛选配置",

    -- SI names to fit with ZOS api
    SI_BINDING_NAME_SKIP_TARGET = "跳过目标",
    SI_BINDING_NAME_TOGGLE_WORLDPINS = "切换3D标记",
    SI_BINDING_NAME_TOGGLE_MAPPINS = "切换地图标记",
    SI_BINDING_NAME_TOGGLE_MINIMAPPINS = "切换小地图标记",
    SI_BINDING_NAME_HARVEST_SHOW_PANEL = "打开HarvestMap地图编辑器",
    SI_BINDING_NAME_HARVEST_SHOW_FILTER = "打开HarvestMap筛选菜单",
    HARVESTFARM_GENERATOR = "生成新线路",
    HARVESTFARM_EDITOR = "编辑线路",
    HARVESTFARM_SAVE = "保存/载入 线路",
  }

  --Sepcial Setting
  local default = Harvest.defaultLocalizedStrings
  local current = Harvest.localizedStrings or {}
  function Harvest.GetLocalization(tag)
    return (current[ tag ] or default[ tag ]) or tag
  end
return true end

--HodorReflexes
BB.AddonList["HodorReflexes"] = function() if not HodorReflexes then return false end
  local strings = {
    HR_MENU_MISCULTIMATES = "其他终极技能",
    HR_MENU_STYLE_BERSERK_COLOR = "高级狂怒持续颜色",
    HR_MENU_EVENTS_DISABLED = "这个模块需要Hodor Reflexes被启用",
    HR_MENU_HORN_SHOW_PERCENT_TT = "显示经计算的号角终极点百分比",
    HR_MENU_ICONS_INTEGRITY = "完整性",
    HR_MENU_HORN_SHOW_RAW_TT = "显示玩家的原始终极点",
    HR_MENU_EVENTS = "事件",
    HR_MENU_ICONS_INTEGRITY_DESCRIPTION = "检查HodorReflexes图标的完整性",
    HR_MENU_ATRONACH_SHARE = "分享终极技能",
    HR_MENU_ATRONACH_SHOW_TT = "分享你的终极技能情况给队友",
    HR_MENU_COLOS_SHOW_PERCENT_TT = "显示经计算的死灵巨像终极点百分比",
    HR_BINDING_MISCULTIMATES_SHARE = "切换其他终极技能共享",
    HR_MENU_COLOS_SHOW_RAW_TT = "显示玩家的原始终极点",
    HR_MENU_ATRONACH_SHOW_RAW_TT = "显示玩家的原始终极点",
    HR_MENU_MISCULTIMATES_SHARE = "分享其他终极技能",
    HR_MENU_ATRONACH_SHOW_PERCENT_TT = "显示经计算的风暴侍灵终极点百分比",
    HR_MENU_ICONS_VISIBILITY_MISCULTIMATES_TT = "在终极技能列表中显示玩家自定义图标",
    HR_MENU_MISCULTIMATES_SHOW_TT = "显示其他不支持的终极技能",
    HR_MENU_ATRONACH_SHOW_PERCENT = "显示百分比",
    HR_MENU_ICONS_INTEGRITY_CHECK = "检查",
    HR_MENU_MISCULTIMATES_SHARE_TT = "分享其他不支持的终极技能",
    HR_MENU_EVENTS_DESC = "这个模组在一年中的特定时间启用特殊特性",
    HR_MENU_COLOS_SHOW_PERCENT = "显示百分比",
    HR_MENU_COLOS_SHOW_RAW = "显示终极点",
    HR_MENU_ATRONACH_SHOW_RAW = "显示终极点",
    HR_MENU_MISC_DISABLEDEPENDENCYWARNING_TT = "开启/关闭 不兼容依赖警告",
    HR_MENU_HORN_SHOW_RAW = "显示终极点",
    HR_MENU_ICONS_VISIBILITY_MISCULTIMATES = "其他终极技能",
    HR_MENU_ICONS_VISIBILITY_ATRONACH_TT = "在风暴侍灵列表中显示玩家自定义图标",
    HR_MENU_ATRONACH_SHOW = "显示风暴侍灵",
    HR_MENU_HORN_SHOW_PERCENT = "显示百分比",
    HR_MENU_ATRONACH = "风暴侍灵",
    HR_MENU_STYLE_ATRONACH_COLOR = "风暴侍灵持续时间颜色",
    HR_MENU_ICONS_VISIBILITY_ATRONACH = "风暴侍灵图标",
    HR_MENU_MISC_DISABLEDEPENDENCYWARNING = "禁用依赖性警告",
    HR_MENU_ATRONACH_SHARE_TT = "将终极技能状态共享给队伍(仅当装备风暴侍灵时).",
    HR_MENU_MISCULTIMATES_SHOW = "显示其他终极技能",
    HR_BINDING_HORN_SHARE = "切换战争号角分享",
    HR_BINDING_COLOS_SHARE = "切换死灵巨像分享",
    HR_BINDING_DPS_SHARE = "切换伤害分享",
  }
  --Special setting
  for id, val in pairs(strings) do
   ZO_CreateStringId(id, val)
   SafeAddVersion(id, 1)
  end
return true end

--HowToCloudrest
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