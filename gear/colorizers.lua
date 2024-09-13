-- dye red
minetest.register_craftitem("gear_up:dyejar_red", {
	description = ("Red Dye \n"..
		core.colorize("#aaaaaa", "Put in color inventory slot to apply\n")..
 		core.colorize("#aaaaaa", "dye to your gear in same slot")..
		""),
	inventory_image = "dye_bottle_fill.png^[multiply:#ff0000^dye_bottle.png",
	accessory_dye = "^[multiply:#ff0000"
})

minetest.register_craft({
	output = "gear_up:dyejar_red 1",
	recipe = {
		{"dye:red", "group:stick", "dye:red"},
		{"dye:red", "vessels:glass_bottle", "dye:red"},
	}
})

-- dye green
minetest.register_craftitem("gear_up:dyejar_green", {
	description = ("Green Dye \n"..
		core.colorize("#aaaaaa", "Put in color inventory slot to apply\n")..
 		core.colorize("#aaaaaa", "dye to your gear in same slot")..
		""),
	inventory_image = "dye_bottle_fill.png^[multiply:#00ff00^dye_bottle.png",
	accessory_dye = "^[multiply:#00ff00"
})

minetest.register_craft({
	output = "gear_up:dyejar_green 1",
	recipe = {
		{"dye:green", "group:stick", "dye:green"},
		{"dye:green", "vessels:glass_bottle", "dye:green"},
	}
})

-- dye blue
minetest.register_craftitem("gear_up:dyejar_blue", {
	description = ("Blue Dye \n"..
		core.colorize("#aaaaaa", "Put in color inventory slot to apply\n")..
 		core.colorize("#aaaaaa", "dye to your gear in same slot")..
		""),
	inventory_image = "dye_bottle_fill.png^[multiply:#0000ff^dye_bottle.png",
	accessory_dye = "^[multiply:#0000ff"
})

minetest.register_craft({
	output = "gear_up:dyejar_blue 1",
	recipe = {
		{"dye:blue", "group:stick", "dye:blue"},
		{"dye:blue", "vessels:glass_bottle", "dye:blue"},
	}
})

-- dye purple
minetest.register_craftitem("gear_up:dyejar_purple", {
	description = ("Purple Dye \n"..
		core.colorize("#aaaaaa", "Put in color inventory slot to apply\n")..
 		core.colorize("#aaaaaa", "dye to your gear in same slot")..
		""),
	inventory_image = "dye_bottle_fill.png^[multiply:#9600ff^dye_bottle.png",
	accessory_dye = "^[multiply:#9600ff"
})

minetest.register_craft({
	output = "gear_up:dyejar_purple 1",
	recipe = {
		{"dye:violet", "group:stick", "dye:violet"},
		{"dye:violet", "vessels:glass_bottle", "dye:violet"},
	}
})

-- dye magenta
minetest.register_craftitem("gear_up:dyejar_magenta", {
	description = ("Magenta Dye \n"..
		core.colorize("#aaaaaa", "Put in color inventory slot to apply\n")..
 		core.colorize("#aaaaaa", "dye to your gear in same slot")..
		""),
	inventory_image = "dye_bottle_fill.png^[multiply:#ff00ff^dye_bottle.png",
	accessory_dye = "^[multiply:#ff00ff"
})

minetest.register_craft({
	output = "gear_up:dyejar_magenta 1",
	recipe = {
		{"dye:magenta", "group:stick", "dye:magenta"},
		{"dye:magenta", "vessels:glass_bottle", "dye:magenta"},
	}
})

-- dye yellow
minetest.register_craftitem("gear_up:dyejar_yellow", {
	description = ("Yellow Dye \n"..
		core.colorize("#aaaaaa", "Put in color inventory slot to apply\n")..
 		core.colorize("#aaaaaa", "dye to your gear in same slot")..
		""),
	inventory_image = "dye_bottle_fill.png^[multiply:#ffc90e^dye_bottle.png",
	accessory_dye = "^[multiply:#ffc90e"
})

minetest.register_craft({
	output = "gear_up:dyejar_yellow 1",
	recipe = {
		{"dye:yellow", "group:stick", "dye:yellow"},
		{"dye:yellow", "vessels:glass_bottle", "dye:yellow"},
	}
})

-- dye orange
minetest.register_craftitem("gear_up:dyejar_orange", {
	description = ("Orange Dye \n"..
		core.colorize("#aaaaaa", "Put in color inventory slot to apply\n")..
 		core.colorize("#aaaaaa", "dye to your gear in same slot")..
		""),
	inventory_image = "dye_bottle_fill.png^[multiply:#ff7a00^dye_bottle.png",
	accessory_dye = "^[multiply:#ff7a00"
})

minetest.register_craft({
	output = "gear_up:dyejar_orange 1",
	recipe = {
		{"dye:orange", "group:stick", "dye:orange"},
		{"dye:orange", "vessels:glass_bottle", "dye:orange"},
	}
})

-- dye light blue
minetest.register_craftitem("gear_up:dyejar_lightblue", {
	description = ("Light Blue Dye \n"..
		core.colorize("#aaaaaa", "Put in color inventory slot to apply\n")..
 		core.colorize("#aaaaaa", "dye to your gear in same slot")..
		""),
	inventory_image = "dye_bottle_fill.png^[multiply:#00ffff^dye_bottle.png",
	accessory_dye = "^[multiply:#00ffff"
})

minetest.register_craft({
	output = "gear_up:dyejar_lightblue 1",
	recipe = {
		{"dye:white", "group:stick", "dye:white"},
		{"dye:blue", "vessels:glass_bottle", "dye:blue"},
	}
})

-- dye cyan
minetest.register_craftitem("gear_up:dyejar_cyan", {
	description = ("Cyan Dye \n"..
		core.colorize("#aaaaaa", "Put in color inventory slot to apply\n")..
 		core.colorize("#aaaaaa", "dye to your gear in same slot")..
		""),
	inventory_image = "dye_bottle_fill.png^[multiply:#00ff7d^dye_bottle.png",
	accessory_dye = "^[multiply:#00ff7d"
})

minetest.register_craft({
	output = "gear_up:dyejar_cyan 1",
	recipe = {
		{"dye:cyan", "group:stick", "dye:cyan"},
		{"dye:cyan", "vessels:glass_bottle", "dye:cyan"},
	}
})

-- dye brown
minetest.register_craftitem("gear_up:dyejar_brown", {
	description = ("Brown Dye \n"..
		core.colorize("#aaaaaa", "Put in color inventory slot to apply\n")..
 		core.colorize("#aaaaaa", "dye to your gear in same slot")..
		""),
	inventory_image = "dye_bottle_fill.png^[multiply:#431800^dye_bottle.png",
	accessory_dye = "^[multiply:#431800"
})

minetest.register_craft({
	output = "gear_up:dyejar_brown 1",
	recipe = {
		{"dye:brown", "group:stick", "dye:brown"},
		{"dye:brown", "vessels:glass_bottle", "dye:brown"},
	}
})

-- dye grey
minetest.register_craftitem("gear_up:dyejar_grey", {
	description = ("Grey Dye \n"..
		core.colorize("#aaaaaa", "Put in color inventory slot to apply\n")..
 		core.colorize("#aaaaaa", "dye to your gear in same slot")..
		""),
	inventory_image = "dye_bottle_fill.png^[multiply:#7a7a7a^dye_bottle.png",
	accessory_dye = "^[multiply:#7a7a7a"
})

minetest.register_craft({
	output = "gear_up:dyejar_grey 1",
	recipe = {
		{"dye:grey", "group:stick", "dye:grey"},
		{"dye:grey", "vessels:glass_bottle", "dye:grey"},
	}
})

-- dye dark
minetest.register_craftitem("gear_up:dyejar_dark", {
	description = ("Dark Dye \n"..
		core.colorize("#aaaaaa", "Put in color inventory slot to apply\n")..
 		core.colorize("#aaaaaa", "dye to your gear in same slot")..
		""),
	inventory_image = "dye_bottle_fill.png^[multiply:#171717^dye_bottle.png",
	accessory_dye = "^[multiply:#171717"
})

minetest.register_craft({
	output = "gear_up:dyejar_dark 1",
	recipe = {
		{"dye:black", "group:stick", "dye:black"},
		{"dye:black", "vessels:glass_bottle", "dye:black"},
	}
})

-- dye pink
minetest.register_craftitem("gear_up:dyejar_pink", {
	description = ("Pink Dye \n"..
		core.colorize("#aaaaaa", "Put in color inventory slot to apply\n")..
 		core.colorize("#aaaaaa", "dye to your gear in same slot")..
		""),
	inventory_image = "dye_bottle_fill.png^[multiply:#ff7a7a^dye_bottle.png",
	accessory_dye = "^[multiply:#ff7a7a"
})

minetest.register_craft({
	output = "gear_up:dyejar_pink 1",
	recipe = {
		{"dye:pink", "group:stick", "dye:pink"},
		{"dye:pink", "vessels:glass_bottle", "dye:pink"},
	}
})

-- dye frozen
minetest.register_craftitem("gear_up:dyejar_frozen", {
	description = ("Frozen Dye \n"..
		core.colorize("#aaaaaa", "Put in color inventory slot to apply\n")..
 		core.colorize("#aaaaaa", "dye to your gear in same slot")..
		""),
	inventory_image = "dye_bottle_fill.png^[mask:frozen.png^dye_bottle.png",
	accessory_dye = "^[mask:frozen.png"
})

minetest.register_craft({
	output = "gear_up:dyejar_frozen 1",
	recipe = {
		{"default:ice", "default:mese_crystal_fragment", "default:ice"},
		{"default:mese_crystal_fragment", "gear_up:dyejar_blue", "default:mese_crystal_fragment"},
	}
})

-- dye dragonscale
minetest.register_craftitem("gear_up:dyejar_dragonscale", {
	description = ("Dragonscale Dye \n"..
		core.colorize("#aaaaaa", "Put in color inventory slot to apply\n")..
 		core.colorize("#aaaaaa", "dye to your gear in same slot")..
		""),
	inventory_image = "dye_bottle_fill.png^[mask:dragonscale.png^dye_bottle.png",
	accessory_dye = "^[mask:dragonscale.png"
})

minetest.register_craft({
	output = "gear_up:dyejar_dragonscale 1",
	recipe = {
		{"default:obsidian", "wool:green", "default:obsidian"},
		{"wool:green", "gear_up:dyejar_green", "wool:green"},
	}
})

-- dye rgb
minetest.register_craftitem("gear_up:dyejar_rgb", {
	description = ("RGB Dye \n"..
		core.colorize("#aaaaaa", "Put in color inventory slot to apply\n")..
 		core.colorize("#aaaaaa", "dye to your gear in same slot")..
		""),
	inventory_image = "dye_bottle_fill.png^[mask:rgb.png^dye_bottle.png",
	accessory_dye = "^[mask:rgb.png"
})

minetest.register_craft({
	output = "gear_up:dyejar_rgb 1",
	recipe = {
		{"default:mese_crystal_fragment", "dye:black", "default:mese_crystal_fragment"},
		{"gear_up:dyejar_red", "gear_up:dyejar_green", "gear_up:dyejar_blue"},
	}
})

-- dye colorful
minetest.register_craftitem("gear_up:dyejar_colorful", {
	description = ("Colorful Pixelated Dye \n"..
		core.colorize("#aaaaaa", "Put in color inventory slot to apply\n")..
 		core.colorize("#aaaaaa", "dye to your gear in same slot")..
		""),
	inventory_image = "dye_bottle_fill.png^[mask:colorful.png^dye_bottle.png",
	accessory_dye = "^[mask:colorful.png"
})

minetest.register_craft({
	output = "gear_up:dyejar_colorful 1",
	recipe = {
		{"", "default:gravel", ""},
		{"", "gear_up:dyejar_rainbow", ""},
		{"", "default:mese_crystal_fragment", ""},
	}
})

-- dye gold
minetest.register_craftitem("gear_up:dyejar_gold", {
	description = ("Gold Dye \n"..
		core.colorize("#aaaaaa", "Put in color inventory slot to apply\n")..
 		core.colorize("#aaaaaa", "dye to your gear in same slot")..
		""),
	inventory_image = "dye_bottle_fill.png^[mask:gold.png^dye_bottle.png",
	accessory_dye = "^[mask:gold.png"
})

minetest.register_craft({
	output = "gear_up:dyejar_gold 1",
	recipe = {
		{"", "default:gold_ingot", ""},
		{"", "gear_up:dyejar_gold", ""},
	}
})

-- dye shadow
minetest.register_craftitem("gear_up:dyejar_shadow", {
	description = ("Shadow Dye \n"..
		core.colorize("#aaaaaa", "Put in color inventory slot to apply\n")..
 		core.colorize("#aaaaaa", "dye to your gear in same slot")..
		""),
	inventory_image = "dye_bottle_fill.png^[multiply:#000000^dye_bottle.png",
	accessory_dye = "^[multiply:#000000"
})

minetest.register_craft({
	output = "gear_up:dyejar_shadow 1",
	recipe = {
		{"gear_up:dyejar_dark", "default:obsidian", "gear_up:dyejar_dark"},
	}
})

-- dye rainbow
minetest.register_craftitem("gear_up:dyejar_rainbow", {
	description = ("Rainbow Dye \n"..
		core.colorize("#aaaaaa", "Put in color inventory slot to apply\n")..
 		core.colorize("#aaaaaa", "dye to your gear in same slot")..
		""),
	inventory_image = "dye_bottle_fill.png^[mask:rainbow.png^dye_bottle.png",
	accessory_dye = "^[mask:rainbow.png"
})

minetest.register_craft({
	output = "gear_up:dyejar_rainbow 1",
	recipe = {
		{"", "default:mese_crystal", ""},
		{"gear_up:dyejar_red", "gear_up:dyejar_green", "gear_up:dyejar_blue"},
	}
})

-- dye bright
minetest.register_craftitem("gear_up:dyejar_bright", {
	description = ("White Dye \n"..
		core.colorize("#aaaaaa", "Put in color inventory slot to apply\n")..
 		core.colorize("#aaaaaa", "dye to your gear in same slot")..
		""),
	inventory_image = "dye_bottle_fill.png^[brighten^dye_bottle.png",
	accessory_dye = "^[brighten"
})

minetest.register_craft({
	output = "gear_up:dyejar_bright 1",
	recipe = {
		{"dye:white", "group:stick", "dye:white"},
		{"dye:white", "vessels:glass_bottle", "dye:white"},
	}
})

--[[
-- dye inverted
minetest.register_craftitem("gear_up:dyejar_inverted", {
	description = ("Inverted Dye \n"..
		core.colorize("#aaaaaa", "Put in color inventory slot to apply\n")..
 		core.colorize("#aaaaaa", "dye to your gear in same slot")..
		""),
	inventory_image = "dye_bottle_fill.png^[invert:rgb^dye_bottle.png",
	accessory_dye = "^[invert:rgb"
})

minetest.register_craft({
	output = "gear_up:dyejar_inverted 1",
	recipe = {
		{"", "default:mese_crystal", ""},
		{"", "gear_up:dyejar_bright", ""},
		{"", "default:diamond", ""},
	}
})
--]]

--[[
-- dye inverted r
minetest.register_craftitem("gear_up:dyejar_inverted_r", {
	description = ("Red-Inverted Dye \n"..
		core.colorize("#aaaaaa", "Put in color inventory slot to apply\n")..
 		core.colorize("#aaaaaa", "dye to your gear in same slot")..
		""),
	inventory_image = "dye_bottle_fill.png^[invert:r^dye_bottle.png",
	accessory_dye = "^[invert:r"
})

minetest.register_craft({
	output = "gear_up:dyejar_inverted_r 1",
	recipe = {
		{"", "gear_up:dyejar_red", ""},
		{"", "gear_up:dyejar_inverted", ""},

	}
})
--]]

--[[
-- dye inverted g
minetest.register_craftitem("gear_up:dyejar_inverted_g", {
	description = ("Green-Inverted Dye \n"..
		core.colorize("#aaaaaa", "Put in color inventory slot to apply\n")..
 		core.colorize("#aaaaaa", "dye to your gear in same slot")..
		""),
	inventory_image = "dye_bottle_fill.png^[invert:g^dye_bottle.png",
	accessory_dye = "^[invert:g"
})

minetest.register_craft({
	output = "gear_up:dyejar_inverted_g 1",
	recipe = {
		{"", "gear_up:dyejar_green", ""},
		{"", "gear_up:dyejar_inverted", ""},
	}
})
--]]

--[[
-- dye inverted b
minetest.register_craftitem("gear_up:dyejar_inverted_b", {
	description = ("Blue-Inverted Dye \n"..
		core.colorize("#aaaaaa", "Put in color inventory slot to apply\n")..
 		core.colorize("#aaaaaa", "dye to your gear in same slot")..
		""),
	inventory_image = "dye_bottle_fill.png^[invert:b^dye_bottle.png",
	accessory_dye = "^[invert:b"
})

minetest.register_craft({
	output = "gear_up:dyejar_inverted_b 1",
	recipe = {
		{"", "gear_up:dyejar_blue", ""},
		{"", "gear_up:dyejar_inverted", ""},
	}
})
--]]
