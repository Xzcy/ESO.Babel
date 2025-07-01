local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["GroupLootNotifier"] = function() if not GLN then return false end
  local NewTable = {
    {
      type = "checkbox",
      name = "启用 掉落物记录",
    },
		{
      type = "checkbox",	
      name = "时间戳",
    },
		{
      type = "checkbox",
      name = "显示背包空间图标",
    },
		{
      type = "checkbox",
      name = "启用 历史掉落物",
      tooltip = "使用聊天栏指令 /loot [list/listall/clear] 去查看和管理已拾取掉落物历史信息",
    },
		{
      type = "dropdown",
      name = "名称格式",
    },
		{
      type = "dropdown",	
      name = "乞讨/白送定型文 使用其他语言（默认英文）",
      tooltip = '在使用乞讨或提供物品定型文时的语言（在该插件聊天栏物品链接上右键）',
    },
		{
      type = "dropdown",
      name = "发送信息的聊天频道"
    },
		{
      type = "checkbox",
      name = "显示图标",
    },
		{
      type = "checkbox",
      name = "显示特质"
    },
		{
      type = "checkbox",
      name = "显示类型",
      tooltip = "轻/中/重/武器/珠宝",
    },
		{
      type = "header",
      name = "过滤器（靠上选项的优先级更高）",
    },
		{
      type = "checkbox",
      name = "显示所有掉落",
    },
		{
      type = "checkbox",	
      name = "显示收藏品",
    },
		{
      type = "checkbox",
      name = "显示独特物品",
      tooltip = "战利品箱，收藏品，配方，藏宝图，样式书，孔雀石碎片等"
    },
		{
      type = "dropdown",	
      name = "珠宝品质",	
      tooltip = "只有当饰品品质大于等于此选项，才显示掉落信息"
    },
		{
      type = "checkbox",
      name = "显示已收藏套装物品",	
      tooltip = "禁用来隐藏你已收藏的套装物品信息"
    },
		{
      type = "checkbox",	
      name = "在队伍中使用过滤器",	
      tooltip = "在队伍中时，自动禁用显示所有独特物品的掉落信息"
    },
  }
  
  --Special Setting
  BB.SetMenuPatch("GLN_Menu", NewTable)
  BB.SetMenuItemPatch("Beg item", "乞讨定型文")
  BB.SetMenuItemPatch("Offer item", "白送定型文")
  
return true end