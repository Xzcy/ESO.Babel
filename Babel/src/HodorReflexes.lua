local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["HodorReflexes"] = function() if not HodorReflexes then return false end
  --[[
  Translation Files:
    HodorReflexes\lang\en.lua
  ]]
  local strings = {
    --2025.10 插件内置汉化基本已被Lykeion全部修正
    HR_MISSING_LIBS_DONTSHOWAGAIN = "不再显示",
  }
  
  --Special setting
  for id, val in pairs(strings) do
   ZO_CreateStringId(id, val)
   SafeAddVersion(id, 1)
  end
  
return true end