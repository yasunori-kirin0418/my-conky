-- Define your visual elements here
-- For examples, and a complete list on the possible elements and their
-- properties, go to https://github.com/fisadev/conky-draw/
-- (and be sure to use the lastest version)

--Variable areas
local thickness_size = 20
local center_x = 250
local center_y = 150
local minimum_radius = 70
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
    {
    kind = 'ring_graph',
    conky_value = 'memperc',
    center = {x = center_x, y = center_y},
    radius = minimum_radius,
    thickness = thickness_size,
    background_alpha = bg_alpha,
    background_color = bg_color,
    background_thickness = thickness_size,
    bar_alpha = fg_alpha,
    bar_color = fg_color,
    bar_thickness = thickness_size,
    start_angle = -90,
    end_angle = 180,
    },

    {
    kind = 'variable_text',
    from = {x = center_x - 30, y = center_y - minimum_radius},
    conky_value = 'memperc',
    color = font_color,
    font_size = font_gap(12),
    font = my_font,
    add_front = true,
    add_rear = true,
    front_text = 'メモリ使用率:',
    rear_text = '%',
    },{
    kind = 'variable_text',
    from = {x = 250, y = 150},
    conky_value = 'memmax',
    color = font_color,
    font_size = font_gap(12),
    font = my_font,
    add_front = true,
    front_text = '最大メモリ:',
    },{
    kind = 'variable_text',
    from = {x = 250, y = 165},
    conky_value = 'mem',
    color = font_color,
    font_size = font_gap(12),
    font = my_font,
    add_front = true,
    front_text = '使用中メモリ:',
    },{
    kind = 'variable_text',
    from = {x = 250, y = 180},
    conky_value = 'memfree',
    color = font_color,
    font_size = font_gap(12),
    font = my_font,
    add_front = true,
    front_text = '空きメモリ:',
    },{
    kind = 'variable_text',
    from = {x = 250, y = 195},
    conky_value = 'buffers',
    color = font_color,
    font_size = font_gap(12),
    font = my_font,
    add_front = true,
    front_text = 'バッファされたメモリ:'
    },{
    kind = 'variable_text',
    from = {x = 250, y = 210},
    conky_value = 'cached',
    color = font_color,
    font_size = font_gap(12),
    font = my_font,
    add_front = true,
    front_text = 'キャッシュ済みメモリ:',
    },
}
