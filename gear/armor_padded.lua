-- padded helmet
minetest.register_tool("gear_up:padded_helmet", {
	description = ("Padded Helmet \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","1 Defense")..
		""),
	inventory_image = "padded_helmet_inv.png",
	acc_defense = 1,
	acc_slot = "helmet_acc",
	acc_size_head = ({x=2.5,y=2.5}),
	acc_model_head = ("simple_helmet_cuboid.b3d"),
	acc_texture_head = ("padded_helmet.png"),
	acc_pos_head = {x=0,y=2.0,z=0},
	acc_anim_head = {x=0,y=0},

	groups = {head_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:padded_helmet 1",
	recipe = {
		{"", "wool:white", ""},
		{"wool:white", "", "wool:white"},
		{"", "farming:string", ""},
	}
})

-- padded armor
minetest.register_tool("gear_up:padded_armor", {
	description = ("Padded Armor \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","2 Defense")..
		""),
	inventory_image = "padded_armor_inv.png",
	acc_defense = 2,
	acc_slot = "armor_acc",

	acc_size_body = ({x=2.5,y=2.5}),
	acc_model_body = ("double_body.b3d"),
	acc_texture_body = ("padded_armor.png"),
	acc_pos_body = {x=0,y=3.0,z=0},
	acc_anim_body = {x=0,y=0},

	acc_size_l_arm = ({x=2.4,y=2.4}),
	acc_model_l_arm = ("double_hand.b3d"),
	acc_texture_l_arm = ("padded_arm.png"),
	acc_pos_l_arm = {x=0,y=1.75,z=0},
	acc_anim_l_arm = {x=0,y=0},

	acc_size_r_arm = ({x=2.4,y=2.4}),
	acc_model_r_arm = ("double_hand.b3d"),
	acc_texture_r_arm = ("padded_arm.png"),
	acc_pos_r_arm = {x=0,y=1.75,z=0},
	acc_anim_r_arm = {x=0,y=0},

	groups = {body_accessory = 1,l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:padded_armor 1",
	recipe = {
		{"wool:white", "", "wool:white"},
		{"wool:white", "farming:string", "wool:white"},
		{"wool:white", "farming:string", "wool:white"},
	}
})

-- padded leggings
minetest.register_tool("gear_up:padded_leggings", {
	description = ("Padded Leggings \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","1 Defense")..
		""),
	inventory_image = "padded_leggings_inv.png",
	acc_defense = 1,
	acc_slot = "pants_acc",

	acc_size_l_leg = ({x=2.4,y=2.4}),
	acc_model_l_leg = ("simple_hand.b3d"),
	acc_texture_l_leg = ("padded_leg.png"),
	acc_pos_l_leg = {x=0,y=2.75,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=2.4,y=2.4}),
	acc_model_r_leg = ("simple_hand.b3d"),
	acc_texture_r_leg = ("padded_leg.png"),
	acc_pos_r_leg = {x=0,y=2.75,z=0},
	acc_anim_r_leg = {x=0,y=0},

	groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:padded_leggings 1",
	recipe = {
		{"wool:white", "wool:white", "wool:white"},
		{"wool:white", "", "wool:white"},
		{"wool:white", "", "wool:white"},
	}
})

-- padded boots
minetest.register_tool("gear_up:padded_boots", {
	description = ("Padded Boots \n" ..
		core.colorize("#aaaaaa","Equipable \n")..
		""..core.colorize("#aaaaaa","1 Defense")..
		""),
	inventory_image = "padded_boots_inv.png",
	acc_defense = 1,

	acc_slot = "boots_acc",

	acc_size_l_leg = ({x=2.6,y=2.6}),
	acc_model_l_leg = ("boot.b3d"),
	acc_texture_l_leg = ("padded_boots.png"),
	acc_pos_l_leg = {x=0,y=4.75,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=2.6,y=2.6}),
	acc_model_r_leg = ("boot.b3d"),
	acc_texture_r_leg = ("padded_boots.png"),
	acc_pos_r_leg = {x=0,y=4.75,z=0},
	acc_anim_r_leg = {x=0,y=0},

	groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:padded_boots 1",
	recipe = {
		{"wool:white", "", "wool:white"},
		{"wool:white", "", "wool:white"},
	}
})
