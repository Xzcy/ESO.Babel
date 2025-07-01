local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["HarvensImprovedSkillsWindow"] = function()
  BB.SetAfterPart(
    function()
      if ZO_SkillsHarvensShowTotalLabel then
        ZO_SkillsHarvensShowTotalLabel:SetText("显示 技能线升级进度")
        ZO_SkillsHarvensShowDetailsLabel:SetText("显示 技能详细升级进度")
        BB.ActiveAddons["HarvensImprovedSkillsWindow"] = true
      end
    end
  )
return false end