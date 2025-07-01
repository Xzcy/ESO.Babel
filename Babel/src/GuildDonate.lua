local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

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