local BB = MABabel

--ITTs Donation Bot
--2.1.1
BB.AddonList["ITTSDonationBot"] = function() if not ITTsDonationBot then return false end
  BB.TableCopy({
    ITTDB_NAME = "ITT's Donation Bot",
    ITTDB_HEADER = "捐助",
    ITTDB_HEADER_GUILDS = "公会",
    ITTDB_HEADER_NOTIFY = "通知",
    -- time
    ITTDB_TIME_TODAY = "今天",
    ITTDB_TIME_YESTERDAY = "昨天",
    ITTDB_TIME_2_DAYS = "两天前",
    ITTDB_TIME_THIS_WEEK = "本周",
    ITTDB_TIME_LAST_WEEK = "上周",
    ITTDB_TIME_PRIOR_WEEK = "上上周",
    ITTDB_TIME_7_DAYS = "过去 7 天",
    ITTDB_TIME_10_DAYS = "过去 10 天",
    ITTDB_TIME_14_DAYS = "过去 14 天",
    ITTDB_TIME_30_DAYS = "过去 30 天",
    ITTDB_TIME_TOTAL = "总共",
    -- settings
    ITTDB_SETTINGS_DESC = [[如果您拥有某个公会的正确权限，该公会将在下方以切换选项的形式提供扫描。如果公会选项被禁用，则表示您没有正确的 "查看公会银行金币 "权限]],
    ITTDB_SETTINGS_SCAN_ERROR = "您没有扫描此公会的正确权限",
    ITTDB_SETTINGS_SCAN_PROMPT = "打开或关闭 ${guild} 的扫描功能",
    ITTDB_SETTINGS_SCAN_INFO = [[虽然我们会尽量自动处理，但也会有漏网之鱼。如果上述公会列表因最近的更改而不正确，您可能需要运行 /reloadui 命令]],
    ITTDB_SETTINGS_NOTIFY = [[通知仅适用于过去 24 小时内的任何内容]],
    ITTDB_SETTINGS_CHAT = "聊天通知",
    ITTDB_SETTINGS_SCREEN = "屏幕通知",
    ITTDB_SETTINGS_LOTTO_NAME = "乐透名单生成器",
    ITTDB_SETTINGS_LOTTO_DESC = [[单击以生成乐透名单中的公会成员名称栏和彩票数量栏。您可以在下面设置彩票的价值，默认值为 1k = 1 张彩票。结果基于当前 "本周"（即游戏内交易周）内的捐款。]],
    ITTDB_SETTINGS_LOTTO_SELECT = "选择工会",
    ITTDB_SETTINGS_LOTTO_GUILD = "参与乐透的公会成员",
    ITTDB_SETTINGS_LOTTO_VALUE = "乐透彩票价值",
    ITTDB_SETTINGS_LOTTO_EXAMPLE = "例如每彩票1k金币",
    ITTDB_SETTINGS_LOTTO_TIMEFRAME = "选择时间范围",
    ITTDB_SETTINGS_LOTTO_TIMEFRAME_2 = "乐透的时间范围",
    ITTDB_SETTINGS_LOTTO_GENERATE = "生成",
    ITTDB_SETTINGS_LOTTO_GENERATE_COL = "点击生成名单列表",
    ITTDB_SETTINGS_LOTTO_INFO_1 = "名称列的值，第 1 - 250 行",
    ITTDB_SETTINGS_LOTTO_INFO_2 = "彩票数量的值，第 1 - 250 行",
    ITTDB_SETTINGS_LOTTO_INFO_3 = "名称列的值，第 251 - 500 行",
    ITTDB_SETTINGS_LOTTO_INFO_4 = "彩票数量的值，第 251 - 500 行",
    ITTDB_SETTINGS_LOTTO_NAMES = "名称的值",
    ITTDB_SETTINGS_LOTTO_TICKETS = "彩票数量的值",
    ITTDB_SETTINGS_LOTTO_INFO_5 = "名称列在此生成",
    ITTDB_SETTINGS_LOTTO_INFO_6 = "数量列再次生成",
    ITTDB_LH_OPTIONS = "LibHistoire选项",
    ITTDB_LH_OPTION1_DESC = "缺失条目",
    ITTDB_LH_OPTION1_ENTRY = "这将扫描 LibHistoire，查找丢失的条目",
    ITTDB_LH_OPTION2_DESC = "全面扫描",
    ITTDB_LH_OPTION2_ENTRY = "这可能需要一些时间，取决于您缺少多少数据以及您在 LibHistoire 中存储了多少数据",
    ITTDB_LH_OPTION2_WARN = "这将扫描 LibHistoire 的全部数据（可能需要一些时间）",
    ITTDB_TRANSFER_OPTIONS = "导入选项",
    ITTDB_TRANSFER_TITLE = "转移旧记录",
    ITTDB_TRANSFER_DESC = "|cff0000警告 按此按钮前请备份已保存的变量",
    ITTDB_TRANSFER_WARN = "您备份过保存的变量吗？",
    ITTDB_TRANSFER_REMINDER = "|cffffff我们检测到您在更新前保存了数据！别担心，您的数据还在，请前往我们的插件菜单，点击<<导入选项>>并按照说明操作。谢谢！",
    -- Notifications
    ITTDB_NOTIFICATION = "${user} 在 ${time} 向 ${guild} 捐赠 ${amount}",
    -- Null
    ITTDB_NONE = "无",
    -- commands
    ITTDB_CMD_NO_GUILDS = "无法找到公会，请输入 1~5 之间的数字",
    ITTDB_CMD_GENERATED = "重新生成弹窗"
  }, ITTsDonationBot.i18n)

return true end

--LibAddonMenu-2.0
--2.0 r37
BB.AddonList["LibAddonMenu-2.0"] = function() if not LibAddonMenu2 then return false end
  local Table = {
    PANEL_NAME = "插件",
    AUTHOR = string.format("%s: <<X:1>>", GetString(SI_ADDON_MANAGER_AUTHOR)), -- "Author: <<X:1>>"
    VERSION = "版本: <<X:1>>",
    WEBSITE = "访问网站",
    FEEDBACK = "反馈",
    TRANSLATION = "翻译",
    DONATION = "捐助",
    PANEL_INFO_FONT = "$(CHAT_FONT)|14|soft-shadow-thin",
    RELOAD_UI_WARNING = "修改该设置后，需要重新加载UI使之生效",
    RELOAD_DIALOG_TITLE = "需要重新加载UI",
    RELOAD_DIALOG_TEXT = "部分修改，需要重新加载UI使之生效。你想现在就重新加载，或放弃修改吗？",
    RELOAD_DIALOG_RELOAD_BUTTON = "重载",
    RELOAD_DIALOG_DISCARD_BUTTON = "放弃",
  }
  LibAddonMenu2.util.L = BB.TableCopy(Table, LibAddonMenu2.util.L)
return true end

--[[ Template 1, "" = folder name

--
--
BB.AddonList[""] = function() if not  then return false end

return true end

]]

--[[ Template 2, "" = folder name

--
--
do if not BB.SV.BanList[""] then

end end

BB.AddonList[""] = function() if not  then return false end

return true end

]]