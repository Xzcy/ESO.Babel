local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["DescendantsSupportSetTracker"] = function() if not DSST then return false end
  local NewOption = {
		{
      type = "button",
      name = "显示 / 隐藏",
      tooltip = "显示/隐藏 窗口",
    },
		{
			type = "dropdown",
			name = "套装列表",
			tooltip = "选择显示的套装列表",
		},
		{
			type = "dropdown",
			name = "语言",
			tooltip = "选择插件要显示的语言",
		},
		{
      type = "button",
      name = "重置位置",
      tooltip = "将位置重置到屏幕中央",
    },
		{
			type = "divider",
		},
    {
      type = "checkbox",
      name = "在物品栏中标记物品",
      tooltip = "在物品栏中标记属于追踪的套装列表的物品（按角色设置）",
    },
		{
      type = "checkbox",
      name = "显示双手武器",
      tooltip = "在套装列表中显示双手武器",
    },
		{
      type = "checkbox",
      name = "显示重构标记",
      tooltip = "在套装列表中显示蜕变石标记",
    },
    {
      type = "header",
      name = "自定义套装（Custom）列表",
    },
		{
			type = "dropdown",
			name = "套装名",
			tooltip = "用于在自定义列表中添加/移除套装",
		},
		{
      type = "editbox",
      name = "套装名",
      tooltip = "写入套装中文全称，套装之间以 ！英文逗号！ 分隔",
    },
		{
      type = "button",
      name = "添加套装",
      tooltip = "为自定义列表添加套装",
    },
		{
      type = "button",
      name = "移除套装",
      tooltip = "从自定义列表移除套装",
    },
		{
			type = "divider",
		},
		{
      type = "description",
      text = "通过在聊天栏输入 |caeba00/dsst|r 打开插件UI",
		},
	}

  --Special Setting
  BB.SetMenuPatch("Descendants Support Set Tracker", NewOption)
  
  BB.TableCopy({
    {name="头部"},
    {name="肩部"},
    {name="胸甲"},
    {name="手部"},
    {name="腰部"},
    {name="腿部"},
    {name="足部"},
    {name="颈部"},
    {name="戒指"},
    {name="匕首"},
    {name="斧头"},
    {name="钉锤"},
    {name="剑"},
    {name="盾牌"},
    {name="炼狱法杖"},
    {name="闪电法杖"},
    {name="寒冰法杖"},
    {name="治疗法杖"},
    {name="剑（双手）"},
    {name="斧头（双手）"},
    {name="钉锤（双手）", link="esoui/art/tradinghouse/tradinghouse_weapons_2h_mace_down.dds"},
    {name="弓"},
    }, DSST.icons
  )
  
  BB.TableCopy({
    [BAG_BACKPACK] = {name = "背包"},
    [BAG_WORN] = {name="装备中"},
    [BAG_BANK] = {name="银行"},
    [BAG_SUBSCRIBER_BANK] = {name="银行"}
    }, DSST.Storages
  )
  
  BB.SetKeybindingsReplace("DSST_TOGGLE", "开关UI界面")
  
return true end