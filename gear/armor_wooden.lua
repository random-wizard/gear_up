-- wooden helmet
minetest.register_tool("gear_up:wooden_helmet", {
	description = ("Wooden Helmet \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","1 Defense")..
		""),
	inventory_image = "wooden_helmet_inv.png",
	acc_defense = 1,
	acc_slot = "helmet_acc",
	acc_size_head = ({x=2.5,y=2.5}),
	acc_model_head = ("simple_helmet_cuboid.b3d"),
	acc_texture_head = ("wooden_helmet.png"),
	acc_pos_head = {x=0,y=2.0,z=0},
	acc_anim_head = {x=0,y=0},

	groups = {head_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:wooden_helmet 1",
	recipe = {
		{"group:wood", "group:wood", "group:wood"},
		{"group:wood", "", "group:wood"},
	}
})

minetest.register_craft({
    type = 'fuel',
    recipe = 'gear_up:wooden_helmet',
    burntime = 2,
})

-- wooden armor
minetest.register_tool("gear_up:wooden_armor", {
	description = ("Wooden armor \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","2 Defense")..
		""),
	inventory_image = "wooden_armor_inv.png",
	acc_defense = 2,
	acc_slot = "armor_acc",

	acc_size_body = ({x=2.5,y=2.5}),
	acc_model_body = ("simple_body.b3d"),
	acc_texture_body = ("wooden_armor.png"),
	acc_pos_body = {x=0,y=3.0,z=0},
	acc_anim_body = {x=0,y=0},

	groups = {body_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:wooden_armor 1",
	recipe = {
		{"group:wood", "", "group:wood"},
		{"group:wood", "group:wood", "group:wood"},
		{"group:wood", "group:wood", "group:wood"},
	}
})

minetest.register_craft({
    type = 'fuel',
    recipe = 'gear_up:wooden_armor',
    burntime = 3,
})

-- wooden leggings
minetest.register_tool("gear_up:wooden_leggings", {
	description = ("Wooden Leggings \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","2 Defense")..
		""),
	inventory_image = "wooden_leggings_inv.png",
	acc_defense = 1,
	acc_slot = "pants_acc",

	acc_size_l_leg = ({x=2.4,y=2.4}),
	acc_model_l_leg = ("simple_hand.b3d"),
	acc_texture_l_leg = ("wooden_leg.png"),
	acc_pos_l_leg = {x=0,y=2.75,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=2.4,y=2.4}),
	acc_model_r_leg = ("simple_hand.b3d"),
	acc_texture_r_leg = ("wooden_leg.png"),
	acc_pos_r_leg = {x=0,y=2.75,z=0},
	acc_anim_r_leg = {x=0,y=0},

	groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:wooden_leggings 1",
	recipe = {
		{"group:wood", "group:wood", "group:wood"},
		{"group:wood", "", "group:wood"},
		{"group:wood", "", "group:wood"},
	}
})

minetest.register_craft({
    type = 'fuel',
    recipe = 'gear_up:wooden_leggings',
    burntime = 3,
})
