local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["SynergyToggle"] = function() if not SynergyToggle then return false end
  local NewOption = {
    {
      type = "header",
      name = "通用",
    },
    {
      type = "checkbox",
      name = "|t35:35:/esoui/art/icons/sigil_power_001.dds|t 漩涡竞技场 & 黑玫瑰监狱 增益符文",
    },
    {
      type = "checkbox",
      name = "|t35:35:/esoui/art/icons/ability_sorcerer_065.dds|t 毁灭爆发 (赫尔拉要塞HM)",
      tooltip = "增加二次确认，当你想要解除石化时 (将杀死附近队友)",
    },
    {
      type = "checkbox",
      name = "|t35:35:/esoui/art/icons/death_recap_cold_aoe2.dds|t 汹涌水域 (恐帆礁石)",
      tooltip = "增加二次确认，当你想要在二王战斗中上楼时",
    },
    {
      type = "checkbox",
      name = "|t35:35:/esoui/art/icons/collectible_memento_pearlsummon.dds|t 云栖城传送门 (避免重复下楼)",
      tooltip = "如果你持有下楼debuff，禁用该协同",
    },
    {
      type = "checkbox",
      name = "|t35:35:/esoui/art/icons/ability_necromancer_016.dds|t 咒骂 (凯恩之盾HM)",
      tooltip = "在凯恩之盾尾王中禁用该协同 (使用后遭受大量伤害)",
    },
    {
      type = "checkbox",
      name = "|t35:35:/esoui/art/icons/malatar_agonizingbolts.dds|t 妖术师的传送门 (凯恩之盾)",
      tooltip = "在凯恩之盾二王中禁用该协同 (传送上船)",
    },
    {
      type = "checkbox",
      name = "|t35:35:/esoui/art/icons/achievement_murkmire_kill_voriplasm.dds|t 净化灵魂 (石林)",
      tooltip = "在 X ms内禁用该协同，并提醒你要放在队伍之外",
    },
    {
      type = "slider",
      name = "禁用时间 (ms)",
    },
    --DD
    {
      type = "header",
      name = "DD职能",
    },
    {
      type = "checkbox",
      name = "|t35:35:/esoui/art/icons/ability_sorcerer_lightning_splash.dds|t 汲能管路 (巫师)",
    },
    {
      type = "checkbox",
      name = "|t35:35:/esoui/art/icons/ability_warden_007.dds|t 收获 (守望者)",
    },
    {
      type = "checkbox",
      name = "|t35:35:/esoui/art/icons/ability_necromancer_004.dds|t 盗墓者 (死灵)",
    },
    {
      type = "checkbox",
      name = "|t35:35:/esoui/art/icons/ability_necromancer_010_b.dds|t 纯粹痛苦 (死灵)",
    },
    {
      type = "checkbox",
      name = "|t35:35:/esoui/art/icons/ability_templar_sun_strike.dds|t 神佑碎片 (圣骑)",
      tooltip = "仅禁用该技能双回变形的协同",
    },
    {
      type = "checkbox",
      name = "|t35:35:/esoui/art/icons/ability_templar_cleansing_ritual.dds|t 洁净术 (圣骑)",
      tooltip = "针对 瘟疫突至 套装很有用\n禁用该技能的基础及所有变形的协同",
    },
    {
      type = "checkbox",
      name = "|t35:35:/esoui/art/icons/ability_u23_bloodball_chokeonit.dds|t 桑吉恩爆发 (荆棘夫人)",
      tooltip = "禁用该协同",
    },
    {
      type = "checkbox",
      name = "|t35:35:/esoui/art/icons/ability_arcanist_004.dds|t 符文破裂 (奥术)",
      tooltip = "禁用该协同",
    },
    {
      type = "checkbox",
      name = "洛克提兹 模式",
      tooltip = "当具有高级杀戮buff时，禁用不重要的协同。仅当洛克提兹之牙5件套生效时，你可以使用协同。当你的耐力低于20%时，临时允许使用协同",
    },
    {
      type = "checkbox",
      name = "月舞者 模式",
      tooltip = "当具有暗影祝福buff时，禁用不重要的协同。仅当月舞者5件套生效时，你可以使用协同",
    },
    {
      type = "checkbox",
      name = "金拉斯 模式",
      tooltip = "当具有高级狂怒buff时，禁用 充能闪电 (巫师) 协同。该设置同样对碎链斗士、希姆·贾斯的惩罚等套装生效",
    },
    {
      type = "checkbox",
      name = "武学之道 模式",
      tooltip = "当耐力高于30%时，禁用 焚烧 (无畏者)和 神佑碎片 (圣骑) 协同",
    },
    {
      type = "checkbox",
      name = "巴塞 / 珍珠项链 模式",
      tooltip = "当魔力高于 X %时，禁用 焚烧 (无畏者)和 神佑碎片 (圣骑) 协同",
    },
    {
      type = "slider",
      name = "% 魔力",
    },
    {
      type = "checkbox",
      name = "珊瑚激流 模式",
      tooltip = "当耐力高于 X %时，禁用 焚烧 (无畏者)和 神佑碎片 (圣骑) 协同",
    },
    {
      type = "slider",
      name = "% 耐力",
    },
    {
      type = "description",
      text = "如果你的队伍中有艾尔克许，你可以在T职能中打开 \"艾尔克许 模式\" 设置，它对DD职能也生效",
    },
    --Tank
    {
      type = "header",
      name = "T职能",
    },
    {
      type = "checkbox",
      name = "|t35:35:/esoui/art/icons/ability_sorcerer_storm_atronach.dds|t 充能闪电 (巫师终极技)",
      tooltip = "禁用该协同，避免偷取高级狂怒buff",
    },
    {
      type = "checkbox",
      name = "|t35:35:/esoui/art/icons/ability_nightblade_015.dds|t 隐匿之遁 (夜刃终极技)",
      tooltip = "禁用该协同，避免获得隐身",
    },
    {
      type = "checkbox",
      name = "艾尔克许 模式",
      tooltip = "当你瞄准的Boss具有艾尔克许debuff时禁用所有协同。当你的耐力低于20%时，临时允许使用协同",
    },
    --Healer
    {
      type = "header",
      name = "H职能",
    },
    {
      type = "checkbox",
      name = "|t35:35:/esoui/art/icons/collectible_memento_pearlsummon.dds|t 云栖城传送门 (全程)",
      tooltip = "完全禁用云栖城传送门协同",
    },
    --Miscellaneous
    {
      type = "submenu",
      name = "杂项",
      controls = {
        {
          type = "checkbox",
          name = "|t35:35:/esoui/art/icons/ability_warden_005_b.dds|t 冰霜逃脱(守望者)",
        },
        {
          type = "checkbox",
          name = "|t35:35:/esoui/art/icons/ability_arcanist_016_b.dds|t 通道(奥术)",
        },
        {
          type = "checkbox",
          name = "|t35:35:/esoui/art/icons/ability_u26_vampire_synergy_feed.dds|t 喂食(吸血鬼)",
        },
        {
          type = "checkbox",
          name = "|t35:35:/esoui/art/icons/achievement_darkbrotherhood_003.dds|t 哀伤匕首(黑暗兄弟会)",
        },
        {
          type = "checkbox",
          name = "Debug",
          tooltip = "将协同名称及图标输出至聊天栏",
        },
      },
    },
  }
  
  --Special Setting
  BB.SetMenuPatch("STS", NewOption)
  
return true end