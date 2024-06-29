local BB = MABabel

--[[Quest Map
--10.0.0
BB.AddonList["QuestMap"] = function() if not QuestMap then return false end
  local strings = {
    -- General
    QUESTMAP_COMPANION = "伙伴",
    QUESTMAP_TRIAL = "试炼",
    QUESTMAP_STORY_ICON_SET = "主线图标设定",
    QUESTMAP_SKILLPOINT_ICON_SET = "技能点图标设定",
    QUESTMAP_CADWELL_ICON_SET = "卡德维尔图标设定",
    QUESTMAP_COMPANION_ICON_SET = "伙伴图标设定",
    QUESTMAP_ICON_SETS_HEADER = "任务图标设定",
    QUESTMAP_SETTINGS_HEADER = "地图图标设置",
    QUESTMAP_PIN_COLOR_HEADER = "地图图标颜色设置",
    QUESTMAP_RESET_HIDDEN_HEADER = "重置隐藏的地图图标",
  }
  for key, value in pairs(strings) do
    ZO_CreateStringId(key, value)
    SafeAddVersion(key, 1)
  end
return true end]]

--Tamriel Trade Centre
--4.19.943.18329
BB.AddonList["TamrielTradeCentre"] = function() if not TamrielTradeCentre then return false end
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
return true end

--[[ Template

--
--
BB.AddonList[""] = function() if not  then return false end

return true end

]]