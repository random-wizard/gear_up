-- golden halo
minetest.register_tool("gear_up:golden_halo", {
	description = ("Golden Halo \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","+6 Max HP").. ""),
	inventory_image = "golden_halo_inv.png",
	acc_hpBonus = 6,

	acc_slot = "headtop_acc",
	acc_size_head = ({x=2.25,y=2.25}),
	acc_model_head = ("accessory_golden_halo.b3d"),
	acc_texture_head = ("golden_halo.png"),
	acc_pos_head = {x=0,y=5.50,z=0},
	acc_anim_head = {x=0,y=0},
	acc_glow_head = 10,

	groups = {head_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:golden_halo 1",
	recipe = {
		{"default:mese_crystal", "default:gold_ingot","default:mese_crystal"},
		{"default:gold_ingot", "","default:gold_ingot"},
		{"default:mese_crystal", "default:gold_ingot","default:mese_crystal"},
	}
})

minetest.register_tool("gear_up:angel_wings", {
	description = ("Angel Wings \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","5.25 Flight Time \n")..
		""..
		core.colorize("#aaaaaa","0.65 Flight Force \n")..
		""..
		core.colorize("#aaaaaa","Allows slow fall \n")..
		""..
		core.colorize("#aaaaaa","+4 Max HP")..
		""),
	inventory_image = "angel_wings_inv.png",
	acc_hpBonus = 4,
	acc_flight_time = 5.25,
	acc_flight_force = 0.65,

	acc_slot = "wing_acc",

	acc_size_body = ({x=3.0,y=3.0}),
	acc_model_body = ("accessory_wings.b3d"),
	acc_texture_body = ("angel_wings.png"),
	acc_pos_body = {x=0,y=4.0,z=-1.1},
	acc_anim_body = {x=1,y=20},

	groups = {body_accessory = 1,acc_wings=1},
})

minetest.register_craft({
	output = "gear_up:angel_wings 1",
	recipe = {
		{"wool:white", "wool:white", "wool:white"},
		{"wool:white", "gear_up:wing_base", "wool:white"},
		{"wool:white", "wool:white", ""},
	}
})
