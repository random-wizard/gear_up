-- dark horns
minetest.register_tool("gear_up:dark_horns", {
	description = ("Dark Horns \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","+12% Attack damage")..
		""),
	inventory_image = "dark_horns_inv.png",
	acc_offense = 12,
	acc_defense = 500,
	acc_slot = "headtop_acc",
	acc_size_head = ({x=2.25,y=2.25}),
	acc_model_head = ("accessory_horns_1.b3d"),
	acc_texture_head = ("dark_horns.png"),
	acc_pos_head = {x=0,y=2.0,z=0},
	acc_anim_head = {x=0,y=0},
	acc_glow_head = 5,

	groups = {head_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:dark_horns 1",
	recipe = {
		{"default:obsidian_shard", "", "default:obsidian_shard"},
		{"default:diamond", "", "default:diamond"},
		{"default:obsidian", "", "default:obsidian"},
	}
})

-- dark wings
minetest.register_tool("gear_up:dark_wings", {
	description = ("Dark Wings \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","6.0 Flight Time \n")..
		""..
		core.colorize("#aaaaaa","0.7 Flight Force \n")..
		""..
		core.colorize("#aaaaaa","Allows slow fall \n")..
		""..
		core.colorize("#aaaaaa","+9% Attack damage")..
		""),
	inventory_image = "dark_wings_inv.png",
	acc_offense = 9,
	acc_flight_time = 6.0,
	acc_flight_force = 0.7,

	acc_slot = "wing_acc",

	acc_size_body = ({x=3.0,y=3.0}),
	acc_model_body = ("accessory_wings.b3d"),
	acc_texture_body = ("dark_wings.png"),
	acc_pos_body = {x=0,y=4.0,z=-1.1},
	acc_anim_body = {x=1,y=20},
	acc_glow_body = 5,

	groups = {body_accessory = 1,acc_wings=1},
})

minetest.register_craft({
	output = "gear_up:dark_wings 1",
	recipe = {
		{"default:obsidian_shard", "default:obsidian", ""},
		{"default:obsidian", "gear_up:wing_base", "default:obsidian"},
		{"default:obsidian", "", ""},
	}
})
