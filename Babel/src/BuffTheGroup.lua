local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["BuffTheGroup"] = function() if not btg then return false end
  local NewOption = {
		{
			type = "header",
			name = "设置",
		},
		{
			type = "checkbox",
			name = "启用",
			tooltip = "切换UI显示",
		},
		{
			type = "checkbox",
			name = "仅为DPS职能显示",
			tooltip = "在BTG框架中，仅显示被标记为DPS玩家的Buff情况",
		},
		{
			type = "checkbox",
			name = "单列模式",
			tooltip = "以单列而不是 6x2 布局来排列框架",
		},
		{
			type = "checkbox",
			name = "精简模式",
			tooltip = "将UI简化为百分比显示，背景颜色代表Buff剩余时间。[仅为DPS职能显示]设置对该模式有效",
		},
		{
			type = "checkbox",
			name = "梯度模式",
			tooltip = "为Buff持续时间使用颜色渐变显示",
		},
		{
			type = "colorpicker",
			name = "Buff开始颜色",
			tooltip = "设置追踪Buff开始时的梯度颜色",
		},
		{
			type = "colorpicker",
			name = "Buff结束颜色",
			tooltip = "设置追踪Buff结束时的梯度颜色",
		},
		{
			type = "header",
			name = "译注：因插件使用 英文字符串 区分高级/次级Buff",
		},
		{
			type = "header",
			name = "导致中文下，所有Buff均被归入其他一类",
		},
		{
			type = "header",
			name = "其他 Buff",
		},
    {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, 
    {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, 
    {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, 
    {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, {type = "checkbox"}, 
		{
			type = "button",
			name = "取消所有选择",
		},
		{
			type = "button",
			name = "重置位置",
		},
	}
  
  --Specail Setting
  BB.SetMenuPatch(btg.name.."Options", NewOption)
  
return true end