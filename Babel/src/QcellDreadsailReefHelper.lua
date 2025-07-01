local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["QcellDreadsailReefHelper"] = function() if not QDRH then return false end
  local NewOption = {
    {
      type = "description",
      text = "恐帆礁石试炼中的计时器、警告和提示器插件",
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
      name    = "解锁UI (你需要处于恐帆礁石地图中)",
    },
    {
      type = "description",
      text = "你也可以使用 /qdrh lock 和 /qdrh unlock 指令去解锁UI移动",
    },
    {
      type    = "button",
      name    = "重置为默认位置",
      warning = "需要重新加载UI来重置位置",
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
      name = "莱拉纳尔 ＆ 图拉塞尔（一王）",
    },
    {
      type    = "checkbox",
      name    = "(仅坦克) 警报: 冰/火脆弱 倒计时",
    },
    {
      type    = "checkbox",
      name    = "面板: 冰/火罩子Dot层数和持有者",
    },
    {
      type    = "checkbox",
      name    = "面板: 冰/火罩子拾取冷却 倒计时（自身）",
    },
    {
      type    = "checkbox",
      name    = "面板: 冰/火符文 倒计时和持有者",
    },
    {
      type    = "checkbox",
      name    = "(HM) 面板: 斧/剑 计时器",
    },
    {
      type    = "checkbox",
      name    = "(HM) 冰川/岩浆尖刺 '需要 X 罩子'",
    },
    {
      type    = "checkbox",
      name    = "特性：冰/火符文的所有警告和图标",
      warning = "切换与符文机制有关的所有警报、图标和设置"
    },
    {
      type    = "checkbox",
      name    = "图标：冰/火符文堆叠 (其他人)",
    },
    {
      type    = "checkbox",
      name    = "(HM)图标：冰/火符文堆叠 (你)",
    },
    {
      type    = "checkbox",
      name    = "音效：冰川/岩浆尖刺 警告",
    },
    {
      type    = "checkbox",
      name    = "图标：8个传送点位图标",
    },
    {
      type    = "checkbox",
      name    = "(仅治疗)图标：坦克禁疗Debuff图标",
    },
    {
      type    = "checkbox",
      name    = "图标：冰/火罩子的持有者",
    },
    {
      type    = "checkbox",
      name    = "面板：显示存活猎犬的数量",
    },
    {
      type    = "checkbox",
      name    = "(HM)图标：双王阶段符文堆叠（入口处）图标",
    },
    {
      type = "divider",
    },
    {
      type = "header",
      name = "礁石守护者（二王）& 双侧小Boss",
    },
    {
      type    = "checkbox",
      name    = "面板: 毒/电Debuff的层数和持续时间",
    },
    {
      type    = "checkbox",
      name    = "面板: 礁石之心（下楼机制） 团灭计时器",
    },
    {
      type    = "checkbox",
      name    = "警报: 礁石之心（下楼机制） 开始/完成 警告",
    },
    {
      type    = "checkbox",
      name    = "面板: 礁石守护者 血量监控",
    },
    {
      type    = "checkbox",
      name    = "显示酸性脆弱Debuff追踪图标",
    },
    {
      type    = "checkbox",
      name    = "酸性反流：为掉落的5个毒液AOE显示独立的时间进度条",
      warning = "不推荐开启。当多个酸性反流释放时，进度条基本就不合适了",
    },
    {
      type    = "checkbox",
      name    = "(仅HM) 图标：用1~6标记庇护所位置",
    },
    {
      type    = "checkbox",
      name    = "(仅HM) 图标: 法师Add给予的减疗Debuff图标",
    },
    {
      type    = "checkbox",
      name    = "地图：礁石之心（下楼机制）小地图追踪",
      warning = "显示每个礁石之心的交战时间。无法提前预测位置"
    },
    {
      type = "divider",
    },
    {
      type = "header",
      name = "泰德伯恩·塔勒里亚（尾王）",
    },
    {
      type    = "checkbox",
      name    = "面板: 旋涡 计时器Maelstrom timer",
    },
    {
      type    = "checkbox",
      name    = "面板: 海洋巨兽Add 计时器",
    },
    {
      type    = "checkbox",
      name    = "面板: 凛冬风暴（墙） 计时器和方向",
    },
    {
      type    = "checkbox",
      name    = "面板: 上桥机制 Boss血量监控",
    },
    {
      type    = "checkbox",
      name    = "面板: 上桥机制 团灭时间监控",
    },
    {
      type    = "checkbox",
      name    = "警报: 上桥机制 开始/完成 警报",
    },
    {
      type    = "checkbox",
      name    = "警报: 水泡即将判定，格挡！",
    },
    {
      type    = "checkbox",
      name    = "图标：水泡点名图标",
    },
    {
      type    = "checkbox",
      name    = "图标：上桥位置图标",
    },
    {
      type    = "checkbox",
      name    = "警报: 巨浪（直线AOE） 施法条",
    },
    {
      type    = "checkbox",
      name    = "横幅提示：如果在坦克附近并处于顺劈范围",
    },
    {
      type    = "checkbox",
      name    = "进度条: 挣脱 海妖诱惑",
    },
    {
      type    = "checkbox",
      name    = "（副坦）其他人身上图标：海妖诱惑",
    },
    {
      type    = "checkbox",
      name    = "(仅HM) 旋涡翻滚计时器，以避免大部分伤害",
    },
    {
      type    = "checkbox",
      name    = "(HM) 图标: 双倍食人鱼危险区",
    },
    {
      type    = "checkbox",
      name    = "(HM) 图标: 上桥机制 传送门位置（内场）",
    },
    {
      type    = "checkbox",
      name    = "(HM) 图标: Boss周身1~12点时钟方位辅助图标",
    },
    {
      type    = "checkbox",
      name    = "(仅副坦) 显示海洋巨兽Add重击 计时器",
    },
    {
      type = "divider",
    },
    {
      type = "header",
      name = "Trash怪群",
    },
    {
      type    = "checkbox",
      name    = "(自身) 威吓者（夜刃小怪）背刺点名条(格挡)",
    },
    {
      type    = "checkbox",
      name    = "(坦克/治疗) 威吓者（夜刃小怪）背刺点名 @用户名",
    },
    {
      type    = "checkbox",
      name    = "图标：威吓者（夜刃小怪）背刺点名图标",
    },
    {
      type    = "checkbox",
      name    = "(仅坦克) 威吓者（夜刃小怪）脱嘲提醒",
    },
    {
      type    = "checkbox",
      name    = "(自身) 威吓者（夜刃小怪）投掷匕首引导",
    },
    {
      type    = "checkbox",
      name    = "显示拉杆助手(距离面板与图标)",
      warning = "仅在战斗外生效，对性能无影响",
    },
    {
      type    = "checkbox",
      name    = "在最近的拉杆上显示图标",
    },
    {
      type    = "checkbox",
      name    = "显示酿造师小怪投掷的药水",
    },
    {
      type = "divider",
    },
    {
      type = "header",
      name = "杂项",
    },
    {
      type = "description",
      text = "不推荐改动，你需要先解锁UI才能修改缩放比例",
    },
    {
      type    = "slider",
      name    = "缩放比例",
      tooltip = "0.5很小，2很大",
      warning = "仅适用于匹配极高分辨率，插件最佳缩放比例为1"
    },
  }

  --Special Setting
  BB.SetMenuPatch(QDRH.name .. "Options", NewOption)
  
  if GetCVar("language.2") == "zh" then
    QDRH.data.lylanarName = "莱拉纳尔"
    QDRH.data.turlassilName = "图拉塞尔"
    QDRH.data.reefGuardianName = "礁石守护者"
    QDRH.data.taleriaName = "泰德伯恩·塔勒里亚"
  end

return true end