local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["GridList"] = function() if not GridList then return false end
  local NewTable = {
		{
      type = "submenu", 
      name = "外观",
			controls = {
				{	
          type = "header", 
          name = "背景", 
        },
				{	
          type = 'iconpicker',
					name = "背景",
				},
				{	
          type = "slider", 
          name = "内收比例",
				},
				{
          type = "colorpicker", 
          name = "颜色",
				},
				{	
          type = "colorpicker", 
          name = "高亮颜色",
				},
				{	
          type = "header", 
          name = "边框", 
        },
				{	
          type = 'iconpicker',
					name = "边框",
				},
				{	
          type = "slider",
          name = "厚度",
				},
				{	
          type = 'dropdown',
					name = "宽度",
				},
				{	
          type = 'dropdown',
					name = "高度",
				},
				{	
          type = "header", 
          name = "边框: 品质颜色", },
				{	
          type = "colorpicker", 
          name = "'废品'",
				},
				{	
          type = "colorpicker", 
          name = "'普通'",
				},
				{	
          type = "slider", 
          name = "明亮度 (1.x)",
					tooltip	= "除了: '废品' and '普通'",
				},
				{	
          type = "slider", 
          name = "透明度 (1.x)",
					tooltip = "除了: '废品' and '普通'",
				},
			},
		},
		{	
      type = "header", 
      name = "物品格", 
    },
		{	
      type = "slider", 
      name = "尺寸",
		},
		{	
      type = "slider", 
      name = "间隔",
		},
		{	
      type = "checkbox", 
      name = "紧贴物品格显示弹窗",
		},
		{	
      type = "header", 
      name = "物品图标", 
    },
		{	
      type = "slider", 
      name = "尺寸",
		},
		{	
      type = "checkbox", 
      name = "鼠标悬停动画",
		},
		{	
      type = "slider", 
      name = "鼠标悬停动画: 尺寸 (1.x)",
		},
		{	
      type = "slider", 
      name = "鼠标悬停动画: 持续时间 (ms)",
		},
		{	
      type = "header", 
      name = "状态图标", 
    },
		{	
      type = "checkbox", 
      name = "启用弹窗",
		},
		{	
      type = "slider", 
      name = "尺寸",
		},
		{	
      type = "slider", 
      name = "透明度(1.x)",
		},
		{	
      type = "slider", 
      name = "                        X轴位置",
		},
		{	
      type				= "slider", 
      name = "                        Y轴位置",
		},
		{	
      type = "header", 
      name = "特质图标", 
    },
		{	
      type = "checkbox", 
      name = "启用弹窗",
		},
		{	
      type = "slider", 
      name = "尺寸",
		},
		{	
      type = "slider", 
      name = "透明度(1.x)",
		},
		{	
      type = "slider", 
      name = "                        X轴位置",
		},
		{	
      type				= "slider", 
      name = "                        Y轴位置",
		},
		{	
      type = "header", 
      name = "物品数量", 
    },
		{	
      type				= 'dropdown',
			name				= "字体",
		},
		{	
      type				= 'dropdown',
			name				= "阴影",
		},
		{	
      type				= "slider", 
      name = "阴影透明度(1.x)",
		},
		{	
      type				= "slider", 
      name = "字体大小",
		},
		{	
      type				= "slider", 
      name = "字体透明度(1.x)",
		},
		{	
      type				= "slider", 
      name = "                        X轴位置",
		},
		{	
      type				= "slider", 
      name = "                        Y轴位置",
		},
	}

  --Specail Setting
  BB.SetMenuPatch("GridListOptions", NewTable)

return true end