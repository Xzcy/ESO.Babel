local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["SlightlyImprovedExperienceBar"] = function() if not SlightlyImprovedExperienceBar_SavedVars then return false end
  local NewOption = {
    {
      type = "dropdown",
      name = "可见性",
      tooltip = "控制经验条的可见性。设置为自动时，经验条只在有用的情况下显示",
      choices = {"自动", "总是显示"},
      choicesValues = {"Automatic", "Always Show"},
    },
  }
  
  --Special Setting
  BB.SetMenuPatch("SlightlyImprovedExperienceBar", NewOption)
  
return true end