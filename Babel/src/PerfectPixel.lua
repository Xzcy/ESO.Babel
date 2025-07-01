local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["PerfectPixel"] = function() if not PP then return false end
  --[[
  Translation Files:
    PerfectPixel\lang\en.lua
  ]]
  local stringsZh = {
    --[LAM settings]
    PP_LAM_ACTIVATE									= "启用",
    PP_LAM_COLOR									  = "颜色",
    PP_LAM_EDGE_COLOR								= "边框颜色",
    PP_LAM_LIST_BG									= "列表背景",
    --Window & list style
    PP_LAM_WINDOW_STYLE 							= "窗口风格",
    PP_LAM_LIST_STYLE 								= "列表风格",
    PP_LAM_LIST_STYLE_BACKDROP 					= "背景",
    PP_LAM_LIST_STYLE_EDGE 							= "边框",
    PP_LAM_LIST_STYLE_LIST 							= "列表",
    PP_LAM_LIST_STYLE_INSETS 						= "边缘偏移量",
    PP_LAM_LIST_STYLE_TILE_LAYING  			= "瓷砖铺设模式",
    PP_LAM_LIST_STYLE_TILE_SIZE  				= "瓷砖大小",
    PP_LAM_LIST_STYLE_COLOR  						= "颜色",
    PP_LAM_LIST_STYLE_HIGHLIGHT_COLOR			= "高亮颜色",
    PP_LAM_LIST_STYLE_SELECTED_COLOR			= "选中颜色",
    PP_LAM_LIST_STYLE_THICKNESS						= "厚度",
    PP_LAM_LIST_STYLE_FILE_WIDTH					= "文件宽度",
    PP_LAM_LIST_STYLE_FILE_HEIGHT					= "文件高度",
    PP_LAM_LIST_STYLE_STRETCH_TEXTURE_EDGE	= "拉伸纹理边缘",
    PP_LAM_LIST_STYLE_FADE_DISTANCE					= "边缘虚化",
    PP_LAM_LIST_STYLE_UNIFORM_CONTROL_HEIGHT= "行高",
    PP_LAM_LIST_STYLE_CONTROL_HEIGHT				= "控件高度",
    --Other
    PP_LAM_OTHERS									  = "其他",
    PP_LAM_DONOTINTERRUPT						= "不要打断互动操作",
    PP_LAM_BLUR_BG									= "模糊背景",
    PP_LAM_FADE_SCENE_DURATION			= "界面渐隐时长 (ms)",
    --Reticle
    PP_LAM_RETICLE									= "准星",
    PP_LAM_RETICLE_HIDE_STEALTH			= "取消显示 \"" .. GetString(SI_STEALTH_HIDDEN) .. "\" 文字",
    --Tabs
    PP_LAM_TABS										  = "主菜单选项",
    PP_LAM_TABS_HIDE_MENU_BAR_LABEL	= "隐藏菜单栏标签",
    PP_LAM_TABS_HIDE_TOP_BAR_BG			= "隐藏顶部栏背景",
    --Tooltips
    PP_LAM_TOOLTIPS									= "悬浮窗",
    PP_LAM_COMPARATIVE_TOOLTIPS			= "按住按钮时显示装备比较悬浮窗",
    PP_LAM_COMPARATIVE_TOOLTIPS_TT	= "只有按住快捷键时才显示装备比较悬浮窗，需要在控制菜单中设置快捷键！",
    PP_LAM_COMPARATIVE_TOOLTIPS_BIND= "装备比较悬浮窗",
    --Compass
    PP_LAM_COMPASS									= "罗盘",
    PP_LAM_COMPASS_QUEST						= "任务区域",
    PP_LAM_COMPASS_COMBAT						= "战斗指示器",
    --[LAM Scenes]
    --Inventory Scene
    PP_LAM_SCENE_INV								= "库存界面",
    PP_LAM_SCENE_INV_NO_SPIN				= "不要旋转相机",
    PP_LAM_SCENE_INV_NO_SPIN_TT			= "如果预览功能出现问题，请禁用",
    --SkillsScene
    PP_LAM_SCENE_SKILLS							= "技能界面",
    PP_LAM_SCENE_SKILLS_SKILLS_TREE_UNWRAPPED	= "展开的技能树",
    PP_LAM_SCENE_SKILLS_SKILLS_TREE_BG				= "技能树背景",
    --Journal Scene
    PP_LAM_SCENE_JOURNAL							= "任务界面",
    PP_LAM_SCENE_JOURNAL_QUEST_LARGE_LIST			= "增大的任务清单",
    --World map
    PP_LAM_SCENE_WORLDMAP							= "世界地图",
    PP_LAM_SCENE_WORLDMAP_LARGE						= "大地图",
    --GameMenuInGameScene
    PP_LAM_SCENE_GAME_MENU							= "主菜单",
    PP_LAM_SCENE_GAME_MENU_ADDONS					= "插件",
    --Performance Meter
    PP_LAM_SCENE_PERFORMANCE_METER					= "性能仪表",
    --CraftStations
    PP_LAM_CRAFT_STATIONS_PROVISIONER_SHOWTOOLTIP	= "显示弹窗",
    PP_LAM_TRANSPARENCY								= "透明度",
    --Keybindstrip
    PP_LAM_KEYBINDSTRIP								= "菜单底部栏",
    --Chat
    PP_LAM_SCENE_CHAT								= GetString(SI_CHAT_TAB_GENERAL),
    PP_LAM_CHAT_MINBAR							= "应用于最小化聊天窗口",
    --Companion SkillsScene
    PP_LAM_SCENE_COMPANION_SKILLS		= "伙伴技能界面",
  }
  --Create the strings so they are available via function GetString(stringId) ingame
  for stringId, stringValue in pairs(stringsZh) do
    ZO_CreateStringId(stringId, stringValue)
    SafeAddVersion(stringId, 1)
  end
  
  --Sepical Setting
  local ReplaceList = {
    ["name"] = {
      ["Edge color"] = "边框颜色",
      ["Stolen Item"] = "偷取的物品",
      ["Mythic Item"] = "古物",
      ["Boss Bar"] = "Boss生命条",
      ["Hide boss bar"] = "隐藏Boss生命条",
      ["Scrolling"] = "滚动条",
      ["Scrolling (BETA)"] = "滚动条 (BETA)",
      ["Duration"] = "平滑度",
      ["Intensity"] = "速度",
      ["Height"] = "高度",
      ["Individual background settings"] = "独立的背景设置",
      ["Loot Scene"] = "拾取界面",
      ["Movable window"] = "可移动窗口",
      ["Mouse focus by first slot"] = "拾取时将鼠标移动至第一栏",
      ["Adaptive size window"] = "自适应窗口尺寸",
      ["Max size (slots)"] = "最大尺寸(栏位)",
    },
  }
  BB.SetMenuReplace("PerfectPixelOptions", ReplaceList)
  
return true end