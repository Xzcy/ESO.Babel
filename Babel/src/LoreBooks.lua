local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["LoreBooks"] = function() if not LoreBooks then return false end
  local Strings = {
    ["LBOOKS_QUEST_BOOK"] = "任务 [%s]",
    ["LBOOKS_QUEST_BOOK_ZONENAME"] = "区域任务 %s [%s]",
    ["LBOOKS_MAYBE_NOT_HERE"] = "[书有可能不在这里]",
    ["LBOOKS_QUEST_IN_ZONE"] = "在 <<1>> 中的任务",
    ["LBOOKS_SPECIAL_QUEST"] = "特殊任务 <<1>>",
    ["LBOOKS_LBPOS_OPEN_BOOK"] = "使用/lbpos时，你必须正在阅读一本地图上的书",
    ["LBOOKS_LBPOS_ERROR"] = "制作技能书或与过目不忘或沙里多尔的图书馆无关",
    ["LBOOKS_PIN_UPDATE"] = "请帮助插件更新数据",

    --Camera Actions
    ["LBOOKS_CLIMB"] = "攀爬",

    --tooltips
    ["LBOOKS_BOOKSHELF"] = "书架",
    ["LBOOKS_MOREINFO1"] = "城镇",
    ["LBOOKS_MOREINFO2"] = GetString(SI_INSTANCEDISPLAYTYPE7),
    ["LBOOKS_MOREINFO3"] = GetString(SI_INSTANCEDISPLAYTYPE6),
    ["LBOOKS_MOREINFO4"] = "地下",
    ["LBOOKS_MOREINFO5"] = GetString(SI_INSTANCETYPE2),
    ["LBOOKS_MOREINFO6"] = "酒馆中",
    ["LBOOKS_SET_WAYPOINT"] = GetString(SI_WORLD_MAP_ACTION_SET_PLAYER_WAYPOINT) .. " : |cFFFFFF<<1>>|r",

    --settings menu header
    ["LBOOKS_TITLE"] = "LoreBooks 典籍",

    --appearance
    ["LBOOKS_PIN_TEXTURE"] = "选择地图标记图标",
    ["LBOOKS_PIN_TEXTURE_EIDETIC"] = "选择地图标记图标 (<<1>>)",
    ["LBOOKS_PIN_TEXTURE_DESC"] = "选择地图标记图标",
    ["LBOOKS_PIN_GRAYSCALE"] = " - 使用灰色滤镜",
    ["LBOOKS_PIN_GRAYSCALE_DESC"] = "对已收集的典籍使用灰色滤镜（只对'真实图标'起效）",
    ["LBOOKS_PIN_GRAYSCALE_EIDETIC_DESC"] = "对未收集的永恒记忆书本使用灰色滤镜（只对'真实图标'起效）",
    ["LBOOKS_PIN_SIZE"] = "标记尺寸",
    ["LBOOKS_PIN_SIZE_DESC"] = "设置地图标记的尺寸",
    ["LBOOKS_PIN_LAYER"] = "标志图层",
    ["LBOOKS_PIN_LAYER_DESC"] = "设置地图标志的图层",
    ["LBOOKS_PIN_CLICK_MENU"] = "启用设置书籍目的地",
    ["LBOOKS_PIN_CLICK_MENU_DESC"] = "允许在地图上左键单击书籍图标设置目的地标识",
    ["LBOOKS_DUNGEON_TAG_MENU"] = "在信息弹窗中添加地下城和区域名",
    ["LBOOKS_DUNGEON_TAG_MENU_DESC"] = "在地图中书籍图标展示的信息弹窗中添加地下城和区域名",
    ["LBOOKS_QUESTINFO_MENU"] = "在信息弹窗中添加任务名和地点",
    ["LBOOKS_QUESTINFO_MENU_DESC"] = "在地图中书籍图标展示的信息弹窗中添加任务名和地点",

    ["LBOOKS_PIN_TEXTURE1"] = "真实图标",
    ["LBOOKS_PIN_TEXTURE2"] = "书籍图标设置 1",
    ["LBOOKS_PIN_TEXTURE3"] = "书籍图标设置 2",
    ["LBOOKS_PIN_TEXTURE4"] = "Esohead的图标 (Rushmik)",

    --compass
    ["LBOOKS_COMPASS_UNKNOWN"] = "在罗盘上显示典籍",
    ["LBOOKS_COMPASS_UNKNOWN_DESC"] = "在罗盘上 显示/隐藏 未知典籍的图标",
    ["LBOOKS_COMPASS_DIST"] = "最大标记距离",
    ["LBOOKS_COMPASS_DIST_DESC"] = "标记在罗盘上出现的最大距离",

    --filters
    ["LBOOKS_UNKNOWN"] = "显示未知典籍",
    ["LBOOKS_UNKNOWN_DESC"] = "在地图上 显示/隐藏 未知典籍的图标",
    ["LBOOKS_COLLECTED"] = "显示已收集典籍",
    ["LBOOKS_COLLECTED_DESC"] = "在地图上 显示/隐藏 已收集典籍的图标",

    ["LBOOKS_SHARE_DATA"] = "与 LoreBooks 作者分享你的发现",
    ["LBOOKS_SHARE_DATA_DESC"] = "开启此选项将通过自动发送一个收集数据的游戏内邮件来与 LoreBooks 作者分享你的发现。\n此选项只对欧服玩家生效, 但收集到的数据会被分享给美服玩家\n请注意，当邮件发送时，您的技能可能会遇到一个小延迟。 每阅读30本书，邮件就自动发送一次。",

    ["LBOOKS_EIDETIC"] = "显示未知永恒记忆",
    ["LBOOKS_EIDETIC_DESC"] = "在地图上 显示/隐藏 未知永恒记忆卷轴。 这些卷轴是一些不计入法师公会进度的相关知识卷轴, 只提供一些与塔姆瑞尔世界观相关的信息",
    ["LBOOKS_EIDETIC_COLLECTED"] = "显示已知永恒记忆",
    ["LBOOKS_EIDETIC_COLLECTED_DESC"] = "在地图上 显示/隐藏 已知永恒记忆卷轴。 这些卷轴是一些不计入法师公会进度的相关知识卷轴, 只提供一些与塔姆瑞尔世界观相关的信息",

    ["LBOOKS_BOOKSHELF_NAME"] = "在地图上显示书架",
    ["LBOOKS_BOOKSHELF_DESC"] = "在地图上显示/隐藏书架。书架包含当前区域的随机书籍",
    ["LBOOKS_COMPASS_EIDETIC"] = "在罗盘上显示未知永恒记忆",
    ["LBOOKS_COMPASS_EIDETIC_DESC"] = "在罗盘上 显示/隐藏 未知永恒记忆卷轴。 这些卷轴是一些不计入法师公会进度的相关知识卷轴, 只提供一些与塔姆瑞尔世界观相关的信息",

    ["LBOOKS_COMPASS_BOOKSHELF_NAME"] = "在罗盘上显示书架",
    ["LBOOKS_COMPASS_BOOKSHELF_DESC"] = "在罗盘上显示/隐藏书架。书架包含当前区域的随机书籍",
    ["LBOOKS_UNLOCK_EIDETIC"] = "解锁永恒图书馆",
    ["LBOOKS_UNLOCK_EIDETIC_DESC"] = "即使你还没有完成法师公会的任务线，此选项依然能为您解锁永恒图书馆。此选项只对 英语/法语/德语 用户生效。",
    ["LBOOKS_UNLOCK_EIDETIC_WARNING"] = "该选项被禁用的原因是LoreBooks 尚未更新到最新版本，或您的语言不被支持",

    --worldmap filters
    ["LBOOKS_FILTER_UNKNOWN"] = "未知典籍",
    ["LBOOKS_FILTER_COLLECTED"] = "已收集典籍",
    ["LBOOKS_FILTER_COLLECTED_FORMATTER"] = "<<1>> (已收集)",
    ["LBOOKS_FILTER_BOOKSHELF"] = "书架（Lorebooks插件）",

    --research
    ["LBOOKS_SEARCH_LABEL"] = "在典籍图书馆中搜索:",
    ["LBOOKS_SEARCH_PLACEHOLDER"] = "典籍名字",
    ["LBOOKS_INCLUDE_MOTIFS_CHECKBOX"] = "包含样式制作书",

    ["LBOOKS_RANDOM_POSITION"] = "[书架]",

    -- Report
    ["LBOOKS_REPORT_KEYBIND_RPRT"] = "报告",
    ["LBOOKS_REPORT_KEYBIND_SWITCH"] = "切换模式",
    ["LBOOKS_REPORT_KEYBIND_COPY"] = "复制",

    ["LBOOKS_RS_FEW_BOOKS_MISSING"] = "沙利多的图书馆中仍有部分书籍未找到..",
    ["LBOOKS_RS_MDONE_BOOKS_MISSING"] = "您已达到法师公会技能线最大级 ! 但是仍有部分书籍未找到",
    ["LBOOKS_RS_GOT_ALL_BOOKS"] = "你成功完成了所有沙利多的图书馆书籍收集。恭喜您 !",

    ["LBOOKS_RE_FEW_BOOKS_MISSING"] = "永恒记忆中仍有部分书籍未找到..",
    ["LBOOKS_RE_THREESHOLD_ERROR"] = "你需要收集更多一些书籍来获取永恒记忆报告..",

    -- Immersive Mode
    ["LBOOKS_IMMERSIVE"] = "开启沉浸模式基于",
    ["LBOOKS_IMMERSIVE_DESC"] = "基于您正在查看的当前区域以下目标的完成情况，未知典籍不会被显示",

    ["LBOOKS_IMMERSIVE_CHOICE1"] = "禁用",
    ["LBOOKS_IMMERSIVE_CHOICE2"] = "区域主线任务",
    ["LBOOKS_IMMERSIVE_CHOICE3"] = GetString(SI_MAPFILTER8),
    ["LBOOKS_IMMERSIVE_CHOICE4"] = GetAchievementCategoryInfo(6),
    ["LBOOKS_IMMERSIVE_CHOICE5"] = "区域任务",

    -- Quest Books
    ["LBOOKS_USE_QUEST_BOOKS"] = "使用任务书籍 (测试版)",
    ["LBOOKS_USE_QUEST_BOOKS_DESC"] = "收到新任务时，会尝试使用任务工具来避免错过只出现在物品栏的书籍。也可以使用地图之类的东西，因为书和其他可用的任务物品没有区别。",
  }
  
  BB.TableCopy({
    [1] = "城镇",
    [2] = GetString(SI_INSTANCEDISPLAYTYPE7),
    [3] = GetString(SI_INSTANCEDISPLAYTYPE6),
    [4] = "地下",
    [5] = GetString(SI_INSTANCETYPE2),
    [6] = "酒馆中",
    [7] = "客房", -- 1
    [8] = "阁楼", -- 2
    [9] = "隐藏地下室", -- 3
    [10] = "书架", -- 4
    [11] = "莱拉米尔的书房",
    [12] = "詹农的工坊",
    [13] = "废弃的实验室",
    [14] = "精工厅堂",
    }, LoreBooks.locationDetails
  )

  for k, v in pairs(Strings) do
    if _G[k] then
      SafeAddString(_G[k], v, 2)
    end
  end

return true end