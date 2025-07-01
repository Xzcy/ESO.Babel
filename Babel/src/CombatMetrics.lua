local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["CombatMetrics"] = function() if not CMX then return false end
  --\lang\en.lua
  local strings = {
    SI_COMBAT_METRICS_LOADING = "加载中...",
    SI_COMBAT_METRICS_LIVEREPORT_DPSMULTI_TOOLTIP = "多目标DPS",
    SI_COMBAT_METRICS_LIVEREPORT_DPSSINGLE_TOOLTIP = "单目标DPS",
    SI_COMBAT_METRICS_MENU_ALKOSH = "艾尔克许的咆哮",
    SI_COMBAT_METRICS_CRITBONUS_TT = "暴击率 vs. 伤害",
    SI_COMBAT_METRICS_MENU_TREMORSCALE_TOOLTIP = "由战栗之鳞降低的抗性。它取决于施法者的物理抗性或法术抗性中更高的那项，系数为0.08",
    SI_COMBAT_METRICS_MENU_TREMORSCALE = "战栗之鳞",
    SI_COMBAT_METRICS_LIVEREPORT_TIME_TOOLTIP = "战斗持续",
    SI_COMBAT_METRICS_LIVEREPORT_HPSINC_TOOLTIP = "传入的HPS",
    SI_COMBAT_METRICS_LIVEREPORT_DPSINC_TOOLTIP = "传入的DPS",
    SI_COMBAT_METRICS_LIVEREPORT_HPSRAW_TOOLTIP = "原始HPS (包含过量治疗)",
    SI_COMBAT_METRICS_LIVEREPORT_GROUP_TOOLTIP = "玩家 / 队伍",
    SI_COMBAT_METRICS_MENU_ALKOSH_TOOLTIP = "由艾尔克许的咆哮降低的抗性。它取决于施法者的武器伤害或法术伤害中更高的那项，至多减少6000抗性。",
    SI_COMBAT_METRICS_SAVEDFIGHTS_FULL = "超过可保存战斗的数量上限。删除 <<1[1 场战斗/1 场战斗/$d 场战斗]>> 或在设置中允许保存更多战斗!",
    SI_COMBAT_METRICS_CONVERT_DB_TEXT = "当前版本提供一种新的保存战斗的方式，可节约空间并缩短UI加载时间。\n\n为了启用该特性，需要将之前储存的战斗数据进行转换。\n\n这个过程需要几分钟时间",
    SI_COMBAT_METRICS_CONVERT_DB_BUTTON1_TEXT = "转换",
    SI_COMBAT_METRICS_CONVERT_DB_BUTTON2_TEXT = "放弃",
    SI_COMBAT_METRICS_CONVERSION_TITLE_TEXT = "转换战斗 <<1>>/<<2>> ...",
    SI_COMBAT_METRICS_CONVERSION_FINISHED_TEXT = "转换完成!",
    SI_COMBAT_METRICS_MENU_MAXSAVEDFIGHTS_NAME = "已保存的战斗",
    SI_COMBAT_METRICS_MENU_MAXSAVEDFIGHTS_TOOLTIP = "可保存的最大战斗数量",
    SI_COMBAT_METRICS_MENU_MAXSAVEDFIGHTS_WARNING = "保存太多战斗可导致加载时间延长",
    SI_COMBAT_METRICS_STATS_MAGICKA7 = "状态效果几率",
    SI_COMBAT_METRICS_STATS_STAMINA7 = "状态效果几率",
    SI_COMBAT_METRICS_COPY_PASTE = "切换战斗记录的复制粘贴模式",
    SI_COMBAT_METRICS_SIGIL_WARNING = "该图标提示某种印记buff被使用",
  }

  for stringId, stringValue in pairs(strings) do
    ZO_CreateStringId(stringId, stringValue)
    SafeAddVersion(stringId, 1)
  end

return true end