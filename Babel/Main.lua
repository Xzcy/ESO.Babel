--Name Space
MABabel = {}
local BB = MABabel

--Basic Info
BB.Name = "Babel"
BB.Title = "Babel 集束型汉化"
BB.Author = "SplendidAchievers"
BB.Version = "2024.07.13"

--Default/Saved Setting
BB.Default = {
  ["BanList"] = {}
}

--Table
BB.AddonList = {}
BB.AfterPart = {}
BB.LAMList = {}

BB.ActiveAddons = {}

--Setting
BB.SV = ZO_SavedVars:NewAccountWide("SA_Babel_Vars", 1, nil, BB.Default, GetWorldName())

--Original Fun
local OldFunList = {}

--MetaTable
local OldMTable = {_G}

-------------------
----Start point----
-------------------

local OnLoading = "Babel"
local SupportCount = 0

--Loaded before Other Addons
local function OnAddOnLoaded(eventCode, addonName)
  --Register After Part
  EVENT_MANAGER:RegisterForEvent(BB.Name, EVENT_PLAYER_ACTIVATED, BB.DoAfterPart)
  
  --Build Menu in After Part
  BB.SetAfterPart(BB.BuildMenu)

  --Finish Loading
  EVENT_MANAGER:UnregisterForEvent(BB.Name, EVENT_ADD_ON_LOADED)

  --Undo Function Change
  for Table, FunList in pairs(OldFunList) do
    for Key, Old in pairs(FunList) do
      Table[Key] = Old
    end
  end
  
  --Undo Metatable Change
  for i = 1, #OldMTable do
    setmetatable(OldMTable[i], nil)
  end

--Start Localization
  --LAM Injection
  if LibAddonMenu2 then
    local OldFun = LibAddonMenu2.RegisterOptionControls
    --Set Undo Fun Change
    BB.SetAfterPart(
      function()
        LibAddonMenu2.RegisterOptionControls = OldFun
      end
    )
    --Inject LAM
    LibAddonMenu2.RegisterOptionControls = function(...)
      local Self, Name, OptionTable = ...
      local NewTable = BB.DoMenuPatch(Name, OptionTable)
      if not NewTable then
        --Do Nothing
        return OldFun(...)
      else
        --Replace
        return OldFun(Self, Name, NewTable)
      end
    end
  end
  
  --Do Funs before Other Addons Loading
  for Addon, Fun in pairs(BB.AddonList) do
    --Count the Number of Addon Supported
    SupportCount = SupportCount + 1
    --BanList Check
    if not BB.SV.BanList[Addon] then
      --Mark
      OnLoading = Addon
      --Check whether Exist and Do Change
      BB.ActiveAddons[Addon] = Fun()
    end
  end
  
  --Succeed with All Addons
  OnLoading = nil
end

-----------------------------
----Hook Global Variables----
-----------------------------

local IGVList = {}

--[[Example
  BB.SetGlobalHook(function() BB.TableCopy(t1, t2) end, "CraftStore", "Quality")
  when CraftStore.Quality has benn created, triggle function 
]]
function BB.SetGlobalHook(Fun, key1, key2)
  if key2 then
    IGVList[key1] = function(t1, k1, v1)
      setmetatable(t1[k1], {
        __newindex = function(t2, k2, v2)
          rawset(t2, k2, v2)
          if k2 == key2 then Fun() end
        end
        }
      )
      table.insert(OldMTable, t1[k1])
    end
  else
    IGVList[key1] = Fun
  end
end

setmetatable(_G, {
  __newindex = function(t, k, v)
    rawset(t, k, v)
    if IGVList[k] then IGVList[k](t, k, v) end
  end
  }
)

----------------
----Hook Fun----
----------------

--[[Example
  BB.SetFunHook(
    function(ID) 
      if QUESTMAP_ICON_SETS_HEADER and QUESTMAP_ICON_SETS_HEADER == ID then
        return Fun()
      end
    end, _G, "GetString", true
  )
  If Do GetString(QUESTMAP_ICON_SETS_HEADER), Triggle Fun and Return New Value
]]

function BB.SetFunHook(Fun, Table, Key, Stop)
  local Old = Table[Key]
  --Save the Original Function when First Hook
  if not OldFunList[Table] then OldFunList[Table] = {} end
  if not OldFunList[Table][Key] then OldFunList[Table][Key] = Old end
  
  --Build New Fun
  if Stop then
    Table[Key] = function(...)
      return Fun(...) or Old(...) --Prevent Old if Fun return not nil
    end
  else
    Table[Key] = function(...)
      local Result = Old(...) --Do Old whether Fun return
      return Fun(...) or Result --Return Fun or Old result
    end
  end
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
        zo_callLater(
          function()
            d("[Babel] "..Name.." 设置界面汉化与插件版本不匹配")
            d("[Babel] 请更新插件，或等待后续更新修复")
          end, 5000
        )
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
    zo_callLater(
      function()
        d("[Babel] "..OnLoading.." 汉化失败")
        d("[Babel] 请在设置中禁用该插件汉化并重载UI")
        d("[Babel] 请联系SA公会修复有关插件汉化问题")
      end, 5000
    )
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
      title = "插件（文件夹名）：已支持 ( "..SupportCount.." 款 ) / |c008000已启用|r / |cFF0000已禁用|r\r\n\r\n  *不推荐在非中文语言下使用Babel，可能造成意外错误|r\r\n\r\n  *部分插件自带的汉化内容无法被Babel禁用",
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

--Confirm the completeness between option table data
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