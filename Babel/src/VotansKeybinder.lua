local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["VotansKeybinder"] = function() if not SI_VOTANS_KEYBINDER_ACCOUNTWIDE then return false end
  ZO_CreateStringId("SI_VOTANS_KEYBINDER_ACCOUNTWIDE", "全账户角色共享键位设置")
  ZO_CreateStringId("SI_VOTANS_KEYBINDER_TOGGLE", "（取消）全选")
return true end