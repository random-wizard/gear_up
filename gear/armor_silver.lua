-- silver helmet
minetest.register_tool("gear_up:silver_helmet", {
	description = ("Silver Helmet \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","5 Defense").. ""),
	inventory_image = "silver_helmet_inv.png",
	acc_defense = 5,

	acc_slot = "helmet_acc",
	acc_size_head = ({x=2.5,y=2.5}),
	acc_model_head = ("helmet_1.b3d"),
	acc_texture_head = ("silver_helmet.png"),
	acc_pos_head = {x=0,y=2.0,z=0},
	acc_anim_head = {x=0,y=0},

groups = {head_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:silver_helmet 1",
	recipe = {
		{"moreores:silver_ingot", "moreores:silver_ingot", "moreores:silver_ingot"},
		{"moreores:silver_ingot", "gear_up:padded_helmet", "moreores:silver_ingot"},
	}
})

-- silver platemail
minetest.register_tool("gear_up:silver_platemail", {
	description = ("Silver Platemail \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","6 Defense").. ""),
	inventory_image = "silver_platemail_inv.png",
	acc_defense = 6,
	acc_slot = "armor_acc",

	acc_size_body = ({x=2.5,y=2.5}),
	acc_model_body = ("double_body.b3d"),
	acc_texture_body = ("silver_platemail.png"),
	acc_pos_body = {x=0,y=3.0,z=0},
	acc_anim_body = {x=0,y=0},

	acc_size_l_arm = ({x=2.4,y=2.4}),
	acc_model_l_arm = ("double_hand.b3d"),
	acc_texture_l_arm = ("silver_l_arm.png"),
	acc_pos_l_arm = {x=0,y=1.75,z=0},
	acc_anim_l_arm = {x=0,y=0},

	acc_size_r_arm = ({x=2.4,y=2.4}),
	acc_model_r_arm = ("double_hand.b3d"),
	acc_texture_r_arm = ("silver_r_arm.png"),
	acc_pos_r_arm = {x=0,y=1.75,z=0},
	acc_anim_r_arm = {x=0,y=0},

	groups = {body_accessory = 1,l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:silver_platemail 1",
	recipe = {
		{"moreores:silver_ingot", "", "moreores:silver_ingot"},
		{"moreores:silver_ingot", "gear_up:padded_armor", "moreores:silver_ingot"},
		{"moreores:silver_ingot", "moreores:silver_ingot", "moreores:silver_ingot"},
	}
})

-- silver leggings
minetest.register_tool("gear_up:silver_leggings", {
	description = ("Silver Leggings \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","5 Defense").. ""),
	inventory_image = "silver_leggings_inv.png",
	acc_defense = 5,

	acc_slot = "pants_acc",

	acc_size_l_leg = ({x=2.4,y=2.4}),
	acc_model_l_leg = ("double_hand.b3d"),
	acc_texture_l_leg = ("silver_leg.png"),
	acc_pos_l_leg = {x=0,y=2.75,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=2.4,y=2.4}),
	acc_model_r_leg = ("double_hand.b3d"),
	acc_texture_r_leg = ("silver_leg.png"),
	acc_pos_r_leg = {x=0,y=2.75,z=0},
	acc_anim_r_leg = {x=0,y=0},

	groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:silver_leggings 1",
	recipe = {
		{"moreores:silver_ingot", "moreores:silver_ingot", "moreores:silver_ingot"},
		{"moreores:silver_ingot", "gear_up:padded_leggings", "moreores:silver_ingot"},
		{"moreores:silver_ingot", "", "moreores:silver_ingot"},
	}
})
