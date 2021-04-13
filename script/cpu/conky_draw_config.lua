-- Define your visual elements here
-- For examples, and a complete list on the possible elements and their
-- properties, go to https://github.com/fisadev/conky-draw/
-- (and be sure to use the lastest version)

--Variable area
local thickness_size = 15
local center_x = 190
local center_y = 190
local minimum_radius = 50
local ring_increment_size = 18
local my_font = 'Cica'
local font_color = 0xd4d4d4
local bg_color = 0x606060
local bg_alpha = 0.5
local fg_color = 0x006eff
local fg_alpha = 0.8

--conky.textで指定するフォントサイズとconky_drawの間に差がある為、
--それを埋めるためのもの。
function font_gap(font_size)
	return font_size * 1.333
end

elements = {

--[[
	###########################################################################
							Ring Graph
	###########################################################################
]]
	{
	kind = 'ring_graph',
	conky_value = 'cpu cpu8',
	center = {x = center_x, y = center_y},
	thickness = thickness_size,
	bar_color = fg_color,
	bar_alpha = fg_alpha,
	bar_thickness = thickness_size,
	background_color = bg_color,
	background_alpha = bg_alpha,
	background_thickness = thickness_size,
	radius = minimum_radius + (ring_increment_size * 0),
	max_value = 100,
	start_angle = 270,
	end_angle = 0,
	graduated = true,
	number_graduation = 75,
	angle_between_graduation = 0.5,
	},{
	kind = 'ring_graph',
	conky_value = 'cpu cpu7',
	center = {x = center_x, y = center_y},
	thickness = thickness_size,
	bar_color = fg_color,
	bar_alpha = fg_alpha,
	bar_thickness = thickness_size,
	background_color = bg_color,
	background_alpha = bg_alpha,
	background_thickness = thickness_size,
	radius = minimum_radius + (ring_increment_size * 1),
	max_value = 100,
	start_angle = 270,
	end_angle = 0,
	graduated = true,
	number_graduation = 75,
	angle_between_graduation = 0.5,
	},{
	kind = 'ring_graph',
	conky_value = 'cpu cpu6',
	center = {x = center_x, y = center_y},
	thickness = thickness_size,
	bar_color = fg_color,
	bar_alpha = fg_alpha,
	bar_thickness = thickness_size,
	background_color = bg_color,
	background_alpha = bg_alpha,
	background_thickness = thickness_size,
	radius = minimum_radius + (ring_increment_size * 2),
	max_value = 100,
	start_angle = 270,
	end_angle = 0,
	graduated = true,
	number_graduation = 75,
	angle_between_graduation = 0.5,
	},{
	kind = 'ring_graph',
	conky_value = 'cpu cpu5',
	center = {x = center_x, y = center_y},
	thickness = thickness_size,
	bar_color = fg_color,
	bar_alpha = fg_alpha,
	bar_thickness = thickness_size,
	background_color = bg_color,
	background_alpha = bg_alpha,
	background_thickness = thickness_size,
	radius = minimum_radius + (ring_increment_size * 3),
	max_value = 100,
	start_angle = 270,
	end_angle = 0,
	graduated = true,
	number_graduation = 75,
	angle_between_graduation = 0.5,
	},{
	kind = 'ring_graph',
	conky_value = 'cpu cpu4',
	center = {x = center_x, y = center_y},
	thickness = thickness_size,
	bar_color = fg_color,
	bar_alpha = fg_alpha,
	bar_thickness = thickness_size,
	background_color = bg_color,
	background_alpha = bg_alpha,
	background_thickness = thickness_size,
	radius = minimum_radius + (ring_increment_size * 4),
	max_value = 100,
	start_angle = 270,
	end_angle = 0,
	graduated = true,
	number_graduation = 75,
	angle_between_graduation = 0.5,
	},{
	kind = 'ring_graph',
	conky_value = 'cpu cpu3',
	center = {x = center_x, y = center_y},
	thickness = thickness_size,
	bar_color = fg_color,
	bar_alpha = fg_alpha,
	bar_thickness = thickness_size,
	background_color = bg_color,
	background_alpha = bg_alpha,
	background_thickness = thickness_size,
	radius = minimum_radius + (ring_increment_size * 5),
	max_value = 100,
	start_angle = 270,
	end_angle = 0,
	graduated = true,
	number_graduation = 75,
	angle_between_graduation = 0.5,
	},{
	kind = 'ring_graph',
	conky_value = 'cpu cpu2',
	center = {x = center_x, y = center_y},
	thickness = thickness_size,
	bar_color = fg_color,
	bar_alpha = fg_alpha,
	bar_thickness = thickness_size,
	background_color = bg_color,
	background_alpha = bg_alpha,
	background_thickness = thickness_size,
	radius = minimum_radius + (ring_increment_size * 6),
	max_value = 100,
	start_angle = 270,
	end_angle = 0,
	graduated = true,
	number_graduation = 75,
	angle_between_graduation = 0.5,
	},{
	kind = 'ring_graph',
	conky_value = 'cpu cpu1',
	center = {x = center_x, y = center_y},
	thickness = thickness_size,
	bar_color = fg_color,
	bar_alpha = fg_alpha,
	bar_thickness = thickness_size,
	background_color = bg_color,
	background_alpha = bg_alpha,
	background_thickness = thickness_size,
	radius = minimum_radius + (ring_increment_size * 7),
	max_value = 100,
	start_angle = 270,
	end_angle = 0,
	graduated = true,
	number_graduation = 75,
	angle_between_graduation = 0.5,
	},


--[[
	###########################################################################
							Core Temperature
	###########################################################################
]]
	{
	kind = 'bar_graph',
	from = {x = 350, y = 100},
	to = {x = 550, y = 100},
	conky_value = 'exec sensors | grep "Package" | cut -c 17-20',
	thickness = thickness_size,
	bar_color = fg_color,
	bar_alpha = fg_alpha,
	bar_thickness = thickness_size,
	background_color = bg_color,
	background_alpha = bg_alpha,
	background_thickness = thickness_size,
	max_value = 100,
	},{
	kind = 'variable_text',
	from = {x = 300, y = 105},
	conky_value = 'execpi 120 sensors | grep "Package" | cut -c 17-20',
	color = font_color,
	font = my_font,
	font_size = font_gap(12),
	alpha = 1,
	},{
	kind = 'static_text',
	from = {x = 332, y = 105},
	text = '℃',
	color = font_color,
	font = my_font,
	font_size = font_gap(12),
	alpha = 1,
	},

--[[
	###########################################################################
							Text Contents
	###########################################################################
]]
	--CPU Threads Text
	{
	kind = 'static_text',
	from = {x = 195, y = 18 + (ring_increment_size * 0)},
	text = 'CPU/01',
	font = my_font,
	font_size = font_gap(10),
	color = font_color,
	alpha = 1,
	},{
	kind = 'static_text',
	from = {x = 195, y = 18 + (ring_increment_size * 1)},
	text = 'CPU/02',
	font = my_font,
	font_size = font_gap(10),
	color = font_color,
	alpha = 1,
	},{
	kind = 'static_text',
	from = {x = 195, y = 18 + (ring_increment_size * 2)},
	text = 'CPU/03',
	font = my_font,
	font_size = font_gap(10),
	color = font_color,
	alpha = 1,
	},{
	kind = 'static_text',
	from = {x = 195, y = 18 + (ring_increment_size * 3)},
	text = 'CPU/04',
	font = my_font,
	font_size = font_gap(10),
	color = font_color,
	alpha = 1,
	},{
	kind = 'static_text',
	from = {x = 195, y = 18 + (ring_increment_size * 4)},
	text = 'CPU/05',
	font = my_font,
	font_size = font_gap(10),
	color = font_color,
	alpha = 1,
	},{
	kind = 'static_text',
	from = {x = 195, y = 18 + (ring_increment_size * 5)},
	text = 'CPU/06',
	font = my_font,
	font_size = font_gap(10),
	color = font_color,
	alpha = 1,
	},{
	kind = 'static_text',
	from = {x = 195, y = 18 + (ring_increment_size * 6)},
	text = 'CPU/07',
	font = my_font,
	font_size = font_gap(10),
	color = font_color,
	alpha = 1,
	},{
	kind = 'static_text',
	from = {x = 195, y = 18 + (ring_increment_size * 7)},
	text = 'CPU/08',
	font = my_font,
	font_size = font_gap(10),
	color = font_color,
	alpha = 1,
	},

--	Total CPU infomations
	{
	kind = 'static_text',
	from = {x = 300, y = 50},
	text = 'CPU',
	font = my_font,
	font_size = font_gap(25),
	Bold = true,
	color = font_color,
	alpha = 1,
	},
	{
	kind = 'variable_text',
	from = {x = 300, y = 80},
	conky_value = 'exec python3 cpu/get_cpu_info.py',
	font = my_font,
	font_size = font_gap(15),
	color = font_color,
	alpha = 1,
	},
}
