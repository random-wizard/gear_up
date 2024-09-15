-- steel helmet
minetest.register_tool("gear_up:steel_helmet", {
	description = ("Steel Helmet \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","4 Defense").. ""),
	inventory_image = "steel_helmet_inv.png",
	acc_defense = 4,

	acc_slot = "helmet_acc",
	acc_size_head = ({x=2.5,y=2.5}),
	acc_model_head = ("simple_helmet_cuboid.b3d"),
	acc_texture_head = ("steel_helmet.png"),
	acc_pos_head = {x=0,y=2.0,z=0},
	acc_anim_head = {x=0,y=0},

	groups = {head_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:steel_helmet 1",
	recipe = {
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
		{"default:steel_ingot", "gear_up:padded_helmet", "default:steel_ingot"},
	}
})

-- steel scalemail
minetest.register_tool("gear_up:steel_scalemail", {
	description = ("Steel Scalemail \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","5 Defense").. ""),
	inventory_image = "steel_scalemail_inv.png",
	acc_defense = 5,

	acc_slot = "armor_acc",

	acc_size_body = ({x=2.5,y=2.5}),
	acc_model_body = ("double_body.b3d"),
	acc_texture_body = ("steel_scalemail.png"),
	acc_pos_body = {x=0,y=3.0,z=0},
	acc_anim_body = {x=0,y=0},

	acc_size_l_arm = ({x=2.4,y=2.4}),
	acc_model_l_arm = ("double_hand.b3d"),
	acc_texture_l_arm = ("steel_l_arm.png"),
	acc_pos_l_arm = {x=0,y=1.75,z=0},
	acc_anim_l_arm = {x=0,y=0},

	acc_size_r_arm = ({x=2.4,y=2.4}),
	acc_model_r_arm = ("double_hand.b3d"),
	acc_texture_r_arm = ("steel_r_arm.png"),
	acc_pos_r_arm = {x=0,y=1.75,z=0},
	acc_anim_r_arm = {x=0,y=0},

	groups = {body_accessory = 1,l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:steel_scalemail 1",
	recipe = {
		{"default:steel_ingot", "", "default:steel_ingot"},
		{"default:steel_ingot", "gear_up:padded_armor", "default:steel_ingot"},
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
	}
})

-- steel leggings
minetest.register_tool("gear_up:steel_leggings", {
	description = ("Steel Leggings \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","4 Defense").. ""),
	inventory_image = "steel_leggings_inv.png",
	acc_defense = 4,

	acc_slot = "pants_acc",

	acc_size_l_leg = ({x=2.4,y=2.4}),
	acc_model_l_leg = ("double_hand.b3d"),
	acc_texture_l_leg = ("steel_leg.png"),
	acc_pos_l_leg = {x=0,y=2.75,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=2.4,y=2.4}),
	acc_model_r_leg = ("double_hand.b3d"),
	acc_texture_r_leg = ("steel_leg.png"),
	acc_pos_r_leg = {x=0,y=2.75,z=0},
	acc_anim_r_leg = {x=0,y=0},

	groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:steel_leggings 1",
	recipe = {
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
		{"default:steel_ingot", "gear_up:padded_leggings", "default:steel_ingot"},
		{"default:steel_ingot", "", "default:steel_ingot"},
	}
})

-- steel gauntlets
minetest.register_tool("gear_up:steel_gauntlets", {
	description = ("Steel Gauntlets\n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","+4% Attack Damage \n").. "" ..core.colorize("#aaaaaa","2 Defense").. ""),
	inventory_image = "steel_gauntlets_inv.png",
	acc_defense = 2,
	acc_offense = 4,
	acc_slot = "gloves_acc",

	acc_size_l_arm = ({x=1.25,y=1.5}),
	acc_model_l_arm = ("simple_helmet_cuboid.b3d"),
	acc_texture_l_arm = ("steel_gauntlets.png"),
	acc_pos_l_arm = {x=0,y=4.0,z=0},
	acc_anim_l_arm = {x=0,y=0},

	acc_size_r_arm = ({x=1.25,y=1.5}),
	acc_model_r_arm = ("simple_helmet_cuboid.b3d"),
	acc_texture_r_arm = ("steel_gauntlets.png"),
	acc_pos_r_arm = {x=0,y=4.0,z=0},
	acc_anim_r_arm = {x=0,y=0},

	groups = {l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:steel_gauntlets 1",
	recipe = {
		{"default:steel_ingot", "", "default:steel_ingot"},
		{"default:steel_ingot", "", "default:steel_ingot"},
		{"wool:white", "", "wool:white"},
	}
})
