local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["FancyActionBar+"] = function() if not FancyActionBar then return false end
  --menu.lua
  local ACTION_BAR = GetControl("ZO_ActionBar1")

  local SV = ZO_SavedVars:NewAccountWide("FancyActionBarSV", FancyActionBar.variableVersion, nil, FancyActionBar.defaultSettings, GetWorldName())
  local CV = ZO_SavedVars:NewCharacterIdSettings("FancyActionBarSV", FancyActionBar.variableVersion, nil, FancyActionBar.defaultCharacter, GetWorldName())
  
  local optionsTable = {}
  local tableIndex = 1
  
  table.insert(optionsTable, 
  {
    type = "button",
    name = "显示/隐藏 技能栏",
    tooltip = "仅在当前设置界面中应用",
  })
  tableIndex = tableIndex + 1

-- ===========[	UI Presets	]===================
  table.insert(optionsTable,
  {
    type = "submenu",
    name = "|cFFFACDUI 预设|r",
    controls =
    {
      {
        type = "dropdown",
        name = "选择一个UI预设",
        tooltip = "选择一种UI预设配置",
        warning = "修改后将会重载UI",
      },
      {
        type = "button",
        name = "确认修改",
        warning = "将重新加载UI",
      },
    },
  })
  tableIndex = tableIndex + 1

  table.insert(optionsTable, 
  { 
    type = "divider" 
  })
  tableIndex = tableIndex + 1

  table.insert(optionsTable,
  {
    type = "submenu",
    name = "|cFFFACD技能栏 尺寸 & 位置|r";
    controls = {}
  })

-- ===========[	Actionbar Scaling	]===================
  if not IsConsoleUI() then
    local azurahTable =
    {
      {
        type = "checkbox",
        name = "使用 Azurah 插件的技能栏移动",
      },
      { 
        type = "divider" 
      },
    }
    if Azurah or SV.forceAzurahMover then
      for k, v in pairs(azurahTable) do
        table.insert(optionsTable[tableIndex].controls, v)
      end
    end

    local kbScalingTable =
    {
      {
        type = "description",
        title = "[ |cffdf80键盘模式 UI|r ]",
      },
      {
        type = "checkbox",
        name = "启用技能栏尺寸调整",
      },
      {
        type = "slider",
        name = "技能栏尺寸",
      },
      {
        type = "checkbox",
        name = "解锁技能栏位置（键盘）",
      },
      { 
        type = "divider" 
      },
    }
    for k, v in pairs(kbScalingTable) do
      table.insert(optionsTable[tableIndex].controls, v)
    end

    local gpScalingTablePC =
    {
      {
        type = "description",
        title = "[ |cffdf80手柄模式 UI|r ]",
      },
      {
        type = "checkbox",
        name = "启用技能栏尺寸调整",
      },
      {
        type = "slider",
        name = "技能栏尺寸",
      },
      {
        type = "checkbox",
        name = "解锁技能栏位置（手柄）",
      },
      { 
        type = "divider" 
      },
    }
    for k, v in pairs(gpScalingTablePC) do
      table.insert(optionsTable[tableIndex].controls, v)
    end
  
  else
    local gpScalingTableConsole =
    {
      {
        type = "description",
        title = "[ |cffdf80手柄模式 UI|r ]",
      },
      {
        type = "checkbox",
        name = "启用技能栏尺寸调整",
      },
      {
        type = "slider",
        name = "技能栏尺寸",
      },
      {
        type = "description",
        title = "[ |cffdf80调整技能栏位置|r ]",
      },
      {
        type = "checkbox",
        name = "解锁技能栏位置",
      },
      {
        type = "slider",
        name = "横向 (X轴) 位置",
      },
      {
        type = "slider",
        name = "纵向 (Y轴) 位置",
      },
      { 
        type = "divider" 
      },
    }
    for k, v in pairs(gpScalingTableConsole) do
      table.insert(optionsTable[tableIndex].controls, v)
    end
  end

  local miscScalingTable =
  {
    {
      type = "button",
      name = "水平居中",
    },
    {
      type = "button",
      name = "垂直居中",
    },
    { 
      type = "divider" 
    },
    {
      type = "button",
      name = "撤回上次移动",
    },
    {
      type = "button",
      name = "重置技能栏位置",
    },
    { 
      type = "divider" 
    },
    {
      type = "description",
      title = "[ |cffdf80调整快捷栏位置|r ]",
    },
    {
      type = "slider",
      name = "横向 (X轴) 位置",
    },
    {
      type = "slider",
      name = "纵向 (Y轴) 位置",
    },
    { 
      type = "divider" },
    {
      type = "description",
      title = "[ |cffdf80调整终极技位置|r ]",
    },
    {
      type = "slider",
      name = "横向 (X轴) 位置",
    },
    {
      type = "slider",
      name = "纵向 (Y轴) 位置",
    },
    { 
      type = "divider" 
    },
    {
      type = "description",
      title = "[ |cffdf80调整主副手栏的相对位置|r ]",
    },
    {
      type = "slider",
      name = "横向 (X轴) 位置",
    },
    {
      type = "slider",
      name = "纵向 (Y轴) 位置",
    },
    {
      type = "slider",
      name = "横向 (X轴) 图标间距",
    },
  }
  for k, v in pairs(miscScalingTable) do
    table.insert(optionsTable[tableIndex].controls, v)
  end
  tableIndex = tableIndex + 1

  table.insert(optionsTable,
  {
    type = "submenu",
    name = "|cFFFACD一般设置|r",
    controls =
    {
-- ============[	Font/Back Bar Settings	]===============
      {
        type = "description",
          title = "[ |cffdf80主手 & 副手 技能栏位置|r ]",
          text = "所有修改将在一次切手后生效",
      },
      {
        type = "checkbox",
        name = "固定技能栏位置",
        tooltip = "切手时，不交换主手和副手技能栏位置",
      },
      {
        type = "checkbox",
        name = "主手技能栏在上 (用于固定模式)",
        tooltip = "开 = 主手栏在上，副手栏在下\n关 = 主手栏在下，副手栏在上",
      },
      {
        type = "checkbox",
        name = "当前技能栏在上 (用于非固定模式)",
        tooltip = "开 = 当前技能栏在上\n关 = 当前技能栏在下",
      },
-- ============[	Backbar Visuals	]=====================
      {
        type = "description",
        title = "[ |cffdf80非激活技能栏可见性|r ]",
      },
      {
        type = "slider",
        name = "非激活技能栏 透明度",
        tooltip = "越低，越透明",
      },
      {
        type = "slider",
        name = "非激活技能栏 去饱和度",
        tooltip = "越高，越黑白",
      },
      { 
        type = "description", 
      },
-- ============[	Keybinds On / Off	]===================
      {
        type = "description",
        title = "[ |cffdf80快捷键文字|r ]",
      },
      {
        type = "checkbox",
        name = "显示快捷键",
        tooltip = "在技能栏上显示快捷键文字",
      },
      { 
        type = "description"
      },
    },
  })
  tableIndex = tableIndex + 1

  table.insert(optionsTable,
  {
    -- ============[	UI Customization	]===================
    type = "submenu",
    name = "|cFFFACDUI 设置|r",
    controls = {}
  })

  table.insert(optionsTable[tableIndex].controls,
      {
      -- ============[	Button Frames	]=======================
        type = "description",
        title = "[ |cffdf80技能按钮边框|r ]",
      }
  )

  if not IsConsoleUI() then
    local kbCustomizationTable =
    {
      {
        type = "checkbox",
          name = "显示边框 (键盘)",
          tooltip = "为技能栏上的技能添加边框",
      },
      {
        type = "colorpicker",
        name = "边框颜色",
      },
    }
    for k, v in pairs(kbCustomizationTable) do
      table.insert(optionsTable[tableIndex].controls, v)
    end
  end

  local customizationTable =
  {
    {
      type = "checkbox",
      name = "隐藏默认边框",
      tooltip = "隐藏默认技能栏边框\n如果已启用该设置，则在禁用时需要重新加载UI，以便非激活技能栏能正确显示",
    },
    {
      type = "checkbox",
      name = "使用窄边框 (手柄)",
    },
    { 
      type = "divider" 
    },
-- ============[	Active Highlight	]===================
    {
      type = "description",
      title = "[ |cffdf80激活技能高亮|r ]",
    },
    {
      type = "checkbox",
      name = "显示高亮",
      tooltip = "激活的技能将被高亮",
    },
    {
      type = "colorpicker",
      name = "高亮颜色",
    },
    { 
      type = "divider" 
    },
-- ============[   Toggled Highlight  ]===================
    {
      type = "description",
      title = "[ |cffdf80切换类技能高亮|r ]",
      text = "启用时为切换类技能的激活显示不同颜色。禁用时，采用激活技能高亮颜色",
    },
    {
      type = "checkbox",
      name = "显示高亮",
    },
    {
      type = "colorpicker",
      name = "高亮颜色",
    },
    { 
      type = "divider" 
    },
-- ============[  Active Bar Arrow  ]=====================
    {
      type = "description",
      title = "[ |cffdf80激活技能栏指针|r ]",
      text = "启用后切手一次使修改生效",
    },
    {
      type = "checkbox",
      name = "显示指针",
      tooltip = "在当前技能栏旁边显示一个指针",
    },
    {
      type = "colorpicker",
      name = "指针颜色",
    },
    {  
      type = "divider" 
    },
-- =============[  Quickslot Position  ]==================
    {
      type = "checkbox",
      name = "调整快捷栏摆放",
      tooltip = "当隐藏指针时，使快捷栏更靠近技能栏\n在手柄模式下，还会移动终极技位置（如果|cff6600隐藏|r了终极技的快捷键）",
    },
-- =============[  Miscellaneous  ]=================
    { 
      type = "divider" 
    },
    {
      type = "description",
      title = "[ |cffdf80杂项|r ]",
      text = "额外杂项设置",
    },
    {
      type = "checkbox",
      name = "强制启用 手柄技能栏风格",
      tooltip =
      "通常只有使用手柄或开启辅助模式后，才可使用手柄UI有关的技能栏风格和动画。该设置可以强制启用这一技能栏风格",
    },
    {
      type = "checkbox",
      name = "显示 手柄模式终极技快捷键",
      tooltip = "在手柄模式显示 LB RB 字符",
    },
    {
      type = "checkbox",
      name = "隐藏 伙伴终极技能栏",
      tooltip = "无论伙伴是否装备终极技能，隐藏其栏位",
    },
-- =============[  OneBar Mode  ]==================
    {
      type = "checkbox",
      name = "隐藏上锁的技能栏",
      tooltip = "启用时，上锁和不激活的技能栏将被隐藏，比如装备橡木之环或处于狼人变形中",
    },
    {
      type = "checkbox",
      name = "当有技能栏上锁时，调整UI",
      tooltip = "当上锁的技能栏被隐藏时，调整技能栏UI",
    },
    {
      type = "checkbox",
      name = "隐藏非激活栏上的非激活技能",
      tooltip = "将非激活技能栏上的非激活技能（无计时器的）隐藏",
    },
-- =============[  Skill Styles  ]==================
    {
      type = "checkbox",
      name = "在技能栏显示技能样式图标",
      tooltip = "启用时，如果已装备的技能应用了样式，则改为显示对应技能样式的图标"
    },
  }
  for k, v in pairs(customizationTable) do
    table.insert(optionsTable[tableIndex].controls, v)
  end
  tableIndex = tableIndex + 1

  table.insert(optionsTable,
  {
    type = "submenu",
    name = "|cFFFACD计时器 UI|r",
    controls = {}
  })

  table.insert(optionsTable[tableIndex].controls,
      {
        type = "submenu",
        name = "|cFFFACD说明|r",
        controls =
        {
          {
            type = "description",
          },
        },
      }
  )

-- ============[ Keyboard UI ]=========================
  if not IsConsoleUI() then
    table.insert(optionsTable[tableIndex].controls,
      {
        type = "submenu",
        name = "|cFFFACD键盘模式 UI|r",
        controls =
        {
-- ============[ Keyboard Duration ]====================
          {
            type = "submenu",
            name = "|cFFFACD计时器显示设置|r",
            controls =
            {
              {
                type = "dropdown",
                name = "字体",
                tooltip = "选择计时器的字体",
              },
              {
                type = "slider",
                name = "字体尺寸",
              },
              {
                type = "dropdown",
                name = "字体样式",
                tooltip = "选择字体显示的样式",
              },
              {
                type = "slider",
                name = "调整计时器高度",
                tooltip = "移动计时器 [<- 下] 或 [上 ->]",
              },
              {
                type = "colorpicker",
                name = "计时器颜色",
              },
            },
          },
-- ============[ Keyboard Stacks ]======================
          {
            type = "submenu",
            name = "|cFFFACD层数显示设置|r",
            controls =
            {
              {
                type = "dropdown",
                name = "字体",
                tooltip = "选择键盘模式UI中技能层数的字体",
              },
              {
                type = "slider",
                name = "字体尺寸",
              },
              {
                type = "dropdown",
                name = "字体样式",
                tooltip = "选择字体显示的样式",
              },
              {
                type = "colorpicker",
                name = "层数颜色",
              },
              {
                type = "slider",
                name = "横向移动",
                tooltip = "移动层数 [<- 左] 或 [右 ->]",
              },
              {
                type = "slider",
                name = "纵向移动",
                tooltip = "移动层数 [<- 上] 或 [下 ->]",
              },
            },
          },
-- ============[ Keyboard Targets ]======================
          {
            type = "submenu",
            name = "|cFFFACD目标显示设置|r",
            controls =
            {
              {
                type = "dropdown",
                name = "字体",
                tooltip = "选择键盘模式UI中技能目标的字体",
              },
              {
                type = "slider",
                name = "字体尺寸",
              },
              {
                type = "dropdown",
                name = "字体样式",
                tooltip = "选择字体显示的样式",
              },
              {
                type = "colorpicker",
                name = "目标颜色",
              },
              {
                type = "slider",
                name = "横向移动",
                tooltip = "移动目标 [<- 左] 或 [右 ->]",
              },
              {
                type = "slider",
                name = "纵向移动",
                tooltip = "移动层数 [<- 上] 或 [下 ->]",
              },
            },
          },
-- ==========[ Keyboard Ultimate Duration ]=============
          {
            type = "submenu",
            name = "|cFFFACD终极技计时器设置|r",
            controls =
            {
              {
                type = "checkbox",
                name = "显示终极技计时器",
              },
              { type = "description"},
              {
                type = "dropdown",
                name = "字体",
                tooltip = "选择显示的字体",
              },
              {
                type = "slider",
                name = "字体尺寸",
              },
              {
                type = "dropdown",
                name = "字体样式",
                tooltip = "选择计时器字体的样式",
              },
              {
                type = "colorpicker",
                name = "终极技计时器颜色",
              },
              {
                type = "slider",
                name = "纵向移动",
                tooltip = "[<- 下] 或 [上 ->]",
              },
              {
                type = "slider",
                name = "横向",
                tooltip = "[<- 左] 或 [右 ->]",
              },
            },
          },
-- ===========[ Keyboard Ultimate Value ]===============
          {
            type = "submenu",
            name = "|cFFFACD终极点设置|r",
            controls =
            {
              {
                type = "checkbox",
                name = "显示 终极点",
              },
              {
                type = "dropdown",
                name = "显示模式",
                tooltip = "Dynamic: 当终极点不足时，显示 当前 / 消耗。足够时，仅显示当前值\nStatic: 总是显示 当前 / 消耗",
              },
              {
                type = "dropdown",
                name = "字体",
                tooltip = "选择显示的字体",
              },
              {
                type = "slider",
                name = "字体尺寸",
              },
              {
                type = "dropdown",
                name = "字体样式",
                tooltip = "选择显示字体的样式",
              },
              {
                type = "slider",
                name = "纵向移动",
                tooltip = "[<- 下] 或 [上 ->]",
              },
              {
                type = "slider",
                name = "横向移动",
                tooltip = "[<- 左] 或 [右 ->]",
              },
              { type = "divider",
              },
              {
                type = "colorpicker",
                name = "终极点基础颜色",
              },
              {
                type = "colorpicker",
                name = "终极技可用颜色",
              },
              {
                type = "colorpicker",
                name = "满终极点颜色",
              },
              {
                type = "colorpicker",
                name = "终极技 '几乎可用' 颜色",
              },
              {
                type = "slider",
                name = "终极技 '几乎可用' 阈值 %",
              },
              { type = "divider",
              },
              {
                type = "description",
                title = "伙伴终极技",
                text = "伙伴终极点的显示将会继承玩家设置\n在下面设置位置",
              },
              {
                type = "checkbox",
                name = "为伙伴显示终极点",
              },
              {
                type = "slider",
                name = "纵向移动",
                tooltip = "[<- 下] 或 [上 ->]",
              },
              {
                type = "slider",
                name = "横向移动",
                tooltip = "[<- 左] 或 [右 ->]",
              },
            },
          },
-- ============[ Keyboard Quickslot ]==================
          {
            type = "submenu",
            name = "|cFFFACD快捷栏显示设置|r",
            controls =
            {
              {
                type = "checkbox",
                name = "快捷栏冷却计时器",
              },
              { type = "description" },
              {
                type = "dropdown",
                name = "计时器 字体",
                tooltip = "选择计时器的显示字体",
              },
              {
                type = "slider",
                name = "计时器 字体尺寸",
              },
              {
                type = "dropdown",
                name = "计时器 字体样式",
                tooltip = "选择计时器的字体样式",
              },
              {
                type = "colorpicker",
                name = "计时器 颜色",
              },
              {
                type = "slider",
                name = "纵向移动",
                tooltip = "[<- 下] 或 [上 ->]",
              },
              {
                type = "slider",
                name = "横向移动",
                tooltip = "[<- 左] 或 [右 ->]",
              },
              { type = "divider" },
              {
                type = "dropdown",
                name = "数量 字体",
                tooltip = "选择剩余数量的显示字体",
              },
              {
                type = "slider",
                name = "数量 字体尺寸",
              },
              {
                type = "dropdown",
                name = "数量 字体样式",
                tooltip = "选择数量的字体样式",
              },
              {
                type = "colorpicker",
                name = "数量 颜色",
              },
            },
          },
        },
      }
    )
    table.insert(optionsTable[tableIndex].controls, 
      { 
        type = "divider" 
      }
    )
  end

-- ============[	Gamepad UI	]=========================
  table.insert(optionsTable[tableIndex].controls,
  {
    type = "submenu",
    name = "|cFFFACD手柄模式 UI|r",
    controls =
    {
-- ============[	Gamepad Duration	]===================
      {
        type = "submenu",
        name = "|cFFFACD计时器设置|r",
        controls =
        {
          {
            type = "dropdown",
            name = "字体",
            tooltip = "选择显示的字体",
          },
          {
            type = "slider",
            name = "字体尺寸",
          },
          {
            type = "dropdown",
            name = "字体样式",
            tooltip = "选择显示字体的样式",
          },
          {
            type = "slider",
            name = "调整计时器高度",
            tooltip = "移动计时器 [<- 下] 或 [上 ->]",
          },
          {
            type = "colorpicker",
            name = "计时器颜色",
          },
        },
      },
-- ============[	Gamepad Stacks	]======================
      {
        type = "submenu",
        name = "|cFFFACD层数显示设置|r",
        controls =
        {
          {
            type = "dropdown",
            name = "字体",
            tooltip = "选择显示的字体",
          },
          {
            type = "slider",
            name = "字体尺寸",
          },
          {
            type = "dropdown",
            name = "字体样式",
            tooltip = "选择显示字体的样式",
          },
          {
            type = "slider",
            name = "横向移动",
            tooltip = "移动层数 [<- 左] 或 [右 ->]",
          },
          {
            type = "slider",
            name = "纵向移动",
            tooltip = "移动层数 [<- 上] 或 [下 ->]",
          },
          {
            type = "colorpicker",
            name = "层数颜色",
          },
        },
      },
-- ============[	Gamepad Targets	]======================
      {
        type = "submenu",
        name = "|cFFFACD目标显示设置|r",
        controls =
        {
          {
            type = "dropdown",
            name = "字体",
            tooltip = "选择显示的字体",
          },
          {
            type = "slider",
            name = "字体尺寸",
          },
          {
            type = "dropdown",
            name = "字体样式",
            tooltip = "选择显示字体的样式",
          },
          {
            type = "slider",
            name = "横向移动",
            tooltip = "移动目标 [<- 左] 或 [右 ->]",
          },
          {
            type = "slider",
            name = "纵向移动",
            tooltip = "移动目标 [<- 上] or [下 ->]",
          },
          {
            type = "colorpicker",
            name = "目标颜色",
          },
        },
      },
-- ============[ Gamepad Ultimate  ]====================
      {
        type = "submenu",
        name = "|cFFFACD终极技计时器设置|r",
        controls =
        {
          {
            type = "checkbox",
            name = "显示终极技计时器",
          },
          { 
            type = "description"
          },
          {
            type = "dropdown",
            name = "字体",
            tooltip = "选择计时器显示的字体",
          },
          {
            type = "slider",
            name = "字体尺寸",
          },
          {
            type = "dropdown",
            name = "字体样式",
            tooltip = "选择显示字体的样式",
          },
          {
            type = "colorpicker",
            name = "终极技计时器颜色",
          },
          {
            type = "slider",
            name = "纵向移动",
            tooltip = "[<- 下] 或 [上 ->]",
          },
          {
            type = "slider",
            name = "横向移动",
            tooltip = "[<- 左] 或 [右 ->]",
          },
        },
      },
-- ===========[ Gamepad Ultimate Value ]===============
      {
        type = "submenu",
        name = "|cFFFACD终极点设置|r",
        controls =
        {
          {
            type = "checkbox",
            name = "显示终极点",
          },
          {
            type = "dropdown",
            name = "显示模式",
            tooltip = "Dynamic: 当终极点不足时，显示 当前 / 消耗。足够时，仅显示当前终极点\nStatic: 总是显示 当前 / 消耗",
          },
          {
            type = "dropdown",
            name = "字体",
            tooltip = "选择显示的字体",
          },
          {
            type = "slider",
            name = "字体尺寸",
          },
          {
            type = "dropdown",
            name = "字体样式",
            tooltip = "选择显示字体的样式",
          },
          {
            type = "slider",
            name = "纵向移动",
            tooltip = "[<- 下] 或 [上 ->]",
          },
          {
            type = "slider",
            name = "横向移动",
            tooltip = "[<- 左] 或 [右 ->]",
          },
          { type = "divider",
          },
          {
            type = "colorpicker",
            name = "终极点基础颜色",
          },
          {
            type = "colorpicker",
            name = "终极技可用颜色",
          },
          {
            type = "colorpicker",
            name = "满终极点颜色",
          },
          {
            type = "colorpicker",
            name = "终极技 '几乎可用' 颜色",
          },
          {
            type = "slider",
            name = "终极技 '几乎可用' 阈值 %",
          },
          { type = "divider",
          },
          {
            type = "description",
            title = "终极技 充能框架透明度",
            text = "包含边框和填充的透明度设置",
          },
          {
            type = "slider",
            name = "终极技充能框架 边框透明度",
          },
          {
            type = "slider",
            name = "终极技充能框架 填充透明度",
          },
          { type = "divider",
          },
          {
            type = "description",
            title = "伙伴终极技",
            text = "伙伴终极点显示将会继承玩家设置\n在下方调整位置",
          },
          {
            type = "checkbox",
            name = "显示伙伴终极点",
          },
          {
            type = "slider",
            name = "纵向移动",
            tooltip = "[<- 下] 或 [上 ->]",
          },
          {
            type = "slider",
            name = "横向移动",
            tooltip = "[<- 左] 或 [右 ->]",
          },
        },
      },
-- ============[	Gamepad Quickslot	]==================
      {
        type = "submenu",
        name = "|cFFFACD快捷栏显示设置|r",
        controls =
        {
          {
            type = "checkbox",
            name = "快捷栏冷却计时器",
          },
          { 
            type = "description",
          },
          {
            type = "dropdown",
            name = "字体",
            tooltip = "选择显示的字体",
          },
          {
            type = "slider",
            name = "字体尺寸",
          },
          {
            type = "dropdown",
            name = "字体样式",
            tooltip = "选择显示字体的样式",
          },
          {
            type = "colorpicker",
            name = "快捷栏计时器颜色",
          },
          {
            type = "description",
            text = "调整位置",
          },
          {
            type = "slider",
            name = "纵向移动",
            tooltip = "[<- 下] 或 [上 ->]",
          },
          {
            type = "slider",
            name = "横向移动",
            tooltip = "[<- 左] 或 [右 ->]",
          },
          { 
            type = "divider" 
          },
          {
            type = "dropdown",
            name = "数量 字体",
            tooltip = "选择剩余数量的显示字体Select which font to display the stack count in.",
          },
          {
            type = "slider",
            name = "数量 字体尺寸",
          },
          {
            type = "dropdown",
            name = "数量 字体样式",
            tooltip = "选择数量的字体样式",
          },
          {
            type = "colorpicker",
            name = "数量 颜色",
          },
        },
      },
    },
  })
  table.insert(optionsTable[tableIndex].controls, 
    { 
      type = "divider" 
    }
  )

-- ============[	Expiration Settings	]=================
  table.insert(optionsTable[tableIndex].controls,
  {
    type = "submenu",
    name = "|cFFFACD键盘模式 & 手柄模式 通用设置|r",
    controls =
    {
-- ============[  Timer Fade Delay  ]==================
      {
        type = "description",
        title = "[ |cffdf80计时器渐隐|r ]",
      },
      {
        type = "checkbox",
        name = "延迟计时器隐藏",
        tooltip = "在计时器抵达0后延长显示一段时间，以提醒技能过期",
      },
      {
        type = "slider",
        name = "隐藏延迟",
        tooltip = "在技能过期后，你想要计时器显示0的额外时间",
      },
      { 
        type = "description"
      },
-- ============[  Timer Decimals  ]====================
      {
        type = "description",
        title = "[ |cffdf80计时器小数点显示|r ]",
      },
      {
        type = "dropdown",
        name = "启用 计时器小数点",
        tooltip = "Always = 激活计时器时总是显示小数点\nExpire = 启用阈值设置\nNever = 从不显示",
      },
      {
        type = "slider",
        name = "显示小数点的阈值",
        tooltip = "当计时器少于选定秒数后，开始显示小数点",
      },
      { 
        type = "description"
      },
-- ============[  Expiring Effect Start  ]=============
      {
        type = "description",
        title = "[ |cffdf80过期计时器显示设置|r ]",
      },
      {
        type = "slider",
        name = "过期计时器阈值",
        tooltip = "当计时器少于选定秒数后，改变计时器的颜色和高光",
      },
-- ============[	Expiring Timer Color	]=============
      { 
        type = "description", 
        title = "[ |cffdf80过期计时器文本|r ]",
      },
      {
        type = "checkbox",
        name = "过期计时器 字体颜色",
        tooltip = "当计时器少于选定秒数后，改变计时器颜色",
      },
      {
        type = "colorpicker",
        name = "选择文本颜色",
      },
      { 
        type = "description"
      },
-- ============[	Expiring Highlight Color	]=========
      { 
        type = "description", 
        title = "[ |cffdf80过期计时器高亮|r ]",
      },
      {
        type = "checkbox",
        name = "过期计时器 高亮颜色",
        tooltip = "当计时器少于选定秒数后，改变计时器高亮",
      },
      {
        type = "colorpicker",
        name = "选择高亮颜色",
      },
      {
        type = "description",
        title = "[ |cffdf80切换类效果显示设置|r ]",
      },
      {
        type = "checkbox",
        name = "显示切换类效果的判定时点",
        tooltip = "部分切换类技能具有判定时点，比如冥想给予资源回复。启用时，将显示距离下一个判定时点的计时器。转场加载会导致该计时器与游戏引擎脱节，直到该技能再次被切换。",
      },
      {
        type = "slider",
        name = "判定时点阈值",
        tooltip = "如果启用了下方设置，当判定时点的计时数少于选定秒数后，改变计时器高亮",
      },
-- ============[	Tick Alert Color	]=============
      { 
        type = "description", 
        title = "[ |cffdf80切换类效果文本|r ]",
      },
      {
        type = "checkbox",
        name = "改变切换类效果判定时点计时器的文本颜色",
        tooltip = "如果切换类效果的计时器小于阈值或被取消，改变计时器高亮",
      },
      {
        type = "colorpicker",
        name = "选择高亮颜色",
      },
      { 
        type = "description"
      },
    },
  })
  tableIndex = tableIndex + 1

  table.insert(optionsTable, 
    { 
      type = "divider" 
    }
  )
  tableIndex = tableIndex + 1

  table.insert(optionsTable,
  {
-- ==============[  Ability Config  ]=====================
    type = "submenu",
    name = "|cFFFACD技能配置|r",
    controls =
    {
      {
        type = "checkbox",
        name = "账户全局设置",
        tooltip = "启用后，修改一个技能的计时器将会影响所有角色",
      },
      {
        type = "submenu",
        name = "|cFFFACD当前装备的技能|r",
        controls =
        {
          {
            type = "description",
            title = "主手",
          },
          {
            type = "description",
            title = "副手",
          },
        },
      },
      {
        type = "submenu",
        name = "|cFFFACD追踪效果|r",
        controls =
        {
          {
            type = "submenu",
            name = "说明",
            controls =
            {
              {
                type = "description",
                text = "在此你可以编辑特定技能的计时器需要追踪什么效果\n你需要在点击确定前，填写技能ID和想要新追踪的效果\n该功能尚处早期测试，部分技能可能出错。你可以随时重置你修改过的技能，使之正常运行",
              },
            },
          },
          { 
            type = "divider" 
          },
          {
            type = "dropdown",
            name = "已保存的修改",
            tooltip = "可以查看你进行过修改的技能",
          },
          { 
            type = "description"
          },
          {
            type = "editbox",
            name = "技能ID",
            tooltip = "输入你想要修改技能的ID（数字）",
          },
          {
            type = "description",
            title = "所选技能:",
          },
          {
            type = "dropdown",
            name = "修改类型",
            tooltip = "选择你想要对技能应用哪种修改（Disable：禁用追踪；Reset：重置为默认；New ID：设置新追踪）",
          },
          { 
            type = "description"
          },
          {
            type = "editbox",
            name = "新的效果ID",
            tooltip = "输入你想要为所选技能追踪的新的效果ID（数字）\n译注：在BUI插件的增益一栏设置中较易获取各种Buff的ID",
          },
          {
            type = "description",
            title = "所选效果:",
          },
          {
            type = "button",
            name = "确认修改",
          },
        },
      },
-- ==============[  External Buff Tracking  ]==============
      {
        type = "submenu",
        name = "|cFFFACD从他人获取的Buffs|r",
        controls =
        {
          {
            type = "submenu",
            name = "说明",
            controls =
            {
              { 
                type = "description", 
                text = "在此你可以允许计时器追踪队友给予Buff的持续时间\n你也可以选择不想追踪的效果，如果其来源不是自身",
              },
            },
          },
          {
            type = "checkbox",
            name = "追踪其他人给予的Buffs",
          },
          { 
            type = "description"
          },
          {
            type = "editbox",
            name = "添加黑名单",
            tooltip = "当你从其他人获取效果时，不更新这些技能ID的计时器",
          },
          {
            type = "description",
            title = "所选Buff:",
          },
          { 
            type = "description"
          },
          {
            type = "button",
            name = "确认黑名单",
          },
          { 
            type = "description"
          },
          {
            type = "dropdown",
            name = "黑名单列表",
          },
          {
            type  = "button",
            name = "从黑名单移除",
          },
        },
      },
-- ==================[  Target Debuffs  ]==================
      {
        type = "submenu",
        name = "|cFFFACD目标的Debuffs|r",
        controls =
        {
          {
            type = "checkbox",
            name = "当前目标Debuff计时器",
            tooltip = "当改变目标时更新Debuff持续时间计时器，以具体显示目标身上的剩余时间\n仅应用于存活的目标",
          },
          {
            type = "checkbox",
            name = "为最后目标保持计时器",
            tooltip = "当你看向其他方向时保持计时器，直到你瞄准一个新的目标",
          },
          {
            type = "checkbox",
            name = "显示嘲讽免疫层数",
            tooltip = "多次嘲讽会导致目标获得嘲讽免疫，该选项追踪嘲讽免疫状态",
          },
          {
            type = "description",
            text = "更多选项，敬请期待",
          },
        },
      },
-- ============[  Additional Tracking Options  ]===========
      {
        type = "submenu",
        name = "|cFFFACD额外追踪选项|r",
        controls =
        {
          {
            type = "description",
            title = "[ |cffdf80追踪效果的持续阈值|r ]",
            text = "根据效果的持续时间，设置过短或过长时无视这些效果",
          },
          {
            type = "slider",
            name = "最小值",
          },
          {
            type = "slider",
            name = "最大值",
          },
          { type = "divider" },
          {
            type = "description",
            title = "[ |cffdf80多目标效果追踪选项|r ]",
            text = "配置目标计数的表现和追踪的技能",
          },
          {
            type = "checkbox",
            name = "显示目标计数",
            tooltip = "可追踪的多目标技能，将在左上角显示目标计数",
          },
          {
            type = "checkbox",
            name = "仅单目标生效时也显示目标计数",
            tooltip = "当仅有一个目标生效效果时，也显示目标计数。注意当'目标的Debuffs'设置启用时，该选项不会对Debuff监控有效。",
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
          { 
            type = "divider" 
          },
          {
            type = "description",
            title = "[ |cffdf80回退计时器选项|r ]",
            text = "回退计时器允许技能栏显示该技能的官方默认追踪效果的倒计时，你可以在此启用或关闭。黑名单可以指定部分技能不启用回退计时器。大量的篆刻技能需要手动配置追踪效果，或打开回退计时器，才能显示计时器。",
          },
          {
            type = "checkbox",
            name = "允许回退计时器",
            tooltip = "默认情况下，配置过的技能只会追踪特定效果的持续时间。启用后，当追踪的特定效果持续时间短于技能本身，将允许计时器在之后追踪技能本身的剩余时间。举例来说，将硬化护甲配置为追踪护盾时间（默认为追踪高信时间）：不启用时，仅追踪该技能提供的护盾时间；启用后，在护盾消耗/过期后，计时器转而追踪高信时间",
          },
          {
            type = "description",
            title = "[ |cffdf80回退计时器黑名单|r ]",
            text = "名单中的技能将只追踪设置的特定效果，而不会应用回退计时器",
            tooltip = "举例来说，技能A可附加短时间效果B和长时间效果C，且手动配置追踪技能A的效果B。启用回退计时器后，技能栏会先显示效果B的倒计时，结束后转为显示效果C的剩余时间。如果将技能A列入回退计时器黑名单，则无论是否开启回退计时器，技能栏只会显示效果B的倒计时"
          },
          {
            type = "editbox",
            name = "添加黑名单",
            tooltip =
          "输入你不想要追踪多个效果的技能ID",
          },
          {
            type = "description",
            title = "所选技能:",
          },
          { 
            type = "description"
          },
          {
            type = "button",
            name = "确认黑名单",
          },
          { 
            type = "description"
          },
          {
            type = "dropdown",
            name = "黑名单列表",
          },
          {
            type = "button",
            name = "从黑名单移除",
          },
          { 
            type = "divider" 
          },
          {
            type = "description",
            title = "[ |cffdf80杂项设置|r ]",
            text = "技能追踪额外设置",
          },
          {
            type = "checkbox",
            name = "显示 堆叠计数器",
            tooltip = "为那些拥有多个层数或可多次叠加的技能显示堆叠计数器",
          },
          {
            type = "checkbox",
            name = "在技能栏显示 咏唱/引导计时器",
            tooltip = "当技能为咏唱或引导类型时，在使用时显示计时器",
          },
          {
            type = "checkbox",
            name = "无视陷阱类技能的初始放置",
            tooltip = "默认下，陷阱类技能初始放置会显示计时器和层数。启用时，仅追踪技能的DOT效果",
          },
          {
            type = "checkbox",
            name = "为最快过期目标显示计时器",
            tooltip = "默认显示最后一次释放技能的持续时间\n启用后，将显示最快过期目标的持续时间",
          },
          {
            type = "checkbox",
            name = "无视非组队盟友",
            tooltip = "默认追踪施加给所有友方单位的Buffs\n启用后，你在队伍中时仅追踪对队友施加的Buffs",
          },
        },
      },
    },
  })
  tableIndex = tableIndex + 1

  table.insert(optionsTable, 
  { 
    type = "divider" 
  })
  tableIndex = tableIndex + 1

  table.insert(optionsTable,
  {
  -- ============[	Miscellaneous	]=======================
    type = "submenu",
    name = "|cFFFACD杂项|r",
    controls =
    {
      {
        type = "checkbox",
        name = "死亡时显示技能栏",
        tooltip = "启用时，在死亡状态也显示技能栏",
      },
      {
        type = "checkbox",
        name = "阻止在交易中使用技能",
        tooltip = "在交易中时阻止使用技能，但允许在设置和地图界面使用技能\n这个功能将会阻止 Perfect Weave 插件正常工作",
      },
      {
        type = "checkbox",
        name = "启用 Perfect Weave 插件兼容",
        tooltip = "如果你想同时使用 FAB+ 和 Perfect Weave 插件，推荐开启",
      },
      {
        type = "checkbox",
        name = "调整生命值栏位置",
        tooltip = "启用时，若FAB技能栏在原位，则会调整生命值位置避免遮挡。当FAB技能栏被移动过，将不会调整生命值位置。禁用时需要重新加载UI。装有Azurah插件时，该设置无效",
      },
      {
        type = "checkbox",
        name = "调整法力/耐力值栏位置",
        tooltip = "调整法力和耐力值栏位置，对齐生命值栏",
      },
      {
        type = "checkbox",
        name = "调整玩家Buff栏位置",
        tooltip = "调整玩家Buff栏位置，避免在主机UI中与属性栏冲突",
      },
      {
        type = "checkbox",
        name = "调整协同栏位置",
        tooltip = "调整协同栏尾椎，避免在主机UI中与Buff栏冲突",
      },
      {
        type = "checkbox",
        name = "强制UI调节",
        tooltip = "默认下，仅当技能栏处于默认位置时，重新调整资源栏、协同栏和Buff栏的位置。启用后，将始终调节它们的位置",
      },
      { 
        type = "description"
      },
-- ============[	Enemy Markers	]=======================
      {
        type = "description",
        title = "[ |cffdf80敌方标记|r ]",
        text = "这与 Untaunted 插件的功能类似",
      },
      {
        type = "checkbox",
        name = "显示敌方标记",
        tooltip = "在你正在交战的敌方头顶显示红色箭头",
      },
      {
        type = "slider",
        name = "敌方标记尺寸",
      },
      { 
        type = "divider" 
      },
-- ===============[  GCD Tracker  ]======================
      {
        type = "submenu",
        name = "|cFFFACDGCD追踪器|r",
        controls =
        {
          {
            type = "description",
            title = "[ |cffdf80调整GCD追踪器尺寸|r ]",
          },
          {
            type = "checkbox",
            name = "启用GCD追踪",
          },
          {
            type = "checkbox",
            name = "仅战斗中",
          },
          { 
            type = "divider" 
          },
          {
            type = "slider",
            name = "高度",
          },
          {
            type = "slider",
            name = "宽度",
          },
          {
            type = "colorpicker",
            name = "填充颜色",
          },
          {
            type = "colorpicker",
            name = "边缘颜色",
          },
        },
      },
    },
  })

  if IsConsoleUI() then
    local moveGCD =
    {
      {
        type = "description",
        title = "[ |cffdf80调整GCD追踪器位置|r ]",
      },
      {
        type = "slider",
        name = "横向 (X轴) 位置",
      },
      {
        type = "slider",
        name = "纵向 (Y轴) 位置",
      }
    }
    for k, v in pairs(moveGCD) do
      table.insert(optionsTable[tableIndex].controls, v)
    end
  end
  tableIndex = tableIndex + 1

  table.insert(optionsTable, 
  { 
    type = "divider" 
  })
  tableIndex = tableIndex + 1

--[[
  table.insert(optionsTable,
  {
-- ===============[  Debugging  ]========================
    type = "description",
    title = "[ |cffdf80调试|r ]",
  })
  tableIndex = tableIndex + 1

  table.insert(optionsTable,
  {
    type = "checkbox",
    name = "调试模式",
    tooltip = "在聊天栏显示调试信息",
  })
  tableIndex = tableIndex + 1
]]

  table.insert(optionsTable, 
  { 
    type = "divider" 
  })
  tableIndex = tableIndex + 1

  table.insert(optionsTable,
  {
    type = "description",
  })
  tableIndex = tableIndex + 1
  table.insert(optionsTable, 
  { 
    type = "divider" 
  })
  
  --Special Setting
  BB.SetMenuPatch(FancyActionBar.GetName().."Menu", optionsTable)
  
return true end