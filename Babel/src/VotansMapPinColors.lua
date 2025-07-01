local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["VotansMapPinColors"] = function() if not SI_VOTANS_MAPPIN_COLORS_SHOW_PLAYER_PIN then return false end
  ZO_CreateStringId("SI_VOTANS_MAPPIN_COLORS_PREFER_ASSISTED", "可重复任务使用聚焦颜色")
  ZO_CreateStringId("SI_VOTANS_MAPPIN_COLORS_PREFER_ASSISTED_TOOLTIP", "将选中的可重复任务的颜色切换为聚焦颜色")
  ZO_CreateStringId("SI_VOTANS_MAPPIN_COLORS_SHOW_PLAYER_PIN", "显示玩家图标")
  ZO_CreateStringId("SI_VOTANS_MAPPIN_COLORS_SHOW_PLAYER_PIN_TOOLTIP", "允许隐藏玩家图标，为硬核探索爱好者准备")
  ZO_CreateStringId("SI_VOTANS_MAPPIN_COLORS_PLAYER_PIN_VIBRATION", "玩家图标闪烁")
  ZO_CreateStringId("SI_VOTANS_MAPPIN_COLORS_PLAYER_PIN_VIBRATION_TOOLTIP", "打开地图时，短暂使玩家图标闪烁，方便寻找")
return true end