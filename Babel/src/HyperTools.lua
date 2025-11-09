local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["HyperTools"] = function() if not HyperTools then return false end
  local dict = {
    --Button
    ["Return"] = "返回",
    ["Create"] = "新建",
    ["Import"] = "导入",
    ["Display"] = "显示",
    ["Event"] = "时间",
    ["General"] = "常规",
    ["Condition"] = "条件",
    ["Auto-set texture"] = "自动设置贴图",
    ["Export Tracker"] = "导出追踪器",
    ["Start"] = "开始",
    --Checkbox
    ["Inverse"] = "反向",
    ["Vertical"] = "垂直",
    ["Remaining Time"] = "剩余时间",
    ["Stacks"] = "层数",
    ["Never"] = "从不",
    ["Always"] = "总是",
    ["In Combat"] = "战斗中",
    ["Only your cast"] = "仅自身释放",
    ["Don't overwrite effects when shorter duration is applied"] = "较短持续时间应用时不覆盖效果",
    ["Don't update duration and stacks from this event (ignore original code and run only custom one)"] = "不要从此事件更新持续时间和层数（忽略原始代码，仅运行自定义代码）",
    --Colorpicker
    ["Color"] = "颜色",
    ["Bar"] = "进度条",
    ["Outline"] = "轮廓",
    ["Background"] = "背景",
    ["Text"] = "文本",
    ["Time"] = "时间",
    ["Cooldown"] = "冷却",
    --Dropdown
    ["Number"] = "序号",
    ["Target"] = "目标 (Boss、当前瞄准、队友、自身)",
    ["Type"] = "类型 (进出战斗、效果冷却/持续)",
    ["Set automatic texture from ID"] = "从ID自动设置贴图",
    ["Font"] = "字体",
    ["Weight"] = "粗细",
    ["Size"] = "尺寸",
    ["Decimals"] = "小数位数",
    ["Draw Level"] = "图层顺序",
    ["Outline Thickness"] = "轮廓粗细",
    ["Select/Add Event"] = "选择/添加 事件触发器",
    ["Event Type"] = "类型 (进出战斗、效果冷却/持续)",
    ["Role"] = "角色",
    ["Class"] = "职业",
    ["Select/Add condition"] = "选择/添加 条件触发器",
    ["Set Condition"] = "条件 (目标距离、队伍角色、剩余时间、层数)",
    ["Set Result"] = "效果 (隐藏、修改颜色、显示触发套)",
    --Label
    ["Progress Bar"] = "进度条",
    ["Icon Tracker"] = "图标追踪器",
    ["Progress Texture"] = "进度条贴图",
    ["Group"] = "编组",
    ["Group Member"] = "队伍成员",
    ["Import Tracker"] = "导入追踪器",
    ["Create new"] = "新建",
    ["CREATE NEW PROGRESS BAR"] = "新建进度条",
    ["Name"] = "名称",
    ["Import String"] = "字符串导入",
    ["DISPLAY"] = "显示",
    ["GENERAL"] = "常规",
    ["LOAD"] = "何时加载",
    ["CONDITIONS"] = "条件",
    ["EVENT"] = "时间",
    ["ADVANCED"] = "进阶",
    ["Shows a progress bar with timer, stacks, and text"] = "显示一个带有计时器、层数和文本的进度条",
		["Shows an icon with timer and stacks"] = "显示一个带有计时器和层数的图标",
		["Shows a texture that shrinks/grows based on assigned effect's duration"] = "显示一个根据追踪效果的持续时间进行缩放的贴图",
		["Place trackers inside a group to move them together, assign them same hide/show conditions and to export them as one"] = "将多个追踪器编组。统一进行移动、设置隐藏条件和导出",
		["Trackers placed inside that group will be repeated 12 times and placed next to each of your group members"] = "该组内的追踪器将被重复12次，并显示在每个队友身旁",
		["Paste an import string and import a pre-made tracker"] = "黏贴字符串，导入预设的追踪器",
    ["EVENT VIEWER"] = "事件监控",
    ["EFFECT VIEWER"] = "效果监控",
    --Editbox
    ["Ids"] = "技能Ids (支持输入名称或Id)",
    ["Width"] = "宽度",
    ["Height"] = "高度",
    ["Text"] = "文本",
    ["Texture Path"] = "贴图路径",
    ["Name"] = "名称",
    ["Bosses"] = "特定Boss",
    ["Skills"] = "技能",
    ["Item Sets"] = "套装",
    ["Zones"] = "区域",
    ["Cooldown"] = "冷却",
    ["X position"] = "X轴位置",
    ["Y position"] = "Y轴位置",
    ["Source Name:"] = "来源名称",
    ["Target Name:"] = "目标名称",
    ["Ability Id:"] = "能力Id",
    ["Ability Name:"] = "能力名称",
    ["Result:"] = "结果",
    ["Hit Value:"] = "伤害数值",
    ["Power Type:"] = "物理/法术",
    ["Damage Type:"] = "伤害类型",
    --MultilineEditbox
    ["Custom Lua Code executed every time event fires"] = "每次事件触发时执行的自定义Lua代码",
  }
  
  local OriginalFun_1 = createButton
  createButton = function(parent, name, sizeX, sizeY, xOffset, yOffset, fromAnchor, toAnchor, buttonFunction, text, textureOverride, isBackdrop)
    text = dict[text] or text
    return OriginalFun_1(parent, name, sizeX, sizeY, xOffset, yOffset, fromAnchor, toAnchor, buttonFunction, text, textureOverride, isBackdrop)
  end
  
  local OriginalFun_2 = createCheckbox
  createCheckbox = function(parent, name, sizeX, sizeY, xOffset, yOffset, fromAnchor, toAnchor, defaultValue, checkboxFunction, labelText, labelLength)
    labelText = dict[labelText] or labelText
    return OriginalFun_2(parent, name, sizeX, sizeY, xOffset, yOffset, fromAnchor, toAnchor, defaultValue, checkboxFunction, labelText, labelLength)
  end
  
  local OriginalFun_3 = createColorpicker
  createColorpicker = function(parent, name, sizeX, sizeY, xOffset, yOffset, fromAnchor, toAnchor, color, colorpickerFunction, labelText)
    labelText = dict[labelText] or labelText
    return OriginalFun_3(parent, name, sizeX, sizeY, xOffset, yOffset, fromAnchor, toAnchor, color, colorpickerFunction, labelText)
  end
  
  local OriginalFun_4 = createDropdown
  createDropdown = function(parent, name, sizeX, sizeY, xOffset, yOffset, fromAnchor, toAnchor, choices, selection, dropdownFunction, labelText)
    labelText = dict[labelText] or labelText
    return OriginalFun_4(parent, name, sizeX, sizeY, xOffset, yOffset, fromAnchor, toAnchor, choices, selection, dropdownFunction, labelText)
  end
  
  local OriginalFun_5 = createLabel
  createLabel = function(parent, name, sizeX, sizeY, xOffset, yOffset, fromAnchor, toAnchor, text, horizontalAlignment, verticalAlignment, font, fontSize, fontWeight)
    text = dict[text] or text
    return OriginalFun_5(parent, name, sizeX, sizeY, xOffset, yOffset, fromAnchor, toAnchor, text, horizontalAlignment, verticalAlignment, font, fontSize, fontWeight)
  end
  
  local OriginalFun_6 = createEditbox
  createEditbox = function(parent, name, sizeX, sizeY, xOffset, yOffset, fromAnchor, toAnchor, editboxFunction, defaultValue, textType, labelText)
    defaultValue = dict[defaultValue] or defaultValue
    labelText = dict[labelText] or labelText
    return OriginalFun_6(parent, name, sizeX, sizeY, xOffset, yOffset, fromAnchor, toAnchor, editboxFunction, defaultValue, textType, labelText)
  end
  
  local OriginalFun_7 = createMultilineEditbox
  createMultilineEditbox = function(parent, name, sizeX, sizeY, xOffset, yOffset, fromAnchor, toAnchor, editboxFunction, defaultValue, textType, labelText)
    defaultValue = dict[defaultValue] or defaultValue
    labelText = dict[labelText] or labelText
    return OriginalFun_7(parent, name, sizeX, sizeY, xOffset, yOffset, fromAnchor, toAnchor, editboxFunction, defaultValue, textType, labelText)
  end
  
  BB.SetAfterPart(function()
    ESO_Dialogs["HT_ConfirmDelete"]["title"]["text"] = "删除警告"
    ESO_Dialogs["HT_ConfirmDelete"]["mainText"]["text"] = "确定删除此追踪器？"
    ESO_Dialogs["HT_ConfirmDelete"]["buttons"][1]["text"] = "删除"
    ESO_Dialogs["HT_ConfirmDelete"]["buttons"][2]["text"] = "取消"
  end)
  
return true end