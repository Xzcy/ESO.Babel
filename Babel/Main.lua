--Name Space
MABabel = {}
local BB = MABabel

--Basic Info
BB.Name = "Babel"
BB.Title = "Babel 集束型汉化"
BB.Author = "SplendidAchievers"
BB.Version = "2025.02.27"

--Default/Saved Setting
BB.Default = {
  ["BanList"] = {},
  ["Warning"] = true,
}

--Table
BB.AddonList = {} -- Translations Already Supported
BB.AfterPart = {} -- Funs Work when Screen loading
BB.LAMList = {} -- Patch LAM Setting Menu
BB.LAMReList = {} -- Replace some string in LAM Setting Menu
BB.VersionList = {} -- Addon Version Registered in LAM
BB.MenuItemscList = {} -- Patch Menu Items

BB.ActiveAddons = {} -- Addons Translated

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
    local OldFun2 = LibAddonMenu2.RegisterAddonPanel
    --Set Undo Fun Change
    BB.SetAfterPart(
      function()
        LibAddonMenu2.RegisterOptionControls = OldFun
        LibAddonMenu2.RegisterAddonPanel = OldFun2
      end
    )
    --Inject LAM
      --Replace Setting
    LibAddonMenu2.RegisterOptionControls = function(...)
      local Self, Name, OptionTable = ...
      local NewTable = BB.DoMenuPatch(Name, OptionTable) or BB.DoMenuReplace(Name, OptionTable)
      if not NewTable then
        --Do Nothing
        return OldFun(...)
      else
        --Replace
        return OldFun(Self, Name, NewTable)
      end
    end
      --Get Versions Info
    LibAddonMenu2.RegisterAddonPanel = function(...)
      local Self, Name, Table = ...
      if Name and Table and Table.version then
        BB.VersionList[Name] = Table.version
      end
      return OldFun2(...)
    end
  end
  
  --BUI Menu Injection
  if BUI then
    local OldFun = BUI.Menu.RegisterPanel
    local OldFun2 = BUI.Menu.RegisterOptions
    --Set Undo Fun Change
    BB.SetAfterPart(
      function()
        BUI.Menu.RegisterPanel = OldFun
        BUI.Menu.RegisterOptions = OldFun2
      end
    )
    --Replace Setting
    BUI.Menu.RegisterOptions = function(...)
      local Name, OptionTable = ...
      local NewTable = BB.DoMenuPatch(Name, OptionTable)
      if not NewTable then
        --Do Nothing
        return OldFun2(...)
      else
        --Replace
        return OldFun2(Name, NewTable)
      end
    end
    --Get Versions Info
    BUI.Menu.RegisterPanel = function(...)
      local Name, Table = ...
      if Name and Table and Table.version then
        BB.VersionList[Name] = Table.version
      end
      return OldFun(...)
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
  
  --Fixed the wrong exact name of item in guild store in chinese
  if GetCVar("language.2") == "zh" then
    SafeAddString(SI_TRADING_HOUSE_EXACT_NAME_SEARCH_START_DELIMITER, "", 2)
    SafeAddString(SI_TRADING_HOUSE_EXACT_NAME_SEARCH_END_DELIMITER, "", 2)
  end
end

-----------------------------
----Hook Global Variables----
-----------------------------

local IGVList = {}

--[[Example
  BB.SetGlobalHook(function() BB.TableCopy(t1, t2) end, "CraftStore", "Quality")
  when CraftStore.Quality has bean created, triggle function 
]]
function BB.SetGlobalHook(Fun, key1, key2)
  if key2 then
    IGVList[key1] = function(t1, k1, v1)
      --Patch for some addons missed namespace = {}, and make it userdata instead of table
      if type(t1[k1]) == "userdata" then t1[k1] = {} end
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
      function() if BB.SV.Warning then
        zo_callLater(
          function()
            local OnLoading = BB.CurrentVersion[Name] or Name
            local CurrentV = BB.VersionList[Name] or "无法获取"
            local TargetV = BB.AddonsVersion[OnLoading] or "无法获取"
            d("[Babel] --------------------------------")
            d("[Babel] "..OnLoading.." 设置界面 汉化失败！")
            d("[Babel] 当前/指定版本："..CurrentV.." / "..TargetV)
            d("[Babel] 请更新插件 / 等待Babel适配")
            d("[Babel] *该错误 不影响 其余插件汉化")
          end, 5000
        )
      end end
    )
    return nil
  end
end

function BB.SetMenuReplace(Name, StringTable)
  BB.LAMReList[Name] = StringTable
end

function BB.DoMenuReplace(Name, OptionTable)
  local StringTable = BB.LAMReList[Name]
  --Need Replace?
  if not StringTable then return nil end
  --Replace Function
  local function Replace(TepTable, StringDict)
    for i = 1, #TepTable do
      --Controls
      if TepTable[i].controls then 
        TepTable[i].controls = Replace(TepTable[i].controls, StringDict) or TepTable[i].controls 
      end
      --Common
      for k, v in pairs(TepTable[i]) do
        if StringTable[k] then
          TepTable[i][k] = StringTable[k][v] or v
        end
      end
    end
    return TepTable
  end
  --Do Replace
  return Replace(OptionTable, StringTable)
end
-----------------------------------
----Set Part After Other Addons----
-----------------------------------

function BB.SetAfterPart(Fun)
  table.insert(BB.AfterPart, Fun)
end

function BB.DoAfterPart()
  --Update Info
  if BB.SV.UpdateVersion ~= BB.Version then
    BB.SV.UpdateVersion = BB.Version
    zo_callLater(
      function()
        d("[Babel] --------------------------------")
        d("[Babel] 更新至 "..BB.Version.." 版本")
        d("[Babel] --------------------------------")
      end, 7000
    )
  end
  --Patch for Version
  if DSST then BB.VersionList["Descendants Support Set Tracker"] = DSST.version end
  --Error with Translation
  if OnLoading and BB.SV.Warning then
    zo_callLater(
      function()
        local TargetV = BB.AddonsVersion[OnLoading] or "未知"
        d("[Babel] --------------------------------")
        d("[Babel] 汉化 "..OnLoading.." 时严重错误")
        d("[Babel] 汉化指定版本："..TargetV)
        d("[Babel] 1. 请更新 "..OnLoading.." 插件 ≥ 指定版本后，重试")
        d("[Babel] 2. 若依然失败，请于【设置 - 插件 - Babel集束型汉化 - 插件列表】禁用目标插件汉化并重载UI")
        d("[Babel] 3. 请联系SA公会修复有关问题")
        d("[Babel] *该错误将 阻止 其余插件汉化")
        d("[Babel] --------------------------------")
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

-----------------------
----Menu Items Part----
-----------------------

local NeedMenuItemsPatch = false

function BB.SetMenuItemPatch(OldString, NewString)
  --Just for first time
  if not NeedMenuItemsPatch then
    --Hook AddMenuItem
    local OldFun1 = AddMenuItem
    AddMenuItem = function(Old, ...)
      local New = BB.MenuItemscList[Old]
      if New then return OldFun1(New, ...) end
      return OldFun1(Old, ...)
    end
    --Hook LCM
    if LibCustomMenu then
      local OldFun2 = AddCustomMenuItem
      AddCustomMenuItem = function(Old, ...)
        local New = BB.MenuItemscList[Old]
        if New then return OldFun2(New, ...) end
        return OldFun2(Old, ...)
      end
    end
  NeedMenuItemsPatch = true
  end
  --Add Patch
  BB.MenuItemscList[OldString] = NewString
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
  local String = ""
  for i = 1, #Table do
    local Info = Table[i]
    if BB.SV.BanList[Table[i]] then
      Info = "|cFF0000"..Table[i].."|r"
    else
      if BB.ActiveAddons[Table[i]] then
        Info = "|c008000"..Table[i].."|r"
      end
    end
    String = String.."    "..Info.."|c696969  ~  "..BB.AddonsVersion[Table[i]].."|r\r\n"
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
    website = "https://github.com/Xzcy/ESO.Babel",
    registerForRefresh = true,
	}
	LAM:RegisterAddonPanel(BB.Name.."_Options", panelData)
  
  local SelectedAddon = ""
  local options = {
    {
			type = "checkbox",
			name = "插件汉化失败警告",
			tooltip = "Babel汉化失败，通常因目标插件版本过旧/新，推荐维持在指定版本（详见插件列表）。\r\nBabel对每个插件采用独立汉化，部分插件汉化失败通常不会影响剩余插件被汉化，除非出现官方错误警告。\r\n此时你可以通过单独禁用某个插件的汉化，来确保其余插件正常汉化。",
			getFunc = function() return BB.SV.Warning end,
			setFunc = function(value) BB.SV.Warning = value end,
		},
    {
			type = "submenu",
			name = "插件列表",
      controls = {
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
          name = "启用/禁用 所选插件汉化",
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
          title = "* 不推荐在非中文语言下使用Babel，可能造成意外错误\r\n* 战斗相关插件较易汉化失败，推荐保持在汉化指定版本\r\n\r\n已支持插件: |cFFD700"..SupportCount.."|r 款\r\n\r\n文件夹名  ~  汉化指定版本   ( 未安装 / |c008000启用汉化|r / |cFF0000禁用汉化|r )",
          text = function() return StatusOfTable(TableOfKey(BB.AddonList)) end,
          width = "full",	
        },
      },
    },
    {
      type = "submenu",
			name = "更新日志",
      controls = {
        {
        type = "description",
        text = function() return BB.ChangeLog end,
        width = "full",
        },
      },
    },
    {
      type = "description",
      title = "联系方式（|l0:1:0:-35%:3:FFFFFF|l广告位招租|l）\r\n",
      text = "    Splendid Achievers\r\n       美服 公会 QQ群 452116107".."\r\n\r\n"..
             "    Guar Protection\r\n       欧服 公会 QQ群 703671761".."\r\n\r\n"..
             "Babel项目仓库见 |c7B68EE'访问网站'|r 链接（墙外）",
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
BB.SV.MenuDebug = {}
function BB.SafeMenuPatch(OldTable, NewTable)
  --Either nil
  if (not OldTable) or (not NewTable) then return false end
  
  --More options then old one
  if #NewTable > #OldTable then
    table.insert(BB.SV.MenuDebug, {"More Options: "..#NewTable.." > "..#OldTable, OldTable, NewTable})
    return false
  end
  
  for i = 1, #OldTable do
    --Option Number Error
    if not NewTable[i] then 
      table.insert(BB.SV.MenuDebug, {"Number Error: "..i, OldTable, NewTable[i-1] or {}})
      return false
    end
    --Option Type Error
    if OldTable[i]["type"] ~= NewTable[i]["type"] then
      table.insert(BB.SV.MenuDebug, {"Type Error: "..i, OldTable, NewTable})
      return false
    end
    --SubMenu
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