-- tin helmet
minetest.register_tool("gear_up:tin_helmet", {
	description = ("Tin Helmet \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","3 Defense")..
		""),
	inventory_image = "tin_helmet_inv.png",
	acc_defense = 3,

	acc_slot = "helmet_acc",
	acc_size_head = ({x=2.5,y=2.5}),
	acc_model_head = ("helmet_1.b3d"),
	acc_texture_head = ("tin_helmet.png"),
	acc_pos_head = {x=0,y=2.0,z=0},
	acc_anim_head = {x=0,y=0},

	groups = {head_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:tin_helmet 1",
	recipe = {
		{"default:tin_ingot", "default:tin_ingot", "default:tin_ingot"},
		{"default:tin_ingot", "gear_up:padded_helmet", "default:tin_ingot"},
	}
})

-- tin platemail
minetest.register_tool("gear_up:tin_platemail", {
	description = ("Tin Platemail \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","3 Defense")..
		""),
	inventory_image = "tin_platemail_inv.png",
	acc_defense = 3,

	acc_slot = "armor_acc",

	acc_size_body = ({x=2.5,y=2.5}),
	acc_model_body = ("double_body.b3d"),
	acc_texture_body = ("tin_platemail.png"),
	acc_pos_body = {x=0,y=3.0,z=0},
	acc_anim_body = {x=0,y=0},

	acc_size_l_arm = ({x=2.4,y=2.4}),
	acc_model_l_arm = ("double_hand.b3d"),
	acc_texture_l_arm = ("tin_platemail_left_arm.png"),
	acc_pos_l_arm = {x=0,y=1.75,z=0},
	acc_anim_l_arm = {x=0,y=0},

	acc_size_r_arm = ({x=2.4,y=2.4}),
	acc_model_r_arm = ("double_hand.b3d"),
	acc_texture_r_arm = ("tin_platemail_right_arm.png"),
	acc_pos_r_arm = {x=0,y=1.75,z=0},
	acc_anim_r_arm = {x=0,y=0},

	groups = {body_accessory = 1,l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:tin_platemail 1",
	recipe = {
		{"default:tin_ingot", "", "default:tin_ingot"},
		{"default:tin_ingot", "gear_up:padded_armor", "default:tin_ingot"},
		{"default:tin_ingot", "default:tin_ingot", "default:tin_ingot"},
	}
})

-- tin leggings
minetest.register_tool("gear_up:tin_leggings", {
	description = ("Tin Leggings \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","3 Defense")..
		""),
	inventory_image = "tin_leggings_inv.png",
	acc_defense = 3,

	acc_slot = "pants_acc",

	acc_size_l_leg = ({x=2.4,y=2.4}),
	acc_model_l_leg = ("double_hand.b3d"),
	acc_texture_l_leg = ("tin_leg.png"),
	acc_pos_l_leg = {x=0,y=2.75,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=2.4,y=2.4}),
	acc_model_r_leg = ("double_hand.b3d"),
	acc_texture_r_leg = ("tin_leg.png"),
	acc_pos_r_leg = {x=0,y=2.75,z=0},
	acc_anim_r_leg = {x=0,y=0},

	groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:tin_leggings 1",
	recipe = {
		{"default:tin_ingot", "default:tin_ingot", "default:tin_ingot"},
		{"default:tin_ingot", "gear_up:padded_leggings", "default:tin_ingot"},
		{"default:tin_ingot", "", "default:tin_ingot"},
	}
})

-- tin boots
minetest.register_tool("gear_up:tin_boots", {
	description = ("Tin Boots \n" ..
		core.colorize("#aaaaaa","Equipable \n")..
		""..core.colorize("#aaaaaa","2 Defense")..
		""),
	inventory_image = "tin_boots_inv.png",
	acc_defense = 2,

	acc_slot = "boots_acc",

	acc_size_l_leg = ({x=2.6,y=2.6}),
	acc_model_l_leg = ("boot.b3d"),
	acc_texture_l_leg = ("tin_boots.png"),
	acc_pos_l_leg = {x=0,y=4.75,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=2.6,y=2.6}),
	acc_model_r_leg = ("boot.b3d"),
	acc_texture_r_leg = ("tin_boots.png"),
	acc_pos_r_leg = {x=0,y=4.75,z=0},
	acc_anim_r_leg = {x=0,y=0},

	groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:tin_boots 1",
	recipe = {
		{"default:tin_ingot", "", "default:tin_ingot"},
		{"default:tin_ingot", "gear_up:padded_boots", "default:tin_ingot"},
	}
})
