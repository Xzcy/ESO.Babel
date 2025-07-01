local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["DolgubonsLazySetCrafter"] = function() if not DolgubonSetCrafter then return false end
  --\Lang\en.lua
  DolgubonSetCrafter.localizedStrings.UIStrings.chatRequest       = "聊天发送制作请求"
  DolgubonSetCrafter.localizedStrings.UIStrings.mailRequest       = "邮件发送制造请求"
  DolgubonSetCrafter.localizedStrings.UIStrings.FavouritesTitle   = "收藏"
  DolgubonSetCrafter.localizedStrings.UIStrings.resetPatterns		  = "重置所选"
  DolgubonSetCrafter.localizedStrings.UIStrings.totalCostTitle	  = "总花费"
  DolgubonSetCrafter.localizedStrings.UIStrings.onlyKnownRecipes  = "仅已知配方"
  DolgubonSetCrafter.localizedStrings.UIStrings.furnitureCrafting	= "家具制造"
  DolgubonSetCrafter.localizedStrings.UIStrings.gearCrafting			= "装备制造"
  DolgubonSetCrafter.localizedStrings.UIStrings.recipePrompt			= "请选择要合成的配方!"
  
  --Special Setting
  local OldFun = DolgubonSetCrafter.scroll.SetupEntry
  DolgubonSetCrafter.scroll.SetupEntry = function(...)
    local Result = OldFun(...)
    local Control = select(2, ...)
    if Control then
      local Level = Control:GetNamedChild("Level")
      if Level then Level:SetWidth(65) end
    end
    return Result
  end
  
  BB.SetAfterPart(
    function()
      DolgubonSetCrafterWindowToggleFurniture:SetText("切换 家具/消耗品")
      DolgubonSetCrafterWindowRightCost:SetText("总花费：")
    end
  )
  
return true end