local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["SanitysEdgeHelper"] = function() if not SEH then return false end
  --SanitysEdgeHelperMenu.lua
  local NewOption = {
    {
      type = "description",
      text = "这是理智边缘试炼的计时、警报和指示器插件。当前版本需要 Code's Combat Alerts (> 1.16.4)插件，部分警告内容已经从该插件移动至Code's Combat Alerts中",
    },
    {
      type = "divider",
    },
    {
      type = "description",
      text = "部分机制的显示需要安装 |cff0000OdySupportIcons|r 插件",
    },
    {
      type = "divider",
    },
    {
      type    = "checkbox",
      name    = "解锁UI",
    },
    {
      type = "description",
      text = "你也可以通过 /seh lock 和 /seh unlock 指令去设置UI位置",
    },
    {
      type    = "button",
      name    = "重置UI为默认位置",
      warning = "重置后需要重新加载UI",
    },
    {
      type    = "checkbox",
      name    = "隐藏聊天栏的副本欢迎信息",
    },
    {
      type = "divider",
    },
    {
      type = "header",
      name = "主教亚赛拉（一王）",
    },
    {
      type    = "checkbox",
      name    = "雷光蜥蜴充能 图标",
    },
    {
      type    = "checkbox",
      name    = "面板: 弹片(HM)计时器",
    },
    {
      type    = "checkbox",
      name    = "面板: 火焰炸弹 计时器",
    },
    {
      type    = "checkbox",
      name    = "面板: 冰冻炸弹 计时器",
    },
    {
      type    = "checkbox",
      name    = "面板: 锁链 计时器",
    },
    {
      type    = "checkbox",
      name    = "大号火焰炸弹 倒计时",
    },
    {
      type = "description",
      text = "注意：在亚赛拉血量低于26%时，火焰炸弹的冷却将从约23.5s降低为11s。因此当距离末次火焰炸弹经过11s以上（倒计时小于12.5s），亚赛拉血量被打入26%后，会立即释放火焰炸弹。在接近这一阈值时，倒计时将会以特殊样式提醒，如 FIREBOMBS: |cB2E80B15.5s|r [0.5%]",
    },
    {
      type = "divider",
    },
    {
      type = "header",
      name = "奇美拉（二王）",
    },
    {
      type    = "checkbox",
      name    = "面板: 奇美拉石化无敌 计时器",
    },
    {
      type    = "checkbox",
      name    = "面板: 连锁闪电 计时器",
    },
    {
      type    = "checkbox",
      name    = "图标: 显示 蜥蜴，狮子和狮鹫的传送门",
    },
    {
      type    = "checkbox",
      name    = "图标: 显示水晶数字 (非HM)",
    },
    {
      type    = "checkbox",
      name    = "图标: 显示水晶数字 (HM)",
    },
    {
      type = "divider",
    },
    {
      type = "header",
      name = "折磨者安苏尔（尾王）",
    },
    {
      type    = "checkbox",
      name    = "图标: 显示 毒，火和电迷宫角落",
    },
    {
      type    = "checkbox",
      name    = "面板: 灾祸（顺劈重击）计时器",
    },
    {
      type    = "checkbox",
      name    = "面板: 显示 分裂Boss血量",
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
      text = "不推荐修改。解锁UI后才可更改缩放比例",
    },
    {
      type    = "slider",
      name    = "缩放比例",
      tooltip = "0.5很小，2很大",
      warning = "仅用于超高分辨率玩家。最佳推荐比例为1"
    },
  }
  
  --Special Setting
  BB.SetMenuPatch(SEH.name .. "Options", NewOption)
  
return true end