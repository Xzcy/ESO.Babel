local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["Postmaster"] = function() if not Postmaster then return false end
  local INDENT = "|t100%:100%:art/icons/placeholder/icon_blank.dds|t"
  POSTMASTER_STRINGS = {
    ["SI_PM_WORD_SEPARATOR"]                     = " ",
    ["SI_PM_CHAT_MESSAGES"]                      = "聊天栏信息",
    ["SI_PM_SHORT_PREFIX"]                       = "使用简短缩写",
    ["SI_PM_SHORT_PREFIX_TOOLTIP"]               = "在聊天栏输出[PM]而非[Postmaster]",
    ["SI_PM_PREFIX_HEADER"]                      = "前缀",
    ["SI_PM_PREFIX_COMMAND1"]                    = { INDENT .. "|cEEEE00[<<1>>]|r" },
    ["SI_PM_PREFIX_COMMAND2"]                    = { "|c55C755/chatmessage tag <<1>>|r" },
    ["SI_PM_COLORED_PREFIX"]                     = "使用Postmaster 3.8 色彩前缀",
    ["SI_PM_COLORED_PREFIX_TOOLTIP"]             = { "在聊天栏使用Postmaster 3.8的蓝色前缀(i.e. <<1>>|r or <<2>>|r)，而不是聊天栏颜色设置", SI_PM_PREFIX_COLOR, SI_PM_PREFIX_SHORT_COLOR },
    ["SI_PM_CHAT_USE_SYSTEM_COLOR"]              = "使用默认系统信息颜色",
    ["SI_PM_CHAT_COLOR"]                         = "聊天栏信息颜色",
    ["SI_PM_DELETE_DIALOG_SUPPRESS"]             = "解除删除确认",
    ["SI_PM_DELETE_DIALOG_SUPPRESS_TOOLTIP"]     = "启用时，删除不含附件的邮件将不再需要确认",
    ["SI_PM_RETURN_DIALOG_SUPPRESS"]             = "解除退回确认",
    ["SI_PM_BOUNCE"]                             = "自动退回邮件",
    ["SI_PM_BOUNCE_TOOLTIP"]                     = "监控新邮件，如果主题以下列任何单词开头或相同，自动退回邮件给发件人。RETURN, BOUNCE, RTS",
    ["SI_PM_BOUNCE_MESSAGE"]                     = { "将邮件退回 <<1>>", POSTMASTER_STRING_NO_FORMAT },
    ["SI_PM_WYKKYD_MAILBOX_RETURN_WARNING"]      = "Wykkyd 邮箱退回机器人已启用",
    ["SI_PM_WYKKYD_MAILBOX_DETECTED_WARNING"]    = "检测到Wykkyd Mailbox。请注意\"Automatic Mail Return\" |cFF0000deactivates|r。如果你启用了Wykkyd Mailbox退回机器人",
    ["SI_PM_RESERVED_SLOTS"]                     = "预留空位",
    ["SI_PM_RESERVED_SLOTS_TOOLTIP"]             = "<<1>> 将保留指定数量的背包空位",
    ["SI_PM_SYSTEM"]                             = "系统邮件",
    ["SI_PM_SYSTEM_TAKE_ATTACHED"]               = "带有附件的系统邮件",
    ["SI_PM_SYSTEM_DELETE_ATTACHED"]             = "删除带有附件的系统邮件",
    ["SI_PM_SYSTEM_TAKE_ATTACHED_TOOLTIP"]       = "启用该选项后，<<1>> 命令会从符合以下要求的系统邮件中获取附件，并选择性地删除这些附件",
    ["SI_PM_SYSTEM_TAKE_ATTACHED_TOOLTIP_QUICK"] = { "启用该选项后，<<1>> 命令会从符合以下要求的系统邮件中获取附件并删除它们", SI_PM_TAKE },
    ["SI_PM_SYSTEM_TAKE_PVP"]                    = "联盟战争 / 战场 / PvP 奖励",
    ["SI_PM_SYSTEM_TAKE_CRAFTING"]               = "雇员",
    ["SI_PM_SYSTEM_TAKE_UNDAUNTED"]              = "无畏者",
    ["SI_PM_SYSTEM_TAKE_OTHER"]                  = "所有其他系统附件",
    ["SI_PM_SYSTEM_DELETE_EMPTY"]                = "不含附件的系统邮件",
    ["SI_PM_SYSTEM_DELETE_EMPTY_TOOLTIP"]        = "启用该选项后，<<1>> 命令会删除任何没有附件的系统邮件，例如添加到收藏中的项目通知。",
    ["SI_PM_SYSTEM_DELETE_EMPTY_TOOLTIP_QUICK"]  = { "启用该选项后，<<1>> 命令会删除任何没有附件的系统邮件，例如添加到收藏中的项目通知。", SI_PM_TAKE },
    ["SI_PM_SYSTEM_DELETE_EMPTY_FILTER"]         = "筛选不含附件的系统邮件",
    ["SI_PM_SYSTEM_DELETE_EMPTY_FILTER_TOOLTIP"] = { "当筛选非空时，<<1>>命令将只会删除不带附件的玩家邮件，如果其在发送人或主题中包含给定的单词或短语。<<2>>", SI_PM_TAKE_ALL, "SI_PM_SEPARATOR_HINT" },
    ["SI_PM_SYSTEM_DELETE_EMPTY_FILTER_TOOLTIP_QUICK"] = { "当筛选非空时，<<1>>命令将只会删除不带附件的玩家邮件，如果其在发送人或主题中包含给定的单词或短语。<<2>>", SI_PM_TAKE, "SI_PM_SEPARATOR_HINT" },
    ["SI_PM_PLAYER"]                             = "玩家邮件",
    ["SI_PM_PLAYER_TAKE_ATTACHED"]               = "带有附件的玩家邮件",
    ["SI_PM_PLAYER_TAKE_ATTACHED_TOOLTIP"]       = "启用此选项后，<<1>> 命令将从其他玩家的邮件中获取附件，并选择性删除非货到付款的邮件。",
    ["SI_PM_PLAYER_TAKE_ATTACHED_TOOLTIP_QUICK"] = { "启用此选项后，<<1>> 命令将从其他玩家的邮件中获取附件，并选择性删除非货到付款的邮件。", SI_PM_TAKE },
    ["SI_PM_PLAYER_TAKE_RETURNED"]               = "退回的邮件",
    ["SI_PM_PLAYER_TAKE_RETURNED_TOOLTIP"]       = "启用此选项后，<<1>> 命令会从其他玩家退回给您的邮件中获取附件，并选择性删除邮件。",
    ["SI_PM_PLAYER_TAKE_RETURNED_TOOLTIP_QUICK"] = { "启用此选项后，<<1>> 命令会从其他玩家退回给您的邮件中获取附件，并选择性删除邮件。", SI_PM_TAKE },
    ["SI_PM_PLAYER_DELETE_EMPTY"]                = "不含附件的玩家邮件",
    ["SI_PM_PLAYER_DELETE_EMPTY_TOOLTIP"]        = "启用该选项后，<<1>> 命令将删除来自其他玩家的任何不带附件的邮件。",
    ["SI_PM_PLAYER_DELETE_EMPTY_TOOLTIP_QUICK"]  = { "启用该选项后，<<1>> 命令将删除来自其他玩家的任何不带附件的邮件。", SI_PM_TAKE },
    ["SI_PM_PLAYER_DELETE_EMPTY_FILTER"]         = "筛选不含附件的玩家邮件",
    ["SI_PM_PLAYER_DELETE_EMPTY_FILTER_TOOLTIP"] = { "当筛选非空时，<<1>>命令将只删除在发件人或主题中含有给定单词或短语的不含附件的玩家邮件。<<2>>", SI_PM_TAKE_ALL, "SI_PM_SEPARATOR_HINT" },
    ["SI_PM_PLAYER_DELETE_EMPTY_FILTER_TOOLTIP_QUICK"] = { "当筛选非空时，<<1>>命令将只删除在发件人或主题中含有给定单词或短语的不含附件的玩家邮件。<<2>>", SI_PM_TAKE, "SI_PM_SEPARATOR_HINT" },
    ["SI_PM_COD"]                                = { "<<1>> 邮件", SI_MAIL_SEND_COD },
    ["SI_PM_COD_TOOLTIP"]                        = { "启用该选项后，<<1>> 命令将接收符合以下条件的<<2>>邮件", SI_PM_TAKE_ALL, SI_MAIL_SEND_COD },
    ["SI_PM_COD_TOOLTIP_QUICK"]                  = { "启用该选项后，<<1>> 命令将接收符合以下条件的<<2>>邮件", SI_PM_TAKE, SI_MAIL_SEND_COD },
    ["SI_PM_COD_LIMIT"]                          = { "<<1>> 限制", SI_MAIL_SEND_COD },
    ["SI_PM_COD_LIMIT_TOOLTIP"]                  = { "只有金额小于<<1>>的邮件才会被支付。设置为 0 代表无限制。", SI_MAIL_SEND_COD },
    ["SI_PM_MASTER_MERCHANT_WARNING"]            = "Master Merchant未启用",
    ["SI_PM_COD_MM_DEAL_0"]                      = "价格过高",
    ["SI_PM_COD_MM_DEAL_1"]                      = "价格可行",
    ["SI_PM_COD_MM_DEAL_2"]                      = "价格合理",
    ["SI_PM_COD_MM_DEAL_3"]                      = "价格不错",
    ["SI_PM_COD_MM_DEAL_4"]                      = "价格很好",
    ["SI_PM_COD_MM_DEAL_5"]                      = "买它买它！",
    ["SI_PM_COD_MM_MIN_DEAL"]                    = { "<<1>> 最低成交价", SI_MAIL_SEND_COD },
    ["SI_PM_COD_MM_MIN_DEAL_TOOLTIP"]            = { "依据Master Merchant市场价分析<<1>>邮件的附件，并只为所有附件均好于该选项的邮件付费", SI_MAIL_SEND_COD },
    ["SI_PM_COD_MM_NO_DATA"]                     = { "<<1>> 无Master Merchant数据", SI_MAIL_SEND_COD },
    ["SI_PM_COD_MM_NO_DATA_TOOLTIP"]             = { "启用此选项后，<<1>> 命令将接收没有Master Merchant定价数据的<<2>>邮件附件", SI_PM_TAKE_ALL, SI_MAIL_SEND_COD },
    ["SI_PM_COD_MM_NO_DATA_TOOLTIP_QUICK"]       = { "启用此选项后，<<1>> 命令将接收没有Master Merchant定价数据的<<2>>邮件附件", SI_PM_TAKE, SI_MAIL_SEND_COD },
    ["SI_PM_HELP_01"]                            = { "要与 <<1>> 互动，请打开收件箱", SI_PM_NAME },
    ["SI_PM_HELP_02"]                            = "使用在聊天栏中的|cFF00FF/pm|r或 |cFF00FF/postmaster|r作为该面板的快捷方式",
    ["SI_PM_HELP_03"]                            = { "<<1>>获取附件并删除|cEFEBBE当前选定|r的邮件", SI_PM_TAKE },
    ["SI_PM_HELP_04"]                            = "<<1>>获取附件并选择性删除|cEFEBBE所有以下|r的邮件",
    ["SI_PM_CRAFT_BLACKSMITH"]                   = "锻造原材料",
    ["SI_PM_CRAFT_CLOTHIER"]                     = "裁缝原材料",
    ["SI_PM_CRAFT_ENCHANTER"]                    = "附魔原材料",
    ["SI_PM_CRAFT_PROVISIONER"]                  = "烹饪原材料",
    ["SI_PM_CRAFT_WOODWORKER"]                   = "木匠原材料",
    ["SI_PM_GUILD_STORE_CANCELED"]               = "取消的交易品",
    ["SI_PM_GUILD_STORE_EXPIRED"]                = "过期的交易品",
    ["SI_PM_GUILD_STORE_PURCHASED"]              = "购买的物品",
    ["SI_PM_GUILD_STORE_SOLD"]                   = "卖出的物品",
    ["SI_PM_PVP_FOR_THE_WORTHY"]                 = "PVP奖励（Rewards for the Worthy!）",
    ["SI_PM_PVP_THANKS"]                         = "PVP奖励（Our Thanks, Warrior）",
    ["SI_PM_PVP_FOR_THE_ALLIANCE_1"]             = "PVP奖励（For the Dominion!）",
    ["SI_PM_PVP_FOR_THE_ALLIANCE_2"]             = "PVP奖励（For the Pact!）",
    ["SI_PM_PVP_FOR_THE_ALLIANCE_3"]             = "PVP奖励（For the Covenant!）",
    ["SI_PM_PVP_THE_ALLIANCE_THANKS_1"]          = "PVP奖励（The Dominion Thanks You）",
    ["SI_PM_PVP_THE_ALLIANCE_THANKS_2"]          = "PVP奖励（The Pact Thanks You）",
    ["SI_PM_PVP_THE_ALLIANCE_THANKS_3"]          = "PVP奖励（The Covenant Thanks You）",
    ["SI_PM_PVP_LOYALTY"]                        = "PVP奖励（Campaign Loyalty Reward）",
    ["SI_PM_UNDAUNTED_NPC_NORMAL"]               = "无畏者（Maj al-Ragath）",
    ["SI_PM_UNDAUNTED_NPC_VET"]                  = "无畏者（Glirion the Redbeard）",
    ["SI_PM_UNDAUNTED_NPC_TRIAL_1"]              = "无畏者（Turuk Redclaws）",
    ["SI_PM_UNDAUNTED_NPC_TRIAL_2"]              = "无畏者（Kailstig the Axe）",
    ["SI_PM_UNDAUNTED_NPC_TRIAL_3"]              = "无畏者（Mighty Mordra）",
    ["SI_PM_BATTLEGROUNDS_NPC"]                  = "战场（Battlemaster Rivyn）",
    ["SI_PM_DELETE_FAILED"]                      = "删除邮件出错，请重试",
    ["SI_PM_TAKE_ATTACHMENTS_FAILED"]            = "获取附件出错，请重试",
    ["SI_PM_READ_FAILED"]                        = "读取下一封邮件信息出错，请重试",
    ["SI_PM_MESSAGE"]                            = "信息",
    ["SI_PM_KEYBOARD"]                           = " (键盘)",
    ["SI_PM_KEYBIND_ENABLE_TOOLTIP"]             = { "启用自定义Postmaster键位：<<1>>和<<2>>", SI_LOOT_TAKE, SI_LOOT_TAKE_ALL },
    ["SI_PM_TAKE_ALL_BY_SUBJECT"]                = "按主题获取",
    ["SI_PM_TAKE_ALL_BY_SUBJECT_HELP_01"]        = "|cFF00FF按主题获取|r获取附件并删除|cEFEBBE所有|r和选定邮件具有相同主题的邮件",
    ["SI_PM_TAKE_ALL_BY_SENDER"]                 = "按发送者获取",
    ["SI_PM_TAKE_ALL_BY_SENDER_HELP_01"]         = "|cFF00FF按发送者或者|r 获取附件并删除|cEFEBBE所有|r和选定邮件具有相同发送者的邮件",
    ["SI_PM_TAKE_ALL_BY_FIELD_HELP_02"]          = { "可作为键盘上的<<1>>选项（见上文<<2>>部分）和游戏手柄<<3>>菜单中的选项。", SI_BINDING_NAME_UI_SHORTCUT_QUATERNARY, SI_KEYBINDINGS_BINDINGS, SI_GAMEPAD_MAIL_INBOX_OPTIONS },

    --Baertram - Mail Send save message settings
    ["SI_PM_SENDMAIL_MESSAGE_RECIPIENTS"]        = "保存收件人",
    ["SI_PM_SENDMAIL_MESSAGE_RECIPIENTS_TT"]     = "发送邮件后，自动保存最近发送的邮件收件人列表。在邮件收件人文本框上单击鼠标右键，即可显示列表并从中进行选择。",
    ["SI_PM_SENDMAIL_CLEAR_RECIPIENTS"]          = "清除保存的收件人",
    ["SI_PM_SENDMAIL_CLEAR_RECIPIENTS_SUCCESS"]  = "保存的收件人被成功清除",
    ["SI_PM_SENDMAIL_MESSAGE_SUBJECTS"]          = "保存邮件主题",
    ["SI_PM_SENDMAIL_MESSAGE_SUBJECTS_TT"]       = "发送邮件后，自动保存最近发送的邮件主题列表。在邮件主题文本框上单击鼠标右键，即可显示列表并从中进行选择。",
    ["SI_PM_SENDMAIL_CLEAR_SUBJECTS"]            = "清除保存的邮件主题",
    ["SI_PM_SENDMAIL_CLEAR_SUBJECTS_SUCCESS"]    = "保存的邮件主题被成功清除",
    ["SI_PM_SENDMAIL_MESSAGE_TEXT"]              = "保存邮件信息",
    ["SI_PM_SENDMAIL_MESSAGE_TEXT_TT"]           = "发送邮件后，自动保存最近发送的邮件信息。在邮件正文文本框上单击鼠标右键，即可显示列表并从中进行选择。",
    ["SI_PM_SENDMAIL_CLEAR_MESSAGES"]            = "清除保存的邮件信息",
    ["SI_PM_SENDMAIL_CLEAR_MESSAGES_SUCCESS"]    = "保存的邮件信息被成功清除",
    ["SI_PM_SENDMAIL_MESSAGE_RECENT_SUBJECTS"]   = "最近的邮件主题",
    ["SI_PM_SENDMAIL_MESSAGE_RECENT_TEXT"]       = "最近的邮件信息",
    ["SI_PM_SENDMAIL_AMOUNT"]                    = "要保存的最近条目数",
    ["SI_PM_SENDMAIL_PREVIEW_CHARS"]             = "最近邮件信息菜单的字符宽度",
  }

  for stringId, value in pairs(POSTMASTER_STRINGS) do
    local stringValue
    if type(value) == "table" then
        if #value > 1 and value[2] ~= POSTMASTER_STRING_NO_FORMAT then
            for i=2,#value do
                if type(value[i]) == "string" then
                    value[i] = _G[value[i]]
                end
                value[i] = GetString(value[i])
            end
            stringValue = zo_strformat(unpack(value))
        else
            stringValue = value[1]
        end
    else
        stringValue = zo_strformat(value, GetString(SI_PM_TAKE_ALL))
    end
  ZO_CreateStringId(stringId, stringValue)
  end
  POSTMASTER_STRINGS = nil

return true end