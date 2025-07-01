local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["RdKGroupTool"] = function() if not _G['RdKGTool'] then return false end
  --\Lang\en.lua
  local RdKGTool = _G['RdKGTool']
  local RdKGToolMenu = RdKGTool.menu
  local RdKGToolGroup = RdKGTool.group
  local RdKGToolCrown = RdKGToolGroup.crown
  local RdKGToolAI = RdKGToolGroup.ai
  local RdKGToolFtcv = RdKGToolGroup.ftcv
  local RdKGToolFtcw = RdKGToolGroup.ftcw
  local RdKGToolBeam = RdKGToolGroup.ftcb
  local RdKGToolOverview = RdKGToolGroup.ro
  local RdKGToolGBeam = RdKGToolGroup.gb
  local RdKGToolHdm = RdKGToolGroup.hdm
  local RdKGToolDt = RdKGToolGroup.dt
  local RdKGToolIsdp = RdKGToolGroup.isdp
  local RdKGToolCompass = RdKGTool.compass
  local RdKGToolYacs = RdKGToolCompass.yacs
  local RdKGToolSC = RdKGToolCompass.sc
  local RdKGToolUtil = RdKGTool.util
  local RdKGToolUtilUI = RdKGToolUtil.ui
  local RdKGToolUltimates = RdKGToolUtil.ultimates
  local RdKGToolNetworking = RdKGToolUtil.networking
  local RdKGToolUtilGroup = RdKGToolUtil.group
  local RdKGToolVersioning = RdKGToolUtil.versioning
  local RdKGToolGMenu = RdKGToolUtil.groupMenu
  local RdKGToolBeams = RdKGToolUtil.beams
  local RdKGToolToolbox = RdKGTool.toolbox
  local RdKGToolSm = RdKGToolToolbox.sm
  local RdKGToolRecharger = RdKGToolToolbox.recharger
  local RdKGToolBft = RdKGToolToolbox.bft
  local RdKGToolSiege = RdKGToolToolbox.siege
  local RdKGToolCL = RdKGToolToolbox.cl
  local RdKGToolEnhance = RdKGToolToolbox.enhancements
  local RdKGToolRespawner = RdKGToolToolbox.respawner
  local RdKGToolSP = RdKGToolToolbox.sp
  local RdKGToolSO = RdKGToolToolbox.so
  local RdKGToolAdmin = RdKGTool.admin
  local RdKGToolConfig = RdKGTool.cfg

  RdKGTool.config.constants.CMD_TEXT_MENU = RdKGTool.slashCmd .. " menu: 打开配置菜单"
  RdKGTool.config.constants.CMD_TEXT_MENU = RdKGTool.config.constants.CMD_TEXT_MENU .. "\r\n" .. RdKGTool.slashCmd .." admin: 打开管理员界面"
  RdKGTool.config.constants.CMD_TEXT_MENU = RdKGTool.config.constants.CMD_TEXT_MENU .. "\r\n" .. RdKGTool.slashCmd .." config: 打开导入导出配置界面"
  RdKGTool.config.constants.CMD_TEXT_MENU = RdKGTool.config.constants.CMD_TEXT_MENU .. "\r\n" .. RdKGTool.slashCmd .." hdm clear: 重置治疗和伤害量谱"
  RdKGTool.config.constants.CMD_TEXT_MENU = RdKGTool.config.constants.CMD_TEXT_MENU .. "\r\n/ai: 打开自动邀请 (例如 /ai rdk) - 使用 /ai 指令关闭"

  --Tool
  RdKGTool.constants = RdKGTool.constants or {}
  RdKGTool.constants.MISSING_LIBRARIES = "RdK Group Tool 缺少支持库: "

  --Menu Constants
  --Profile
  RdKGToolMenu.constants = RdKGToolMenu.constants or {}
  RdKGToolMenu.constants.PROFILE_HEADER = "预设配置"
  RdKGToolMenu.constants.PROFILE_SELECTED_PROFILE = "所选预设"
  RdKGToolMenu.constants.PROFILE_SELECTED_PROFILE_TOOLTIP = "选择想要使用的预设"
  RdKGToolMenu.constants.PROFILE_NEW_PROFILE = "新预设"
  RdKGToolMenu.constants.PROFILE_ADD_PROFILE = "添加"
  RdKGToolMenu.constants.PROFILE_CLONE_PROFILE = "复制"
  RdKGToolMenu.constants.PROFILE_REMOVE_PROFILE = "移除"
  RdKGToolMenu.constants.PROFILE_EXISTS = "|cFF0000预设已经存在，请使用其他名称|r"
  RdKGToolMenu.constants.PROFILE_CANT_REMOVE_DEFAULT = "|cFF0000这个预设无法移除|r"

  --Fixed Components
  RdKGToolMenu.constants.POSITION_FIXED_SET = "位置固定"
  RdKGToolMenu.constants.POSITION_FIXED_UNSET = "解除位置固定"

  --Donate
  RdKGToolMenu.constants.FEEDBACK = "反馈"
  RdKGToolMenu.constants.FEEDBACK_STRING = "请通过ESO论坛或ESOUI提交反馈。作者不会对游戏内邮件作出回应。"
  RdKGToolMenu.constants.DONATE = "捐助"
  RdKGToolMenu.constants.DONATE_5K = "捐助 5'000 金币"
  RdKGToolMenu.constants.DONATE_50K = "捐助 50'000 金币"
  RdKGToolMenu.constants.DONATE_SERVER_ERROR = "很感谢你想要捐助，但可惜我们在不同的服务器"
  RdKGToolMenu.constants.DONATE_MAIL_SUBJECT = "RdK Group Tool 捐助"

  --Group
  RdKGToolMenu.constants.GROUP_HEADER = "|cFF8174团队设置|r"

  --Crown
  RdKGToolMenu.constants.CROWN_HEADER = "|c4592FF皇冠（队长标识）|r"
  RdKGToolMenu.constants.CROWN_CHK_GROUP_CROWN_ENABLED = "启用自定义皇冠"
  RdKGToolMenu.constants.CROWN_SELECTED_MODE = "皇冠模式"
  RdKGToolMenu.constants.CROWN_MODE = {}
  RdKGToolMenu.constants.CROWN_MODE[1] = "图标"
  RdKGToolMenu.constants.CROWN_SELECTED_CROWN = "所选皇冠"
  RdKGToolMenu.constants.CROWN_SIZE = "尺寸"
  RdKGToolMenu.constants.CROWN_WARNING = "|cFF0000仅有1个插件可以使用这个功能，如果有2个插件使用该功能则会导致游戏崩溃！|r"
  RdKGToolMenu.constants.CROWN_PVP_ONLY = "仅PvP"

  --Auto Invite
  RdKGToolMenu.constants.AI_HEADER = "|c4592FF自动邀请|r"
  RdKGToolMenu.constants.AI_ENABLED = "启用"
  RdKGToolMenu.constants.AI_INVITE_TEXT = "触发邀请字符串"
  RdKGToolMenu.constants.AI_GROUP_SIZE = "团队最大尺寸"
  RdKGToolMenu.constants.AI_PVP_CHECK = "仅PvP"
  RdKGToolMenu.constants.AI_SEND_CHAT_MESSAGES = "发送聊天栏信息"
  RdKGToolMenu.constants.AI_AUTO_KICK = "自动踢离线"
  RdKGToolMenu.constants.AI_AUTO_KICK_TIME = "自动踢人间隔（秒）"
  RdKGToolMenu.constants.AI_CHAT = "监控的聊天频道"
  RdKGToolMenu.constants.AI_CHAT_RESTRICTIONS = "玩家限制"
  RdKGToolMenu.constants.AI_CHAT_RESTRICTIONS_TOOLTIP = "定义自动邀请的限制对象"
  RdKGToolMenu.constants.AI_CHAT_RESTRICTIONS_GUILD = "公会"
  RdKGToolMenu.constants.AI_CHAT_RESTRICTIONS_GUILD_FRIEND = "公会和好友"
  RdKGToolMenu.constants.AI_CHAT_RESTRICTIONS_FRIEND = "好友"
  RdKGToolMenu.constants.AI_CHAT_RESTRICTIONS_SPECIFIC_GUILD = "特定公会"
  RdKGToolMenu.constants.AI_CHAT_RESTRICTIONS_SPECIFIC_GUILD_FRIEND = "特定公会和好友"
  RdKGToolMenu.constants.AI_CHAT_RESTRICTIONS_NONE = "不限制"
  RdKGToolMenu.constants.AI_SHOW_MEMBER_LEFT = "显示所有离队信息"

  --Follow The Crown Visual
  RdKGToolMenu.constants.FTCV_HEADER = "|c4592FF跟随皇冠(箭头)|r"
  RdKGToolMenu.constants.FTCV_ENABLED = "启用"
  RdKGToolMenu.constants.FTCV_MODE = "模式"
  RdKGToolMenu.constants.FTCV_COLOR_MODE = "颜色模式"
  RdKGToolMenu.constants.FTCV_COLOR_MODE_ORIENTATION = "方位 (前, 旁边, 后)"
  RdKGToolMenu.constants.FTCV_COLOR_MODE_DISTANCE = "距离 (近, 远)"
  RdKGToolMenu.constants.FTCV_COLOR_FRONT = "颜色 1 (前 / 近)"
  RdKGToolMenu.constants.FTCV_COLOR_SIDE = "颜色 2 (旁边)"
  RdKGToolMenu.constants.FTCV_COLOR_BACK = "颜色 3 (后 / 远)"
  RdKGToolMenu.constants.FTCV_OPACITY_CLOSE = "距离不透明度（近）"
  RdKGToolMenu.constants.FTCV_OPACITY_FAR = "距离不透明度（远）"
  RdKGToolMenu.constants.FTCV_SIZE_CLOSE = "尺寸（近）"
  RdKGToolMenu.constants.FTCV_SIZE_FAR = "尺寸（远）"
  RdKGToolMenu.constants.FTCV_PVP_ONLY = "仅PvP"
  RdKGToolMenu.constants.FTCV_MODE_RETICLE = "准星"
  RdKGToolMenu.constants.FTCV_MODE_FIXED = "固定"
  RdKGToolMenu.constants.FTCV_POSITION = "位置"
  RdKGToolMenu.constants.FTCV_MAX_DISTANCE = "最远允许距离"
  RdKGToolMenu.constants.FTCV_MIN_DISTANCE = "最小距离"
  RdKGToolMenu.constants.FTCV_TEXTURES = "材质"

  --Follow The Crown Warnings
  RdKGToolMenu.constants.FTCW_HEADER = "|c4592FF跟随皇冠(警告)|r"
  RdKGToolMenu.constants.FTCW_ENABLED = "启用"
  RdKGToolMenu.constants.FTCW_WARNINGS_ENABLED = "启用警告"
  RdKGToolMenu.constants.FTCW_DISTANCE_ENABLED = "启用距离"
  RdKGToolMenu.constants.FTCW_DISTANCE_BACKDROP_ENABLED = "启用距离背景"
  RdKGToolMenu.constants.FTCW_POSITION_FIXED = "固定位置"
  RdKGToolMenu.constants.FTCW_DISTANCE = "最大允许距离"
  RdKGToolMenu.constants.FTCW_IGNORE_DISTANCE = "停用距离"
  RdKGToolMenu.constants.FTCW_WARNING_COLOR = "警告颜色"
  RdKGToolMenu.constants.FTCW_DISTANCE_COLOR_NORMAL = "距离颜色（普通）"
  RdKGToolMenu.constants.FTCW_DISTANCE_COLOR_ALERT = "距离颜色（警告）"
  RdKGToolMenu.constants.FTCW_PVP_ONLY = "仅PvP"

  --Follow The Crown Audio
  RdKGToolMenu.constants.FTCA_HEADER = "|c4592FF跟随皇冠(声音)|r"
  RdKGToolMenu.constants.FTCA_ENABLED = "启用"
  RdKGToolMenu.constants.FTCA_DISTANCE = "最大许可距离"
  RdKGToolMenu.constants.FTCA_IGNORE_DISTANCE = "停用距离"
  RdKGToolMenu.constants.FTCA_PVP_ONLY = "仅PvP"
  RdKGToolMenu.constants.FTCA_UNMOUNTED_ONLY = "仅非坐骑状态"
  RdKGToolMenu.constants.FTCA_SOUND = "声音"
  RdKGToolMenu.constants.FTCA_INTERVAL = "间隔"
  RdKGToolMenu.constants.FTCA_THRESHOLD = "阈值"

  --Follow The Crown Beam
  RdKGToolMenu.constants.FTCB_HEADER = "|c4592FF跟随皇冠(光线)|r"
  RdKGToolMenu.constants.FTCB_WARNING = "|cFF0000二次抽样画质需要为高，否则这个模块不会运行|r"
  RdKGToolMenu.constants.FTCB_ENABLED = "启用"
  RdKGToolMenu.constants.FTCB_PVP_ONLY = "仅PvP"
  RdKGToolMenu.constants.FTCB_SELECTED_BEAM = "所选光线"
  RdKGToolMenu.constants.FTCB_COLOR = "颜色"

  --Debuff Overview
  RdKGToolMenu.constants.DBO_HEADER = "|c4592FFDebuff概述|r"
  RdKGToolMenu.constants.DBO_ENABLED = "启用"
  RdKGToolMenu.constants.DBO_PVP_ONLY = "仅PvP"
  RdKGToolMenu.constants.DBO_CRITICAL_AMOUNT = "Debuff临界数量"
  RdKGToolMenu.constants.DBO_COLOR_OKAY = "可以 颜色 [0]"
  RdKGToolMenu.constants.DBO_COLOR_NOT_OKAY = "不可以 颜色 [1]"
  RdKGToolMenu.constants.DBO_COLOR_CRITICAL = " 临界值 颜色"
  RdKGToolMenu.constants.DBO_POSITION_FIXED = "固定位置"
  RdKGToolMenu.constants.DBO_COLOR_OUT_OF_RANGE = "颜色（范围外）"
  RdKGToolMenu.constants.DBO_DESCRIPTION = "这个模块需要其他模块的地图图标（资源概述，协同概述和治疗伤害量谱）。为了获得最好的效果，请激活资源概述"
  RdKGToolMenu.constants.DBO_SIZE = "尺寸"

  --Rapid Tracker
  RdKGToolMenu.constants.RT_HEADER = "|c4592FF迅敏概述|r"
  RdKGToolMenu.constants.RT_ENABLED = "启用"
  RdKGToolMenu.constants.RT_PVP_ONLY = "仅PvP"
  RdKGToolMenu.constants.RT_POSITION_FIXED = "固定位置"
  RdKGToolMenu.constants.RT_COLOR_LABEL_IN_RANGE = "名字颜色（范围内）"
  RdKGToolMenu.constants.RT_COLOR_LABEL_NOT_IN_RANGE = "名字颜色（范围外）"
  RdKGToolMenu.constants.RT_COLOR_LABEL_OUT_OF_RANGE = "名字颜色（AFK）"
  RdKGToolMenu.constants.RT_COLOR_RAPID_ON = "迅敏激活颜色"
  RdKGToolMenu.constants.RT_COLOR_RAPID_OFF = "迅敏未激活颜色"

  --Resource Overview
  RdKGToolMenu.constants.RO_HEADER_ULTIMATES = "|c4592FF资源概述(合并)|r"
  RdKGToolMenu.constants.RO_ENABLED = "启用"
  RdKGToolMenu.constants.RO_PVP_ONLY = "仅PvP"
  RdKGToolMenu.constants.RO_POSITION_FIXED = "固定位置"
  RdKGToolMenu.constants.RO_ULTIMATE_OVERVIEW_ENABLED = "启用团队终极点概述"
  RdKGToolMenu.constants.RO_CLIENT_ULTIMATE_ENABLED = "启用客户端窗口"
  RdKGToolMenu.constants.RO_GROUP_ULTIMATES_ENABLED = "启用团队窗口"
  RdKGToolMenu.constants.RO_SHOW_SOFT_RESOURCES = "显示 耐力 / 法力"
  RdKGToolMenu.constants.RO_DISPLAYED_ULTIMATES = "显示终极点数值"
  RdKGToolMenu.constants.RO_COLOR_BACKGROUND = "资源背景颜色"
  RdKGToolMenu.constants.RO_COLOR_MAGICKA = "魔力资源颜色"
  RdKGToolMenu.constants.RO_COLOR_STAMINA = "耐力资源颜色"
  RdKGToolMenu.constants.RO_COLOR_OUT_OF_RANGE = "资源颜色（范围外）"
  RdKGToolMenu.constants.RO_COLOR_DEAD = "资源颜色（死亡）"
  RdKGToolMenu.constants.RO_COLOR_PROGRESS_NOT_FULL = "资源颜色（未满）"
  RdKGToolMenu.constants.RO_COLOR_PROGRESS_FULL = "资源颜色（满）"
  RdKGToolMenu.constants.RO_COLOR_LABEL_FULL = "资源字符串\"Full\"颜色"
  RdKGToolMenu.constants.RO_COLOR_LABEL_NOT_FULL = "资源字符串\"Not Full\"颜色"
  RdKGToolMenu.constants.RO_COLOR_LABEL_GROUP = "资源字符串\"Group\"颜色"
  RdKGToolMenu.constants.RO_COLOR_LABEL_ANNOUNCEMENT = "通知颜色"
  RdKGToolMenu.constants.RO_ANNOUNCEMENT_SIZE = "通知尺寸"
  RdKGToolMenu.constants.RO_IN_COMBAT_ENABLED = "启用战斗状态"
  RdKGToolMenu.constants.RO_IN_COMBAT_COLOR = "进战颜色"
  RdKGToolMenu.constants.RO_OUT_OF_COMBAT_COLOR = "脱战颜色"
  RdKGToolMenu.constants.RO_IN_STEALTH_ENABLED = "启用潜行状态"
  RdKGToolMenu.constants.RO_ULTIMATE_GROUPS_ENABLED = "启用团队终极点"
  RdKGToolMenu.constants.RO_ULTIMATE_SORTING_MODE = "排序模式"
  RdKGToolMenu.constants.RO_ULTIMATE_GROUP_SIZE_DESTRO = "辐光毁灭 团队尺寸"
  RdKGToolMenu.constants.RO_ULTIMATE_GROUP_SIZE_STORM = "冰雨风暴 团队尺寸"
  RdKGToolMenu.constants.RO_ULTIMATE_GROUP_SIZE_NORTHERNSTORM = "北境风暴 团队尺寸"
  RdKGToolMenu.constants.RO_ULTIMATE_GROUP_SIZE_PERMAFROST = "永霜 团队尺寸"
  RdKGToolMenu.constants.RO_ULTIMATE_GROUP_SIZE_NEGATE = "魔法无效 团队尺寸"
  RdKGToolMenu.constants.RO_ULTIMATE_GROUP_SIZE_NEGATE_OFFENSIVE = "抑制领域 团队尺寸"
  RdKGToolMenu.constants.RO_ULTIMATE_GROUP_SIZE_NEGATE_COUNTER = "吸收领域 团队尺寸"
  RdKGToolMenu.constants.RO_ULTIMATE_GROUP_SIZE_NOVA = "新星 团队尺寸"
  RdKGToolMenu.constants.RO_ULTIMATE_DISPLAY_MODE = "显示模式"
  RdKGToolMenu.constants.RO_MAX_DISTANCE = "最大距离"
  RdKGToolMenu.constants.RO_SOUND_ENABLED = "启用音效"
  RdKGToolMenu.constants.RO_SELECTED_SOUND = "所选音效"
  RdKGToolMenu.constants.RO_HEADER_GROUPS = "|c4592FF资源概述(拆分)|r"
  RdKGToolMenu.constants.RO_GROUPS_ENABLED = "启用团队"
  RdKGToolMenu.constants.RO_GROUPS_MODE = " 模式"
  RdKGToolMenu.constants.RO_GROUPS_1_NAME = "团队 1 名字"
  RdKGToolMenu.constants.RO_GROUPS_2_NAME = "团队 2 名字"
  RdKGToolMenu.constants.RO_GROUPS_3_NAME = "团队 3 名字"
  RdKGToolMenu.constants.RO_GROUPS_4_NAME = "团队 4 名字"
  RdKGToolMenu.constants.RO_GROUPS_5_NAME = "团队 5 名字"
  RdKGToolMenu.constants.RO_GROUPS_1_ENABLED = "启用团队 1"
  RdKGToolMenu.constants.RO_GROUPS_2_ENABLED = "启用团队 2"
  RdKGToolMenu.constants.RO_GROUPS_3_ENABLED = "启用团队 3"
  RdKGToolMenu.constants.RO_GROUPS_4_ENABLED = "启用团队 4"
  RdKGToolMenu.constants.RO_GROUPS_5_ENABLED = "启用团队 5"
  RdKGToolMenu.constants.RO_GROUPS_1_DEFAULT = "伤害"
  RdKGToolMenu.constants.RO_GROUPS_2_DEFAULT = "支援"
  RdKGToolMenu.constants.RO_GROUPS_3_DEFAULT = "治疗"
  RdKGToolMenu.constants.RO_GROUPS_4_DEFAULT = "协同"
  RdKGToolMenu.constants.RO_GROUPS_5_DEFAULT = "未定义"
  RdKGToolMenu.constants.RO_GROUPS_PRIORITY = " 优先级:"
  RdKGToolMenu.constants.RO_GROUPS_GROUP = " 团队:"
  RdKGToolMenu.constants.RO_COLOR_GROUPS_EDGE_OUT_OF_COMBAT = "脱战边框"
  RdKGToolMenu.constants.RO_COLOR_GROUPS_EDGE_IN_COMBAT = "进战边框"
  RdKGToolMenu.constants.RO_SIZE = "尺寸"
  RdKGToolMenu.constants.RO_SPACING = "间距"
  RdKGToolMenu.constants.RO_SHARED_SETTING = "此资源概述设置（合并/拆分）是共享的。更改该值将同时更改两个模块中的值。通过调整其他（窗口）设置禁用模块功能。"

  --HP Damage Meter
  RdKGToolMenu.constants.HDM_HEADER = "|c4592FF治疗伤害量谱|r"
  RdKGToolMenu.constants.HDM_ENABLED = "启用"
  RdKGToolMenu.constants.HDM_PVP_ONLY = "仅PvP"
  RdKGToolMenu.constants.HDM_POSITION_FIXED = "固定位置"
  RdKGToolMenu.constants.HDM_WINDOW_ENABLED = "启用窗口"
  RdKGToolMenu.constants.HDM_USING_ALPHA = "使用透明"
  RdKGToolMenu.constants.HDM_USING_COLORS = "背景颜色"
  RdKGToolMenu.constants.HDM_USING_HIGHLIGHT_APPLICANT = "高亮自身"
  RdKGToolMenu.constants.HDM_AUTO_RESET = "脱战重置量谱"
  RdKGToolMenu.constants.HDM_SELECTED_VIEWMODE = "所选模式"
  RdKGToolMenu.constants.HDM_ALIVE_COLOR = "存活颜色"
  RdKGToolMenu.constants.HDM_DEAD_COLOR = "死亡颜色"
  RdKGToolMenu.constants.HDM_BACKGROUND_COLOR_HEALER = "治疗背景颜色"
  RdKGToolMenu.constants.HDM_BACKGROUND_COLOR_DD = "输出背景颜色"
  RdKGToolMenu.constants.HDM_BACKGROUND_COLOR_TANK = "坦克背景颜色"
  RdKGToolMenu.constants.HDM_BACKGROUND_COLOR_APPLICANT = "自身背景颜色"
  RdKGToolMenu.constants.HDM_SIZE = "尺寸"

  --Potion Overview
  RdKGToolMenu.constants.PO_HEADER = "|c4592FF药水概述|r"
  RdKGToolMenu.constants.PO_ENABLED = "启用"
  RdKGToolMenu.constants.PO_PVP_ONLY = "仅PvP"
  RdKGToolMenu.constants.PO_POSITION_FIXED = "固定位置"
  RdKGToolMenu.constants.PO_COLOR_BACKGROUND_NO_IMMOVABLE = "无 岿然不动 背景颜色"
  RdKGToolMenu.constants.PO_COLOR_BACKGROUND_IMMOVABLE_FULL = "满 岿然不动 背景颜色"
  RdKGToolMenu.constants.PO_COLOR_BACKGROUND_IMMOVABLE_LOW = "低 岿然不动 背景颜色"
  RdKGToolMenu.constants.PO_COLOR_PROGRESS_IMMOVABLE = "岿然不动冷却颜色"
  RdKGToolMenu.constants.PO_COLOR_CRAFTED_PROGRESS_POTION = "药水冷却颜色"
  RdKGToolMenu.constants.PO_COLOR_LABEL_IMMOVABLE = "岿然不动字符串颜色"
  RdKGToolMenu.constants.PO_COLOR_LABEL_POTION = "药水字符串颜色"
  RdKGToolMenu.constants.PO_COLOR_BACKDROP_IMMOVABLE = "岿然不动背景颜色"
  RdKGToolMenu.constants.PO_COLOR_BACKDROP_POTION = "药水背景颜色"
  RdKGToolMenu.constants.PO_SOUND_ENABLED = "启用音效"
  RdKGToolMenu.constants.PO_SELECTED_SOUND = "所选音效"

  --Detonation Tracker
  RdKGToolMenu.constants.DT_HEADER = "|c4592FF魔力引爆 / 虫爆 追踪器|r"
  RdKGToolMenu.constants.DT_ENABLED = "启用"
  RdKGToolMenu.constants.DT_PVP_ONLY = "仅PvP"
  RdKGToolMenu.constants.DT_POSITION_FIXED = "固定位置"
  RdKGToolMenu.constants.DT_FONT_COLOR_DETONATION = "魔力引爆: 字体颜色"
  RdKGToolMenu.constants.DT_PROGRESS_COLOR_DETONATION = "魔力引爆: 进度颜色"
  RdKGToolMenu.constants.DT_FONT_COLOR_SUBTERRANEAN_ASSAULT = "隐秘一击 1段: 字体颜色"
  RdKGToolMenu.constants.DT_PROGRESS_COLOR_SUBTERRANEAN_ASSAULT = "隐秘一击 1段: 进度颜色"
  RdKGToolMenu.constants.DT_FONT_COLOR_SUBTERRANEAN_ASSAULT2 = "隐秘一击 2段: 字体颜色"
  RdKGToolMenu.constants.DT_PROGRESS_COLOR_SUBTERRANEAN_ASSAULT2 = "隐秘一击 2段: 进度颜色"
  RdKGToolMenu.constants.DT_FONT_COLOR_DEEP_FISSURE = "深渊撕裂 1段: 字体颜色"
  RdKGToolMenu.constants.DT_PROGRESS_COLOR_DEEP_FISSURE = "深渊撕裂 1段: 进度颜色"
  RdKGToolMenu.constants.DT_FONT_COLOR_DEEP_FISSURE2 = "深渊撕裂 2段: 字体颜色"
  RdKGToolMenu.constants.DT_PROGRESS_COLOR_DEEP_FISSURE2 = "深渊撕裂 2段: 进度颜色"
  RdKGToolMenu.constants.DT_SIZE = "尺寸"
  RdKGToolMenu.constants.DT_MODE = "模式"
  RdKGToolMenu.constants.DT_SMOOTH_TRANSITION = "平滑过渡"

  --Group Beams
  RdKGToolMenu.constants.GB_HEADER = "|c4592FF团队光束|r"
  RdKGToolMenu.constants.GB_DESCRIPTION = "队员的光束取决于分配的职能。职能可以由组长指定，也可以由队员自己指定。"
  RdKGToolMenu.constants.GB_ENABLED = "启用"
  RdKGToolMenu.constants.GB_PVP_ONLY = "仅PvP"
  RdKGToolMenu.constants.GB_HIDE_WHEN_DEAD = "死亡时隐藏"
  RdKGToolMenu.constants.GB_SIZE = "尺寸"
  RdKGToolMenu.constants.GB_SELECTED_BEAM = "所选光束"
  RdKGToolMenu.constants.GB_ROLE_RAPID_ENABLED = "启用迅敏"
  RdKGToolMenu.constants.GB_ROLE_RAPID_COLOR = "迅敏颜色"
  RdKGToolMenu.constants.GB_ROLE_PURGE_ENABLED = "启用净化"
  RdKGToolMenu.constants.GB_ROLE_PURGE_COLOR = "净化颜色"
  RdKGToolMenu.constants.GB_ROLE_HEAL_ENABLED = "启用治疗"
  RdKGToolMenu.constants.GB_ROLE_HEAL_COLOR = "治疗颜色"
  RdKGToolMenu.constants.GB_ROLE_DD_ENABLED = "启用DD"
  RdKGToolMenu.constants.GB_ROLE_DD_COLOR = "DD颜色"
  RdKGToolMenu.constants.GB_ROLE_SYNERGY_ENABLED = "启用协同"
  RdKGToolMenu.constants.GB_ROLE_SYNERGY_COLOR = "协同颜色"
  RdKGToolMenu.constants.GB_ROLE_CC_ENABLED = "启用CC"
  RdKGToolMenu.constants.GB_ROLE_CC_COLOR = "CC颜色"
  RdKGToolMenu.constants.GB_ROLE_SUPPORT_ENABLED = "启用辅助"
  RdKGToolMenu.constants.GB_ROLE_SUPPORT_COLOR = "辅助颜色"
  RdKGToolMenu.constants.GB_ROLE_PLACEHOLDER_ENABLED = "启用未定义"
  RdKGToolMenu.constants.GB_ROLE_PLACEHOLDER_COLOR = "未定义颜色"
  RdKGToolMenu.constants.GB_ROLE_APPLICANT_ENABLED = "启用自身"
  RdKGToolMenu.constants.GB_ROLE_APPLICANT_COLOR = "自身颜色"

  --I See Dead People
  RdKGToolMenu.constants.ISDP_HEADER = "|c4592FF死亡玩家|r"
  RdKGToolMenu.constants.ISDP_ENABLED = "启用"
  RdKGToolMenu.constants.ISDP_PVP_ONLY = "仅PvP"
  RdKGToolMenu.constants.ISDP_SIZE = "尺寸"
  RdKGToolMenu.constants.ISDP_SELECTED_BEAM = "所选光束"
  RdKGToolMenu.constants.ISDP_COLOR_DEAD = "死亡 颜色"
  RdKGToolMenu.constants.ISDP_COLOR_BEING_RESURRECTED = "复活中 颜色"
  RdKGToolMenu.constants.ISDP_COLOR_RESURRECTED = "已复活 颜色"

  --Compass
  RdKGToolMenu.constants.COMPASS_HEADER = "|cFF8174罗盘设置|r"
  --YACS
  RdKGToolMenu.constants.YACS_HEADER = "|c4592FF额外罗盘|r"
  RdKGToolMenu.constants.YACS_CHK_ADDON_ENABLED = "启用"
  RdKGToolMenu.constants.YACS_CHK_PVP = "在PVP启用"
  RdKGToolMenu.constants.YACS_CHK_PVE = "在PVE启用"
  RdKGToolMenu.constants.YACS_CHK_COMBAT = "在战斗中启用"
  RdKGToolMenu.constants.YACS_CHK_MOVABLE = "可移动罗盘"
  RdKGToolMenu.constants.YACS_COLOR_COMPASS = "罗盘颜色"
  RdKGToolMenu.constants.YACS_COMPASS_SIZE = "罗盘尺寸"
  RdKGToolMenu.constants.YACS_COMPASS_SIZE_TOOLTIPE = "设置罗盘的尺寸"
  RdKGToolMenu.constants.YACS_COMPASS_STYLE = "风格"
  RdKGToolMenu.constants.YACS_COMPASS_STYLE_TOOLTIP = "选择你喜欢的罗盘风格"
  RdKGToolMenu.constants.YACS_RESTORE_DEFAULTS = "恢复默认设置"

  --SC
  RdKGToolMenu.constants.COMPASS_SC_HEADER = "|c4592FF简易罗盘|r"
  RdKGToolMenu.constants.COMPASS_SC_ENABLED = "启用"
  RdKGToolMenu.constants.COMPASS_SC_PVP = "在PVP启用"
  RdKGToolMenu.constants.COMPASS_SC_PVE = "在PVE启用"
  RdKGToolMenu.constants.COMPASS_SC_POSITION_FIXED = "固定位置"
  RdKGToolMenu.constants.COMPASS_SC_COLOR_BACKDROP = "背景颜色"
  RdKGToolMenu.constants.COMPASS_SC_COLOR_DIRECTION_NORTH = "北 颜色"
  RdKGToolMenu.constants.COMPASS_SC_COLOR_DIRECTION_SOUTH = "南 颜色"
  RdKGToolMenu.constants.COMPASS_SC_COLOR_DIRECTION_WEST = "西 颜色"
  RdKGToolMenu.constants.COMPASS_SC_COLOR_DIRECTION_EAST = "东 颜色"
  RdKGToolMenu.constants.COMPASS_SC_COLOR_DIRECTION_OTHERS = "其他 颜色"
  RdKGToolMenu.constants.COMPASS_SC_COLOR_MARKERS = "彩色标记"

  --Toolbox
  RdKGToolMenu.constants.TOOLBOX_HEADER = "|cFF8174工具包设置|r"
  --Siege Merchant
  RdKGToolMenu.constants.SM_HEADER = "|c4592FF攻城武器商人|r"
  RdKGToolMenu.constants.SM_ENABLED = "启用"
  RdKGToolMenu.constants.SM_SEND_CHAT_MESSAGES = "输出聊天框信息"
  RdKGToolMenu.constants.SM_ITEM_BALLISTA_FIRE = "火焰箭弩车"
  RdKGToolMenu.constants.SM_ITEM_BALLISTA_STONE = "弩车"
  RdKGToolMenu.constants.SM_ITEM_BALLISTA_LIGHTNING = "闪电弩车"
  RdKGToolMenu.constants.SM_ITEM_TREBUCHET_FIRE = "火罐投石车"
  RdKGToolMenu.constants.SM_ITEM_TREBUCHET_STONE = "投石车"
  RdKGToolMenu.constants.SM_ITEM_TREBUCHET_ICE = "冰球投石车"
  RdKGToolMenu.constants.SM_ITEM_CATAPULT_MEATBAG = "肉袋投弹车"
  RdKGToolMenu.constants.SM_ITEM_CATAPULT_OIL = "油罐投弹车"
  RdKGToolMenu.constants.SM_ITEM_CATAPULT_SCATTERSHOT = "碎石投弹车"
  RdKGToolMenu.constants.SM_ITEM_OIL = "火油"
  RdKGToolMenu.constants.SM_ITEM_CAMP = "前线营地"
  RdKGToolMenu.constants.SM_ITEM_RAM = "攻城锤"
  RdKGToolMenu.constants.SM_ITEM_KEEP_RECALL = "城堡传送石"
  RdKGToolMenu.constants.SM_MIN = "最小值"
  RdKGToolMenu.constants.SM_MAX = "最大值"
  RdKGToolMenu.constants.SM_PAYMENT_OPTIONS = "支付选项"
  RdKGToolMenu.constants.SM_ITEM_REPAIR_ALL = "西罗帝尔修理包"
  RdKGToolMenu.constants.SM_ITEM_POT_RED = "联盟生命药水"
  RdKGToolMenu.constants.SM_ITEM_POT_GREEN = "联盟战斗药水"
  RdKGToolMenu.constants.SM_ITEM_POT_BLUE = "联盟法术药水"

  --Recharger
  RdKGToolMenu.constants.RECHARGER_HEADER = "|c4592FF充能|r"
  RdKGToolMenu.constants.RECHARGER_ENABLED = "启用"
  RdKGToolMenu.constants.RECHARGER_SEND_CHAT_MESSAGES = "输出聊天框信息"
  RdKGToolMenu.constants.RECHARGER_PERCENT = "最小充能百分比"
  RdKGToolMenu.constants.RECHARGER_SOULGEMS_EMPTY_WARNING = "灵魂石耗尽 警告"
  RdKGToolMenu.constants.RECHARGER_SOULGEMS_THRESHOLD_WARNING = "灵魂石即将耗尽 警告"
  RdKGToolMenu.constants.RECHARGER_SOULGEMS_THRESHOLD_SLIDER = "灵魂石 阈值"
  RdKGToolMenu.constants.RECHARGER_SOULGEMS_EMPTY_LOGIN_WARNING = "登录时 灵魂石耗尽 警告"
  RdKGToolMenu.constants.RECHARGER_INTERVAL = "检查间隔"

  --Keep Claimer
  RdKGToolMenu.constants.KC_HEADER = "|c4592FF城堡所有者|r"
  RdKGToolMenu.constants.KC_ENABLED = "启用"
  RdKGToolMenu.constants.KC_GUILD_1 = "优先级 1"
  RdKGToolMenu.constants.KC_GUILD_2 = "优先级 2"
  RdKGToolMenu.constants.KC_GUILD_3 = "优先级 3"
  RdKGToolMenu.constants.KC_GUILD_4 = "优先级 4"
  RdKGToolMenu.constants.KC_GUILD_5 = "优先级 5"
  RdKGToolMenu.constants.KC_CLAIM_KEEPS = "宣称 城堡所有权"
  RdKGToolMenu.constants.KC_CLAIM_OUTPOSTS = "宣称 前哨所有权"
  RdKGToolMenu.constants.KC_CLAIM_RESOURCES = "宣称 资源点所有权"

  --Buff Food Tracker
  RdKGToolMenu.constants.BFT_HEADER = "|c4592FF食物增益追踪|r"
  RdKGToolMenu.constants.BFT_ENABLED = "启用"
  RdKGToolMenu.constants.BFT_PVP_ONLY = "仅PvP"
  RdKGToolMenu.constants.BFT_POSITION_FIXED = "固定位置"
  RdKGToolMenu.constants.BFT_SIZE = "警告尺寸"
  RdKGToolMenu.constants.BFT_COLOR = "警告颜色"
  RdKGToolMenu.constants.BFT_SOUND_ENABLED = "启用音效"
  RdKGToolMenu.constants.BFT_SELECTED_SOUND = "所选音效"
  RdKGToolMenu.constants.BFT_WARNING_TIMER = "警告计时器"

  --Cyrodiil Log
  RdKGToolMenu.constants.CL_HEADER = "|c4592FF西罗帝尔 记录|r"
  RdKGToolMenu.constants.CL_ENABLED = "启用"
  RdKGToolMenu.constants.CL_GUILD_CLAIM_ENABLED = "公会宣称所有权 信息"
  RdKGToolMenu.constants.CL_GUILD_LOST_ENABLED = "公会丢失所有权 信息"
  RdKGToolMenu.constants.CL_UA_ENABLED = "处于攻击 信息"
  RdKGToolMenu.constants.CL_UA_LOST_ENABLED = "不再处于攻击 信息"
  RdKGToolMenu.constants.CL_KEEP_ALLIANCE_CHANGED_ENABLED = "所属联盟变更 信息"
  RdKGToolMenu.constants.CL_TICK_DEFENSE = "防御奖励 信息"
  RdKGToolMenu.constants.CL_TICK_OFFENSE = "进攻奖励 信息"
  RdKGToolMenu.constants.CL_SCROLL_NOTIFICATIONS = "上古卷轴 信息"
  RdKGToolMenu.constants.CL_EMPEROR_ENABLED = "皇帝 信息"
  RdKGToolMenu.constants.CL_QUEST_ENABLED = "任务 信息"
  RdKGToolMenu.constants.CL_BATTLEGROUND_ENABLED = "战场 信息"
  RdKGToolMenu.constants.CL_DAEDRIC_ARTIFACT_ENABLED = "神器武器 信息"

  --Cyrodiil Status
  RdKGToolMenu.constants.CS_HEADER = "|c4592FF西罗帝尔 状态|r"
  RdKGToolMenu.constants.CS_ENABLED = "启用"
  RdKGToolMenu.constants.CS_POSITION_FIXED = "固定位置"
  RdKGToolMenu.constants.CS_HIDE_ON_WORLDMAP = "大地图界面时隐藏"
  RdKGToolMenu.constants.CS_SHOW_FLAGS = "显示 旗帜"
  RdKGToolMenu.constants.CS_SHOW_SIEGES = "显示 攻城器械数量"
  RdKGToolMenu.constants.CS_SHOW_OWNER_CHANGES = "显示 城堡占领计时器"
  RdKGToolMenu.constants.CS_SHOW_ACTION_TIMERS = "显示 行动计时器"
  RdKGToolMenu.constants.CS_COLOR_DEFAULT = "默认颜色"
  RdKGToolMenu.constants.CS_COLOR_COOLDOWN = "冷却时间颜色"
  RdKGToolMenu.constants.CS_COLOR_FLIPS_POSITIVE = "正向 旗帜占领 颜色"
  RdKGToolMenu.constants.CS_COLOR_FLIPS_NEGATIVE = "负向 旗帜占领 颜色"
  RdKGToolMenu.constants.CS_SHOW_KEEPS = "显示 城堡"
  RdKGToolMenu.constants.CS_SHOW_OUTPOSTS = "显示 前哨"
  RdKGToolMenu.constants.CS_SHOW_RESOURCES = "显示 资源点"
  RdKGToolMenu.constants.CS_SHOW_VILLAGES = "显示 城镇"
  RdKGToolMenu.constants.CS_SHOW_TEMPLES = "显示 神殿"
  RdKGToolMenu.constants.CS_SHOW_DESTRUCTIBLES = "显示 可破坏物"

  --Enhancements
  RdKGToolMenu.constants.ENHANCE_HEADER = "|c4592FF功能增强|r"
  RdKGToolMenu.constants.ENHANCE_QUEST_TRACKER_ENABLED = "禁用 任务追踪"
  RdKGToolMenu.constants.ENHANCE_QUEST_TRACKER_PVP_ONLY = "仅PVP中生效"
  RdKGToolMenu.constants.ENHANCE_COMPASS_TWEAKS_ENABLED = "启用 罗盘增强"
  RdKGToolMenu.constants.ENHANCE_COMPASS_PVP_ONLY = "仅PVP中生效"
  RdKGToolMenu.constants.ENHANCE_COMPASS_HIDDEN = "隐藏罗盘"
  RdKGToolMenu.constants.ENHANCE_COMPASS_WIDTH = "罗盘宽度"
  RdKGToolMenu.constants.ENHANCE_ALERTS_TWEAKS_ENABLED = "启用 警告增强"
  RdKGToolMenu.constants.ENHANCE_ALERTS_PVP_ONLY = "仅PVP中生效"
  RdKGToolMenu.constants.ENHANCE_ALERTS_HIDDEN = "隐藏警告"
  RdKGToolMenu.constants.ENHANCE_ALERTS_POSITION = "警告位置"
  RdKGToolMenu.constants.ENHANCE_ALERTS_COLOR = "警告颜色"
  RdKGToolMenu.constants.ENHANCE_RESPAWN_TIMER_ENABLED = "启用 重生计时器"

  --Respawner
  RdKGToolMenu.constants.RESPAWNER_HEADER = "|c4592FF重生点|r"
  RdKGToolMenu.constants.RESPAWNER_ENABLED = "启用"
  RdKGToolMenu.constants.RESPAWNER_RESTRICTED_PORT = "范围限制"

  --Camp Preview
  RdKGToolMenu.constants.CP_HEADER = "|c4592FF前线营地预览|r"
  RdKGToolMenu.constants.CP_ENABLED = "启用"

  --Synergy Prevention
  RdKGToolMenu.constants.SP_HEADER = "|c4592FF协同限制|r"
  RdKGToolMenu.constants.SP_ENABLED = "启用"
  RdKGToolMenu.constants.SP_PVP_ONLY = "仅PvP生效"
  RdKGToolMenu.constants.SP_WINDOW_ENABLED = "启用窗口"
  RdKGToolMenu.constants.SP_POSITION_FIXED = "固定位置"
  RdKGToolMenu.constants.SP_MODE = "模式"
  RdKGToolMenu.constants.SP_MAX_DISTANCE = "最大距离"
  RdKGToolMenu.constants.SP_SYNERGY_COMBUSTION_SHARD = "阻止 死灵法球 协同"
  RdKGToolMenu.constants.SP_SYNERGY_TALONS = "阻止 黑暗利爪 协同"
  RdKGToolMenu.constants.SP_SYNERGY_NOVA = "阻止 新星 协同"
  RdKGToolMenu.constants.SP_SYNERGY_BLOOD_ALTAR = "阻止 鲜血祭坛 协同"
  RdKGToolMenu.constants.SP_SYNERGY_STANDARD = "阻止 龙骑士战旗 协同"
  RdKGToolMenu.constants.SP_SYNERGY_PURGE = "阻止 净化仪式 协同"
  RdKGToolMenu.constants.SP_SYNERGY_BONE_SHIELD = "阻止 白骨盾牌 协同"
  RdKGToolMenu.constants.SP_SYNERGY_FLOOD_CONDUIT = "阻止 电光飞溅 协同"
  RdKGToolMenu.constants.SP_SYNERGY_ATRONACH = "阻止 风暴侍灵 协同"
  RdKGToolMenu.constants.SP_SYNERGY_TRAPPING_WEBS = "阻止 囚困之网 协同"
  RdKGToolMenu.constants.SP_SYNERGY_RADIATE = "阻止 内心之火 协同"
  RdKGToolMenu.constants.SP_SYNERGY_CONSUMING_DARKNESS = "阻止 吞噬黑暗 协同"
  RdKGToolMenu.constants.SP_SYNERGY_SOUL_LEECH = "阻止 灵魂粉碎 协同"
  RdKGToolMenu.constants.SP_SYNERGY_WARDEN_HEALING = "阻止 治疗之种 协同"
  RdKGToolMenu.constants.SP_SYNERGY_GRAVE_ROBBER = "阻止 埋骨地 协同"
  RdKGToolMenu.constants.SP_SYNERGY_PURE_AGONY = "阻止 痛苦图腾 协同"
  RdKGToolMenu.constants.SP_SYNERGY_ICY_ESCAPE = "阻止 冰冻退路 协同"
  RdKGToolMenu.constants.SP_SYNERGY_SANGUINE_BURST = "阻止 桑吉恩爆发（荆棘夫人） 协同"
  RdKGToolMenu.constants.SP_SYNERGY_HEED_THE_CALL = "阻止 听从呼唤（克拉伦格之吼） 协同"
  RdKGToolMenu.constants.SP_SYNERGY_URSUS = "阻止 乌瑟丝祝福（乌瑟丝的避风港） 协同"
  RdKGToolMenu.constants.SP_SYNERGY_GRYPHON = "阻止 狮鹫劫掠（狮鹫劫掠） 协同"
  RdKGToolMenu.constants.SP_SYNERGY_RUNEBREAK = "阻止 瑕疵之环 协同"
  RdKGToolMenu.constants.SP_SYNERGY_PASSAGE = "阻止 多界通道 协同"

  --Synergy Overview
  RdKGToolMenu.constants.SO_HEADER = "|c4592FF协同概述|r"
  RdKGToolMenu.constants.SO_ENABLED = "启用"
  RdKGToolMenu.constants.SO_WINDOW_ENABLED = "启用窗口"
  RdKGToolMenu.constants.SO_PVP_ONLY = "仅PvP生效"
  RdKGToolMenu.constants.SO_POSITION_FIXED = "固定位置"
  RdKGToolMenu.constants.SO_DISPLAY_MODE = "显示模式"
  RdKGToolMenu.constants.SO_TABLE_MODE = "列表模式"
  RdKGToolMenu.constants.SO_SIZE = "尺寸"
  RdKGToolMenu.constants.SO_COLOR_SYNERGY_BACKDROP = "协同背景颜色"
  RdKGToolMenu.constants.SO_COLOR_SYNERGY_PROGRESS = "协同进度颜色"
  RdKGToolMenu.constants.SO_COLOR_SYNERGY = "协同颜色"
  RdKGToolMenu.constants.SO_COLOR_BACKGROUND = "背景颜色"
  RdKGToolMenu.constants.SO_COLOR_TEXT = "文字颜色"
  RdKGToolMenu.constants.SO_SYNERGY_COMBUSTION_SHARD = "阻止 死灵法球 协同"
  RdKGToolMenu.constants.SO_SYNERGY_TALONS = "显示 黑暗利爪 协同"
  RdKGToolMenu.constants.SO_SYNERGY_NOVA = "显示 新星 协同"
  RdKGToolMenu.constants.SO_SYNERGY_BLOOD_ALTAR = "显示 鲜血祭坛 协同"
  RdKGToolMenu.constants.SO_SYNERGY_STANDARD = "显示 龙骑士战旗 协同"
  RdKGToolMenu.constants.SO_SYNERGY_PURGE = "显示 净化仪式 协同"
  RdKGToolMenu.constants.SO_SYNERGY_BONE_SHIELD = "显示 白骨盾牌 协同"
  RdKGToolMenu.constants.SO_SYNERGY_FLOOD_CONDUIT = "显示 电光飞溅 协同"
  RdKGToolMenu.constants.SO_SYNERGY_ATRONACH = "显示 风暴侍灵 协同"
  RdKGToolMenu.constants.SO_SYNERGY_TRAPPING_WEBS = "显示 囚困之网 协同"
  RdKGToolMenu.constants.SO_SYNERGY_RADIATE = "显示 内心之火 协同"
  RdKGToolMenu.constants.SO_SYNERGY_CONSUMING_DARKNESS = "显示 吞噬黑暗 协同"
  RdKGToolMenu.constants.SO_SYNERGY_SOUL_LEECH = "显示 灵魂粉碎 协同"
  RdKGToolMenu.constants.SO_SYNERGY_WARDEN_HEALING = "显示 治疗之种 协同"
  RdKGToolMenu.constants.SO_SYNERGY_GRAVE_ROBBER = "显示 埋骨地 协同"
  RdKGToolMenu.constants.SO_SYNERGY_PURE_AGONY = "显示 痛苦图腾 协同"
  RdKGToolMenu.constants.SO_SYNERGY_ICY_ESCAPE = "显示 冰冻退路 协同"
  RdKGToolMenu.constants.SO_SYNERGY_SANGUINE_BURST = "显示 桑吉恩爆发（荆棘夫人） 协同"
  RdKGToolMenu.constants.SO_SYNERGY_HEED_THE_CALL = "显示 听从呼唤（克拉伦格之吼） 协同"
  RdKGToolMenu.constants.SO_SYNERGY_URSUS = "显示 乌瑟丝祝福（乌瑟丝的避风港） 协同"
  RdKGToolMenu.constants.SO_SYNERGY_GRYPHON = "显示 狮鹫劫掠（狮鹫劫掠） 协同"
  RdKGToolMenu.constants.SO_SYNERGY_RUNEBREAK = "显示 瑕疵之环 协同"
  RdKGToolMenu.constants.SO_SYNERGY_PASSAGE = "显示 多界通道 协同"
  RdKGToolMenu.constants.SO_REDUCED_SPACING = "缩小间距"

  --Role Assignment
  RdKGToolMenu.constants.RA_HEADER = "|c4592FF职能分配|r"
  RdKGToolMenu.constants.RA_ENABLED = "启用"
  RdKGToolMenu.constants.RA_OVERRIDE_ALLOWED = "允许覆盖"
  RdKGToolMenu.constants.RA_ROLE = "角色职能"

  --Campaign Joiner
  RdKGToolMenu.constants.CAJ_HEADER = "|c4592FF自动加入战役|r"
  RdKGToolMenu.constants.CAJ_ENABLED = "启用"

  --AvA Messages
  RdKGToolMenu.constants.AM_HEADER = "|c4592FF阵营对战 信息|r"
  RdKGToolMenu.constants.AM_PVP_ONLY = "仅PvP生效"
  RdKGToolMenu.constants.AM_CORONATE_EMPEROR = "皇帝加冕 信息"
  RdKGToolMenu.constants.AM_DEPOSE_EMPEROR = "废黜皇帝 信息"
  RdKGToolMenu.constants.AM_KEEP_GATE = "城堡大门 信息"
  RdKGToolMenu.constants.AM_ARTIFACT_CONTROL = "神器 信息"
  RdKGToolMenu.constants.AM_REVENGE_KILL = "复仇 信息"
  RdKGToolMenu.constants.AM_AVENGE_KILL = "为友方复仇 信息"
  RdKGToolMenu.constants.AM_QUEST_ADDED = "任务添加 信息"
  RdKGToolMenu.constants.AM_QUEST_COMPLETE = "任务完成 信息"
  RdKGToolMenu.constants.AM_QUEST_CONDITION_COUNTER_CHANGED = "任务计数变化 信息"
  RdKGToolMenu.constants.AM_QUEST_CONDITION_CHANGED = "任务条件 信息"
  RdKGToolMenu.constants.AM_DAEDRIC_ARTIFACT_OBJECTIVE_SPAWNED_BUT_NOT_REVEALED = "神器生成 信息"
  RdKGToolMenu.constants.AM_DAEDRIC_ARTIFACT_OBJECTIVE_STATE_CHANGED = "神器状态 信息"

  --Util
  RdKGToolMenu.constants.UTIL_HEADER = "|cFF8174通用设置|r"

  --Util Networking
  RdKGToolMenu.constants.NET_HEADER = "|c4592FF网络|r"
  RdKGToolMenu.constants.NET_ENABLED = "启用"
  RdKGToolMenu.constants.NET_URGENT_MODE = "紧急模式"
  RdKGToolMenu.constants.NET_INTERVAL = "更新间隔"

  --Util Group
  RdKGToolMenu.constants.UTIL_GROUP_HEADER = "|c4592FF队伍|r"
  RdKGToolMenu.constants.UTIL_GROUP_DISPLAY_TYPE = "显示类型"

  --Util Alliance Color
  RdKGToolMenu.constants.AC_HEADER = "|c4592FF联盟颜色|r"
  RdKGToolMenu.constants.AC_DC_COLOR = "DC 颜色"
  RdKGToolMenu.constants.AC_EP_COLOR = "EP 颜色"
  RdKGToolMenu.constants.AC_AD_COLOR = "AD 颜色"
  RdKGToolMenu.constants.AC_NO_ALLIANCE_COLOR = "无联盟颜色"

  --Chat System
  RdKGToolMenu.constants.CHAT_HEADER = "|c4592FF聊天系统|r"
  RdKGToolMenu.constants.CHAT_ENABLED = "启用"
  RdKGToolMenu.constants.CHAT_SELECTED_TAB = "选择的聊天选项卡"
  RdKGToolMenu.constants.CHAT_REFRESH = "刷新"
  RdKGToolMenu.constants.CHAT_WARNINGS_ONLY = "显示警告"
  RdKGToolMenu.constants.CHAT_DEBUG_ONLY = "显示Debug"
  RdKGToolMenu.constants.CHAT_NORMAL_ONLY = "显示普通"
  RdKGToolMenu.constants.CHAT_PREFIX_ENABLED = "启用前缀"
  RdKGToolMenu.constants.CHAT_RDK_PREFIX_ENABLED = "启用RdK前缀"
  RdKGToolMenu.constants.CHAT_COLOR_PREFIX = "前缀颜色"
  RdKGToolMenu.constants.CHAT_COLOR_BODY = "正文颜色"
  RdKGToolMenu.constants.CHAT_COLOR_WARNING = "警告颜色"
  RdKGToolMenu.constants.CHAT_COLOR_DEBUG = "Debug颜色"
  RdKGToolMenu.constants.CHAT_COLOR_PLAYER = "玩家颜色"
  RdKGToolMenu.constants.CHAT_ADD_TIMESTAMP = "添加时间戳"
  RdKGToolMenu.constants.CHAT_HIDE_SECONDS = "隐藏时间戳的秒数"
  RdKGToolMenu.constants.CHAT_COLOR_TIMESTAMP = "时间戳颜色"

  --Class Role
  RdKGToolMenu.constants.CR_HEADER = "|cFF8174职业 / 职能|r"

  --BG Templar Heal
  RdKGToolMenu.constants.CRBG_TPHEAL_HEADER = "|c4592FF圣骑治疗（队伍）|r"
  RdKGToolMenu.constants.CRBG_TPHEAL_ENABLED = "启用"
  RdKGToolMenu.constants.CRBG_TPHEAL_PVP_ONLY = "仅PvP"
  RdKGToolMenu.constants.CRBG_TPHEAL_POSITION_FIXED = "固定位置"
  RdKGToolMenu.constants.CRBG_TPHEAL_COLOR_PROGRESS_DAMAGE = "伤害进度"
  RdKGToolMenu.constants.CRBG_TPHEAL_COLOR_LABEL_DAMAGE = "伤害标签"
  RdKGToolMenu.constants.CRBG_TPHEAL_COLOR_PROGRESS_HEALING = "治疗进度"
  RdKGToolMenu.constants.CRBG_TPHEAL_COLOR_LABEL_HEALING = "治疗标签"
  RdKGToolMenu.constants.CRBG_TPHEAL_COLOR_PROGRESS_RECOVERY = "回复进度"
  RdKGToolMenu.constants.CRBG_TPHEAL_COLOR_LABEL_RECOVERY = "回复标签"
  RdKGToolMenu.constants.CRBG_TPHEAL_COLOR_LABEL_COOLDOWN = "冷却标签"

  --AddOn Integration
  RdKGToolMenu.constants.ADDON_INTEGRATION_HEADER = "|cFF8174插件集成设置|r"
  --Miats Pvp Alerts
  RdKGToolMenu.constants.MPAI_HEADER = "|c4592FFMiat Pvp Alerts|r"
  RdKGToolMenu.constants.MPAI_ENABLED = "登陆后清除（启用）"
  RdKGToolMenu.constants.MPAI_ONPLAYERACTIVATION = "加载界面后清除"
  RdKGToolMenu.constants.MPAI_CLEAR_VARS = "清除变量"

  --Admin
  RdKGToolMenu.constants.ADMIN_HEADER = "|cFF8174管理设置|r"
  --Group Share
  RdKGToolMenu.constants.ADMIN_GROUP_SHARE_HEADER = "|c4592FF团队共享|r"
  RdKGToolMenu.constants.ADMIN_GROUP_SHARE_ENABLED = "启用"
  RdKGToolMenu.constants.ADMIN_GROUP_SHARE_WARNING = "|cFF0000启用此功能将允许任何公会的 1 至 3 级成员查询允许的配置|r"
  RdKGToolMenu.constants.ADMIN_GROUP_SHARE_ALLOW_CLIENT_CONFIGURATION = "允许客户端配置"
  RdKGToolMenu.constants.ADMIN_GROUP_SHARE_ALLOW_ADDON_CONFIGURATION = "允许插件配置"
  RdKGToolMenu.constants.ADMIN_GROUP_SHARE_ALLOW_STATS = "允许状态"
  RdKGToolMenu.constants.ADMIN_GROUP_SHARE_ALLOW_SKILLS = "允许技能"
  RdKGToolMenu.constants.ADMIN_GROUP_SHARE_ALLOW_EQUIPMENT = "允许装备"
  RdKGToolMenu.constants.ADMIN_GROUP_SHARE_ALLOW_CP = "允许CP"

  --Base
  --Crown
  RdKGToolCrown.constants = RdKGToolCrown.constants or {}
  RdKGToolCrown.constants.PAPA_CROWN_DETECTED = "检测到Papa Crown插件，RDK皇冠设置不会应用"
  RdKGToolCrown.constants.SANCTS_ULTIMATE_ORGANIZER_DETECTED = "检测到Sancts Ultimate Organizer插件，RDK皇冠设置不会应用"
  RdKGToolCrown.constants.CROWN_OF_CYRODIIL_DETECTED = "检测到Crown of Cyrodiil插件，RDK皇冠设置不会应用"
  RdKGToolCrown.config.crowns[1].name = "皇冠: 标准"
  RdKGToolCrown.config.crowns[2].name = "箭头: 白"
  RdKGToolCrown.config.crowns[3].name = "箭头: 蓝"
  RdKGToolCrown.config.crowns[4].name = "箭头: 亮蓝"
  RdKGToolCrown.config.crowns[5].name = "箭头: 黄"
  RdKGToolCrown.config.crowns[6].name = "箭头: 亮绿"
  RdKGToolCrown.config.crowns[7].name = "箭头: 红"
  RdKGToolCrown.config.crowns[8].name = "箭头: 粉"
  RdKGToolCrown.config.crowns[9].name = "箭头: 白"
  RdKGToolCrown.config.crowns[10].name = "RdK: 白"

  --Auto Invite
  RdKGToolAI.constants = RdKGToolAI.constants or {}
  RdKGToolAI.constants.AI_MENU_NAME = "自动邀请"
  RdKGToolAI.constants.AI_ENABLED = "启用"
  RdKGToolAI.constants.AI_INVITE_TEXT = "邀请关键词"
  RdKGToolAI.constants.AI_SENT_INVITE_TO = "向 |c%s%s|c%s|r 发送邀请"
  RdKGToolAI.constants.AI_NOT_LEADER_SEND_TO = "未向 |r |c%s%s|c%s 发送邀请，你并非队长|r"
  RdKGToolAI.constants.AI_FULL_GROUP = "未发送邀请，队伍已满"
  RdKGToolAI.constants.AI_REQUIREMENTS_NOT_MET = "未向 |r |c%s%s |c%s 发送邀请，不满足条件|r"
  RdKGToolAI.constants.AI_AUTO_KICK_MESSAGE = "队员 |r |c%s%s|r |c%s 将被移出队伍|r"
  RdKGToolAI.constants.TOGGLE_AI = "切换自动邀请"
  RdKGToolAI.constants.AI_ENABLED_TRUE = "激活 自动邀请"
  RdKGToolAI.constants.AI_ENABLED_FALSE = "关闭 自动邀请"
  RdKGToolAI.constants.AI_MEMBER_LEFT = "队员 |r |c%s%s|r |c%s 已离开队伍"

  --Follow The Crown Visual
  RdKGToolFtcv.textures[1].name = "箭头 1"
  RdKGToolFtcv.textures[2].name = "箭头 2"
  RdKGToolFtcv.textures[3].name = "箭头 3"
  RdKGToolFtcv.textures[4].name = "箭头 4"
  RdKGToolFtcv.textures[5].name = "箭头 5"
  RdKGToolFtcv.textures[6].name = "箭头 6"
  RdKGToolFtcv.textures[7].name = "箭头 7"
  RdKGToolFtcv.textures[8].name = "箭头 8"

  --Follow The Crown Warnings
  RdKGToolFtcw.constants = RdKGToolFtcw.constants or {}
  RdKGToolFtcw.constants.FTCW_MAX_DISTANCE ="已达最大距离!!!"

  --Resource Overview
  RdKGToolOverview.config.ultimateModes = RdKGToolOverview.config.ultimateModes or {}
  RdKGToolOverview.config.ultimateModes[RdKGToolOverview.constants.ultimateModes.ORDER_BY_READINESS] = "准备情况"
  RdKGToolOverview.config.ultimateModes[RdKGToolOverview.constants.ultimateModes.ORDER_BY_NAME] = "名称"
  RdKGToolOverview.constants.BOOM = "BOOM"
  RdKGToolOverview.constants.TOGGLE_BOOM = "发送BOOM"
  RdKGToolOverview.constants.IDENENTIFIER_DESTRUCTION = "辐光毁灭"
  RdKGToolOverview.constants.IDENENTIFIER_STORM = "冰雨风暴"
  RdKGToolOverview.constants.IDENENTIFIER_NEGATE = "魔法无效"
  RdKGToolOverview.constants.IDENENTIFIER_NOVA = "新星"
  RdKGToolOverview.config.groupsModes = RdKGToolOverview.config.groupsModes or {}
  RdKGToolOverview.config.groupsModes[RdKGToolOverview.constants.groupsModes.MODE_PRIORITY_NAME] = "优先级 - 名称"
  RdKGToolOverview.config.groupsModes[RdKGToolOverview.constants.groupsModes.MODE_PRIORITY_PERCENT] = "优先级 - 百分比"
  RdKGToolOverview.config.groupsModes[RdKGToolOverview.constants.groupsModes.MODE_PERCENT] = "百分比"
  RdKGToolOverview.config.displayModes = RdKGToolOverview.config.displayModes or {}
  RdKGToolOverview.config.displayModes[RdKGToolOverview.constants.displayModes.CLASSIC] = "经典"
  RdKGToolOverview.config.displayModes[RdKGToolOverview.constants.displayModes.SWIMLANES] = "泳道"

  --Healing / Damage Meter
  RdKGToolHdm.constants = RdKGToolHdm.constants or {}
  RdKGToolHdm.constants.TITLE_HEALING = "治疗"
  RdKGToolHdm.constants.TITLE_DAMAGE = "输出"
  RdKGToolHdm.constants.viewModes = RdKGToolHdm.constants.viewModes or {}
  RdKGToolHdm.constants.viewModes[RdKGToolHdm.constants.VIEWMODE_BOTH] = "两者"
  RdKGToolHdm.constants.viewModes[RdKGToolHdm.constants.VIEWMODE_HEALING] = "治疗"
  RdKGToolHdm.constants.viewModes[RdKGToolHdm.constants.VIEWMODE_DAMAGE] = "输出"
  RdKGToolHdm.constants.viewModes[RdKGToolHdm.constants.VIEWMODE_BOTH_ON_TOP] = "两者 (纵向)"
  RdKGToolHdm.constants.RESET_COUNTER = "重置计数器"

  --Detonation Tracker
  RdKGToolDt.constants.modes = RdKGToolDt.constants.modes or {}
  RdKGToolDt.constants.modes[RdKGToolDt.constants.MODE_BOTH] = "两者"
  RdKGToolDt.constants.modes[RdKGToolDt.constants.MODE_DETONATION] = "魔力引爆"
  RdKGToolDt.constants.modes[RdKGToolDt.constants.MODE_SHALK] = "虫爆"

  --I See Dead People
  RdKGToolIsdp.constants = RdKGToolIsdp.constants or {}
  RdKGToolIsdp.constants.BEAM_SKULL_USING_BUFFER = "骷髅"
  RdKGToolIsdp.constants.BEAM_SKULL_NOT_USING_BUFFER = "骷髅 (无Buffer)"

  --Compass
  --YACS
  RdKGToolYacs.compasses[1].name = "标准"
  RdKGToolYacs.compasses[2].name = "N极增大"
  RdKGToolYacs.compasses[3].name = "细线"
  RdKGToolYacs.compasses[4].name = "N极下划线"
  RdKGToolYacs.compasses[5].name = "N极下划线 粗体"
  RdKGToolYacs.compasses[6].name = "涂鸦"
  RdKGToolYacs.compasses[7].name = "带圈 1"
  RdKGToolYacs.compasses[8].name = "带圈 2"
  RdKGToolYacs.compasses[9].name = "菱形 1"
  RdKGToolYacs.compasses[10].name = "菱形 2"
  RdKGToolYacs.compasses[11].name = "圆点 1"
  RdKGToolYacs.compasses[12].name = "圆点 2"
  RdKGToolYacs.compasses[13].name = "花体 1"
  RdKGToolYacs.compasses[14].name = "花体 2"
  RdKGToolYacs.compasses[15].name = "大箭头 1"
  RdKGToolYacs.compasses[16].name = "大箭头 2"
  RdKGToolYacs.compasses[17].name = "针 1"
  RdKGToolYacs.compasses[18].name = "针 2"
  RdKGToolYacs.compasses[19].name = "小箭头 1"
  RdKGToolYacs.compasses[20].name = "小箭头 2"
  RdKGToolYacs.compasses[21].name = "预设 1"
  RdKGToolYacs.compasses[22].name = "预设 2"
  RdKGToolYacs.compasses[23].name = "预设 3"
  RdKGToolYacs.compasses[24].name = "预设 4"
  RdKGToolYacs.config.constants.TOGGLE_YACS = "切换罗盘"

  --SC
  RdKGToolSC.constants = RdKGToolSC.constants or {}
  RdKGToolSC.constants.NORTH = "N"
  RdKGToolSC.constants.NORTH_EAST = "NE"
  RdKGToolSC.constants.EAST = "E"
  RdKGToolSC.constants.SOUTH_EAST = "SE"
  RdKGToolSC.constants.SOUTH = "S"
  RdKGToolSC.constants.SOUTH_WEST = "SW"
  RdKGToolSC.constants.WEST = "W"
  RdKGToolSC.constants.NORTH_WEST = "NW"

  --Toolbox
  --Siege Merchant
  RdKGToolSm.paymentOptions = RdKGToolSm.paymentOptions or {}
  RdKGToolSm.paymentOptions[1] = "仅AP"
  RdKGToolSm.paymentOptions[2] = "仅金币"
  RdKGToolSm.paymentOptions[3] = "优先AP，随后金币"
  RdKGToolSm.paymentOptions[4] = "优先金币，随后AP"
  RdKGToolSm.constants = RdKGToolSm.constants or {}
  RdKGToolSm.constants.ERROR_UNKNOWN = "发生未知错误"
  RdKGToolSm.constants.ERROR_UNKNOWN_PAYMENT_OPTION = "选择了未知交易选项"
  RdKGToolSm.constants.ERROR_PAYMENT_NOT_ENOUGH_GOLD = "金币不足"
  RdKGToolSm.constants.ERROR_PAYMENT_NOT_ENOUGH_AP = "AP不足"
  RdKGToolSm.constants.ERROR_PAYMENT_NOT_ENOUGH_AP_OR_GOLD = "AP或金币不足"
  RdKGToolSm.constants.ERROR_PAYMENT_NOT_ENOUGH_INVENTORY_SLOTS = "物品空位不足"
  RdKGToolSm.constants.SUCCESS_MESSAGE = "购买完成"

  --Recharger
  RdKGToolRecharger.constants = RdKGToolRecharger.constants or {}
  RdKGToolRecharger.constants.MESSAGE_SUCCESS = "%s (%d%%) 已充能"
  RdKGToolRecharger.constants.MESSAGE_WARNING_LOW_SOULGEMS = "可用灵魂水晶少于 %d "
  RdKGToolRecharger.constants.MESSAGE_WARNING_NO_SOULGEMS = "灵魂水晶耗尽"

  --Buff Food Tracking
  RdKGToolBft.constants = RdKGToolBft.constants or {}
  RdKGToolBft.constants.BUFF_FOOD_STRING = "食物Buff: %s"

  --Siege
  RdKGToolSiege.constants = RdKGToolSiege.constants or {}
  RdKGToolSiege.constants.TOGGLE_SIEGE = "|c4592FFRdK: 切换视角|r"

  --Cyrodiil Log
  RdKGToolCL.constants = RdKGToolCL.constants or {}
  RdKGToolCL.constants.MESSAGE_KEEP_GUILD_CLAIM = "%s|c%s 宣称 %s|c%s 被 %s 拥有"
  RdKGToolCL.constants.MESSAGE_KEEP_GUILD_LOST = "%s|c%s 失去 %s"
  RdKGToolCL.constants.MESSAGE_KEEP_STATUS_UA = "%s|c%s 遭受围攻"
  RdKGToolCL.constants.MESSAGE_KEEP_STATUS_UA_LOST = "%s|c%s 不再遭受围攻"
  RdKGToolCL.constants.MESSAGE_KEEP_OWNER_CHANGED = "%s|c%s 属于 %s"
  RdKGToolCL.constants.MESSAGE_TICK_DEFENSE = "|c%s%s|t16:16:/esoui/art/currency/alliancepoints.dds|t|c%s 奖励：防御 %s"
  RdKGToolCL.constants.MESSAGE_TICK_OFFENSE = "|c%s%s|t16:16:/esoui/art/currency/alliancepoints.dds|t|c%s 奖励：占领 %s"
  RdKGToolCL.constants.MESSAGE_SCROLL_PICKED_UP = "%s|c%s 已拾取 %s"
  RdKGToolCL.constants.MESSAGE_SCROLL_DROPPED = "%s|c%s 已掉落 %s"
  RdKGToolCL.constants.MESSAGE_SCROLL_RETURNED = "%s|c%s 已归还 %s"
  RdKGToolCL.constants.MESSAGE_SCROLL_RETURNED_BY_TIMER = "%s|c%s 被归还"
  RdKGToolCL.constants.MESSAGE_SCROLL_CAPTURED = "%s|c%s 已占领 %s|c%s 在 %s"
  RdKGToolCL.constants.MESSAGE_EMPEROR_CORONATED = "%s|c%s 已登基称帝"
  RdKGToolCL.constants.MESSAGE_EMPEROR_DEPOSED = "%s|c%s 已被废黜"
  RdKGToolCL.constants.MESSAGE_QUEST_REWARD = "|c%s%s|t16:16:/esoui/art/currency/alliancepoints.dds|t|c%s 奖励：完成任务"
  RdKGToolCL.constants.MESSAGE_BATTLEGROUND_REWARD = "|c%s%s|t16:16:/esoui/art/currency/alliancepoints.dds|t|c%s 奖励：完成战场"
  RdKGToolCL.constants.MESSAGE_BATTLEGROUND_MEDAL_REWARD = "|c%s%s|t16:16:/esoui/art/currency/alliancepoints.dds|t|c%s 奖励：获得勋章"
  RdKGToolCL.constants.MESSAGE_DAEDRIC_ARTIFACT_SPAWNED = "|c%s%s 已生成"
  RdKGToolCL.constants.MESSAGE_DAEDRIC_ARTIFACT_REVEALED = "|c%s%s 已揭示"
  RdKGToolCL.constants.MESSAGE_DAEDRIC_ARTIFACT_DROPPED = "|c%s%s 被 %s|c%s 掉落"
  RdKGToolCL.constants.MESSAGE_DAEDRIC_ARTIFACT_TAKEN = "|c%s%s 被 %s|c%s 拾取"
  RdKGToolCL.constants.MESSAGE_DAEDRIC_ARTIFACT_DESPAWNED = "|c%s%s 已回归湮没"

  --Respawner
  RdKGToolRespawner.constants = RdKGToolRespawner.constants or {}
  RdKGToolRespawner.constants.KEYBINDING_RESPAWN_CAMP = "在帐篷复活"
  RdKGToolRespawner.constants.KEYBINDING_RESPAWN_KEEP = "在堡垒复活"
  RdKGToolRespawner.constants.RESPAWN_CAMP = "帐篷"
  RdKGToolRespawner.constants.RESPAWN_KEEP = "堡垒"

  --Synergy Prevention - /script for i = 1, 500000 do if GetAbilityName(i) == "" then d(i) end end
  RdKGToolSP.constants = RdKGToolSP.constants or {}
  RdKGToolSP.constants.ON = "ON"
  RdKGToolSP.constants.OFF = "OFF"
  RdKGToolSP.constants.KEYBINDING = "切换协同抑制"
  RdKGToolSP.constants.SYNERGY_COMBUSTION = "死灵法球" -- 3463, 26319, 29424 .. 
  RdKGToolSP.constants.SYNERGY_HEALING_COMBUSTION = "能量法球" -- 63507, 63511 .. 
  RdKGToolSP.constants.SYNERGY_SHARDS_BLESSED = "神怒长矛" -- 26832, 94973 ..
  RdKGToolSP.constants.SYNERGY_SHARDS_HOLY = "发光碎片" -- 95922, 95925 .. 
  RdKGToolSP.constants.SYNERGY_BLOOD_FEAST = "满溢祭坛" -- 41963, 41964 .. 
  RdKGToolSP.constants.SYNERGY_BLOOD_FUNNEL = "鲜血祭坛" -- 39500, 39501 ..
  RdKGToolSP.constants.SYNERGY_SUPERNOVA = "新星" -- 31538, 31540
  RdKGToolSP.constants.SYNERGY_GRAVITY_CRUSH = "太阳牢笼" -- 31603, 31604 .. 
  RdKGToolSP.constants.SYNERGY_SHACKLE = "龙骑士战旗" -- 32905, 32910 ..
  RdKGToolSP.constants.SYNERGY_PURIFY = "净化仪式" -- 22260, 22269 ..
  RdKGToolSP.constants.SYNERGY_BONE_WALL = "白骨盾牌" -- 39377, 39379 ..
  RdKGToolSP.constants.SYNERGY_SPINAL_SURGE = "骨浪" -- 42194, 42195 ..
  RdKGToolSP.constants.SYNERGY_IGNITE = "黑暗利爪" -- 10805, 10809 ..
  RdKGToolSP.constants.SYNERGY_RADIATE = "内心之火" -- 41838, 41839 .. 
  RdKGToolSP.constants.SYNERGY_CONDUIT = "电光飞溅" -- 23196, 136046
  RdKGToolSP.constants.SYNERGY_SPAWN_BROODLINGS = "囚困之网" -- 39429, 39430 ..
  RdKGToolSP.constants.SYNERGY_BLACK_WIDOWS = "暗影蛛丝" -- 41994, 41996
  RdKGToolSP.constants.SYNERGY_ARACHNOPHOBIA = "纠缠之网" -- 18111, 18116 ..
  RdKGToolSP.constants.SYNERGY_HIDDEN_REFRESH = "吞噬黑暗" -- 37729, 37730 ..
  RdKGToolSP.constants.SYNERGY_SOUL_LEECH = "灵魂粉碎" -- 25169, 25170 ..
  RdKGToolSP.constants.SYNERGY_HARVEST = "治疗之种" -- 85572, 85576 ..
  RdKGToolSP.constants.SYNERGY_ATRONACH = "召唤风暴侍灵" -- 48076, 102310, 102321 ..
  RdKGToolSP.constants.SYNERGY_GRAVE_ROBBER = "埋骨地" -- 115548, 115567 ..
  RdKGToolSP.constants.SYNERGY_PURE_AGONY = "痛苦图腾" -- 118604, 118606 ..
  RdKGToolSP.constants.SYNERGY_ICY_ESCAPE = "冰冻退路" -- 88884, 110370 ...
  RdKGToolSP.constants.SYNERGY_SANGUINE_BURST = "桑吉恩爆发（荆棘夫人）" -- 141920, 142305
  RdKGToolSP.constants.SYNERGY_HEED_THE_CALL = "听从呼唤（克拉伦格之吼）" -- 142712, 142775, 142780
  RdKGToolSP.constants.SYNERGY_URSUS = "乌瑟丝祝福（乌瑟丝的避风港）" --111437
  RdKGToolSP.constants.MODES = RdKGToolSP.constants.MODES or {}
  RdKGToolSP.constants.MODES[RdKGToolSP.constants.MODE_BLOCK_ALL] = "All"
  RdKGToolSP.constants.MODES[RdKGToolSP.constants.MODE_BLOCK_IF_SYNERGY_ROLE] = "协同职能"

  --Synergy Overview
  RdKGToolSO.constants.DISPLAY_MODES = RdKGToolSO.constants.DISPLAY_MODES or {}
  RdKGToolSO.constants.DISPLAY_MODES[RdKGToolSO.constants.DISPLAYMODE_ALL] = "所有"
  RdKGToolSO.constants.DISPLAY_MODES[RdKGToolSO.constants.DISPLAYMODE_SYNERGY] = "协同职能"
  RdKGToolSO.constants.TABLE_MODES = RdKGToolSO.constants.TABLE_MODES or {}
  RdKGToolSO.constants.TABLE_MODES[RdKGToolSO.constants.MODES.TABLE_FULL] = "详细"
  RdKGToolSO.constants.TABLE_MODES[RdKGToolSO.constants.MODES.TABLE_REDUCED] = "简略"

  --util
  --util
  RdKGToolUtil.constants = RdKGToolUtil.constants or {}
  RdKGToolUtil.constants.G1 = "公会 1"
  RdKGToolUtil.constants.O1 = "管理员 1"
  RdKGToolUtil.constants.G2 = "公会 2"
  RdKGToolUtil.constants.O2 = "管理员 2"
  RdKGToolUtil.constants.G3 = "公会 3"
  RdKGToolUtil.constants.O3 = "管理员 3"
  RdKGToolUtil.constants.G4 = "公会 4"
  RdKGToolUtil.constants.O4 = "管理员 4"
  RdKGToolUtil.constants.G5 = "公会 5"
  RdKGToolUtil.constants.O5 = "管理员 5"
  RdKGToolUtil.constants.EMOTE = "表情"
  RdKGToolUtil.constants.SAY = "发言"
  RdKGToolUtil.constants.YELL = "吆喝"
  RdKGToolUtil.constants.GROUP = "队伍"
  RdKGToolUtil.constants.TELL = "悄悄话"
  RdKGToolUtil.constants.ZONE = "区域"
  RdKGToolUtil.constants.ENZONE = "区域 - 英语"
  RdKGToolUtil.constants.FRZONE = "区域 - 法语"
  RdKGToolUtil.constants.DEZONE = "区域 - 德语"
  RdKGToolUtil.constants.JPZONE = "区域 - 日语"

  --ui
  RdKGToolUtilUI.constants = RdKGToolUtilUI.constants or {}
  RdKGToolUtilUI.constants.ON = "ON"
  RdKGToolUtilUI.constants.OFF = "OFF"

  --Ultimates
  RdKGToolUltimates.constants = RdKGToolUltimates.constants or {}
  RdKGToolUltimates.constants.NEGATE = "巫师 -  魔法无效"
  RdKGToolUltimates.constants.NEGATE_OFFENSIVE = "巫师 - 抑制领域"
  RdKGToolUltimates.constants.NEGATE_COUNTER = "巫师 - 吸收领域"
  RdKGToolUltimates.constants.ATRONACH = "巫师 - 风暴侍灵"
  RdKGToolUltimates.constants.OVERLOAD = "巫师 - 过载"
  RdKGToolUltimates.constants.SWEEP = "圣骑 - 横扫"
  RdKGToolUltimates.constants.NOVA = "圣骑 - 新星"
  RdKGToolUltimates.constants.T_HEAL = "圣骑 - 通道仪式"
  RdKGToolUltimates.constants.STANDARD = "龙骑 - 战旗"
  RdKGToolUltimates.constants.LEAP = "龙骑 - 腾跃"
  RdKGToolUltimates.constants.MAGMA = "龙骑 - 熔岩护甲"
  RdKGToolUltimates.constants.STROKE = "夜刃 - 死亡打击"
  RdKGToolUltimates.constants.DARKNESS = "夜刃 - 吞噬黑暗"
  RdKGToolUltimates.constants.SOUL = "夜刃 - 灵魂粉碎"
  RdKGToolUltimates.constants.SOUL_SIPHON = "夜刃 - 灵魂虹吸"
  RdKGToolUltimates.constants.SOUL_TETHER = "夜刃 - 灵魂束链"
  RdKGToolUltimates.constants.STORM = "守望 - 冰雨风暴"
  RdKGToolUltimates.constants.NORTHERN_STORM = "守望 - 北境风暴"
  RdKGToolUltimates.constants.PERMAFROST = "守望 - 永霜"
  RdKGToolUltimates.constants.W_HEAL = "守望 - 僻静之林"
  RdKGToolUltimates.constants.GUARDIAN = "守望 - 熊"
  RdKGToolUltimates.constants.COLOSSUS = "死灵 - 巨像"
  RdKGToolUltimates.constants.GOLIATH = "死灵 - 变身"
  RdKGToolUltimates.constants.REANIMATE = "死灵 - 复活"
  RdKGToolUltimates.constants.UNBLINKING_EYE = "奥术 - 凝视之眼"
  RdKGToolUltimates.constants.GIBBERING_SHIELD = "奥术 - 呓语护盾"
  RdKGToolUltimates.constants.VITALIZING_GLYPHIC = "奥术 - 焕生雕文"
  RdKGToolUltimates.constants.DESTRUCTION = "武器 - 毁灭法杖"
  RdKGToolUltimates.constants.RESTORATION = "武器 - 恢复法杖"
  RdKGToolUltimates.constants.TWO_HANDED = "武器 - 双手"
  RdKGToolUltimates.constants.SHIELD = "武器 - 单手佩盾"
  RdKGToolUltimates.constants.DUAL_WIELD = "武器 - 双持"
  RdKGToolUltimates.constants.BOW = "武器 - 弓"
  RdKGToolUltimates.constants.SOUL_MAGIC = "灵魂法术 - 灵魂打击"
  RdKGToolUltimates.constants.WEREWOLF = "狼人 - 变身"
  RdKGToolUltimates.constants.VAMPIRE = "吸血鬼 - 变身"
  RdKGToolUltimates.constants.MAGES = "法会 - 流星"
  RdKGToolUltimates.constants.FIGHTERS = "斗会 - 晨破"
  RdKGToolUltimates.constants.PSIJIC = "塞伊克 - 取消"
  RdKGToolUltimates.constants.ALLIANCE_SUPPORT = "支援 - 屏障"
  RdKGToolUltimates.constants.ALLIANCE_ASSAULT = "突袭 - 号角"

  --Networking
  RdKGToolNetworking.constants.urgentSelection[RdKGToolNetworking.constants.urgentMode.DIRECT] = "直接"
  RdKGToolNetworking.constants.urgentSelection[RdKGToolNetworking.constants.urgentMode.CRITICAL] = "队列 (紧急)"

  --Util Group
  RdKGToolUtilGroup.constants.displayTypes[RdKGToolUtilGroup.constants.BY_CHAR_NAME] = "按角色名"
  RdKGToolUtilGroup.constants.displayTypes[RdKGToolUtilGroup.constants.BY_DISPLAY_NAME] = "按账户名"

  RdKGToolUtilGroup.constants.ROLE_RAPID = "加速"
  RdKGToolUtilGroup.constants.ROLE_PURGE = "净化"
  RdKGToolUtilGroup.constants.ROLE_HEAL = "治疗"
  RdKGToolUtilGroup.constants.ROLE_DD = "输出"
  RdKGToolUtilGroup.constants.ROLE_SYNERGY = "协同"
  RdKGToolUtilGroup.constants.ROLE_CC = "控制"
  RdKGToolUtilGroup.constants.ROLE_SUPPORT = "支援"
  RdKGToolUtilGroup.constants.ROLE_PLACEHOLDER = "未定义"
  RdKGToolUtilGroup.constants.ROLE_APPLICANT = "申请人"

  --Util Versioning
  RdKGToolVersioning.constants = RdKGToolVersioning.constants or {}
  RdKGToolVersioning.constants.CLIENT_OUT_OF_DATE = "|cFF0000[RdK Group Tool] 客户端版本已过时|r"

  --Util Enhancements
  RdKGToolEnhance.constants = RdKGToolEnhance.constants or {}
  RdKGToolEnhance.constants.positionNames = RdKGToolEnhance.constants.positionNames or {}
  RdKGToolEnhance.constants.positionNames[RdKGToolEnhance.constants.TOPRIGHT] = "右上"
  RdKGToolEnhance.constants.positionNames[RdKGToolEnhance.constants.BOTTOMRIGHT] = "右下"
  RdKGToolEnhance.constants.positionNames[RdKGToolEnhance.constants.TOPLEFT] = "左上"
  RdKGToolEnhance.constants.positionNames[RdKGToolEnhance.constants.BOTTOMLEFT] = "左下"
  RdKGToolEnhance.constants.CAMP_RESPAWN = "帐篷 : "

  --Util Group Menu
  RdKGToolGMenu.constants = RdKGToolGMenu.constants or {}
  RdKGToolGMenu.constants.BG_LEADER_ADD_CROWN = "标记为皇冠"
  RdKGToolGMenu.constants.BG_LEADER_REMOVE_CROWN = "移除皇冠"
  RdKGToolGMenu.constants.ROLE_MENU_ENTRY = "职能"
  RdKGToolGMenu.constants.ROLE_SUBMENU_SET = "设置"
  RdKGToolGMenu.constants.ROLE_SUBMENU_REMOVE = "移除"
  RdKGToolGMenu.constants.ROLE_SUBMENU_RAPID = RdKGToolUtilGroup.constants.ROLE_RAPID
  RdKGToolGMenu.constants.ROLE_SUBMENU_PURGE = RdKGToolUtilGroup.constants.ROLE_PURGE
  RdKGToolGMenu.constants.ROLE_SUBMENU_HEAL = RdKGToolUtilGroup.constants.ROLE_HEAL
  RdKGToolGMenu.constants.ROLE_SUBMENU_DD = RdKGToolUtilGroup.constants.ROLE_DD
  RdKGToolGMenu.constants.ROLE_SUBMENU_SYNERGY = RdKGToolUtilGroup.constants.ROLE_SYNERGY
  RdKGToolGMenu.constants.ROLE_SUBMENU_CC = RdKGToolUtilGroup.constants.ROLE_CC
  RdKGToolGMenu.constants.ROLE_SUBMENU_SUPPORT = RdKGToolUtilGroup.constants.ROLE_SUPPORT
  RdKGToolGMenu.constants.ROLE_SUBMENU_PLACEHOLDER = RdKGToolUtilGroup.constants.ROLE_PLACEHOLDER
  RdKGToolGMenu.constants.ROLE_SUBMENU_APPLICANT = RdKGToolUtilGroup.constants.ROLE_APPLICANT

  --Util Beams
  RdKGToolBeams.constants.BEAM[RdKGToolBeams.constants.beams.BEAM_1].name = "光束 1"
  RdKGToolBeams.constants.BEAM[RdKGToolBeams.constants.beams.BEAM_2].name = "光束 2"
  RdKGToolBeams.constants.BEAM[RdKGToolBeams.constants.beams.BEAM_3].name = "光束 3"
  RdKGToolBeams.constants.BEAM[RdKGToolBeams.constants.beams.BEAM_4].name = "光束 4"
  RdKGToolBeams.constants.BEAM[RdKGToolBeams.constants.beams.BEAM_5].name = "圆 1"
  RdKGToolBeams.constants.BEAM[RdKGToolBeams.constants.beams.BEAM_6].name = "圆 1 (无Buffer)"
  RdKGToolBeams.constants.BEAM[RdKGToolBeams.constants.beams.BEAM_7].name = "圆 2"
  RdKGToolBeams.constants.BEAM[RdKGToolBeams.constants.beams.BEAM_8].name = "圆 2 (无Buffer)"
  RdKGToolBeams.constants.BEAM[RdKGToolBeams.constants.beams.BEAM_9].name = "箭头 1"
  RdKGToolBeams.constants.BEAM[RdKGToolBeams.constants.beams.BEAM_10].name = "箭头 2"

  --Admin [General]
  RdKGToolAdmin.constants = RdKGToolAdmin.constants or {}
  RdKGToolAdmin.constants.TOGGLE_ADMIN = "切换管理员面板"
  RdKGToolAdmin.constants.HEADER_TITLE = "管理员"
  RdKGToolAdmin.constants.PLAYERS_ALL = "所有"
  --Admin UI [Player]
  RdKGToolAdmin.constants.player = RdKGToolAdmin.constants.player or {}
  RdKGToolAdmin.constants.player.REQUEST_ALL = "请求 所有"
  RdKGToolAdmin.constants.player.REQUEST_VERSION = "请求 版本"
  RdKGToolAdmin.constants.player.REQUEST_CLIENT_CONFIGURATION = "请求 客户端配置"
  RdKGToolAdmin.constants.player.REQUEST_ADDON_CONFIGURATION = "请求 插件配置"
  RdKGToolAdmin.constants.player.REQUEST_EQUIPMENT_INFORMATION = "请求 装备信息"
  RdKGToolAdmin.constants.player.REQUEST_STATS_INFORMATION = "请求 状态信息"
  RdKGToolAdmin.constants.player.REQUEST_MUNDUS_INFORMATION = "请求 星座赐福信息"
  RdKGToolAdmin.constants.player.REQUEST_SKILLS_INFORMATION = "请求 技能信息"
  RdKGToolAdmin.constants.player.REQUEST_QUICKSLOTS_INFORMATION = "请求 快捷栏信息"
  RdKGToolAdmin.constants.player.REQUEST_CHAMPION_INFORMATION = "请求 CP信息"
  --Admin UI [Config]
  RdKGToolAdmin.constants = RdKGToolAdmin.constants or {}
  RdKGToolAdmin.constants.defaults = RdKGToolAdmin.constants.defaults or {}
  RdKGToolAdmin.constants.defaults.ENABLED = "On"
  RdKGToolAdmin.constants.defaults.DISABLED = "Off"
  RdKGToolAdmin.constants.defaults.UNDEFINED = "N/A"
  RdKGToolAdmin.constants.defaults.UNDEFINED_LINE = "-"
  RdKGToolAdmin.constants.defaults.UNDEFINED_VERSION = "N/A (版本)"
  RdKGToolAdmin.constants.defaults.viewModes = RdKGToolAdmin.constants.defaults.viewModes or {}
  RdKGToolAdmin.constants.defaults.viewModes[0] = "窗口化"
  RdKGToolAdmin.constants.defaults.viewModes[1] = "窗口化 (铺满屏幕)"
  RdKGToolAdmin.constants.defaults.viewModes[2] = "全屏"
  RdKGToolAdmin.constants.defaults.qualitySelection = RdKGToolAdmin.constants.defaults.qualitySelection or {}
  RdKGToolAdmin.constants.defaults.qualitySelection[0] = "Off"
  RdKGToolAdmin.constants.defaults.qualitySelection[1] = "低"
  RdKGToolAdmin.constants.defaults.qualitySelection[2] = "中"
  RdKGToolAdmin.constants.defaults.qualitySelection[3] = "高"
  RdKGToolAdmin.constants.defaults.qualitySelection[4] = "极高"
  RdKGToolAdmin.constants.defaults.graphicPresets = RdKGToolAdmin.constants.defaults.graphicPresets or {}
  RdKGToolAdmin.constants.defaults.graphicPresets[0] = "最低"
  RdKGToolAdmin.constants.defaults.graphicPresets[1] = "低"
  RdKGToolAdmin.constants.defaults.graphicPresets[2] = "中"
  RdKGToolAdmin.constants.defaults.graphicPresets[3] = "高"
  RdKGToolAdmin.constants.defaults.graphicPresets[4] = "极高"
  RdKGToolAdmin.constants.defaults.graphicPresets[7] = "自定义"
  RdKGToolAdmin.constants.config = RdKGToolAdmin.constants.config or {}
  RdKGToolAdmin.constants.config.PLAYER_TITLE = "玩家信息"
  RdKGToolAdmin.constants.config.PLAYER_DISPLAYNAME_STRING = "账户名: |c%s%s|r"
  RdKGToolAdmin.constants.config.PLAYER_CHARNAME_STRING = "角色名: |c%s%s|r"
  RdKGToolAdmin.constants.config.PLAYER_VERSION_STRING = "版本: |c%s%s.%s.%s|r"
  RdKGToolAdmin.constants.config.CLIENT_TITLE = "客户端信息"
  RdKGToolAdmin.constants.config.CLIENT_AOE_SUBTITLE = "AOE提示"
  RdKGToolAdmin.constants.config.CLIENT_AOE_TELLS_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.CLIENT_AOE_CUSTOM_COLOR_ENABLED_STRING = "自定义颜色: |c%s%s|r"
  RdKGToolAdmin.constants.config.CLIENT_AOE_CUSTOM_COLOR_FRIENDLY_BRIGHTNESS = "友方: |c%s%s|r"
  RdKGToolAdmin.constants.config.CLIENT_AOE_CUSTOM_COLOR_ENEMY_BRIGHTNESS = "E敌方: |c%s%s|r"
  RdKGToolAdmin.constants.config.CLIENT_SOUND_SUBTITLE = "音频"
  RdKGToolAdmin.constants.config.CLIENT_SOUND_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.CLIENT_SOUND_AUDIO_VOLUME = "总音量: |c%s%s|r"
  RdKGToolAdmin.constants.config.CLIENT_SFX_AUDIO_VOLUME = "音效音量: |c%s%s|r"
  RdKGToolAdmin.constants.config.CLIENT_UI_AUDIO_VOLUME = "界面音量: |c%s%s|r"
  RdKGToolAdmin.constants.config.CLIENT_GRAPHICS_SUBTITLE = "视频"
  RdKGToolAdmin.constants.config.CLIENT_GRAPHICS_RESOLUTION_STRING = "分辨率: |c%s%sx%s|r"
  RdKGToolAdmin.constants.config.CLIENT_GRAPHICS_WINDOW_MODE_STRING = "显示模式: |c%s%s|r"
  RdKGToolAdmin.constants.config.CLIENT_GRAPHICS_VSYNC_STRING = "垂直同步: |c%s%s|r"
  RdKGToolAdmin.constants.config.CLIENT_GRAPHICS_ANTI_ALIASING_STRING = "抗锯齿: |c%s%s|r"
  RdKGToolAdmin.constants.config.CLIENT_GRAPHICS_AMBIENT_STRING = "环境光遮蔽: |c%s%s|r"
  RdKGToolAdmin.constants.config.CLIENT_GRAPHICS_BLOOM_STRING = "高光: |c%s%s|r"
  RdKGToolAdmin.constants.config.CLIENT_GRAPHICS_DEPTH_OF_FIELD_STRING = "景深: |c%s%s|r"
  RdKGToolAdmin.constants.config.CLIENT_GRAPHICS_DISTORTION_STRING = "失真: |c%s%s|r"
  RdKGToolAdmin.constants.config.CLIENT_GRAPHICS_SUNLIGHT_STRING = "光线: |c%s%s|r"
  RdKGToolAdmin.constants.config.CLIENT_GRAPHICS_ALLY_EFFECTS_STRING = "显示额外盟友效果: |c%s%s|r"
  RdKGToolAdmin.constants.config.CLIENT_GRAPHICS_VIEW_DISTANCE_STRING = "视距: ~|c%s%s|r"
  RdKGToolAdmin.constants.config.CLIENT_GRAPHICS_PARTICLE_SUPRESSION_DISTANCE_STRING = "颗粒抑制距离: |c%s%s|r"
  RdKGToolAdmin.constants.config.CLIENT_GRAPHICS_PARTICLE_MAXIMUM_STRING = "最大颗粒系统: |c%s%s|r"
  RdKGToolAdmin.constants.config.CLIENT_GRAPHICS_REFLECTION_QUALITY_STRING = "平面反射质量: |c%s%s|r"
  RdKGToolAdmin.constants.config.CLIENT_GRAPHICS_SHADOW_QUALITY_STRING = "阴影质量: |c%s%s|r"
  RdKGToolAdmin.constants.config.CLIENT_GRAPHICS_SUBSAMPLING_QUALITY_STRING = "二次抽样画质: |c%s%s|r"
  RdKGToolAdmin.constants.config.CLIENT_GRAPHICS_GRAPHIC_PRESETS_STRING = "纹理画质: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_TITLE = "插件设置"
  RdKGToolAdmin.constants.config.ADDON_CROWN_SUBTITLE = "皇冠"
  RdKGToolAdmin.constants.config.ADDON_CROWN_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_CROWN_SIZE_STRING = "尺寸: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_CROWN_SELECTED_CROWN_STRING = "所选皇冠: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_FTCV_SUBTITLE = "跟随皇冠 (视觉)"
  RdKGToolAdmin.constants.config.ADDON_FTCV_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_FTCV_SIZE_FAR_STRING = "尺寸(远): |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_FTCV_SIZE_CLOSE_STRING = "尺寸(近): |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_FTCV_MIN_DISTANCE_STRING = "最小距离: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_FTCV_MAX_DISTANCE_STRING = "最大距离: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_FTCV_OPACITY_FAR_STRING = "不透明度(远): |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_FTCV_OPACITY_CLOSE_STRING = "不透明度(近): |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_FTCW_SUBTITLE = "跟随皇冠 (警告)"
  RdKGToolAdmin.constants.config.ADDON_FTCW_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_FTCW_DISTANCE_ENABLED_STRING = "启用距离: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_FTCW_WARNINGS_ENABLED_STRING = "启用警告: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_FTCW_MAX_DISTANCE_STRING = "最远距离: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_FTCA_SUBTITLE = "跟随皇冠 (声音)"
  RdKGToolAdmin.constants.config.ADDON_FTCA_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_FTCA_MAX_DISTANCE_STRING = "最远距离: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_FTCA_INTERVAL_STRING = "间隔: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_FTCA_THRESHOLD_STRING = "阈值: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_FTCB_SUBTITLE = "跟随皇冠 (光线)"
  RdKGToolAdmin.constants.config.ADDON_FTCB_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_FTCB_SELECTED_BEAM_STRING = "所选光线: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_FTCB_ALPHA_STRING = "不透明度: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_DBO_SUBTITLE = "Debuff概述"
  RdKGToolAdmin.constants.config.ADDON_DBO_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_RT_SUBTITLE = "迅敏概述"
  RdKGToolAdmin.constants.config.ADDON_RT_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_RO_SUBTITLE = "资源概述"
  RdKGToolAdmin.constants.config.ADDON_RO_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_RO_ULTIMATE_OVERVIEW_ENABLED_STRING = "团队终极技能概述启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_RO_CLIENT_GROUP_ENABLED_STRING = "客户端窗口启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_RO_GROUP_ULTIMATE_ENABLED_STRING = "队伍窗口启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_RO_SHOW_SOFT_RESOURCES_STRING = "耐力 / 魔力: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_RO_SOUND_ENABLED_STRING = "音效启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_RO_MAX_DISTANCE_STRING = "最远距离: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_RO_GROUP_SIZE_DESTRO_STRING = "队伍尺寸 辐光毁灭: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_RO_GROUP_SIZE_STORM_STRING = "队伍尺寸 冰雨风暴: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_RO_GROUP_SIZE_NORTHERNSTORM_STRING = "队伍尺寸 北境风暴: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_RO_GROUP_SIZE_PERMAFROST_STRING = "队伍尺寸 永霜: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_RO_GROUP_SIZE_NEGATE_STRING = "队伍尺寸 魔法无效: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_RO_GROUP_SIZE_NEGATE_OFFENSIVE_STRING = "队伍尺寸 抑制领域: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_RO_GROUP_SIZE_NEGATE_COUNTER_STRING = "队伍尺寸 吸收领域: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_RO_GROUP_SIZE_NOVA_STRING = "队伍尺寸 新星: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_RO_GROUPS_ENABLED_STRING = "队伍启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_HDM_SUBTITLE = "伤害治疗统计"
  RdKGToolAdmin.constants.config.ADDON_HDM_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_HDM_WINDOW_ENABLED_STRING = "窗口启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_HDM_VIEW_MODE_STRING = "所选模式: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_PO_SUBTITLE = "药水概述"
  RdKGToolAdmin.constants.config.ADDON_PO_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_PO_SOUND_ENABLED_STRING = "音效启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_DT_SUBTITLE = "魔力引爆/虫爆 追踪器"
  RdKGToolAdmin.constants.config.ADDON_DT_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_GB_SUBTITLE = "团队光束"
  RdKGToolAdmin.constants.config.ADDON_GB_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_ISDP_SUBTITLE = "死亡玩家"
  RdKGToolAdmin.constants.config.ADDON_ISDP_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_YACS_SUBTITLE = "额外罗盘"
  RdKGToolAdmin.constants.config.ADDON_YACS_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_YACS_PVP_ENABLED_STRING = "PVP中启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_YACS_COMBAT_ENABLED_STRING = "战斗中启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_SC_SUBTITLE = "简易罗盘"
  RdKGToolAdmin.constants.config.ADDON_SC_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_SM_SUBTITLE = "攻城武器商人"
  RdKGToolAdmin.constants.config.ADDON_SM_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_RECHARGER_SUBTITLE = "充能"
  RdKGToolAdmin.constants.config.ADDON_RECHARGER_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_KC_SUBTITLE = "城堡所有者"
  RdKGToolAdmin.constants.config.ADDON_KC_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_BFT_SUBTITLE = "食物增益追踪"
  RdKGToolAdmin.constants.config.ADDON_BFT_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_BFT_SOUND_ENABLED_STRING = "音效启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_BFT_SIZE_STRING = "尺寸: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_CL_SUBTITLE = "西罗帝尔记录"
  RdKGToolAdmin.constants.config.ADDON_CL_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_CS_SUBTITLE = "西罗帝尔状态"
  RdKGToolAdmin.constants.config.ADDON_CS_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_RESPAWNER_SUBTITLE = "重生点"
  RdKGToolAdmin.constants.config.ADDON_RESPAWNER_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_CAMP_SUBTITLE = "前线营地预览"
  RdKGToolAdmin.constants.config.ADDON_CAMP_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_SP_SUBTITLE = "协同限制"
  RdKGToolAdmin.constants.config.ADDON_SP_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_SP_MODE_STRING = "模式: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_SP_PREVENT_STRING = "%s: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_SO_SUBTITLE = "协同概述"
  RdKGToolAdmin.constants.config.ADDON_SO_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_SO_TABLE_MODE_STRING = "表格模式: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_SO_DISPLAY_MODE_STRING = "显示模式: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_RA_SUBTITLE = "职能分配"
  RdKGToolAdmin.constants.config.ADDON_RA_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_RA_ALLOW_OVERRIDE_STRING = "允许覆盖: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_CAJ_SUBTITLE = "自动加入战役"
  RdKGToolAdmin.constants.config.ADDON_CAJ_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.ADDON_CRBGTP_SUBTITLE = "CR - BG - 圣骑治疗 (BG)"
  RdKGToolAdmin.constants.config.ADDON_CRBGTP_ENABLED_STRING = "启用: |c%s%s|r"
  RdKGToolAdmin.constants.config.STATS_TITLE = "状态"
  RdKGToolAdmin.constants.config.STATS_MAGICKA_STRING = "魔力: |c%s%s|r"
  RdKGToolAdmin.constants.config.STATS_HEALTH_STRING = "生命: |c%s%s|r"
  RdKGToolAdmin.constants.config.STATS_STAMINA_STRING = "耐力: |c%s%s|r"
  RdKGToolAdmin.constants.config.STATS_MAGICKA_RECOVERY_STRING = "魔力回复: |c%s%s|r"
  RdKGToolAdmin.constants.config.STATS_HEALTH_RECOVERY_STRING = "生命回复: |c%s%s|r"
  RdKGToolAdmin.constants.config.STATS_STAMINA_RECOVERY_STRING = "耐力回复: |c%s%s|r"
  RdKGToolAdmin.constants.config.STATS_SPELL_DAMAGE_STRING = "法术伤害: |c%s%s|r"
  RdKGToolAdmin.constants.config.STATS_WEAPON_DAMAGE_STRING = "武器伤害: |c%s%s|r"
  RdKGToolAdmin.constants.config.STATS_SPELL_PENETRATION_STRING = "法术穿透: |c%s%s|r"
  RdKGToolAdmin.constants.config.STATS_WEAPON_PENETRATION_STRING = "物理穿透: |c%s%s|r"
  RdKGToolAdmin.constants.config.STATS_SPELL_CRITICAL_STRING = "法术暴击率: |c%s%s|r"
  RdKGToolAdmin.constants.config.STATS_WEAPON_CRITICAL_STRING = "物理暴击率: |c%s%s|r"
  RdKGToolAdmin.constants.config.STATS_SPELL_RESISTANCE_STRING = "法术抗性: |c%s%s|r"
  RdKGToolAdmin.constants.config.STATS_PHYSICAL_RESISTANCE_STRING = "物理抗性: |c%s%s|r"
  RdKGToolAdmin.constants.config.STATS_CRITICAL_RESISTANCE_STRING = "暴击抗性: |c%s%s|r"
  RdKGToolAdmin.constants.config.MUNDUS_TITLE = "星座赐福"
  RdKGToolAdmin.constants.config.MUNDUS_STONE_1_STRING = "赐福 1: |c%s%s|r"
  RdKGToolAdmin.constants.config.MUNDUS_STONE_2_STRING = "赐福 2: |c%s%s|r"
  RdKGToolAdmin.constants.config.MUNDUS_FILTER = "赐福: "
  RdKGToolAdmin.constants.config.CHAMPION_TITLE = "CP点"
  RdKGToolAdmin.constants.config.SKILLS_TITLE = "技能"
  RdKGToolAdmin.constants.config.EQUIPMENT_TITLE = "装备"
  RdKGToolAdmin.constants.config.EQUIPMENT_CONTEXT_REQUEST = "请求物品"
  RdKGToolAdmin.constants.config.EQUIPMENT_CONTEXT_LINK_IN_CHAT = "链接到聊天"
  RdKGToolAdmin.constants.config.QUICKSLOT_TITLE = "快捷栏"

  --Config
  RdKGToolConfig.constants = RdKGToolConfig.constants or {}
  RdKGToolConfig.constants.TOGGLE_CONFIG = "切换配置界面"
  RdKGToolConfig.constants.HEADER_TITLE = "配置 导入/导出"
  RdKGToolConfig.constants.TAB_IMPORT_TITLE = "导入"
  RdKGToolConfig.constants.TAB_EXPORT_TITLE = "导出"
  RdKGToolConfig.constants.EXPORT_SELECT_ALL = "权限"
  RdKGToolConfig.constants.EXPORT_PROFILE = "预设"
  RdKGToolConfig.constants.EXPORT_STRING_LENGTH_ERROR = "配置字符串过长，请上报这一问题！"
  RdKGToolConfig.constants.IMPORT_PROFILE = "新预设名"
  RdKGToolConfig.constants.IMPORT = "导入"
  RdKGToolConfig.constants.IMPORT_STATUS = "状态: "
  RdKGToolConfig.constants.IMPORT_ADD_ALL = "添加所有值 (例如 窗口位置)"
  RdKGToolConfig.constants.IMPORT_STATUS_STARTED = "导入开始"
  RdKGToolConfig.constants.IMPORT_STATUS_FAILED = "导入失败"
  RdKGToolConfig.constants.IMPORT_STATUS_FINISHED = "导入完成"
  RdKGToolConfig.constants.IMPORT_STATUS_FINISHED_DIFFERENT_VERSION = "导入完成 (版本不同可导致不兼容)"
  RdKGToolConfig.constants.IMPORT_STATUS_PROFILE_INVALID_NAME = "导入失败 - 无效预设名"
  RdKGToolConfig.constants.IMPORT_STATUS_PROFILE_DUPLICATE = "导入失败 - 预设名重复"
  RdKGToolConfig.constants.IMPORT_STATUS_NO_CONTENT = "导入失败 - 内容为空"
  RdKGToolConfig.constants.IMPORT_CONFIG_LINE_COUNT = "配置文件行数: %s"
  RdKGToolConfig.constants.IMPORT_CONFIG_FAILED_REASON = "导入失败：行 %s. 原因: %s"
  RdKGToolConfig.constants.IMPORT_CONFIG_FAILED_REASON_NIL = "无效值"
  RdKGToolConfig.constants.IMPORT_CONFIG_FAILED_REASON_TYPE_BOOLEAN = "需求布尔类型"
  RdKGToolConfig.constants.IMPORT_CONFIG_FAILED_REASON_TYPE_NUMBER = "需求数字类型"
  RdKGToolConfig.constants.IMPORT_CONFIG_FAILED_REASON_TYPE_INVALID = "无效类型"
  RdKGToolConfig.constants.IMPORT_CONFIG_FAILED_REASON_LAYER_1_INVALID = "层 1 无效"
  RdKGToolConfig.constants.IMPORT_CONFIG_FAILED_REASON_LAYER_2_INVALID = "层 2 无效"
  RdKGToolConfig.constants.IMPORT_CONFIG_FAILED_REASON_LAYER_1_2_INVALID = "层 1 或 层 2 无效"
  RdKGToolConfig.constants.IMPORT_CONFIG_FAILED_REASON_LAYER_X_INVALID = "层 X 无效"

return true end