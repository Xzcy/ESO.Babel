local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["HarvestMap"] = function() if not Harvest then return false end
  --[[ 
  Translation Files:
    HarvestMap\Modules\HarvestMap\Localization\default.lua
  ]]
  Harvest.localizedStrings = {
    -- top level description
    esouidescription = "有关插件描述和常见问题，请访问esoui.com上的插件页面",
    openesoui = "打开ESOUI",
    exchangedescription2 = "你可以通过安装HarvestMap-Data插件来获取最新的资源位置信息。更多有关这方面的信息，请参阅ESOUI上的插件描述信息。",

    notifications = "通知和警告",
    notificationstooltip = "在屏幕右上角显示通知和警告。",
    moduleerrorload = " <<1>> 插件被禁用了。\n此区域没有可用数据。",
    moduleerrorsave = " <<1>> 插件被禁用了。\n此节点的位置信息没有被保存。",

    -- outdated data settings
    outdateddata = "过时的数据设置",
    outdateddatainfo = "这些数据相关的设置在这台计算机上的所有帐户和角色之间共享.",
    timedifference = "只保存最近的数据",
    timedifferencetooltip = "HarvestMap 收获地图将只保存最近X天的数据。\n这可以防止显示可能已经过时的旧数据。\n设置为0以保存所有数据，不论其时间.",
    applywarning = "旧数据一旦删除，就无法恢复!",

    -- account wide settings
    account = "账户全局设置",
    accounttooltip = "下面的所有设置对每个角色都是相同的",
    accountwarning = "更改此设置将重新加载UI.",

    -- map pin settings
    mapheader = "地图标记设置",
    mappins = "在主地图上启用标记",
    minimappins = "在小地图上启用标记",
    minimappinstooltip = "支持的小地图插件: Votan, Fyrakin 和 AUI",
    level = "在地点图标之上显示标记",
    hasdrawdistance = "只显示附近的地图标记",
    hasdrawdistancetooltip = "开启时, HarvestMap 收获地图只为靠近玩家的采集地点创建地图标记.\n此设置只影响游戏内地图。小地图上则会自动启用此选项!",
    hasdrawdistancewarning = "此设置只影响游戏内地图。小地图上则会自动启用此选项!",
    drawdistance = "地图标记距离",
    drawdistancetooltip = "绘制地图标记的距离阈值。此设置也影响小地图!",
    drawdistancewarning = "此设置也影响小地图",

    visiblepintypes = "可见的标志类型",
    custom_profile = "自定义",
    same_as_map = "与地图设置相同",

    -- compass settings
    compassheader = "罗盘设置",
    compass = "启用罗盘标记显示",
    compassdistance = "最大标记距离",
    compassdistancetooltip = "显示在罗盘上标记的最大距离(以米为单位).",

    -- 3d pin settings
    worldpinsheader = "3D标记设置",
    worldpins = "开启3D标记",
    worlddistance = "最大3D标记距离",
    worlddistancetooltip = "显示采集位置的最大距离(以米为单位)。当一个位置较远时, 则不会显示3D标记。",
    worldpinwidth = "3D标记宽度",
    worldpinwidthtooltip = "3D标记的宽度，单位为厘米。",
    worldpinheight = "3D标记高度",
    worldpinheighttooltip = "3D标记的高度，单位为厘米。",
    worldpinsdepth = "透视墙后的3D标记",
    worldpinsdepthtooltip = "启用时，将显示墙壁或其他物体后方的3D标记",
    worldpinsdepthwarning = "由于一个游戏BUG, 当在游戏的视频选项中将二次取样质量设置为中等或者低时，此选项无法生效。",

    -- respawn timer settings
    visitednodes = "访问节点和采集助手",
    rangemultiplier = "访问的节点范围",
    rangemultipliertooltip = "在X米内的节点才会被刷新计时器和采集助手访问。",
    usehiddentime = "隐藏最近访问的节点",
    usehiddentimetooltip = "隐藏您最近访问过的标记位置。",
    hiddentime = "隐藏的持续时间",
    hiddentimetooltip = "最近访问的节点将被隐藏X分钟。",
    hiddenonharvest = "只在采集之后隐藏节点",
    hiddenonharvesttooltip = "开启后只当你采集完成时隐藏标记。关闭后当你访问时标记也将被隐藏",

    -- spawn filter
    spawnfilter = "已生成资源筛选",
    nodedetectionmissing = "仅当NodeDetection库启用时，以下选项方有效",
    spawnfilterdescription = "当启用时，HarvestMap将会隐藏未生成资源的图标。\r\n举例来说，如果其他玩家已经采集该资源点，此处的图标将被隐藏直到资源再生。\r\n该选项仅对可收获的制造材料有效。HarvestMap无法检测生成的地图容器，如箱子，重麻袋和塞伊克传送门等。\r\n如果其他插件隐藏或重新缩放罗盘，该筛选将失效。\r\n该功能仅对附近的采集点有效",
    spawnfilter_map = "在主地图上应用筛选",
    spawnfilter_minimap = "在小地图上应用筛选",
    spawnfilter_compass = "在罗盘上应用筛选",
    spawnfilter_world = "在3D标记上应用筛选",
    spawnfilter_pintype = "对以下类型启用筛选：",

    -- pin type options
    pinoptions = "标记类型选项",
    pinsize = "标记尺寸",
    pinsizetooltip = "设置地图上的标记尺寸",
    pincolor = "标记颜色",
    pincolortooltip = "设置地图和罗盘上标记的颜色",
    savepin = "保存位置",
    savetooltip = "启用在发现资源时保存它们的位置",
    pintexture = "标记图标",

    -- pin type names
    pintype1 = "锻造和首饰",
    pintype2 = "纤维织物",
    pintype3 = "符文石和赛伊克传送门",
    pintype4 = "蘑菇",
    pintype13 = "草药/花朵",
    pintype14 = "水生植物",
    pintype5 = "木材",
    pintype6 = "宝箱",
    pintype7 = "溶剂",
    pintype8 = "钓鱼点",
    pintype9 = "重麻袋",
    pintype10 = "盗贼的宝藏",
    pintype11 = "审判容器",
    pintype12 = "隐藏物品",
    pintype15 = "巨型水蚌",
    -- pin type 16, 17 used to be jewlry and psijic portals 
    -- but the locations are the same as smithing and runes
    pintype18 = "未知节点",
    pintype19 = "猩红奈恩根",
    pintype20 = "药草师的背包",

    -- extra map filter buttons
    deletepinfilter = "删除HarvestMap标记",
    filterheatmap = "热力地图模式",

    -- localization for the farming helper
    goldperminute = "每分钟的金币:",
    farmresult = "HarvestFarm 结果",
    farmnotour = "HarvestFarm 不能基于设定的最小路线长度计算出一个良好的收割路线",
    farmerror = "HarvestFarm 错误",
    farmnoresources = "没有找到资源。\n此地图上没有资源，或者您没有选择任何资源类型。",
    farmsuccess = "HarvestFarm 计算出了一条每公里 <<1>> 节点的收割线路。\n\n按一下其中一个路线标记以设定路线的起点。",
    farmdescription = "HarvestFarm 将计算出一条非常高效的资源收割线路。\n在生成一条线路之后, 点击其中一个被选择的资源来设置线路的起点。",
    farmminlength = "最小路径长度",
    farmminlengthdescription = "路线越长, 当您开始下一个循环时，资源重新出现的机会就越大。\n然而，一个较短的线路将获得更高的收割效率。",
    tourpin = "你线路的下一个目标",
    calculatetour = "计算线路",
    showtourinterface = "显示路线界面",
    canceltour = "取消线路",
    reverttour = "恢复线路方向",
    resourcetypes = "资源类型",
    skiptarget = "跳过当前目标",
    removetarget = "删除当前目标",
    nodesperminute = "每分钟的节点数",
    distancetotarget = "到下一个资源的距离",
    showarrow = "显示方向",
    removetour = "删除路线",
    undo = "撤消最后的变动",
    tourname = "线路名：",
    defaultname = "未命名的线路",
    savedtours = "此地图已保存的线路：",
    notourformap = "此地图没有已保存线路",
    load = "载入",
    delete = "删除",
    saveexiststitle = "请确认",
    saveexists = "此地图已有一个以 <<1>> 命名的线路了。您要覆盖它吗?",
    savenotour = "没有可保存的线路",
    loaderror = "此线路无法被载入",
    removepintype = "您想从路线中删除 <<1>> 吗?",
    removepintypetitle = "确认删除",

    -- extra harvestmap menu
    farmmenu = "收割线路编辑器",
    editordescription = "在此菜单中，您可以创建和编辑线路。\r\n如果目前没有其他被激活的线路, 您可以通过点击地图标记创建一个线路。\r\n如果有被激活的线路, 您可以通过替换其中一部分来编辑线路:\r\n- 首先点击您线路(红色)中的一个标记。\r\n- 然后，点击你想添加到路线中的标记。 (一条绿色线路将会出现)\r\n- 最后，再次点击你的红色线路中的标记。\r\n现在绿色线路将被插入红色线路。",
    editorstats = "节点数量: <<1>>\r\n长度: <<2>> 米\r\n每公里节点数: <<3>>",

    -- filter profiles
    filterprofilebutton = "打开筛选配置菜单",
    filtertitle = "筛选配置菜单",
    filtermap = "地图标记的筛选配置",
    filtercompass = "罗盘标记的筛选配置",
    filterworld = "3D标志的筛选配置",
    unnamedfilterprofile = "未命名配置",
    defaultprofilename = "默认筛选配置",

    -- SI names to fit with ZOS api
    SI_BINDING_NAME_SKIP_TARGET = "跳过目标",
    SI_BINDING_NAME_TOGGLE_WORLDPINS = "切换3D标记",
    SI_BINDING_NAME_TOGGLE_MAPPINS = "切换地图标记",
    SI_BINDING_NAME_TOGGLE_MINIMAPPINS = "切换小地图标记",
    SI_BINDING_NAME_HARVEST_SHOW_PANEL = "打开HarvestMap地图编辑器",
    SI_BINDING_NAME_HARVEST_SHOW_FILTER = "打开HarvestMap筛选菜单",
    HARVESTFARM_GENERATOR = "生成新线路",
    HARVESTFARM_EDITOR = "编辑线路",
    HARVESTFARM_SAVE = "保存/载入 线路",
  }

  --Sepcial Setting
  local default = Harvest.defaultLocalizedStrings
  local current = Harvest.localizedStrings or {}
  function Harvest.GetLocalization(tag)
    return (current[tag] or default[tag]) or tag
  end
  
  local UIStrings = {
    "SI_BINDING_NAME_HARVEST_SHOW_FILTER", 
    "SI_BINDING_NAME_SKIP_TARGET", 
    "SI_BINDING_NAME_TOGGLE_WORLDPINS", 
    "SI_BINDING_NAME_TOGGLE_MAPPINS", 
    "SI_BINDING_NAME_TOGGLE_MINIMAPPINS", 
    "SI_BINDING_NAME_HARVEST_SHOW_PANEL",
		"HARVESTFARM_GENERATOR",
    "HARVESTFARM_EDITOR",
    "HARVESTFARM_SAVE"
  }

  for _, str in pairs(UIStrings) do
    SafeAddString(_G[str], Harvest.GetLocalization(str), 2)
  end
  
return true end