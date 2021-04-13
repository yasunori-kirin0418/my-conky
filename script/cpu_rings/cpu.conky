conky.config = {
--[[
設定項目に関しては、
http://conky.sourceforge.net/config_settings.html
]]

--[[
	####################
	-  Conky settings  -
	####################
]]
	background = true,
	update_interval = 1,

	cpu_avg_samples = 2,
	net_avg_samples = 2,

	double_buffer = true,
	no_buffers = true,

	text_buffer_size = 10240,


--[[
	###########################
	-  Window specifications  -
	###########################
]]
--ウィンドウ表示方法
--タイル型ウィンドウマネージャ用
	own_window = true,
	own_window_type = 'override',
	own_window_transparent = true,

--境界線とウィンドウ・テキスト間の設定
	border_inner_margin = 0,
	border_outer_margin = 0,

--表示位置
	alignment = 'tl',
	gap_x = 0,
	gap_y = 0,

--サイズ
	minimum_width = 750,
	minimum_height = 400,
	maximum_width = 1980,

--[[
	#######################
	-  Graphics settings  -
	#######################
]]
	draw_shades = false,
	draw_outline = false,
	draw_borders = false,
	draw_graph_borders = false,

--[[
	###################
	-  Text settings  -
	###################
]]
	override_utf8_locale = true,
	use_xft = true,
	font = 'Cica:size=12',
	xftalpha = 0.8,

	uppercase = false,

	default_color = '#FFFFFF',

--[[
	########################
	-  Loading Lua-script  -
	########################
]]
	lua_load = 'script/cpu_rings/conky_draw.lua',
	lua_draw_hook_pre = 'main',

}

--

--[[
表示される変数一覧は、
http://conky.sourceforge.net/variables.html
]]
conky.text = [[
${font Cica:size=10}${offset 245}${voffset 3}${cpu cpu1}%
${font Cica:size=10}${offset 245}${voffset 5}${cpu cpu2}%
${font Cica:size=10}${offset 245}${voffset 3}${cpu cpu3}%
${font Cica:size=10}${offset 245}${voffset 4}${cpu cpu4}%
${font Cica:size=10}${offset 245}${voffset 4}${cpu cpu5}%
${font Cica:size=10}${offset 245}${voffset 4}${cpu cpu6}%
${font Cica:size=10}${offset 245}${voffset 4}${cpu cpu7}%
${font Cica:size=10}${offset 245}${voffset 4}${cpu cpu8}%
${offset 232}${voffset 7}${cpugraph cpu0 30,140}
]]
