local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

do if not BB.SV.BanList["QuestMap"] then
  local function Fun()
    local Strings = {
      -- General
      [QUESTMAP_COMPANION] = "伙伴",
      [QUESTMAP_TRIAL] = "试炼",
      [QUESTMAP_STORY_ICON_SET] = "主线图标设定",
      [QUESTMAP_SKILLPOINT_ICON_SET] = "技能点图标设定",
      [QUESTMAP_CADWELL_ICON_SET] = "卡德维尔图标设定",
      [QUESTMAP_COMPANION_ICON_SET] = "伙伴图标设定",
      [QUESTMAP_ICON_SETS_HEADER] = "任务图标设定",
      [QUESTMAP_SETTINGS_HEADER] = "地图图标设置",
      [QUESTMAP_PIN_COLOR_HEADER] = "地图图标颜色设置",
      [QUESTMAP_RESET_HIDDEN_HEADER] = "重置隐藏的地图图标",
    }
    
    for k, v in pairs(Strings) do
      SafeAddString(k, v, 2)
    end
    
    return Strings[QUESTMAP_ICON_SETS_HEADER]
  end

  --Special Setting
  BB.SetFunHook(function(ID)
    if QUESTMAP_ICON_SETS_HEADER and QUESTMAP_ICON_SETS_HEADER == ID then
      return Fun()
    end
  end, _G, "GetString", true)

end end

BB.AddonList["QuestMap"] = function()
  if not QuestMap then return false end
  return true
end