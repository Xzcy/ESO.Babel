local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["ElmsMarkers"] = function() if not ElmsMarkers then return false end
  local NewOption = {
		{
			type = "header",
			name = "配置：/elms 打开ElmsMarkers UI，方便添加/移除标记",
		},
		{
			type = "checkbox",
			name = "显示标记",
			tooltip = "切换UI显示",
		},
		{
			type = "button",
			name = "清空当前区域",
			tooltip = "这将会移除当前区域的所有标记",
		},
		{
			type = "slider",
			name = "标记尺寸",
		},
		{
			type = "header",
			name = "团队标记",
		},
		{
			type = "checkbox",
			name = "订阅 队长标记",
			tooltip = "自动接收队长的群发标记\r\n译注：需队长使用/elms pp或/elms rr指令或在插件UI中 群发/删标记",
		},
		{
			type = "checkbox",
			name = "订阅 队长警报",
			tooltip = "自动接收队长的集合指令警报\r\n译注：需队长绑定集合指令的快捷键并使用",
		},
		{
			type = "button",
			name = function() return ElmsMarkers.savedVars.locked and "重定位UI" or "锁定UI" end,
			tooltip = "切换重新定位插件UI",
			func = function(value)
				ElmsMarkers.UnlockUI(ElmsMarkers.savedVars.locked)
					 if not ElmsMarkers.savedVars.locked then
								value:SetText("锁定UI")
					 else
								value:SetText("重定位UI")
					 end
			end,
		},
		{
			type = "slider",
			name = "警告尺寸",
			tooltip = "设置警告的尺寸 (需要搭配上方的按钮使用)",
 		},
		{
			type = "header",
			name = " 导入",
		},
		{
			type = "editbox",
			name = "配置",
			tooltip = "输入有效的 ElmsMarkers 字符串，在当前区域导入标记",
		},
		{
			type = "button",
			name = "导入",
			tooltip = "为当前区域导入设置",
		},
		{
			type = "header",
			name = " 导出字符串",
		},
		{
			type = "editbox",
			name = "配置",
			tooltip = "描述您为该区域配置的标记的字符串",
		},
	}
  
  --Special
  BB.SetMenuPatch(ElmsMarkers.name.."Options", NewOption)
  
  BB.SetAfterPart(
    function()
      ElmsMarkers_Frame_Title_Subtitle:SetText("放置新标记")
      ElmsMarkers_Frame_Button_Group_Place_Button:SetText("放置")
      ElmsMarkers_Frame_Button_Group_Place_Publish_Button:SetText("放置并发布")
      ElmsMarkers_Frame_Button_Group_Remove_Button:SetText("移除")
      ElmsMarkers_Frame_Button_Group_Remove_Publish_Button:SetText("移除并发布")
    end
  )
  
  BB.SetKeybindingsReplace("EM_PLACE_MARKER", "放置标记")
  BB.SetKeybindingsReplace("EM_REMOVE_MARKER", "移除标记")
  BB.SetKeybindingsReplace("EM_PLACE_RENDEZVOUS", "放置集合点")
  
return true end