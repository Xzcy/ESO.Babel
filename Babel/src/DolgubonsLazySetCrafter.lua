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
  DolgubonSetCrafter.localizedStrings.UIStrings.variableStyleSelection = "最多的样式材料(基础种族)"
  DolgubonSetCrafter.localizedStrings.UIStrings.noEnchantment			= "无附魔"
  DolgubonSetCrafter.localizedStrings.UIStrings.linkMissingStyleError	 = "该物品链接缺少样式，无法加入队列"
  DolgubonSetCrafter.localizedStrings.UIStrings.noItemSelected		= "未选择任何可制作的物品!"
  DolgubonSetCrafter.localizedStrings.UIStrings.food							= "食物"
  DolgubonSetCrafter.localizedStrings.UIStrings.drinks						= "饮料"
  DolgubonSetCrafter.localizedStrings.UIStrings.furniture 				= "家具"
  DolgubonSetCrafter.localizedStrings.UIStrings.selectedFurniture = "已选择: <<1>>"
  DolgubonSetCrafter.localizedStrings.UIStrings.defaultSearchText	= "搜索"
  DolgubonSetCrafter.localizedStrings.UIStrings.craftHousePort 		= "传送至公开的制造特化住宅"
  DolgubonSetCrafter.localizedStrings.UIStrings.craftHousePortButton = "制造特化住宅"
  DolgubonSetCrafter.localizedStrings.UIStrings.totalCost 				= "总花费: <<1>> |t20:20:esoui/art/currency/currency_gold_64.dds|t"
  DolgubonSetCrafter.localizedStrings.UIStrings.noItemsQueuedMailError = "Dolgubon's Lazy Set Crafter: 制造队列为空!未发送邮件"
  DolgubonSetCrafter.localizedStrings.UIStrings.variableStoneInfoTip = "使用你拥有的最多的基础种族样式材料"
  DolgubonSetCrafter.localizedStrings.UIStrings.variableStyleLink = "可变样式"
  
  DolgubonSetCrafter.localizedStrings.UIStrings.priceSourceBlurbs = 
  {
    "当前使用 插件默认",
    "当前使用 LibPrice 价格",
    "当前使用 MasterMerchant 价格",
    "当前使用 Arkadius Trade Tools 价格",
    "当前使用 Tamriel Trade Center 价格",
    "当前使用 游戏默认 价格",
    defaultBlurbIndicator = " (插件默认)",
  }

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