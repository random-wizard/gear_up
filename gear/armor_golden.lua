-- golden helmet
minetest.register_tool("gear_up:golden_helmet", {
	description = ("Golden Helmet \n"..
			core.colorize("#aaaaaa","Equipable \n")..
			""..
			core.colorize("#aaaaaa","6 Defense")..
			""),
	inventory_image = "golden_helmet_inv.png",
	acc_defense = 6,

	acc_slot = "helmet_acc",
	acc_size_head = ({x=2.5,y=2.5}),
	acc_model_head = ("simple_winged_helmet.b3d"),
	acc_texture_head = ("golden_helmet.png"),
	acc_pos_head = {x=0,y=2.0,z=0},
	acc_anim_head = {x=0,y=0},

	groups = {head_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:golden_helmet 1",
	recipe = {
		{"default:gold_ingot", "default:gold_ingot", "default:gold_ingot"},
		{"default:gold_ingot", "gear_up:padded_helmet", "default:gold_ingot"},
	}
})

minetest.register_craft({
	type = "cooking",
	recipe = "gear_up:golden_helmet",
	output = "default:gold_ingot 1",
})

-- golden platemail
minetest.register_tool("gear_up:golden_platemail", {
	description = ("Golden Platemail \n"..
			core.colorize("#aaaaaa","Equipable \n")..
			""..
			core.colorize("#aaaaaa","7 Defense")..
			""),
	inventory_image = "golden_platemail_inv.png",
	acc_defense = 7,

	acc_slot = "armor_acc",

	acc_size_body = ({x=2.5,y=2.5}),
	acc_model_body = ("double_body.b3d"),
	acc_texture_body = ("golden_platemail.png"),
	acc_pos_body = {x=0,y=3.0,z=0},
	acc_anim_body = {x=0,y=0},

	acc_size_l_arm = ({x=2.4,y=2.4}),
	acc_model_l_arm = ("double_hand.b3d"),
	acc_texture_l_arm = ("golden_l_arm.png"),
	acc_pos_l_arm = {x=0,y=1.75,z=0},
	acc_anim_l_arm = {x=0,y=0},

	acc_size_r_arm = ({x=2.4,y=2.4}),
	acc_model_r_arm = ("double_hand.b3d"),
	acc_texture_r_arm = ("golden_r_arm.png"),
	acc_pos_r_arm = {x=0,y=1.75,z=0},
	acc_anim_r_arm = {x=0,y=0},

	groups = {body_accessory = 1,l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:golden_platemail 1",
	recipe = {
		{"default:gold_ingot", "", "default:gold_ingot"},
		{"default:gold_ingot", "gear_up:padded_armor", "default:gold_ingot"},
		{"default:gold_ingot", "default:gold_ingot", "default:gold_ingot"},
	}
})

minetest.register_craft({
	type = "cooking",
	recipe = "gear_up:golden_platemail",
	output = "default:gold_ingot 2",
})

-- golden leggings
minetest.register_tool("gear_up:golden_leggings", {
	description = ("Golden Leggings \n"..
			core.colorize("#aaaaaa","Equipable \n")..
			""..
			core.colorize("#aaaaaa","6 Defense")..
			""),
	inventory_image = "golden_leggings_inv.png",
	acc_defense = 6,

	acc_slot = "pants_acc",

	acc_size_l_leg = ({x=2.4,y=2.4}),
	acc_model_l_leg = ("double_hand.b3d"),
	acc_texture_l_leg = ("golden_leg.png"),
	acc_pos_l_leg = {x=0,y=2.75,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=2.4,y=2.4}),
	acc_model_r_leg = ("double_hand.b3d"),
	acc_texture_r_leg = ("golden_leg.png"),
	acc_pos_r_leg = {x=0,y=2.75,z=0},
	acc_anim_r_leg = {x=0,y=0},

	groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:golden_leggings 1",
	recipe = {
		{"default:gold_ingot", "default:gold_ingot", "default:gold_ingot"},
		{"default:gold_ingot", "gear_up:padded_leggings", "default:gold_ingot"},
		{"default:gold_ingot", "", "default:gold_ingot"},
	}
})

minetest.register_craft({
	type = "cooking",
	recipe = "gear_up:golden_leggings",
	output = "default:gold_ingot 2",
})

-- golden boots
minetest.register_tool("gear_up:golden_boots", {
	description = ("Golden Boots \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..core.colorize("#aaaaaa","6 Defense")..
		""),
	inventory_image = "golden_boots_inv.png",
	acc_defense = 6,

	acc_slot = "boots_acc",

	acc_size_l_leg = ({x=2.6,y=2.6}),
	acc_model_l_leg = ("boot.b3d"),
	acc_texture_l_leg = ("golden_boots.png"),
	acc_pos_l_leg = {x=0,y=4.75,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=2.6,y=2.6}),
	acc_model_r_leg = ("boot.b3d"),
	acc_texture_r_leg = ("golden_boots.png"),
	acc_pos_r_leg = {x=0,y=4.75,z=0},
	acc_anim_r_leg = {x=0,y=0},

	groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:golden_boots 1",
	recipe = {
		{"default:gold_ingot", "", "default:gold_ingot"},
		{"default:gold_ingot", "gear_up:padded_boots", "default:gold_ingot"},
	}
})

minetest.register_craft({
	type = "cooking",
	recipe = "gear_up:golden_boots",
	output = "default:gold_ingot 1",
})
