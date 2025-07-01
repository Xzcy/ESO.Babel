local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["TamrielTradeCentre"] = function() if not TamrielTradeCentre then return false end
  --大部分翻译已自带，仅做补充及修正
  ZO_CreateStringId("TTC_SETTING_ENABLEGUILDSALESDATACOLLECTION", "启用公会销售数据收集")
  ZO_CreateStringId("TTC_SETTING_INCLUDESALEPRICE", "显示售价")
  ZO_CreateStringId("TTC_SETTING_SEARCHONLINE", "在线搜索")
  ZO_CreateStringId("TTC_SETTING_SEARCHONLINESORTBY", "排序方式")
  ZO_CreateStringId("TTC_SETTING_SEARCHONLINESORTBYLASTSEEN", "最后看见")
  ZO_CreateStringId("TTC_SETTING_SEARCHONLINESORTBYPRICE", "价格")
  ZO_CreateStringId("TTC_SETTING_SEARCHONLINESORTORDER", "顺序")
  ZO_CreateStringId("TTC_SETTING_SEARCHONLINESORTASC", "升序")
  ZO_CreateStringId("TTC_SETTING_SEARCHONLINESORTDESC", "降序")
  ZO_CreateStringId("TTC_PRICE_SALEAVGX", "平均售价： %s")
  ZO_CreateStringId("TTC_PRICE_XSALESYITEMS", "(%s 条已售/共%s 件)")
  ZO_CreateStringId("TTC_PRICE_XSALES", "(%s 条已售)")
  ZO_CreateStringId("TTC_MSG_RECORDEDDATACLEARED", "自动记录数据已清除")
  ZO_CreateStringId("TTC_SETTING_ENABLESUBMENUS", "启用子菜单")
return true end