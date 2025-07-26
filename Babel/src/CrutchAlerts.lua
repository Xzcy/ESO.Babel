local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["CrutchAlerts"] = function() if not CrutchAlerts then return false end
    local Crutch = CrutchAlerts

    local function GetNoSubtitlesZoneIdsAndNames()
      local ids = {}
      local names = {}
      for zoneId, _ in pairs(Crutch.savedOptions.subtitlesIgnoredZones) do
          table.insert(ids, zoneId)
          table.insert(names, string.format("%s (%d)", GetZoneNameById(zoneId), zoneId))
      end
      return ids, names
    end
    
    --/script d(GetAbilityName())
    --ProminentV2.lua
    local Prominent = {
      [1051] = { --CR
        ["|c08BD1DProminent Alerts|r"] = {"|c08BD1D强烈警告|r", "以下警告具有强烈的视觉和音效提示"},
        ["Alert Direct Current"] = {"震荡光束 警告", "瑞丽昆恩（电）释放可打断的震荡光束时，显示突出警报"},
        ["Alert Glacial Spikes"] = {"冰爆 警告", "加伦韦（冰）释放可打断的冰爆时，显示突出警报"},
        ["Alert Creeper Spawn"] = {"藤蔓生成 警告", "藤蔓生成时，显示突出警报"},
        ["Alert Grievous Retaliation"] = {"队友影子 警告", "当你尝试救一个影子还存在的玩家时，显示突出警报"},
      },
      [1344] = { --DSR
        ["|c08BD1DProminent Alerts|r"] = {"|c08BD1D强烈警告|r", "以下警告具有强烈的视觉和音效提示"},
        ["Alert Cascading Boot"] = {"冰踢 警告", "当监管者使用冰踢攻击（击退）你时，显示突出警报"},
      },
      [975] = { --HoF
        ["|c08BD1DProminent Alerts|r"] = {"|c08BD1D强烈警告|r", "以下警告具有强烈的视觉和音效提示"},
        ["Alert Direct Current"] = {"震荡光束 警告", "当顶级机械体（二王）释放可以打断的震荡光束时，显示突出警告"},
        ["Alert Reclaim the Ruined"] = {"自爆机械 警告", "当重组理事（四王）战斗中生成自爆小怪时，显示突出警告"},
        ["Alert Stomp"] = {"践踏 警告", "当组装大将军（尾王）释放可格挡的践踏时，显示突出警告"},
      },
      [1196] = { --KA
        ["|c08BD1DProminent Alerts|r"] = {"|c08BD1D强烈警告|r", "以下警告具有强烈的视觉和音效提示"},
        ["Alert Hemorrhage Ended (Tank Only)"] = {"血球爆炸后 警告 (仅坦克)", "当你是Tank且二楼血球爆炸后，显示突出警告，提醒你嘲讽血球爆炸产生的巨型史莱姆"},
      },
      [1478] = { --LC
        ["|c08BD1DProminent Alerts|r"] = {"|c08BD1D强烈警告|r", "以下警告具有强烈的视觉和音效提示"},
        ["Alert Darkness Inflicted"] = {"黑暗侵染 警告", "当你叠加3层蠕动黑暗，获得黑暗侵染时，显示突出警告"},
        ["Alert Fate Sealer"] = {"命运封印者 警告", "当你是Tank且神秘破裂碎片（三王）召唤命运封存球体时，显示突出警告"},
      },
      [725] = { --MoL
        ["|c08BD1DProminent Alerts|r"] = {"|c08BD1D强烈警告|r", "以下警告具有强烈的视觉和音效提示"},
        ["Alert Shattering Strike"] = {"碎石闪击打击 警告", "当野蛮人小怪瞄准你释放降低护甲的技能时，显示突出警告"},
        ["Alert Grip of Lorkhaj"] = {"洛克汗之握 警告", "当你被被遗忘的札加萨（一王）诅咒点名时，显示突出警告"},
        ["Alert Threshing Wings"] = {"翻滚之握 警告", "当你需要用格挡避免拉克哈特（尾王）的击退时，显示突出警告"},
        ["Alert Unstable Void"] = {"不稳定虚无 警告", "当你被点名不稳定虚无，需要远离队伍处理时，显示突出警告"},
      },
      [1263] = { --RG
        ["|c08BD1DProminent Alerts|r"] = {"|c08BD1D强烈警告|r", "以下警告具有强烈的视觉和音效提示"},
        ["Alert Savage Blitz"] = {"野蛮冲锋 警告", "当奥西索（一王）冲锋时，显示突出警告"},
      },
      [1427] = { --SE
        ["|c08BD1DProminent Alerts|r"] = {"|c08BD1D强烈警告|r", "以下警告具有强烈的视觉和音效提示"},
        ["Alert Chain Pull"] = {"锁链拉扯 警告", "当大主教亚赛里亚（一王）点名你锁链，需要挣脱时，显示突出警告"},
      },
      [1121] = { --SS
        ["|c08BD1DProminent Alerts|r"] = {"|c08BD1D强烈警告|r", "以下警告具有强烈的视觉和音效提示"},
        ["Alert Shield Charge"] = {"盾牌冲锋 警告", "当小怪瞄准你释放盾牌冲锋时，显示突出警告"},
        ["Alert Sundering Gale"] = {"狂风撕裂 警告", "当尾王传送门中Mini对你释放扇形击退AOE时，显示突出警告"},
      },
      [1082] = { --BRP
        ["|c08BD1DProminent Alerts|r"] = {"|c08BD1D强烈警告|r", "以下警告具有强烈的视觉和音效提示"},
        ["Alert Lava Whip"] = {"熔岩鞭", "当帝国无畏骑士瞄准你释放熔岩鞭时，显示突出警告"},
      },
      [635] = { --DSA
        ["|c08BD1DProminent Alerts|r"] = {"|c08BD1D强烈警告|r", "以下警告具有强烈的视觉和音效提示"},
        ["Alert Heat Wave"] = {"热力波 警告", "当火法师释放热力波时，显示突出警告"},
        ["Alert Winter's Reach"] = {"凛冬之触 警告", "当冰法师释放凛冬之触时，显示突出警告"},
        ["Alert Draining Poison"] = {"汲取资源 警告", "当契约猎手游侠（六层怪）瞄准你释放汲取资源时，显示突出警告。你应该闪避来避免被耗尽资源"},
      },
      [1436] = { --endlessArchive
        ["|c08BD1DProminent Alerts|r"] = {"|c08BD1D强烈警告|r", "以下警告具有强烈的视觉和音效提示"},
        ["Alert Grasp of Lorkhaj"] = {"洛克汗之握 警告", "当你当你被被遗忘的札加萨诅咒点名时，显示突出警告"},
        ["Alert Meteor Call"] = {"召唤流星 警告", "当传奇神秘人召唤流星时，显示突出警告"},
        ["Alert Venomous Arrow (Arc 4+)"] = {"剧毒箭矢 警告 (Arc 4+)", "当在Arc4+以上进度时，弓箭怪物瞄准你释放剧毒箭矢且其身上无高级怯懦时，显示突出警告。该Dot会快照当前的怪物面板，因此在之后给怪物施加Debuff后该Dot依然保持较高伤害。所以最好躲开这个技能"},
      },
      [677] = { --MA
        ["|c08BD1DProminent Alerts|r"] = {"|c08BD1D强烈警告|r", "以下警告具有强烈的视觉和音效提示"},
        ["Alert Poison Arrow Spray"] = {"剧毒箭矢 警告", "当你在树荫拱顶中被毒箭命中需要解毒时，显示突出警报"},
        ["Alert Volatile Poison"] = {"暴烈毒素 警告", "当你在树荫拱顶中踩到蘑菇需要解毒时，显示突出警告"},
        ["Alert Heat Wave"] = {"热力波 警告", "当火法师释放热力波时，显示突出警告"},
        ["Alert Teleport Strike"] = {"传送打击 警告", "当夜刃小怪埋伏你时，显示突出警告"},
        ["Alert Soul Tether"] = {"灵魂束链 警告", "当夜刃小怪释放灵魂束链时，显示突出警告"},
      },
      [1227] = { --VH
        ["|c08BD1DProminent Alerts|r"] = {"|c08BD1D强烈警告|r", "以下警告具有强烈的视觉和音效提示"},
        ["Alert Heat Wave"] = {"热力波 警告", "当火法师释放热力波时，显示突出警告"},
        ["Alert Winter's Reach"] = {"凛冬之触 警告", "当冰法师释放凛冬之触时，显示突出警告"},
      },
    }
    
    --Effects.lua
    local Effect = {
      [-1] = { --General
        ["|c08BD1DEffect Timers|r"] = {"|c08BD1D效果计时器|r", "这些都是经过精心设计的计时器，与即将到来的开始/获得施法同时显示，通常用于特定的定时机制，如对自身的debuff"},
        ["Show Magma Shell Timer"] = {"显示熔岩护甲(龙骑)计时器", "显示一个\"警告\"计时器，提示你熔岩护甲的持续时间"},
        ["Show Fencer's Parry"] = {"显示销赃者格挡(篆刻脚本)计时器", "显示一个\"警告\"计时器，提示你偏转直接伤害的持续时间"},
      },
      [1051] = { --Cloudrest
        ["|c08BD1DEffect Timers|r"] = {"|c08BD1D效果计时器|r", "这些都是经过精心设计的计时器，与即将到来的开始/获得施法同时显示，通常用于特定的定时机制，如对自身的debuff"},
        ["Show Hoarfrost Timer"] = {"显示 冰风 计时器", "显示一个\"警告\"计时器，当冰风将要杀死你时（老兵难度中）"},
        ["Show Voltaic Overload Timer"] = {"显示 超载 计时器", "显示一个\"警告\"计时器，当处于超载不应切手时"},
      },
      [1263] = {
        ["|c08BD1DEffect Timers|r"] = {"|c08BD1D效果计时器|r", "这些都是经过精心设计的计时器，与即将到来的开始/获得施法同时显示，通常用于特定的定时机制，如对自身的debuff"},
        ["Show Death Touch Timer"] = {"显示 死亡之触 计时器", "显示一个\"警告\"计时器，当你的巴塞诅咒即将爆炸"},
      },
      [1478] = { --Lucent Citadel
        ["|c08BD1DEffect Timers|r"] = {"|c08BD1D效果计时器|r", "这些都是经过精心设计的计时器，与即将到来的开始/获得施法同时显示，通常用于特定的定时机制，如对自身的debuff"},
        ["Show Fate Sealer Timer"] = {"显示 命运封印者 计时器", "显示一个\"警告\"计时器，当命运封印球体开始攻击"},
        ["Show Arcane Knot Timer"] = {"显示 奥术结 计时器", "显示一个\"警告\"计时器，为当前奥术结的持有时间"},
      },
      [725] = { --Maw of Lorkhaj
        ["|c08BD1DEffect Timers|r"] = {"|c08BD1D效果计时器|r", "这些都是经过精心设计的计时器，与即将到来的开始/获得施法同时显示，通常用于特定的定时机制，如对自身的debuff"},
        ["Show Shattered Timer"] = {"显示 碎石 计时器", "显示一个\"警告\"计时器，当你的护甲被碎石闪击降低"},
      },
    }
    
    local function ReplaceProminent(ID, Old)
      --Replace Effect
      local New = Effect[ID]
      local Start = false
      if New then
        for i = 1, #Old do
          if Start then
            if Old[i].name and New[Old[i].name] then
              Old[i].tooltip = New[Old[i].name][2]
              Old[i].name = New[Old[i].name][1]
            end
          else
            if Old[i].title and New[Old[i].title] then
              Old[i].text = New[Old[i].title][2]
              Old[i].title = New[Old[i].title][1]
              Start = true
            end
          end
        end
      end
      
      --Replace Prominent
      New = Prominent[ID]
      Start = false
      if New then
        for i = 1, #Old do
          if Start then
            if Old[i].name and New[Old[i].name] then
              Old[i].tooltip = New[Old[i].name][2]
              Old[i].name = New[Old[i].name][1]
            end
          else
            if Old[i].title and New[Old[i].title] then
              Old[i].text = New[Old[i].title][2]
              Old[i].title = New[Old[i].title][1]
              Start = true
            end
          end
        end
      end
      
      --Return Results
      return Old
    end
    
    --Settings.lua
    local NewTable = {
        {
          type = "checkbox",
          name = "解锁UI",
          tooltip = "解锁框架的移动功能",
        },
---------------------------------------------------------------------
-- general
        {
            type = "submenu",
            name = "常规设置",
            controls = {
                {
                    type = "checkbox",
                    name = "显示 施法开始警告",
                    tooltip = "在你成为开始施法的目标时显示警报 (ACTION_RESULT_BEGIN)",
                },
                {
                    type = "checkbox",
                    name = "      忽视非怪物来源施法",
                    tooltip = "如果施法不是来自怪物（如玩家来源），则不显示开始时警告",
                },
                {
                    type = "checkbox",
                    name = "显示 施法获得警告",
                    tooltip = "在你从怪物处 \"获得\" 施法时显示警告  (ACTION_RESULT_GAINED 或手动设置的 ACTION_RESULT_GAINED_DURATION)",
                },
                {
                    type = "checkbox",
                    name = "显示 对其他目标的施法警告",
                    tooltip = "当你队伍中的其他人成为特定能力的目标，或者在某些情况下，当敌人对自身施放某种能力时，显示警告。这是一个手动编辑列表，其中列出了足以影响到你的关键能力",
                },
                {
                    type = "checkbox",
                    name = "显示 可伤害计时器",
                    tooltip = "对于某些遭遇战，显示一个计时器，说明何时 BOSS 会变得可伤害、可嘲讽或返回场地等",
                },
                {
                    type = "divider",
                },
                {
                    type = "checkbox",
                    name = "显示 奥术师 引导计时器",
                    tooltip = "显示施放奥术师特定引导技能的计时器",
                },
                {
                    type = "checkbox",
                    name = "显示 龙骑 熔岩护甲 计时器",
                    tooltip = "显示熔岩护甲持续时间的计时器",
                },
                {
                    type = "checkbox",
                    name = "显示 圣殿骑士 辐光毁灭 计时器",
                    tooltip = "显示辐光毁灭引导时间的计时器",
                },
                {
                    type = "checkbox",
                    name = "显示 雕刻脚本 销赃者格挡 计时器",
                    tooltip = "显示销赃者格挡持续时间的计时器",
                },
            }
        },
-- boss health bar
        {
            type = "submenu",
            name = "垂直 Boss 血条设置",
            controls = {
                {
                    type = "checkbox",
                    name = "显示 BOSS 血条",
                    tooltip = "为基于百分比的机制显示带有标记的垂直 BOSS 血条",
                },
                {
                    type = "slider",
                    name = "尺寸",
                    tooltip = "显示垂直 BOSS 血条的尺寸。注意：某些元素在重新加载前可能无法正确更新尺寸",
                },
                {
                    type = "checkbox",
                    name = "使用 \"向下取整\" 舍入方式",
                    tooltip = "是否使用\"向下取整\"或\"四舍五入\"的方式显示 BOSS 血量 %\n\n开启时，血量相对于机制%更加精确\n\n关闭时，血量将与其他UI的表现一致",
                },
                {
                    type = "submenu",
                    name = "舍入: 为什么?",
                    controls = {
                        {
                            type = "description",
                            text = "基于血量的机制通常会以 50.999% 这样的百分比显示，但默认用户界面和大多数附加组件都使用 \"zo_round\" 对显示的血量百分比进行四舍五入。这是常见的四舍五入方法，例如 50.4 四舍五入为 50，50.5 四舍五入为 51。这就意味着，当我们说一个机制在 50%时发生，它仍然可以在用户界面上显示 51%！为了解决这个问题，\"向下取整\" 会将小数舍入更小的整数。这意味着 50.999 被舍入为 50，这就与触发 BOSS 机制的方式一致了。不过我还是保留了常用的四舍五入方法作为选项，因为有些人可能更希望整个用户界面保持一致，即使只有半个百分点的差别",
                        }
                    },
                },
            }
        },
-- subtitles
        {
            type = "submenu",
            name = "杂项设置",
            controls = {
                {
                    type = "checkbox",
                    name = "在聊天中显示字幕",
                    tooltip = "在聊天中显示 NPC 对话字幕。如果有多行字幕，颜色格式会很奇怪",
                },
                {
                    type = "dropdown",
                    name = "无字幕区域",
                    tooltip = "在这些区域中聊天时不会显示字幕。从下拉菜单中选择一个即可移除",
                    setFunc = function(value)
                        Crutch.savedOptions.subtitlesIgnoredZones[value] = nil
                        CHAT_SYSTEM:AddMessage(string.format("从字幕忽略区移除 %s(%d)", GetZoneNameById(value), value))
                        local ids, names = GetNoSubtitlesZoneIdsAndNames()
                        CrutchAlerts_NoSubtitlesZones:UpdateChoices(names, ids)
                    end,
                },
                {
                    type = "editbox",
                    name = "添加无字幕区域ID",
                    tooltip = "输入区域ID来添加无字幕列表",
                    setFunc = function(value)
                        local zoneId = tonumber(value)
                        local zoneName = GetZoneNameById(zoneId)
                        if (not zoneId or not zoneName or zoneName == "") then
                            CHAT_SYSTEM:AddMessage(value .. " 为非法区域ID！")
                            return
                        end
                        Crutch.savedOptions.subtitlesIgnoredZones[zoneId] = true
                        CHAT_SYSTEM:AddMessage(string.format("为字幕忽略区添加 %s(%d)", zoneName, zoneId))
                    end,
                },
            }
        },
-- debug
        {
            type = "submenu",
            name = "调试设置",
            controls = {
                {
                    type = "checkbox",
                    name = "显示高难队长决策",
                    tooltip = "当发生某些重要事件时，在文本聊天中显示可能的信息。例如，有人在 DSR 中捡到了火穹",
                },
                {
                    type = "checkbox",
                    name = "在警报中显示调试信息",
                    tooltip = "在警报上添加一小行文本，显示 ID 和其他调试信息",
                },
                {
                    type = "checkbox",
                    name = "在聊天框显示调试信息",
                    tooltip = "几乎每次启用战斗事件时都会在聊天框显示信息 -- 非常吵！",
                },
                {
                    type = "checkbox",
                    name = "显示其他调试",
                    tooltip = "显示其他调试信息",
                },
                {
                    type = "checkbox",
                    name = "显示画线距离",
                    tooltip = "启用时，Crutch在被机制点名的玩家间画线，并在线条上显示距离",
                },
            },
        },
---------------------------------------------------------------------
-- trials
        {
            type = "description",
            title = "试炼",
            text = "以下是特定试炼中特殊机制的设置",
        },
        {
            type = "submenu",
            name = "庇护圣所(AS)",
            controls = {
                {
                    type = "checkbox",
                    name = "当亵渎爆破（扇形AOE）点名你时 播放音效",
                    tooltip = "当洛希斯（一王）点名你释放亵渎爆破（扇形AOE）时，播放音效",
                },
                {
                    type = "checkbox",
                    name = "当亵渎爆破（扇形AOE）点名其他人时 播放音效",
                    tooltip = "当洛希斯（一王）点名其他人释放亵渎爆破（扇形AOE）时，播放音效",
                },
            }
        },
        {
            type = "submenu",
            name = "云息城(CR)",
            controls = ReplaceProminent(1051, Crutch.GetProminentSettings(1051, Crutch.GetEffectSettings(1051, {
                {
                    type = "checkbox",
                    name = "显示 矛机制 指示器",
                    tooltip = "显示有多少矛上楼、下楼和球被消除",
                },
                {
                    type = "checkbox",
                    name = "播放 矛机制 音效",
                    tooltip = "当矛在楼上生成时，播放CP技能提交音效",
                },
                {
                    type = "checkbox",
                    name = "显示 叠火 分组",
                    tooltip = "当进入泽玛亚斩杀阶段且加火时，显示被点叠火的2人应该去哪侧(这与RaidNotifier插件的提示相同)",
                },
                {
                    type = "checkbox",
                    name = "染色Ody死亡图标",
                    tooltip = "需要OdySupportIcons插件。如果死亡队友的影子依然存在，将其Ody死亡图标染为紫色",
                },
            }))),
        },
        {
            type = "submenu",
            name = "恐帆礁石(DSR)",
            controls = ReplaceProminent(1344, Crutch.GetProminentSettings(1344, {
                {
                    type = "checkbox",
                    name = "警告 电Debuff 层数",
                    tooltip = "当你身上电Debuff层数过高时，显示突出警告并发生Ding的音效",
                },
                {
                    type = "slider",
                    name = "电Debuff层数阈值",
                    tooltip = "发出警告的最低层数",
                },
                {
                    type = "checkbox",
                    name = "警告 毒Debuff 层数",
                    tooltip = "当你身上毒Debuff层数过高时，显示突出警告并发生Ding的音效",
                },
                {
                    type = "slider",
                    name = "毒Debuff层数阈值",
                    tooltip = "发出警告的最低层数",
                },
                {
                    type = "checkbox",
                    name = "显示顺劈指引",
                    tooltip = "绘制尾王顺劈的大致范围，需要OdySupportIcons插件",
                },
            })),
        },
        {
            type = "submenu",
            name = "制造大厅(HoF)",
            controls = ReplaceProminent(975, Crutch.GetProminentSettings(975, {
                {
                    type = "checkbox",
                    name = "显示重组理事（四王）的安全点",
                    tooltip = "在重组理事（四王）战斗中，在秒杀护盾外的地方显示图标。需要OdySupportIcons插件",
                },
                {
                    type = "slider",
                    name = "重组理事安全点图标尺寸",
                },
                {
                    type = "checkbox",
                    name = "显示组装大将军（尾王）斩杀点位图标",
                    tooltip = "在地图上显示组装大将军（尾王）斩杀站位图标。需要OdySupportIcons插件",
                },
                {
                    type = "slider",
                    name = "组装大将军斩杀站位图标尺寸",
                },
            })),
        },
        {
            type = "submenu",
            name = "凯恩之盾(KA)",
            controls = ReplaceProminent(1196, Crutch.GetProminentSettings(1196, {
                {
                    type = "checkbox",
                    name = "显示 爆炸矛落点",
                    tooltip = "在存在长枪小怪的战斗中，显示爆炸矛AOE大致的落点。需要OdySupportIcons插件。",
                },
                {
                    type = "checkbox",
                    name = "显示 血牢图标",
                    tooltip = "在被点名血牢的玩家头上显示图标，该提示可早于特效。需要OdySupportIcons插件。",
                },
                {
                    type = "checkbox",
                    name = "显示 法格拉文领主（尾王） 2楼DD站位图标",
                    tooltip = "在法格拉文领主（尾王）战斗中，显示DD重叠站位的图标。需要OdySupportIcons插件。",
                },
                {
                    type = "slider",
                    name = "法格拉文领主 DD重叠站位图标尺寸",
                },
            })),
        },
        {
            type = "submenu",
            name = "卢晶堡垒(LC)",
            controls = ReplaceProminent(1478, Crutch.GetProminentSettings(1478,  Crutch.GetEffectSettings(1478, {
                {
                    type = "checkbox",
                    name = "显示 卡沃特·阿格南 出生点",
                    tooltip = "为卡沃特·阿格南 出生点显示图标，需要OdySupportIcons插件",
                },
                {
                    type = "slider",
                    name = "卡沃特·阿格南 图标尺寸",
                    tooltip = "卡沃特·阿格南 出生点图标尺寸",
                },
                {
                    type = "checkbox",
                    name = "显示 神秘破裂碎片（三王）镜子图标",
                    tooltip = "在神秘破裂碎片（三王）战斗中，为每面镜子显示图标",
                },
                {
                    type = "checkbox",
                    name = "    数字图标",
                    tooltip = "为镜子使用1~8进行标记显示，而不是方位",
                },
                {
                    type = "slider",
                    name = "镜子图标尺寸",
                    tooltip = "镜子图标尺寸",
                },
                {
                    type = "checkbox",
                    name = "显示 奥术传送 图标和连线",
                    tooltip = "在将要或已经被点名奥术传送（奥术结阶段，达利厄尔·莱蒙斯连线点名）的队员头顶显示图标和连线",
                },
                {
                    type = "dropdown",
                    name = "显示 冲锋易伤（换T） 计时器",
                    tooltip = "在佐林（尾王）战斗中，为附带易伤的冲锋重击显示警告计时器。如果设置为'仅坦克'，只有在你职能是坦克时才显示。",
                    choices = {"从不", "仅坦克", "总是"},
                },
                {
                    type = "checkbox",
                    name = "显示 佐林（尾王）线条AOE 站位图标",
                    tooltip = "在佐林（尾王）战斗中，为小队成员站位显示图标（会在试炼开始时显示，用于练习）。需要OdySupportIcons插件。",
                },
                {
                    type = "slider",
                    name = "佐林线条AOE图标尺寸",
                    tooltip = "佐林线条AOE图标尺寸",
                },
            }))),
        },
        {
            type = "submenu",
            name = "洛克汗的巨口(MoL)",
            controls = ReplaceProminent(725, Crutch.GetProminentSettings(725, Crutch.GetEffectSettings(725, {
                {
                    type = "checkbox",
                    name = "显示 净化地板 冷却",
                    tooltip = "在被遗忘的札加萨（一王）老兵难度战斗中，显示净化地板的冷却情况（25秒）",
                },
                {
                    type = "checkbox",
                    name = "显示 双子变色机制",
                    tooltip = "在瓦沙艾和斯金莱（二王）战斗中，如果你被点名变色则显示突出警告",
                },
            }))),
        },
        {
            type = "submenu",
            name = "骨笼(OC)",
            controls = {
                {
                    type = "checkbox",
                    name = "Show group-wide Caustic Carrion",
                    tooltip = "Shows a progress bar for the group member with the highest number (and tick progress) of Caustic Carrion stacks. Changes color based on number of stacks, with a lower threshold on Jynorah + Skorkhif at 5 stacks for red",
                },
                {
                    type = "checkbox",
                    name = "    Show additional group members",
                    tooltip = "Shows additional debug-ish text under the Caustic Carrion progress bar for the stacks and tick time of all group members",
                },
                {
                    type = "checkbox",
                    name = "Show titans' health bars",
                    tooltip = "Shows Blazeforged Valneer's and Sparkstorm Myrinax's health using the vertical boss health bars",
                },
                {
                    type = "dropdown",
                    name = "Show Stricken timer",
                    tooltip = "Shows an \"alert\" timer for Stricken. If set to \"Tank Only\" it will display only if your LFG role is tank",
                    choices = {"关闭", "仅坦克", "开启"},
                },
                {
                    type = "checkbox",
                    name = "Show Dominator's Chains tether",
                    tooltip = "Shows icons above and a line connecting group members who are about to (or have already received) the Dominator's Chains tether from Overfiend Kazpian. Requires OdySupportIcons",
                },
            },
        },
        {
            type = "submenu",
            name = "石林(RG)",
            controls = ReplaceProminent(1263, Crutch.GetProminentSettings(1263, Crutch.GetEffectSettings(1263, {
                {
                    type = "checkbox",
                    name = "显示 毒点名玩家 处理方位",
                    tooltip = "在奥西索（一王）战斗中，显示毒点名的玩家应该去哪侧解毒。该提示与Qcell's Rockgrove Helper插件的结果相同。",
                },
                {
                    type = "dropdown",
                    name = "显示 流血dot 计时器",
                    tooltip = "在火焰先驱巴塞（二王）战斗中，显示胖子造成的流血dot的计时器。如果设置为\"仅自身/治疗位\"，仅当你为治疗职能或dot作用于自身时，显示计时器",
                    choices = {"从不", "仅自身/治疗位", "总是"},
                    choicesValues = {"NEVER", "HEAL", "ALWAYS"},
                },
            }))),
        },
        {
            type = "submenu",
            name = "理智边缘(SE)",
            controls = ReplaceProminent(1427, Crutch.GetProminentSettings(1427, {
                {
                    type = "checkbox",
                    name = "标记安苏尔（尾王）场地的中央",
                    tooltip = "在折磨者安苏尔（尾王）战斗中，在场地中央显示图表。需要OdySupportIcons插件",
                },
                {
                    type = "slider",
                    name = "安苏尔场地图标尺寸",
                },
            })),
        },
        {
            type = "submenu",
            name = "太阳尖顶(SS)",
            controls = ReplaceProminent(1121, Crutch.GetProminentSettings(1121, {
                {
                    type = "checkbox",
                    name = "显示 洛克斯提兹（一王）HM模式光束AOE 站位图标",
                    tooltip = "在洛克斯提兹（一王）HM模式战斗中，显示8个DD和2个H的防重叠站位图标。需要OdySupportIcons插件。",
                },
                {
                    type = "checkbox",
                    name = "    洛克斯提兹（一王）单奶图标",
                    tooltip = "在洛克斯提兹（一王）HM模式战斗中使用单奶站位图标，显示9个DD和1个H的站位图标。如果在与洛克斯提兹战斗中修改该选项，将在下次图标显示时，才会更新图标。",
                },
                {
                    type = "slider",
                    name = "洛克斯提兹HM图标尺寸",
                    tooltip = "在图标隐藏后再次显示时，才会更新图标尺寸",
                },
                {
                    type = "checkbox",
                    name = "显示 尤尔纳克林（二王）站位图标",
                    tooltip = "在尤尔纳克林（二王）战斗中，显示尤尔纳克林降落时头部和右翅膀位置图标。需要OdySupportIcons插件。",
                },
                {
                    type = "checkbox",
                    name = "    尤尔纳克林（二王）左侧站位图标",
                    tooltip = "在尤尔纳克林（二王）战斗中，使用左侧图标代替右侧图标。",
                },
                {
                    type = "slider",
                    name = "尤尔纳克林图标尺寸",
                },
            })),
        },
        {
            type = "description",
            title = "竞技场",
            text = "以下是特定竞技场中特殊机制的设置",
        },
        {
            type = "submenu",
            name = "黑玫瑰监狱(BRP)",
            controls = ReplaceProminent(1082, Crutch.GetProminentSettings(1082, {})),
        },
        {
            type = "submenu",
            name = "龙星竞技场(DSA)",
            controls = ReplaceProminent(635, Crutch.GetProminentSettings(635, {
                {
                    type = "checkbox",
                    name = "普通难度下受伤警告",
                    tooltip = "如果在普通难度龙星竞技场中受到某些技能伤害，则会显示恼人的文字并敲响警钟。这样做是为了方便进行afk伐木，在需要手动干预时通知您。",
                },
            })),
        },
        {
            type = "submenu",
            name = "无尽档案塔",
            controls = ReplaceProminent(1436, Crutch.GetProminentSettings(1436, {
                {
                    type = "checkbox",
                    name = "自动标记 传奇者",
                    tooltip = "当你准星扫过传奇者小怪时，自动使用游戏基础图标标记他们。在你移动过快，或有NPC和队友从你面前走过时，有小概率发生标记错误。",
                },
                {
                    type = "checkbox",
                    name = "自动标记 沉默 施法者",
                    tooltip = "和上者类似，不过标记可以释放沉默的小怪。它们会在你距离足够近的时候，释放沉默（术士终极技能同款）",
                },
                {
                    type = "checkbox",
                    name = "显示 酿酒师药剂点",
                    tooltip = "在酿酒师可能投掷了缩小药剂的地方显示图标。注意这对扔向队友召唤物的药剂无效。需要OdySupportIcons插件",
                },
                {
                    type = "checkbox",
                    name = "音效提示 升天击 / 威力猛击",
                    tooltip = "当你被双手或持盾敌人，选为升天击或威力猛击的目标时，播放音效提示",
                },
                {
                    type = "checkbox",
                    name = "音效提示 危险技能",
                    tooltip = "为特定的高危技能，播放音效提示",
                },
            })),
        },
        {
            type = "submenu",
            name = "漩涡竞技场(MA)",
            controls = ReplaceProminent(677, Crutch.GetProminentSettings(677, {
                {
                    type = "checkbox",
                    name = "显示当前轮数",
                    tooltip = "在每轮开始时在聊天栏显示信息。同样也在倒数第二轮开始15秒后，提醒马上到最后一轮",
                },
                {
                    type = "editbox",
                    name = "阶段 1 额外文本",
                    tooltip = "第 1 阶段 最后一轮提醒时的附加文本",
                },
                {
                    type = "editbox",
                    name = "阶段 2 额外文本",
                    tooltip = "第 2 阶段 最后一轮提醒时的附加文本",
                },
                {
                    type = "editbox",
                    name = "阶段 3 额外文本",
                    tooltip = "第 3 阶段 最后一轮提醒时的附加文本",
                },
                {
                    type = "editbox",
                    name = "阶段 4 额外文本",
                    tooltip = "第 4 阶段 最后一轮提醒时的附加文本",
                },
                {
                    type = "editbox",
                    name = "阶段 5 额外文本",
                    tooltip = "第 5 阶段 最后一轮提醒时的附加文本",
                },
                {
                    type = "editbox",
                    name = "阶段 6 额外文本",
                    tooltip = "第 6 阶段 最后一轮提醒时的附加文本",
                },
                {
                    type = "editbox",
                    name = "阶段 7 额外文本",
                    tooltip = "第 7 阶段 最后一轮提醒时的附加文本",
                },
                {
                    type = "editbox",
                    name = "阶段 8 额外文本",
                    tooltip = "第 8 阶段 最后一轮提醒时的附加文本",
                },
                {
                    type = "editbox",
                    name = "阶段 9 额外文本",
                    tooltip = "第 9 阶段 最后一轮提醒时的附加文本",
                },
                {
                    type = "checkbox",
                    name = "普通难度下受伤警告",
                    tooltip = "如果在普通难度旋涡竞技场中受到某些技能伤害，则会显示恼人的文字并敲响警钟。这样做是为了方便进行afk伐木，在需要手动干预时通知您。",
                },
            })),
        },
        {
            type = "submenu",
            name = "瓦特什兰洞穴(VH)",
            controls = ReplaceProminent(1227, Crutch.GetProminentSettings(1227, {
                {
                    type = "checkbox",
                    name = "显示丢失的附加分数",
                    tooltip = "仅在老兵难度中起效，且只推荐用于刷分。如果你跳过整组战斗，跳过的追加怪将不准确。",
                },
            })),
        },
        {
            type = "description",
            title = "地下城",
            text = "以下是特定地下城中特殊机制的设置",
        },
        {
            type = "submenu",
            name = "船工之憾地牢",
            controls = {
                {
                    type = "checkbox",
                    name = "灵魂炸弹分摊提示",
                    tooltip = "在工头布拉迪干（一王）HM模式战斗中，当出现2个灵魂炸弹（分摊）点名时，显示推荐的分摊队友。如果有OdySupportIcons插件，则会在对应玩家头上显示标记。该提示按用户名进行分摊选择。",
                },
            }
        },
    }

    --Damageable.lua
    local NpcName = {
      ["泽玛亚"] = "Z'Maja",
      ["图拉塞尔"] = "Turlassil",
      ["莱拉纳尔"] = "Lylanar",
      ["舰队女王塔勒里亚"] = "Fleet Queen Taleria",
      ["组装将军"] = "Assembly General",
      ["迪瓦伊斯·弗雷"] = "Divayth Fyr",
      ["法尔格拉文领主"] = "Lord Falgravn",
      ["佐林"] = "Xoryn",
      ["米拉洛"] = "Mirarro",
      ["库兰-德罗"] = "Kulan-Dro",
      ["斯科尔基弗"] = "Skorkhif",
      ["烈焰先驱巴塞"] = "Flame-Herald Bahsei",
      ["主教亚赛拉"] = "Exarchanic Yaseyla",
      ["首席巫师特尔乌万"] = "Archwizard Twelvane",
      ["法士威顿"] = "Warlock Vanton",
      ["纳温塔丝"] = "Nahviintaas",
      ["树林幽影"] = "Shade of the Grove",
      ["艾多兰"] = "Aydolan",
      ["科万·吉里恩"] = "Kovan Giryon",
      ["女族长雷拉蒂·泰尔瓦尼"] = "Matriarch Lladi Telvanni",
      ["萨蕾西亚"] = "Saresea",
      ["盲眼邪神"] = "The Blind",
      ["斯纳格·格罗马舒尔"] = "Snagg gro-Mashul",
      ["驯兽大师"] = "The Beast Master",
      ["荆棘夫人"] = "Lady Thorn",
      ["塔尔菲格"] = "Talfyg",
      ["贾卡恩"] = "Jakarn",
      ["萨利迪尔"] = "Sarydil",
      ["德拉诺斯·维拉多尔"] = "Dranos Velador",
      ["悲泣之女"] = "The Weeping Woman",
      ["莎莱雅"] = "Tharayya",
      ["德鲁伊劳蕾尔"] = "Druid Laurel",
      ["科拓·阿不思"] = "Cato Albus",
      ["首席术士范多拉伦"] = "Prime Sorcerer Vandorallen",
      ["卢西娜·卡普雷尼亚"] = "Lucilla Caprenia",
      ["塞伦农"] = "Cernunnon",
      ["斯科阿尔莫领主"] = "Jarl Skjoralmor",
      ["乌黑者奥瑞恩"] = "Orryn the Black",
      ["夕月"] = "Selene",
      ["诺丽纹"] = "Noriwen",
      ["查娜·尼林修女"] = "Sister Chana Nirine",
      ["尼撒兹达"] = "Nisaazda",
      ["格伦德伍尔夫"] = "Grundwulf",
      ["飞升的维科萨"] = "Vykosa the Ascendant",
      ["安塞尔莫"] = "Anthelmir",
      ["苏醒者亚拉德罗斯"] = "Aradros the Awakened",
      ["丽兰斯"] = "Lyranth",
      ["骑士长谢里克·沙拉赞"] = "Prior Thierric Sarazen",
      ["裂隙御侍纳克里"] = "Riftmaster Naqri",
      ["瓦琳娜"] = "Valinna",
      ["卡斯卡"] = "Caska",
      ["扎吉船长"] = "Captain Za'ji",
      ["队长努米利尔"] = "Captain Numirril",
      ["守护者苏德哈里姆"] = "Guardian Sud-Hareem",
      ["佐德鲁斯男爵"] = "Baron Zaudrus",
      ["马图斯·图留斯"] = "Martus Tullius",
      ["佩林加尔大师"] = "Master Pellingare",
      ["库·塔拉"] = "K'Tora",
    }
    
    local NpcMessage = {
      --"Z'Maja"
      ["我不会被打败！如果有必要，我会砸碎这个护符。"] = "I won't be beaten! I'll smash this amulet if that's what it takes.",
      ["你竟敢挑战海蛞蝓人的力量？这是个致命的错误。"] = "You challenge the power of the Sea Sload? It shall be your last mistake.",
      ["你竟敢反抗黑暗本身？真愚蠢。"] = "You dare fight against darkness itself? Foolish.",
      ["黑暗会统治整个夏暮岛！"] = "Darkness shall reign across Summerset!",
      ["云栖城不再，而你们将迎来同样的命运。"] = "Cloudrest has already fallen. And so too shall you.",
      ["很快，我的阴影就会蔓延到整个夏暮岛上。"] = "Soon, my shadows shall spread to all of Summerset!",
      ["黑暗正在回应我。"] = "The shadows answer to me now.",
      ["你真的以为你可以反抗我的阴影吗？"] = "Do you truly think you can stand against my shadows?",
      ["我可以等。毕竟，你们都只有死路一条。"] = "I can wait. After all, your deaths are inevitable.",
      --"Turlassil"
      ["更像是新手挑战者。"] = "Fresh challengers more like.",
      ["不要起身，林恩。等一会儿就好。"] = "Don't get up, Ly. This will just be a moment.",
      ["我要来第一轮，林恩。"] = "I'll take the first round, Ly.",
      ["这仅仅是未来事物的小小预演。"] = "That was just a taste of what's to come.",
      ["你好像有点太想杀死我们的猎犬了，我不喜欢这样。"] = "You looked a little too eager to kill our hounds for my taste.",
      ["你通过了。勉强通过。"] = "You pass. Barely",
      ["我不想在你尝试之前，就解决他们，莱。"] = "I don't want to finish them off before you get a crack at them, Ly.",
      ["这不是最好的状态，莱。让我给你演示一下该怎么做。"] = "Not your finest hour, Ly. Let me show you how it's done.",
      ["如果你不生气了，莱，希望你能来提供一些帮助。"] = "If you're done sulking, Ly, some assistance would be welcome.",
      ["看起来我的霉运已经影响到你了，莱。"] = "It would seem my bad luck has rubbed off on you, Ly.",
      --"Lylanar"
      ["那你热身没有？"] = "Had your warm up then?",
      ["我来第一轮。"] = "I'll call first round.",
      ["比鸫鸟还要远。"] = "Made it farther than the thralls do.",
      ["现在，真正的战斗开始了。"] = "Now the real fight begins.",
      ["你看好了，特里。就该这么做！"] = "Watch me, Turli. This is how it's done!",
      ["我不想独占所有的兴奋。特里，为什么你不加入呢？"] = "I don't wish to hog all the excitement. Turli, why don't you get in on the action?",
      ["这是一种无力的表现，特里。我会让他们知道什么才是真正的力量。"] = "That was a limp performance, Turli. I'll show them what true power is.",
      ["你看起来并不比我好到哪去，特里。"] = "You don't look to be fairing any better than I did, Turli.",
      ["快来，特里，让我们巩固胜果。"] = "Come on, Turli, let's secure the victory.",
      --"Fleet Queen Taleria",
      ["你很大胆，竟敢闯入一位女士的私人房间。"] = "Barging into a lady's private chambers. You are bold.",
      --"Assembly General",
      ["再加工场污染严重。暂停拆卸状态。启动质量重新激活。"] = "Reprocessing yard contamination critical. Disassembly status suspended. Mass reactivation initiated.",
      --"Divayth Fyr",
      ["有趣。这些设备都自动复位了。我一点都没动。"] = "Interesting. These devices have all reset themselves. I didn't do that.",
      ["嗯。这是我见过的第二大结构，目前不活跃。"] = "Well, well. Now that's the second largest construct I've ever seen. Inactive, at the moment.",
      --"Lord Falgravn",
      ["你胆敢面对我？在你脚下潜伏着黑暗的力量，而我将拥有它！"] = "You dare face me? Baleful power lurks beneath your feet, and I will have it for my own!",
      ["你想看看我的能耐？很好！我会让你陷入更深的黑暗！"] = "You wish to see my works? Very well! I will plunge you into deeper darkness!",
      ["吃吧，我的宠物们。吃吧！"] = "Feed, my pets. Feed!",
      ["来吧！杀戮时刻开始！"] = "Come, cattle! Time for the slaughter!",
      ["见证我的盛宴！"] = "Behold, my banquet!",
      ["去吧，孩子们，喝个够！"] = "Go, children, and drink your fill!",
      --"Xoryn",
      ["比如他们！"] = "Like them!",
      --"Mirarro",
      ["别……这是……陷阱。他来了！"] = "Don't …. It's … trap. He's coming!",
      --"Kulan-Dro",
      ["你没听到我说话吗？我不是把你的选择说清楚了吗？你们会听的，凡人……即使这意味着从你们的头皮上剥下耳朵，在你们破碎的头骨上呼喊纳米拉的意志！"] = "Have you not heard me? Have I not made your choice plain? You will listen, mortals",
      --"Skorkhif",
      ["让他们受苦的人不是我吗？"] = "When I'm the one who caused their suffering?",
      --"Flame-Herald Bahsei",
      ["我们将灵魂供给伟大的夏尔瓦卡吸食，不用多久她就会降临于此！"] = "Great Xalvakka drank deep from the souls we served her. Soon, she arrives!",
      --"Exarchanic Yaseyla",
      ["你的巫术欺骗了善良的人民。它带来的就只有痛苦，你个害人精！"] = "Your sorcery deceives good people. It brings nothing but pain, malpracticer!",
      --"Archwizard Twelvane",
      ["威顿，你为什么还在犹豫？"] = "Why do you still hesitate, Vanton?",
      --"Warlock Vanton",
      ["狮鹫很强大，但你可以更强大。"] = "The gryphon is strong, but you may be stronger.",
      ["你驯服了狮鹫。它很脆弱。"] = "You tamed the gryphon. It's vulnerable.",
      ["你做到了？你唤醒了狮鹫？"] = "You did it? You woke the gryphon?",
      ["你拥有了雷光蜥蜴的力量？"] = "You have the wamasu's power?",
      ["你打败了雷光蜥蜴。你可别死啊。"] = "You beat the wamasu. Please don't die now.",
      ["雷光蜥蜴的力量可以对抗奇美拉！"] = "The wamasu's power can turn against the chimera!",
      ["你竟打败了雄狮之屋？"] = "You beat the house of the lion?",
      ["你竟夺走了狮子的火焰？"] = "Did you take the lion's fire?",
      ["你是谁？你是她的人吗？她正在伤害我。"] = "Who are you? Are you one of hers? She's hurting me.",
      --"Nahviintaas",
      ["为了重建自然的秩序。为了感化所有的过去和将来。为了纠正凡人的错误。"] = "To restore the natural order. To reclaim all that was and will be. To correct the mortal mistake.",
      --"Shade of the Grove",
      ["你想挑战猎人之林？很好，开始吧！"] = "You wish to challenge the Hunter's Grove? Very well—begin!",
      ["别在挑战中退缩，猎人。"] = "Do not wilt from this challenge, hunter.",
      ["你将面对狩猎的全部力量！"] = "You face the full might of the hunt!",
      ["你究竟是捕食者，还是猎物呢，猎人？"] = "Are you predator or prey, hunter?",
      ["我即是生命的化身！我是不可战胜的！"] = "I embody life! I cannot be defeated!",
      ["这躯壳将给你带来死亡！"] = "This shell brings your death!",
      ["这宿主我更受用！"] = "This new host serves me better!",
      --"Aydolan",
      ["你已经一路过关斩将来到了最后关卡！只剩最后一个挑战了！那就是我！"] = "You made it all the way to the end! Only one final challenge left. Me!",
      --"Kovan Giryon",
      ["祸患！我等你等了一辈子了。"] = "Scourge! I've waited a lifetime for you.",
      --"Matriarch Lladi Telvanni",
      ["这力量是我们的！我会掌控自己的命运！"] = "This power is ours! I will control my own fate!",
      --"Saresea",
      ["嗯，我猜得没错。它就在这里。"] = "Well, I was right. Here it is.",
      --"The Blind",
      ["我的法术将会摧毁所有挡道之物！"] = "My spell destroys everything in my way!",
      --"Snagg gro-Mashul",
      ["恭喜，你通过了第一项试炼。"] = "Congratulations. You've passed the first trial.",
      --"The Beast Master",
      ["出现了！大决战的胜利者！"] = "And there we have it! The winners of the Grand Melee!",
      ["这些挑战者真是意外地凶悍啊！但这个才是你们今天来到这里的真正原因！"] = "These challengers are surprisingly fierce! But here's the real reason you've come today!",
      ["什么？不可能？你怎么赢的？"] = "What? Impossible? How did you win?",
      --"Lady Thorn",
      ["干得好，塔尔菲格。你按照要求带来了维兰迪斯的女儿。她会补足我们领主的军队。"] = "Well done, Talfyg. You brought me a daughter of Verandis, as requested. She will complement our lord's army well.",
      --"Talfyg",
      ["你竟敢拒绝荆棘夫人？看啊！这本是你可以获得的力量，颤抖吧！"] = "How dare you reject Lady Thorn's offer? Look! Tremble before the power you might have wielded!",
      --"Jakarn",
      ["哈！你以为我会马上砸开它吗？我可是贾卡恩啊！或者贾——卡伦？"] = "Hah! You thought I'd crack that soon? I'm Jakarn! The Jak—Kaleen?",
      --"Sarydil",
      ["好呀，好呀。看看是什么掉进了我们的深海怪陷阱里。要么投降，要么等着被深海怪吞掉，你自己选吧。"] = "Well, well. Look what washed into our yaghra trap. You can surrender, or you can become bait. Choose.",
      --"Dranos Velador",
      ["做得好，我的鳞片朋友。你已经褪去了旧皮，蛛丝社欢迎你成为兄弟。找到薇利德雷斯，然后接受你的祝福吧。"] = "Well done, my scaled friend. You have cast off your old skin, and the Silken Ring welcomes you as a brother. Seek out Velidreth and receive your blessing.",
      --"The Weeping Woman",
      ["为了美瑞蒂亚，我们将它从我们弟兄的面前隐去，又用我们的眼泪埋葬了他们。你也会在此溺毙身亡。"] = "For her, we kept it hidden from our brethren and buried them with our tears. Here you too will drown.",
      --"Tharayya",
      ["感觉到了吧？一阵凉爽的微风，我们肯定离出口不远了！"] = "Feel that? A chill breeze. We must be nearing an exit!",
      --"Druid Laurel",
      ["他正在杀死灵体。他拿到了种子。阻止他，求你阻止他！"] = "He's killing the spirit. He has the seed. Stop him. Please stop him!",
      --"Cato Albus",
      ["谁敢来打断我？我需要这些人的性命，才能为我儿子复仇！"] = "Who dares interrupt? I cannot avenge my son without these deaths!",
      --"Prime Sorcerer Vandorallen",
      ["没人能阻止我们。你毫无胜算！"] = "No one can stop us. You stand no chance!",
      --"Lucilla Caprenia"
      ["科拓！一切都结束了。别再疯狂下去了！"] = "Cato! It's over. Stop this madness!",
      --"Cernunnon",
      ["醒来吧，渺小的领主。看到你的国家遭受的痛苦了吗？复仇吧。"] = "Wake, little Jarl. See how your kingdom burns? Reap your vengeance.",
      --"Jarl Skjoralmor",
      ["我让你到外面作战！噢，你不是我的守卫，也不是瑞驰人。我们赢了？"] = "I said to keep the fight out there! Oh, you aren't my guards. Nor are you Reachmen. We've won then?",
      --"Orryn the Black",
      ["你还在这？如果你非要欣赏我的作品，请允许我把我展示我最好的化石。"] = "You're still here? If you must admire my work, at least allow me to put my best fossil forward.",
      ["卡鲁里昂，务必要让我们的不速之客在这很长很长的逗留期间感到舒适。"] = "Caluurion. See that our uninvited guests are made comfortable for a very long stay.",
      ["你弄坏的所有东西我都能轻易替换，但卡鲁里昂……他是独一无二的。他再也回不到从前了。"] = "So many of the things you've broken I can easily replace, but Caluurion … he was a unique specimen. He'll never be the same.",
      --"Selene",
      ["该给东西了。轮到我来研究研究你了，法士！"] = "Now for payment in kind. It's my turn to study your insides, warlock!",
      --"Noriwen",
      ["阿尔库纳！"] = "Alcunar!",
      --"Sister Chana Nirine"
      ["你永远无法读到这卷轴的内容！"] = "You'll never read this scroll!",
      --"Nisaazda",
      ["我可以不那么做。"] = "This one won't have to.",
      --"Grundwulf",
      ["我感觉到了！哈哈哈！"] = "I can feel it! Haha",
      --"Vykosa the Ascendant",
      ["维科萨没说要怎么处理这些入侵者吗？所有事情都必须得让她亲自动手吗？"] = "Was Vykosa not told the intruders would be dealt with? Must she handle everything herself?",
      --"Anthelmir",
      ["这是你最后一次伤害我。彻底击败她！"] = "You cut me for the last time. Crush her!",
      --"Aradros the Awakened",
      ["你以为这个地方能吓得倒我？我可是锻火。"] = "You think this place intimidates me? I am the forge's fire.",
      --"Lyranth",
      ["我以为会更困难些的，看来银玫瑰缺的不只是仆人。"] = "I expected greater resistance. It seems the Silver Rose are short on more than servants.",
      ["我感觉到了魔族的能量在激增，它汇聚到了一起。"] = "I feel a surge in the Daedric power. It's gathering.",
      --"Prior Thierric Sarazen",
      ["这异教徒祭司以为他能阻碍我们达成神圣目标吗？"] = "Does the heathen priest believe he can stand in the way of our divine purpose?",
      --"Riftmaster Naqri",
      ["无需你参与，掌书使。我会击败所有试图通过此地的人。"] = "No need to involve you, Magnastylus. I'll beat anyone who tries to get through here.",
      --"Valinna",
      ["赶紧了结了吧。我还有重要的任务要完成。"] = "Let's be done with this. I have important tasks to see to.",
      ["你还在等什么？克沙戈？来把他带走啊。"] = "What are you waiting for? Keshargo? Come and get him.",
      ["你还活着？我们来解决一下这事，好吗？"] = "You live? Let's fix that, shall we?",
      --"Caska",
      ["嗬，看起来已经死了。"] = "Huh. Looks dead now.",
      --"Captain Za'ji",
      ["我们成功了！并没有那么难，不是吗？"] = "And we're through! That wasn't so hard now, was it?",
      ["回来，你这满身鳞片的无赖！你夺走了本该是扎吉船长的东西！"] = "Come back you scaly scallywags! You take what is rightfully Captain Za'ji's!",
      --"Captain Numirril",
      ["我是恐帆，海洋之子。我是不可战胜的！"] = "I am Dreadsail, born of the sea. I cannot be defeated!",
      --"Guardian Sud-Hareem",
      ["在那边！是梅雷尔！"] = "Over there! It's Mereel!",
      --"Baron Zaudrus",
      ["你想要的就在这儿，丽兰斯。来拿啊。"] = "What you want is right here, Lyranth. Come take it.",
      --"Martus Tullius",
      ["魔族正在把它们的能量倾注到那台机器中。"] = "The Daedra are pouring their energy into that machine!",
      --"Master Pellingare"
      ["亚琳！瓦莱尼！是爸爸！我爱你们，我想和你们聊聊！"] = "Allene! Varaine! It's your father! I love you, and I want to talk to you!",
      --"K'Tora",
      ["多爪的鲁拉，我召唤你，从深邃的重生池中出来吧！"] = "Ruella",
      ["凡人是多爪的鲁拉产卵的完美宿主。"] = "Ruella",
      ["楚拉格从黑暗深处降临！"] = "Churug",
      ["我召唤深渊的楚拉格，她的光芒会令你们眩目！"] = "Churug",
      ["希法，水手之祸，库·塔拉召唤你！"] = "Sheefar",
      ["希法，水手之祸，诺克图娜召唤你！"] = "Sheefar",
      ["吉拉维尔，库·塔拉命令你加入战斗！"] = "Girawell, K'Tora orders you into the fray!",
      ["穆斯蒂卡，库·塔拉需要你，吞浪者！"] = "Muustikar",
      ["穆斯蒂卡，诺克图娜需要你，吞浪者！"] = "Muustikar",
      ["容我向你们介绍礁锤，乌尔沃-库斯之祸！"] = "Allow me to introduce Reefhammer, the bane of Ul'vor-Kus!",
      ["诱惑的黑风暴，溺死这些蛆虫！"] = "Darkstorm",
      ["看看你们怎么应对黑风暴的魅惑。"] = "Darkstorm",
      ["感受发光的艾乔芭的力量！"] = "Feel the power of Eejoba the Radiant!",
      ["潮灭会把你劈成两半！"] = "Tidewrack",
      ["我会召唤潮灭来终结这一切。"] = "Tidewrack",
      ["库·塔拉召唤维斯卡沃来保护这座间歇魔泉！"] = "K'Tora summons Vsskalvor to protect this geyser!",
    }
    
    --Specail Setting
    
    BB.SetMenuPatch("CrutchAlertsOptions", NewTable)
    
    local Old = EVENT_MANAGER.RegisterForEvent
    
    ZO_PreHook(CrutchAlerts, "InitializeDamageable", 
      function()
        EVENT_MANAGER.RegisterForEvent = function(EVENT_MANAGER, name, event, fun, ...)
          if name == "CrutchAlertsChatHandler" then
            local Old2 = function(_, channelType, fromName, text, isCustomerService, fromDisplayName)
              fromName = NpcName[zo_strformat("<<C:1>>", fromName)] or fromName
              text = NpcMessage[text] or text
              fun(_, channelType, fromName, text, isCustomerService, fromDisplayName)
            end
            return Old(EVENT_MANAGER, name, event, Old2, ...)
          end
          return Old(EVENT_MANAGER, name, event, fun, ...)
        end
      end
    )
    
    ZO_PostHook(CrutchAlerts, "InitializeDamageable",
      function()
        EVENT_MANAGER.RegisterForEvent = Old
      end
    )

return true end