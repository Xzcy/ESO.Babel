local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["WritWorthy"] = function() if not WritWorthy then return false end
  WritWorthy.I18N['static']['zh'] = {
      ["ags_label"                             ] = "WritWorthy 每张委托券花费"
  ,   ["button_dequeue_all"                    ] = "所有移出队列"
  ,   ["button_enqueue_all"                    ] = "所有加入队列"
  ,   ["button_sort_by_station"                ] = "按套装台排序"
  ,   ["count_writs_vouchers"                  ] = "%d 委托, %s 券"
  ,   ["currency_suffix_gold"                  ] = "金"
  ,   ["currency_suffix_gold_per_voucher"      ] = "金/券"
  ,   ["currency_suffix_voucher"               ] = "券"
  ,   ["empty"                                 ] = ""
  ,   ["enchanting_cp150"                      ] = "超级"
  ,   ["enchanting_cp160"                      ] = "真正超凡"
  ,   ["err_could_not_parse"                   ] = "无法解析。"
  ,   ["glyph_absorb_health"                   ] = "吸取生命"
  ,   ["glyph_absorb_magicka"                  ] = "吸取魔法"
  ,   ["glyph_absorb_stamina"                  ] = "吸取耐力"
  ,   ["glyph_bashing"                         ] = "猛击"
  ,   ["glyph_crushing"                        ] = "粉碎"
  ,   ["glyph_decrease_health"                 ] = "削减生命"
  ,   ["glyph_decrease_physical_harm"          ] = "减少物理损害"
  ,   ["glyph_decrease_spell_harm"             ] = "减少法术损害"
  ,   ["glyph_disease_resist"                  ] = "疾病抗性"
  ,   ["glyph_flame"                           ] = "火焰"
  ,   ["glyph_flame_resist"                    ] = "火焰抗性"
  ,   ["glyph_foulness"                        ] = "肮脏"
  ,   ["glyph_frost"                           ] = "寒霜"
  ,   ["glyph_frost_resist"                    ] = "寒霜抗性"
  ,   ["glyph_hardening"                       ] = "硬化"
  ,   ["glyph_health"                          ] = "生命"
  ,   ["glyph_health_recovery"                 ] = "生命回复"
  ,   ["glyph_increase_magical_harm"           ] = "提高魔法损害"
  ,   ["glyph_increase_physical_harm"          ] = "提高物理损害"
  ,   ["glyph_magicka"                         ] = "魔力"
  ,   ["glyph_magicka_recovery"                ] = "魔力回复"
  ,   ["glyph_poison"                          ] = "毒素"
  ,   ["glyph_poison_resist"                   ] = "毒素抗性"
  ,   ["glyph_potion_boost"                    ] = "药水提升"
  ,   ["glyph_potion_speed"                    ] = "药水速度"
  ,   ["glyph_prismatic_defense"               ] = "棱镜防御"
  ,   ["glyph_prismatic_onslaught"             ] = "棱镜猛攻"
  ,   ["glyph_reduce_feat_cost"                ] = "降低武艺消耗"
  ,   ["glyph_reduce_spell_cost"               ] = "降低法术消耗"
  ,   ["glyph_shielding"                       ] = "支撑"
  ,   ["glyph_shock"                           ] = "电击"
  ,   ["glyph_shock_resist"                    ] = "电击抗性"
  ,   ["glyph_stamina"                         ] = "耐力"
  ,   ["glyph_stamina_recovery"                ] = "耐力回复"
  ,   ["glyph_weakening"                       ] = "削弱"
  ,   ["glyph_weapon_damage"                   ] = "武器伤害"
  ,   ["header_Detail 1"                       ] = "详细 1"
  ,   ["header_Detail 2"                       ] = "详细 2"
  ,   ["header_Detail 3"                       ] = "详细 3"
  ,   ["header_Detail 4"                       ] = "详细 4"
  ,   ["header_Q"                              ] = "队"
  ,   ["header_M"                              ] = "石"
  ,   ["header_Quality"                        ] = "品质"
  ,   ["header_Type"                           ] = "类型"
  ,   ["header_V"                              ] = "券"
  ,   ["header_Name"                           ] = "名称"
  ,   ["header_RequiredCt"                     ] = "需求"
  ,   ["header_HaveCt"                         ] = "拥有"
  ,   ["header_BuyCt"                          ] = "购买"
  ,   ["header_PriceEa"                        ] = "价格"
  ,   ["header_BuySubtotal"                    ] = "总共"
  ,   ["header_tooltip_RequiredCt"             ] = "委托需要多少?"
  ,   ["header_tooltip_HaveCt"                 ] = "物品栏 + 银行 + 生产背包中有多少?"
  ,   ["header_tooltip_BuyCt"                  ] = "拥有的不够? 你还需要多少? (= 需求 - 拥有)"
  ,   ["header_tooltip_PriceEa"                ] = "每个材料价格"
  ,   ["header_tooltip_BuySubtotal"            ] = "总价格(= 购买 × 价格)"
  ,   ["header_tooltip_Q"                      ] = "加入制造队列"
  ,   ["header_tooltip_M"                      ] = "是否使用复制石?"
  ,   ["header_tooltip_V"                      ] = "委托券计数"
  ,   ["keybind_writworthy"                    ] = "切出窗口"
  ,   ["know_err_motif"                        ] = "样式 [%s] 未学会"
  ,   ["know_err_recipe"                       ] = "配方未学会"
  ,   ["know_err_skill_missing"                ] = "缺少技能: [%s]"
  ,   ["know_err_skill_not_maxed"              ] = "技能不足 [%s]: %d / %d"
  ,   ["know_err_trait"                        ] = "特质 [%s] (%s) 未研究"
  ,   ["know_err_trait_ct_too_low"             ] = "特质研究数 ( %d / %d ) [%s]"
  ,   ["know_err_llc_too_old"                  ] = "懒人制造插件 %s 需要升级以设置 %d %s"
  ,   ["lam_banked_vouchers_desc"              ] = "扫描银行并在可用委托列表中包含这些委托以自动制造。\n|cFF3333注意！如果你在多个角色上进行制造的话，其他的角色在制造同一个银行中的委托时WritWorthy将不会提醒你。|r"
  ,   ["lam_banked_vouchers_title"             ] = "在自动制造窗口中包含银行中的委托"
  ,   ["lam_force_en_desc"                     ] = "无视客户端语言设置并使用 EN 英文显示所有WritWorthy文本。"
  ,   ["lam_force_en_title"                    ] = "强制使用 EN 英文"
  ,   ["lam_mat_list_alchemy_only"             ] = "仅炼金"
  ,   ["lam_mat_list_all"                      ] = "所有"
  ,   ["lam_mat_list_desc"                     ] = "每当大师委托提示框出现时，在聊天窗口中写入若干行材料文本。"
  ,   ["lam_mat_list_off"                      ] = "关"
  ,   ["lam_mat_list_title"                    ] = "在聊天窗显示材料列表"
  ,   ["lam_mat_price_tt_desc"                 ] = "在提示框中加入文本，显示制造此委托将消耗的所有材料的花费。"
  ,   ["lam_mat_price_tt_title"                ] = "在提示框中显示材料价格"
  ,   ["lam_mm_fallback_desc"                  ] = "当LibPrice无法从 MM/ATT/TTC 等插件获取某些材料的价格时:\n* 使用15金作为基础风格材料的默认价格，例如钼\n* 使用5金作为普通特质材料的默认价格，例如石英"
  ,   ["lam_mm_fallback_title"                 ] = "当没有LibPrice数据时使用固定的价格"
  ,   ["lam_lib_price_desc"                    ] = "用 MM/ATT/TTC 检查材料价格。需要LibPrice。"
  ,   ["lam_lib_price_title"                   ] = "为材料价格使用LibPrice"
  ,   ["lam_station_colors_desc"               ] = "在WritWorthy窗口中为 锻造, 制衣, 木工 项目使用不同的颜色。"
  ,   ["lam_station_colors_title"              ] = "窗口中的制作台颜色"
  ,   ["lam_cmw_desc"                          ] = "如果你希望使用Marify's Confirm大师委托提示框的话，关闭此选项以隐藏WritWorthy的多余警告提示框。"
  ,   ["lam_cmw_title"                         ] = "显示副本提示框"
  ,   ["lam_mat_tooltip_title"                 ] = "在提示框中显示原材料"
  ,   ["lam_mat_tooltip_desc"                  ] = "在提示框中显示原材料列表"
  ,   ["lam_mat_tooltip_off"                   ] = "关"
  ,   ["lam_mat_tooltip_all"                   ] = "全部"
  ,   ["lam_mat_tooltip_missing_only"          ] = "仅缺失"
  ,   ["mat_ui_filter_all_mats"                ] = "显示所有已加入队列的大师委托的所有材料"
  ,   ["mat_ui_filter_missing_mats"            ] = "显示所有已加入队列的大师委托的缺失材料"
  ,   ["mat_ui_filter_missing_motifs"          ] = "显示未加入队列的大师委托的缺失样式"
  ,   ["max_gold_per_voucher"                  ] = "每张券最大金币:"
  ,   ["msg_port_house"                        ] = "传送到拥有者:%s  房屋:%s"
  ,   ["slash_auto"                            ] = "自动"
  ,   ["slash_auto_desc"                       ] = "自动接受从物品栏发起的任务。"
  ,   ["slash_count"                           ] = "计数"
  ,   ["slash_count_desc"                      ] = "在此角色的 物品栏/银行 中有多少大师委托？"
  ,   ["slash_discover"                        ] = "发现"
  ,   ["slash_discover_desc"                   ] = "在日志中将item_link委托域导入表格"
  ,   ["slash_forget"                          ] = "忘掉"
  ,   ["slash_forget_desc"                     ] = "忘掉此角色已制造的大师委托"
  ,   ["slash_port"                            ] = "传送"
  ,   ["slash_port_desc"                       ] = "传送到一间制造房"
  ,   ["slash_mat"                             ] = "材料"
  ,   ["slash_mat_desc"                        ] = "显示/隐藏 材料清单窗口。"
  ,   ["slash_writworthy_desc"                 ] = "显示/隐藏 WritWorthy窗口"
  ,   ["status_discover"                       ] = "正在扫描委托域..."
  ,   ["status_forget"                         ] = "正在忘掉此角色已经制造的所有东西..."
  ,   ["status_list_empty_no_writs"            ] = "此角色物品栏中没有密封的大师委托。"
  ,   ["summary_completed_average_voucher_cost"] = "平均已完成委托券花费"
  ,   ["summary_completed_mat_cost"            ] = "已完成总材料"
  ,   ["summary_completed_voucher_ct"          ] = "已完成总券数"
  ,   ["summary_completed_writ_ct"             ] = "已完成总委托数"
  ,   ["summary_queued_average_voucher_cost"   ] = "平均已列入委托券花费"
  ,   ["summary_queued_mat_cost"               ] = "队列总材料"
  ,   ["summary_queued_voucher_ct"             ] = "队列总券数"
  ,   ["summary_queued_writ_ct"                ] = "队列总委托数"
  ,   ["title_writ_inventory_player"           ] = "委托库存: %s"
  ,   ["title_writ_inventory_player_bank"      ] = "委托库存: %s + 银行"
  ,   ["tooltip_crafted"                       ] = "制造完成"
  ,   ["tooltip_mat_total"                     ] = "总材料"
  ,   ["tooltip_per_voucher"                   ] = "每券"
  ,   ["tooltip_purchase"                      ] = "购买"
  ,   ["tooltip_queued"                        ] = "已加入制造队列"
  ,   ["tooltip_sell_for"                      ] = "以 %s 金出售"
  ,   ["tooltip_sell_for_cannot"               ] = "无法以 %s 金出售"
  ,   ["header_reset_window_pos"               ] = "重置窗口位置"
  ,   ["name_reset_window_pos"                 ] = "重置窗口位置"
  ,   ["tooltip_reset_window_pos"              ] = "重新设置窗口位置."
  }

  --Special Setting for Control Text
	WritWorthyInventoryList_HeaderInit(WritWorthyUIInventoryListHeadersType     , "Type"      , "类别"   , "ui_type")
	WritWorthyInventoryList_HeaderInit(WritWorthyUIInventoryListHeadersVoucherCt, "VoucherCt" , "卷"     , "ui_voucher_ct")
	WritWorthyInventoryList_HeaderInit(WritWorthyUIInventoryListHeadersDetail1  , "Detail1"   , "详情 1" , "ui_detail1")
	WritWorthyInventoryList_HeaderInit(WritWorthyUIInventoryListHeadersDetail2  , "Detail2"   , "详情 2" , "ui_detail2")
	WritWorthyInventoryList_HeaderInit(WritWorthyUIInventoryListHeadersMimic    , "Mimic"     , "M"      , "ui_use_mimic")
  WritWorthyInventoryList_HeaderInit(WritWorthyUIInventoryListHeadersDetail3  , "Detail3"   , "详情 3" , "ui_detail3")
	WritWorthyInventoryList_HeaderInit(WritWorthyUIInventoryListHeadersDetail4  , "Detail4"   , "详情 4" , "ui_detail4")
	WritWorthyInventoryList_HeaderInit(WritWorthyUIInventoryListHeadersDetail5  , "Detail5"   , "品质"   , "ui_detail5")
	WritWorthyInventoryList_HeaderInit(WritWorthyUIInventoryListHeadersEnqueue  , "Enqueue"   , "Q"      , "ui_is_queued")

return true end