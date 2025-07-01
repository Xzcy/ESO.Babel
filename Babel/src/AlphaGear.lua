local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

do if not BB.SV.BanList["AlphaGear"] then
  local lmb, rmb = '|t16:16:AlphaGear/asset/lmb.dds|t', '|t16:16:AlphaGear/asset/rmb.dds|t'
  local msg = {
    Copy = '拷贝',
    Paste = '粘贴',
    Clear = '清除',
    Insert = '插入当前装备的',

    -- new since 6.6.0
    ToBankAll = '将所有装备配置存入银行',
    FromBankAll = '从银行取回所有装备配置',
    FailedToMoveItem = '移动 <<1>> 失败',
    MovingSet = '移动套装 <<1>>...',
    -- end new 6.6.0

    -- new since 6.2.1
    ToBank = '将装备配置存入银行',
    FromBank = '从银行取回装备配置',
    CurrentlyEquipped = '<<1>> 处于装备状态',
    NotEnoughSpaceInBackPack = '背包空间不足：<<1>>',
    NotEnoughSpaceInBank = '银行空间不足：<<1>>',
    ItemIsStolen = '无法将偷取的 <<1>> 存入银行',
    ReassignHint = '请使用 Shift + 左键 或 从技能界面中拖动技能来重新保存，以获得正确的弹窗信息',
    ToolTipSkillIcon = lmb..' 选择图标\n'..rmb..' 重置图标',
    BindLoadNextSet = '加载下一配置',
    BindLoadPreviousSet = '加载上一配置',
    BindToggleSet = '切换最后两套配装',
    MsgNoPreviousSet = '你没有装备第二套配装',
    ShowMainBinding = '显示/隐藏 AlphaGear 窗口',
    -- end new 6.2.1

    Icon = lmb..'选择图标',
    Set = lmb..' 装备套装\n'..rmb..' 编辑套装',
    NotFound = '<<1>> |cFF0000没有找到...|r',
    NotEnoughSpace = '|cFFAA33AlphaGear|r |cFF0000没有足够的空间...|r',
    SoulgemUsed = '<<C:1>> |cFFAA33已充能.|r',
    SetPart = '\n|cFFAA33套装: <<C:1>>|r',
    Lock = '如果套装锁定, 所有空的槽位将会卸下装备.\n如果套装解锁, 所有空的槽位将会忽略.\n\n'..lmb..' 锁定/解锁',
    Unequip = '卸下装备',
    UnequipAll = '卸下所有装备',

    -- new since 6.1.1
    SetsHeader = '套装',
    SettingsDesc = '配置 AlphaGear UI, Auto-Repair和Auto-Recharge',
    NumVisibleSetButtons = '套装按钮的显示数量',
    GearHeader = '装备',
    WeaponsHeader = '武器',
    EquipmentHeader = '装备栏',
    UIHeader = '用户界面',
    ResetPositions = '重置位置',
    -- end new 6.1.1
    -- new since 6.1.3
    ShowItemLevelChoices = {'总是', '仅低级物品', '从不'},
    -- end new 6.1.3

    -- new since 6.2.0
    OutfitLabel = '装扮',
    UneqipAllBinding = '卸下所有装备',
    LoadSetBinding = '加载套装 ',
    KeepOutfitItemLabel = '保持当前装扮',
    SetChangeQueuedMsg = '当脱战时，将装备套装 <<1>> (<<2>>)',
    ActionBar1Text = '技能栏 1',
    ActionBar2Text = '技能栏 2',
    ActionBarNText = '技能栏 <<1>>',
    NotEnoughMoneyForRepairMsg = '没有足够的钱修理装备',
    ItemsRepairedMsg = '<<1>> 已修复，总开销: <<2>> 金币',
    ItemsNotRepairedMsg = '没有足够的金币修复 <<1>>',
    -- end new since 6.2.0    

    -- new since 6.5.0
    BindLoadProfile = '加载预设 ',
    BindLoadNextProfile = '加载下一预设',
    BindLoadPreviousProfile = '加载上一预设',
    BindToggleProfile = '切换最后两个预设',
    MsgNoPreviousProfile = '没有可切换的预设',
    -- end new since 6.5.0

    SetConnector = {
      lmb..' 连接装备到套装\n'..rmb..' 移除连接',
      lmb..' 连接动作条 1 到套装\n'..rmb..' 移除连接',
      lmb..' 连接动作条 2 到套装\n'..rmb..' 移除连接'
    },
    Head = {
      Gear = '装备 ',
      Skill = '技能 '
    },
    Button = {
      Gear = lmb..' 装备物品\n'..rmb..' 移除物品',
      Skill = lmb..' 装备技能\n'..rmb..' 移除技能'
    },
    Selector = {
      Gear = lmb..' 装备所有装备\n'..rmb..' 更多选项',
      Skill = lmb..' 装备所有技能\n'..rmb..' 更多选项'
    },
    OptionWidth = 300,
    Options = {
      '显示界面按钮',
      '显示界面套装按钮',
      '显示修理按钮',
      '显示修理花费',
      '显示武器充能图标',
      '显示武器切换信息',
      '显示正在装备的套装',
      '在物品栏中标记套装',
      '显示物品耐久度百分比',
      '显示物品质量为颜色',
      '移动时关闭窗口',
      '锁定所有AlphaGear的元素',
      '自动武器充能',
      -- new since 6.1.1
      '在商店界面自动修理装备',
      -- end new 6.1.1
      -- new since 6.1.3
      '显示物品等级标识',
      -- end new 6.1.3
      -- new since 6.4.1
      '<Unused Message>',
      '自动加载预设中最后一个BD',          -- AG_OPTION_LOAD_LAST_BUILD_OF_PROFILE = 17
      -- end new since 6.4.1
    },

    -- new since 6.8.1
    Integrations = {
      Inventory = {
        Title = '库存管理',
        UseFCOIS = '显示 FCOIS 标记图标',
        FCOIS = {
          GearMarkerIconLabel = '标记图标',
          NoGearMarkerIconEntry = '-无-',
        }
      },
      Styling = {
        Title = '风格样式管理',
        UseAlphaStyle = '使用 AlphaStyle 插件',
      },
      Champion = {
        Title = '冠军点数管理',
        UseCPSlots = '使用 ChampionPointsSlots 插件',
      },
      QuickSlot = {
        Title = '快捷栏管理',
        UseGMQSB = '使用 Greymind Quick Slot Bar 插件',
      },
    },
    -- new since 6.8.1
  }

  --Special Setting
  BB.SetGlobalHook(function() BB.TableCopy(msg, AGLang.msg) end, "AG", "author")

end end

BB.AddonList["AlphaGear"] = function() 
  if not AGLang then return false end
  return true
end