local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["QcellRockgroveHelper"] = function() if not QRH then return false end
  local NewOption = {
		{
			type = "description",
			text = "石林试炼中的计时器、警告和提示器插件",
		},
		{
			type = "divider",
		},
    {
			type = "description",
			text = "部分机制提示需要依赖 |cff0000OdySupportIcons|r 插件，推荐安装",
		},
		{
			type = "divider",
		},
		{
			type    = "checkbox",
			name    = "解锁UI（使之可以移动）",
		},
    {
			type    = "button",
			name    = "恢复UI至默认位置",
      warning = "需要重新加载UI使之生效",
		},
    {
			type    = "checkbox",
			name    = "隐藏聊天栏的插件副本欢迎信息",
		},
    {
			type = "divider",
		},
    {
      type = "header",
      name = "奥西索（一王）",
    },
    {
			type    = "checkbox",
			name    = "显示 冲锋机制 计时器",
		},
    {
			type    = "checkbox",
			name    = "显示 毒点名 计时器",
		},
    {
			type    = "checkbox",
			name    = "显示 毒点名玩家名字和解毒方位",
		},
    {
			type    = "checkbox",
			name    = "显示 流星格挡 警告",
		},
    {
			type    = "checkbox",
			name    = "显示 横劈点名（Mini窄扇形点名）翻滚条",
		},
    {
			type    = "checkbox",
			name    = "显示 奥西索水池 图标",
		},
    {
      type = "header",
      name = "烈焰先驱巴塞（二王）",
    },
    {
			type    = "checkbox",
			name    = "显示 诅咒点名 计时器",
		},
    {
			type    = "checkbox",
			name    = "(仅HM) 显示 传送门 计时器",
		},
    {
			type    = "checkbox",
			name    = "(HM) 显示 传送门中玩家数量",
      warning = "实验性功能",
		},
    {
			type    = "checkbox",
			name    = "(仅HM) 显示 传送门Debuff 计时器",
		},
    {
			type    = "checkbox",
			name    = "显示 镰刀打击（对T诅咒） 计时器",
		},
    {
			type    = "checkbox",
			name    = "(仅Boss血量 < 30%) 显示 自爆流星 计时器",
		},
    {
			type = "divider",
		},
    {
			type    = "checkbox",
			name    = "(仅坦克) 显示 打断 提示",
		},
    {
			type    = "checkbox",
			name    = "(仅坦克) 显示 血肉憎恶(Mini) 重击",
		},
    {
			type    = "checkbox",
			name    = "显示 MT炸诅咒 计时器",
		},
    {
			type    = "checkbox",
			name    = "显示 自身诅咒 倒计时",
		},
    {
			type    = "checkbox",
			name    = "显示 自爆流星 时间条",
      warning = "击杀流星后，时间条依然会存在",
		},
    {
      type = "header",
      name = "夏尔瓦卡（尾王）",
    },
    {
			type    = "checkbox",
			name    = "在Boss血量为70%和40%时，提示上楼",
		},
    {
			type    = "checkbox",
			name    = "(仅HM) 在阶段1显示 Boss传送 计时器",
		},
    {
			type    = "checkbox",
			name    = "显示 暴烈甲壳（分身）盾值",
      warning = "仅当你瞄准暴烈甲壳时，盾值才会刷新",
		},
    {
			type    = "checkbox",
			name    = "提示 净化灵魂 协同",
      warning = "当你击杀幽灵获得协同时，提示净化灵魂协同警报",
		},
    {
			type    = "checkbox",
			name    = "显示 净化灵魂 计时器",
      warning = "计数你持有净化灵魂协同的时间（受到的伤害会逐渐增加）",
		},
    {
			type    = "checkbox",
			name    = "显示 ON BLOB 当你受到地上灵魂（SHIT）的伤害",
      warning = "这意味着有人在离队伍过近的地方净化灵魂",
		},
    {
			type    = "checkbox",
			name    = "显示 分身 图标",
      warning = "在暴烈甲壳的位置上显示图标",
		},
    {
      type = "header",
      name = "Trash怪群",
    },
    {
			type    = "checkbox",
			name    = "显示 地震AOE（收割者） 警报",
		},
    {
			type    = "checkbox",
			name    = "显示 自爆流星 时间条",
		},
    {
			type    = "checkbox",
			name    = "显示 流星火雨（泰坦巨兽） 时间条",
		},
	}

  --Special Setting
  BB.SetMenuPatch(QRH.name .. "Options", NewOption)
  
  if GetCVar("language.2") == "zh" then
    QRH.data.oaxiltso_name = "奥西索"
    QRH.data.bahsei_name = "烈焰先驱巴塞"
    QRH.data.xalvakka_name = "夏尔瓦卡"
    QRH.data.xalvakka_volatile_shell_name = "暴烈甲壳"
  end

return true end