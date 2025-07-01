local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["WeaveDelays"] = function() if not WeaveDelays then return false end
  --WeaveDelays.lua
  local options = {
    {
      type = "header",
      name = "常规",
    },
    {
      type = "description",
      text = "启用账号设置时，各角色的独立设置将被保留，关闭全局设置时将被恢复",
    },
    {
      type = "checkbox",
      name = "账号设置",
    },
    {
      type = "description",
      text = "解锁UI位置，允许拖动。启用时，取消UI的自动隐藏",
    },
    {
      type = "checkbox",
      name = "解锁UI",
    },
    {
      type = "header",
      name = "技能栏附加",
    },
    {
      type = "checkbox",
      name = "在技能上方显示延迟和丢失的轻击",
    },
    {
      type = "checkbox",
      name = "在技能上方显示活动度",
    },
    {
      type = "checkbox",
      name = "在技能下方显示丢失的轻击",
    },
    {
      type = "slider",
      name = "延迟与活动度UI的位置",
      tooltip = "- 向下移动 / + 向上移动",
    },
    {
      type = "header",
      name = "施法监控",
    },
    {
      type = "description",
      text = "该面板用于显示技能之间的挥舞和轻击情况",
    },
    {
      type = "checkbox",
      name = "显示施法监控面板",
    },
    {
      type = "colorpicker",
      name = "边框颜色",
    },
    {
      type = "slider",
      name = "边框宽度",
      tooltip = "面板外周边框的宽度",
    },
    {
      type = "slider",
      name = "不透明度",
      tooltip = "面板的不透明度 (0为完全透明)",
    },
    {
      type = "slider",
      name = "UI尺寸 (50为默认值)",
    },
    {
      type = "slider",
      name = "显示的技能数量 (列)",
      tooltip = "面板每行显示的技能数量，从右往左移动",
    },
    {
      type = "slider",
      name = "显示的技能数量 (行)",
      tooltip = "面板显示的技能行数，从下往上移动",
    },
    {
      type = "editbox",
      name = "缩写标记 (未按下轻击)",
      tooltip = "释放此技能前，未按下轻击",
    },
    {
      type = "editbox",
      name = "缩写标记 (轻击未入队列)",
      tooltip = "释放此技能前，已按下轻击，但轻击未加入施法队列。例如，上一个技能释放后，过快按下轻击",
    },
    {
      type = "editbox",
      name = "缩写标记 (轻击未生效)",
      tooltip = "释放此技能前，已按下轻击且加入施法队列，但未成功生效。例如，超过攻击距离、未命中判定箱、敌人已死亡",
    },
    {
      type = "editbox",
      name = "缩写标记 (猛击取消)",
    },
    --showDelayBarOnlyInCombat
    {
      type = "checkbox",
      name = "仅战斗中显示",
    },
    {
      type = "slider",
      name = "脱战后留存时间",
    },
    {
      type = "checkbox",
      name = "在面板中显示技能图标",
      tooltip = "在挥舞和轻击情况指示条的下方附上技能图标",
    },
    {
      type = "dropdown",
      name = "调色板",
      tooltip = "选择一个系列的颜色来表示技能挥舞的长短",
    },
    {
      type = "header",
      name = "循环监控",
    },
    {
      type = "description",
      text = "按自定义顺序显示需要重新释放的技能，空格处释放填充技能",
    },
    {
      type = "checkbox",
      name = "显示循环监控面板",
    },
    {
      type = "slider",
      name = "刷新频率 (ms)",
    },

    {
      type = "colorpicker",
      name = "边框颜色",
    },
    {
      type = "slider",
      name = "边框宽度",
      tooltip = "面板外周边框的宽度",
    },
    {
      type = "slider",
      name = "显示的技能数量 (列)",
      tooltip = "面板每行显示的技能数量，从右往左移动",
    },
    {
      type = "dropdown",
      name = "字体",
      tooltip = "用于循环监控计时器的字体，推荐使用Zo开头的官方游戏字体",
    },
    {
      type = "slider",
      name = "不透明度",
      tooltip = "面板的不透明度 (0为完全透明)",
    },
    {
      type = "slider",
      name = "UI尺寸 (50为默认值)",
    },
    --{
    --	type = "submenu",
    --	name = "Select tracked abilities",
    --	tooltip = "Select tracked abilities and adjust durations.",
    --	controls = {
        {
          type = "description",
          text = "设置技能的持续时间 (ms)，0为不监控该技能。如果有技能未显示，请切手两次后再打开该页面",
        },
        {
          type = "description",
          text = "主手",
        },
        {
          type = "texture",
        },
        {
          type = "slider",
          name = "技能 1",
        },
        {
          type = "texture",
        },
        {
          type = "slider",
          name = "技能 2",
        },
        {
          type = "texture",
        },
        {
          type = "slider",
          name = "技能 3",
        },
        {
          type = "texture",
        },
        {
          type = "slider",
          name = "技能 4",
        },
        {
          type = "texture",
        },
        {
          type = "slider",
          name = "技能 5",
        },
        {
          type = "description",
          text = "副手",
        },
        {
          type = "texture",
        },
        {
          type = "slider",
          name = "技能 1",
        },
        {
          type = "texture",
        },
        {
          type = "slider",
          name = "技能 2",
        },
        {
          type = "texture",
        },
        {
          type = "slider",
          name = "技能 3",
        },
        {
          type = "texture",
        },
        {
          type = "slider",
          name = "技能 4",
        },
        {
          type = "texture",
        },
        {
          type = "slider",
          name = "技能 5",
        },
      --}
    --}
    {
      type = "header",
      name = "物品套装和效果",
    },
    {
      type = "description",
      text = "追踪部分物品和能力的效果",
    },
    {
      type = "checkbox",
      name = "机械敏锐 (套装)",
    },
    {
      type = "colorpicker",
      name = "机械敏锐 (颜色)",
    },
    {
      type = "header",
      name = "兼容性",
    },
    {
      type = "description",
      text = "配置与其他插件的兼容",
    },
    {
      type = "checkbox",
      name = "检测 BUI",
      tooltip = "启用后，自动检测 BUI",
    },
    {
      type = "checkbox",
      name = "检测 Fancy Action Bar",
      tooltip = "启用后，自动检测 Fancy Action Bar",
    },
    {
      type = "checkbox",
      name = "检测 Action Duration Reminder",
      tooltip = "启用后，自动检测 Action Duration Reminder",
    },
    {
      type = "checkbox",
      name = "调整默认UI血条的位置",
      tooltip = "如果发现了某些插件，则自动调整默认UI血条的位置",
    },
    {
      type = "slider",
      name = "默认UI血条的位置",
      tooltip = "- 向下移动 / + 向上移动；对其他插件自制的血条UI无效",
    },
    {
      type = "header",
      name = "实验性功能",
    },
    {
      type = "checkbox",
      name = "增加延迟容忍度",
      tooltip = "如果你延迟偏高，导致此插件异常，可以尝试启用",
    },
  }
  
  BB.SetMenuPatch("WeaveDelays", options)
  BB.SetKeybindingsReplace("WD_TOGGLE", "开关UI界面")
  
return true end