--Name Space
MABabel = {}

--Basic Info
local BB = MABabel
BB.Name = "Babel"
BB.Title = "Babel 集束型汉化"
BB.Author = "SplendidAchievers"
BB.Version = "1.038"

--Default/Saved Setting
BB.Default = {
  ["BanList"] = {}
}

--Table
BB.AddonList = {}
BB.AfterPart = {}
BB.LAMList = {}

BB.ActiveAddons = {}

--Original Fun
local OldGetString = GetString
local OldFireCallbacks = CALLBACK_MANAGER.FireCallbacks
local OldCreateStringId = ZO_CreateStringId

-------------------
----Start point----
-------------------

local OnLoading = "Babel"
local SupportCount = 0

--Loaded before Other Addons
local function OnAddOnLoaded(eventCode, addonName)
  --Saved Setting
  BB.SV = ZO_SavedVars:NewAccountWide("MAsBabel_Vars", 1, nil, BB.Default, GetWorldName())
  
  --Register After Part
  EVENT_MANAGER:RegisterForEvent(BB.Name, EVENT_PLAYER_ACTIVATED, BB.DoAfterPart)
  BB.SetAfterPart(BB.BuildMenu)
  
  --Finish Loading
  EVENT_MANAGER:UnregisterForEvent(BB.Name, EVENT_ADD_ON_LOADED)
  
  --Undo Function Change
  GetString = OldGetString
  CALLBACK_MANAGER.FireCallbacks = OldFireCallbacks
  ZO_CreateStringId = OldCreateStringId
  
--Start Localization
  --LAM Injection
  if LibAddonMenu2 then
    local OldFun = LibAddonMenu2.RegisterOptionControls
    BB.SetAfterPart(
      function()
        LibAddonMenu2.RegisterOptionControls = OldFun
      end
    )
    LibAddonMenu2.RegisterOptionControls = function(...)
      local Self, Name, OptionTable = ...
      local NewTable = BB.DoMenuPatch(Name, OptionTable)
      if not NewTable then
        return OldFun(...)
      else
        return OldFun(Self, Name, NewTable)
      end
    end
  end
  --Do Functions before Other Addons Loading
  for Addon, Fun in pairs(BB.AddonList) do
    SupportCount = SupportCount + 1
    if not BB.SV.BanList[Addon] then
      OnLoading = Addon
      BB.ActiveAddons[Addon] = Fun()
    end
  end
  --Succeed with All Addons
  OnLoading = nil
end

----------------------------------
----Intercepting Settings Menu----
----------------------------------

function BB.SetMenuPatch(Name, NewTable)
  BB.LAMList[Name] = NewTable
end

function BB.DoMenuPatch(Name, OldTable)
  local NewTable = BB.LAMList[Name]
  --Need Patch?
  if not NewTable then return nil end
  --Check the degree of match
  if BB.SafeMenuPatch(OldTable, NewTable) then
    --Replace Menu
    return BB.TableCopy(NewTable, OldTable)
  else
    --Keep Menu
    BB.SetAfterPart(
      function() 
        d("[Babel] "..Name.." 汉化可能已过时，已停用")
        d("[Babel] 请等待后续更新修复")
      end
    )
    return nil
  end
end

-----------------------------------
----Set Part After Other Addons----
-----------------------------------

function BB.SetAfterPart(Fun)
  table.insert(BB.AfterPart, Fun)
end

function BB.DoAfterPart()
  --Error with Translation
  if OnLoading then
    d("[Babel] "..OnLoading.." 汉化失败")
    d("[Babel] 请在设置中禁用该插件汉化并重载UI")
    d("[Babel] 请联系SA公会修复有关插件汉化问题")
  end
  --Apply After Part Functions
  for i = 1, #BB.AfterPart do
    BB.AfterPart[i]()
  end
  --Finish
  EVENT_MANAGER:UnregisterForEvent(BB.Name, EVENT_PLAYER_ACTIVATED)
end

-----------------
----Menu Part----
-----------------

local function TableOfKey(Table)
  local String = {}
  for Key, Value in pairs(Table) do
    if Value then table.insert(String, Key) end
  end
  table.sort(String, 
    function(a, b)
      return a < b
    end
  )
  return String
end

local function StatusOfTable(Table)
  local String = "\r\n"
  for i = 1, #Table do
    if BB.SV.BanList[Table[i]] then
      Table[i] = "|cFF0000"..Table[i].."|r"
    end
    if BB.ActiveAddons[Table[i]] then
      Table[i] = "|c008000"..Table[i].."|r"
    end
    String = String..Table[i].."\r\n"
  end
  return String
end

function BB.BuildMenu()
  local LAM = LibAddonMenu2
  if not LAM then return end

  local panelData = {
    type = "panel",
    name = BB.Title,
    displayName = BB.Title,
    author = BB.Author,
    version = BB.Version,
    registerForRefresh = true,
	}
	LAM:RegisterAddonPanel(BB.Name.."_Options", panelData)
  local SelectedAddon = ""
  local options = {
    {
			type = "header",
			name = "插件列表",
		},
    {
      type = "dropdown",
      name = "插件列表", 
      choices = TableOfKey(BB.AddonList),
      scrollable = true,
      getFunc = function() return "" end,
      setFunc = function(var) SelectedAddon = var end,
      width = "full",	
    },
    {
      type = "button",
      name = "重载UI",
      func = function()
        ReloadUI("ingame")
      end,
      width = "half",	
    },
    {
      type = "button",
      name = "启用/禁用 插件汉化",
      warning = "修改后需重新加载UI",
      func = function()
        if not BB.SV.BanList[SelectedAddon] then
          BB.SV.BanList[SelectedAddon] = true
        else
          BB.SV.BanList[SelectedAddon] = false
        end
      end,
      width = "half",	
    },
    {
      type = "description",
      title = "插件（文件夹名）：已支持 ("..SupportCount.." 款) / |c008000已启用|r / |cFF0000已禁用|r\r\n\r\n  *部分插件的汉化，不支持被部分或完全禁用",
      text = function() return StatusOfTable(TableOfKey(BB.AddonList)) end,
      width = "full",	
    },
	}
  LAM:RegisterOptionControls(BB.Name.."_Options", options)
end

----------------
----Tool Fun----
----------------

--Overwrite elements existing in the source to the target
function BB.TableCopy(Source, Target)
  Target = Target or {}
  for key, value in pairs(Source) do
    if type(value) == "table" then
      Target[key] = BB.TableCopy(Source[key], Target[key])
    else
      Target[key] = value
    end
  end
  return Target
end

function BB.SafeMenuPatch(OldTable, NewTable)
  --Either nil
  if (not OldTable) or (not NewTable) then return false end
  --Check Option Number
  if #OldTable ~= #NewTable then return false end
  --Check Option Type
  for i = 1, #OldTable do
    --Check Type
    if OldTable[i]["type"] ~= NewTable[i]["type"] then
      return false
    end
    --Check Sub Options
    if OldTable[i]["controls"] then
      if not BB.SafeMenuPatch(OldTable[i]["controls"], NewTable[i]["controls"]) then
        return false
      end
    end
  end
  --Safe for Replace
  return true
end
------------------
----Start Here----
------------------

EVENT_MANAGER:RegisterForEvent(BB.Name, EVENT_ADD_ON_LOADED, OnAddOnLoaded)