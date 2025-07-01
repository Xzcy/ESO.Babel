local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["LibAddonMenu-2.0"] = function() if not LibAddonMenu2 then return false end
  local Table = {
    PANEL_NAME = "插件",
    AUTHOR = string.format("%s: <<X:1>>", GetString(SI_ADDON_MANAGER_AUTHOR)), -- "Author: <<X:1>>"
    VERSION = "版本: <<X:1>>",
    WEBSITE = "访问网站",
    FEEDBACK = "反馈",
    TRANSLATION = "翻译",
    DONATION = "捐助",
    PANEL_INFO_FONT = "$(CHAT_FONT)|14|soft-shadow-thin",
    RELOAD_UI_WARNING = "修改该设置后，需要重新加载UI使之生效",
    RELOAD_DIALOG_TITLE = "需要重新加载UI",
    RELOAD_DIALOG_TEXT = "部分修改，需要重新加载UI使之生效。你想现在就重新加载，或放弃修改吗？",
    RELOAD_DIALOG_RELOAD_BUTTON = "重载",
    RELOAD_DIALOG_DISCARD_BUTTON = "放弃",
  }
  
  LibAddonMenu2.util.L = BB.TableCopy(Table, LibAddonMenu2.util.L)
  
return true end