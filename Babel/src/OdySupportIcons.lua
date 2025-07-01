local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["OdySupportIcons"] = function() if not OSI then return false end
  --[[
  Translation Files:
    OdySupportIcons\FuncAddonOptions.lua
  ]]
  local icon3dOptions = {
    {
    type  = "description",
    text  = "",
    },
    {
    type    = "slider",
    name    = "更新周期",
    tooltip = "毫秒，越快图标位置的精度越高，但需要更高的性能",
    },
    {
    type    = "slider",
    name    = "图标尺寸",
    tooltip = "宽度/高度的像素尺寸。如果打开缩放功能，所选尺寸将适用于屏幕前方 10 米左右的位置",
    },
    {
    type     = "checkbox",
    name     = "缩放",
    },
    {
    type     = "slider",
    name     = "图标高度",
    tooltip  = "从图标底部到地面的距离（米）",
    },
    {
    type     = "slider",
    name     = "不透明度",
    },
    {
    type     = "checkbox",
    name     = "从屏幕中淡出",
    },
    {
    type     = "slider",
    name     = "开始淡出的距离",
    tooltip  = "距离屏幕的距离（米）",
    },
  }

  local groupIconOptions = {
    --leaders
    {
    type  = "description",
    text  = "",
    title = "\n|cffff00队长 图标|r",
    },
    {
    type    = "checkbox",
    name    = "显示3D图标",
    },
    {
    type     = "checkbox",
    name     = "该图标优先于自定义图标",
    },
    {
    type     = "checkbox",
    name     = "启用自定义图标尺寸",
    },
    {
    type     = "slider",
    name     = "自定义图标尺寸",
    tooltip  = "宽度/高度的像素尺寸。如果打开缩放功能，所选尺寸将适用于屏幕前方 10 米左右的位置",
    },
    {
    type     = "colorpicker",
    name     = "图标颜色",
    },
    {
    type       = "iconpicker",
    name       = "材质",
    },
    --tank
    {
    type  = "description",
    text  = "",
    title = "\n|cffff00坦克 图标|r",
    },
    {
    type    = "checkbox",
    name    = "显示3D图标",
    },
    {
    type     = "checkbox",
    name     = "该图标优先于自定义图标",
    },
    {
    type     = "colorpicker",
    name     = "图标颜色",
    },
    {
    type       = "iconpicker",
    name       = "材质",
    },
    --healer
    {
    type  = "description",
    text  = "",
    title = "\n|cffff00治疗 图标|r",
    },
    {
    type    = "checkbox",
    name    = "显示3D图标",
    },
    {
    type     = "checkbox",
    name     = "该图标优先于自定义图标",
    },
    {
    type     = "colorpicker",
    name     = "图标颜色",
    },
    {
    type       = "iconpicker",
    name       = "材质",
    },
    --dd
    {
    type  = "description",
    text  = "",
    title = "\n|cffff00DD 图标|r",
    },
    {
    type    = "checkbox",
    name    = "显示3D图标",
    },
    {
    type     = "checkbox",
    name     = "该图标优先于自定义图标",
    },
    {
    type     = "colorpicker",
    name     = "图标颜色",
    },
    {
    type       = "iconpicker",
    name       = "材质",
    },
    --bg
    {
    type  = "description",
    text  = "",
    title = "\n|cffff00战场中队友 图标|r",
    },
    {
    type    = "checkbox",
    name    = "显示3D图标",
    },
    {
    type     = "checkbox",
    name     = "该图标优先于自定义图标",
    },
    {
    type     = "colorpicker",
    name     = "图标颜色",
    },
    {
    type       = "iconpicker",
    name       = "材质",
    },
    --dead
    {
    type  = "description",
    text  = "",
    title = "\n|cffff00死亡玩家 图标|r",
    },
    {
    type    = "checkbox",
    name    = "显示3D图标",
    },
    {
    type     = "checkbox",
    name     = "该图标优先于其他图标",
    },
    {
    type     = "checkbox",
    name     = "启用自定义图标高度",
    },
    {
    type     = "slider",
    name     = "自定义图标高度",
    tooltip  = "设置图标底部到地面的距离",
    },
    {
    type     = "colorpicker",
    name     = "死亡时图标颜色",
    },
    {
    type     = "colorpicker",
    name     = "复活中图标颜色",
    },
    {
    type     = "colorpicker",
    name     = "已复活图标颜色",
    },
    {
    type       = "iconpicker",
    name       = "材质",
    },
  }

  local allyIconOptions = {
    --banker
    {
    type  = "description",
    text  = "",
    title = "\n|cffff00银行家 图标|r",
    },
    {
    type    = "checkbox",
    name    = "显示3D图标",
    },
    {
    type     = "colorpicker",
    name     = "图标颜色",
    },
    {
    type       = "iconpicker",
    name       = "材质",
    },
    --Merchant
    {
    type  = "description",
    text  = "",
    title = "\n|cffff00商人 图标|r",
    },
    {
    type    = "checkbox",
    name    = "显示3D图标",
    },
    {
    type     = "colorpicker",
    name     = "图标颜色",
    },
    {
    type       = "iconpicker",
    name       = "材质",
    },
    --Fence
    {
    type  = "description",
    text  = "",
    title = "\n|cffff00销赃者 图标|r",
    },
    {
    type    = "checkbox",
    name    = "显示3D图标",
    },
    {
    type     = "colorpicker",
    name     = "图标颜色",
    },
    {
    type       = "iconpicker",
    name       = "材质",
    },
    --Armory Assistant
    {
    type  = "description",
    text  = "",
    title = "\n|cffff00军械库助手 图标|r",
    },
    {
    type    = "checkbox",
    name    = "显示3D图标",
    },
    {
    type     = "colorpicker",
    name     = "图标颜色",
    },
    {
    type       = "iconpicker",
    name       = "材质",
    },
    --Deconstruction Assistant
    {
    type  = "description",
    text  = "",
    title = "\n|cffff00分解助手 图标|r",
    },
    {
    type    = "checkbox",
    name    = "显示3D图标",
    },
    {
    type     = "colorpicker",
    name     = "图标颜色",
    },
    {
    type       = "iconpicker",
    name       = "材质",
    },
    --Bastian Hallix
    {
    type  = "description",
    text  = "",
    title = "\n|cffff00巴斯蒂安·哈利克斯（伙伴） 图标|r",
    },
    {
    type    = "checkbox",
    name    = "显示3D图标",
    },
    {
    type    = "checkbox",
    name    = "死亡时使用玩家死亡图标",
    },
    {
    type     = "colorpicker",
    name     = "图标颜色",
    },
    {
    type       = "iconpicker",
    name       = "材质",
    },
    --Mirri Elendis
    {
    type  = "description",
    text  = "",
    title = "\n|cffff00米莉·艾伦迪斯（伙伴） 图标|r",
    },
    {
    type    = "checkbox",
    name    = "显示3D图标",
    },
    {
    type    = "checkbox",
    name    = "死亡时使用玩家死亡图标",
    },
    {
    type     = "colorpicker",
    name     = "图标颜色",
    },
    {
    type       = "iconpicker",
    name       = "材质",
    },
    --Isobel Veloise
    {
    type  = "description",
    text  = "",
    title = "\n|cffff00伊索贝尔·维罗伊斯（伙伴） 图标|r",
    },
    {
    type    = "checkbox",
    name    = "显示3D图标",
    },
    {
    type    = "checkbox",
    name    = "死亡时使用玩家死亡图标",
    },
    {
    type     = "colorpicker",
    name     = "图标颜色",
    },
    {
    type       = "iconpicker",
    name       = "材质",
    },
    --Ember
    {
    type  = "description",
    text  = "",
    title = "\n|cffff00恩贝尔（伙伴） 图标|r",
    },
    {
    type    = "checkbox",
    name    = "显示3D图标",
    },
    {
    type    = "checkbox",
    name    = "死亡时使用玩家死亡图标",
    },
    {
    type     = "colorpicker",
    name     = "图标颜色",
    },
    {
    type       = "iconpicker",
    name       = "材质",
    },
    --Sharp-as-Night
    {
    type  = "description",
    text  = "",
    title = "\n|cffff00影·夜·刃（伙伴） 图标|r",
    },
    {
    type    = "checkbox",
    name    = "显示3D图标",
    },
    {
    type    = "checkbox",
    name    = "死亡时使用玩家死亡图标",
    },
    {
    type     = "colorpicker",
    name     = "图标颜色",
    },
    {
    type       = "iconpicker",
    name       = "材质",
    },
    --Azandar al-Cybiades
    {
    type  = "description",
    text  = "",
    title = "\n|cffff00阿赞达尔·阿尔·基克拉迪斯（伙伴） 图标|r",
    },
    {
    type    = "checkbox",
    name    = "显示3D图标",
    },
    {
    type    = "checkbox",
    name    = "死亡时使用玩家死亡图标",
    },
    {
    type     = "colorpicker",
    name     = "图标颜色",
    },
    {
    type       = "iconpicker",
    name       = "材质",
    },
    --Tanlorin
    {
    type  = "description",
    text  = "",
    title = "\n|cffff00坦洛林（伙伴） 图标|r",
    },
    {
    type    = "checkbox",
    name    = "显示3D图标",
    },
    {
    type    = "checkbox",
    name    = "死亡时使用玩家死亡图标",
    },
    {
    type     = "colorpicker",
    name     = "图标颜色",
    },
    {
    type       = "iconpicker",
    name       = "材质",
    },
    --Zerith-var
    {
    type  = "description",
    text  = "",
    title = "\n|cffff00泽里斯·瓦尔（伙伴） 图标|r",
    },
    {
    type    = "checkbox",
    name    = "显示3D图标",
    },
    {
    type    = "checkbox",
    name    = "死亡时使用玩家死亡图标",
    },
    {
    type     = "colorpicker",
    name     = "图标颜色",
    },
    {
    type       = "iconpicker",
    name       = "材质",
    },
  }

  -- custom icon options
  local customIconOptions = {
    {
    type  = "description",
    text  = "",
    },
    {
    type  = "description",
    text  = "为单独玩家分配自定义图标。在队伍栏、好友列表或公会列表中右键玩家，|c00ffffAssign Custom Icon|r 指定图标。再次右键 |c00ffffChange Custom Icon|r 修改图标或 |c00ffffRemove Custom Icon|r 移除图标\n",
    },
    {
    type  = "divider",
    },
    {
    type    = "checkbox",
    name    = "显示3D图标",
    },
    {
    type     = "checkbox",
    name     = "记忆分配的图标",
    },
    {
    type    = "button",
    name    = "清除小队图标",
    warning = "为当前小队成员清除分配的图标",
    },
    {
    type    = "button",
    name    = "清除缓存",
    warning = "清除之前所有分配的图标",
    },
  }

  -- unique and hodor icon options
  local uniqueIconOptions = {
    {
    type  = "description",
    text  = "",
    },
    {
    type = "description",
    text = "独特图标会被自动分配给对应玩家且无法被移除。如果你不想看到他们，只需要关闭显示选项",
    },
    {
    type = "description",
    text = "需要激活 |cffff00Hodor Reflexes|r 插件，如果你想要使用它提供的图标和动画\n",
    },
    {
    type  = "divider",
    },
    {
    type     = "checkbox",
    name     = "显示3D图标",
    },
    {
    type     = "checkbox",
    name     = "显示自身图标",
    },
    {
    type     = "checkbox",
    name     = "使用 Hodor Reflexes 图标",
    },
    {
    type     = "checkbox",
    name     = "使用 Hodor Reflexes 动画",
    },
    {
    type     = "checkbox",
    name     = "使 Hodor Reflexes 优先于独特图标",
    },
  }

  -- raid icon options
  local raidIconOptions = {
    {
    type  = "description",
    text  = "",
    },
    {
    type = "description",
    text = "实验性功能。队长可向队员发送特定的Raid图标。需要 |cffff00Hodor Reflexes|r 插件以在队伍中共享图标信息",
    },
    {
    type = "description",
    text = "仅在图标被分配时会发送共享图标信息，请确保队伍所有人均在线。掉线或重载UI会丢失分配的图标。队长可以通过点击 |c00ffffChange Raid Icon|r 和 |c00ffffSave|r 按钮，再次共享已经被分配的图标",
    },
    {
    type  = "divider",
    },
    {
    type     = "checkbox",
    name     = "显示队长分配的Raid图标",
    },
    {
    type     = "checkbox",
    name     = "为队长激活右键菜单",
    },
  }

  -- world map options
  local worldmapOptions = {
    {
    type  = "description",
    text  = "",
    },
    {
    type = "description",
    text = "在世界地图和 |cffff00Votan's Minimap|r 上显示小队成员图标，但不兼容 |cffff00Minimap by Fyrakin|r\n",
    },
    {
    type  = "divider",
    },
    {
    type     = "checkbox",
    name     = "显示自定义图标",
    },
    {
    type     = "checkbox",
    name     = "显示独特图标",
    },
    {
    type     = "checkbox",
    name     = "显示死亡小队成员图标",
    },
    {
    type     = "checkbox",
    name     = "显示小队职能图标",
    },
    {
    type     = "slider",
    name     = "图标尺寸",
    },
  }

  -- chat window options
  local chatwindowOptions = {
    {
    type  = "description",
    text  = "",
    },
    {
    type = "description",
    text = "修改收到的聊天信息，并为用户名添加图标。对角色名也可起效，但他需要在你的小队列表，好友列表或公会列表中。修改的设置仅对新收到的聊天信息有效\n",
    },
    {
    type  = "divider",
    },
    {
    type     = "checkbox",
    name     = "显示自定义图标",
    },
    {
    type     = "checkbox",
    name     = "显示独特图标",
    },
    {
    type     = "slider",
    name     = "图标尺寸",
    },
  }

  -- group window options
  local groupwindowOptions = {
    {
    type  = "description",
    text  = "",
    },
    {
    type     = "checkbox",
    name     = "显示自定义图标",
    },
    {
    type     = "checkbox",
    name     = "显示独特图标",
    },
    {
    type     = "checkbox",
    name     = "显示死亡小队成员图标",
    },
    {
    type     = "checkbox",
    name     = "显示小队职能图标",
    },
    {
    type     = "checkbox",
    name     = "显示皇冠图层",
    },
  }

  -- friends list options
  local friendslistOptions = {
    {
    type  = "description",
    text  = "",
    },
    {
    type     = "checkbox",
    name     = "显示自定义图标",
    },
    {
    type     = "checkbox",
    name     = "显示独特图标",
    },
    {
    type     = "checkbox",
    name     = "显示玩家状态图层",
    },
  }

  -- guild roster options
  local guildrosterOptions = {
    {
    type  = "description",
    text  = "",
    },
    {
    type     = "checkbox",
    name     = "显示自定义图标",
    },
    {
    type     = "checkbox",
    name     = "显示独特图标",
    },
    {
    type     = "checkbox",
    name     = "显示玩家状态图层",
    },
  }
  
--The Whole Options
  local NewOption = {
    {
      type = "description",
      text = "这个插件可在地下城和试炼中为小队成员显示图标（在使用皇冠箱技巧隐藏队友时也可生效）",
    },
    {
      type = "description",
      text = "使用 |cffff00/osi|r 指令打开插件设置（账户全局）。你还可在按键设置中为快速切换图标显示分配 |c00ffff快捷键|r\n",
    },
    {
      type     = "submenu",
      name     = "|cfffacd一般设置|r",
      controls = icon3dOptions,
    },
    {
      type     = "submenu",
      name     = "|cfffacd小队图标|r",
      controls = groupIconOptions,
    },
    {
      type     = "submenu",
      name     = "|cfffacd友方NPC图标|r",
      controls = allyIconOptions,
    },
    {
      type     = "submenu",
      name     = "|cfffacd自定义图标|r",
      controls = customIconOptions,
    },
    {
      type     = "submenu",
      name     = "|cfffacd独特图标|r",
      controls = uniqueIconOptions,
    },
    --[[
    {
      type     = "submenu",
      name     = "|cfffacdRAID图标|r |cff0000测试版|r",
      controls = raidIconOptions,
    },
    ]]
    {
      type     = "submenu",
      name     = "|cfffacd世界地图|r",
      controls = worldmapOptions,
    },
    {
      type     = "submenu",
      name     = "|cfffacd小队栏|r",
      controls = groupwindowOptions,
    },
    {
      type     = "submenu",
      name     = "|cfffacd聊天栏|r",
      controls = chatwindowOptions,
    },
    {
      type     = "submenu",
      name     = "|cfffacd好友列表|r",
      controls = friendslistOptions,
    },
    {
      type     = "submenu",
      name     = "|cfffacd公会列表|r",
      controls = guildrosterOptions,
    },
    -- end of options
    {
      type = "description",
      text = "",
    },
  }

  --Sepcial Setting
  BB.SetMenuPatch(OSI.name.."Options", NewOption)
  
  BB.SetMenuItemPatch("Assign Custom Icon", "分配自定义图标")
  BB.SetMenuItemPatch("Change Custom Icon", "改变自定义图标")
  BB.SetMenuItemPatch("Remove Custom Icon", "移除自定义图标")
  BB.SetMenuItemPatch("Change Raid Icon", "改变Raid图标")
  BB.SetMenuItemPatch("Remove Raid Icon", "移除Raid图标")
  BB.SetMenuItemPatch("Assign Raid Icon", "分配Raid图标")
  BB.SetMenuItemPatch("Remove all Raid Icons", "移除所有Raid图标")
  
  BB.SetKeybindingsReplace("OSI_TOGGLE", "切换3D图标可见性")
return true end