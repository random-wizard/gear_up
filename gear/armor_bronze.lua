-- bronze helmet
minetest.register_tool("gear_up:bronze_helmet", {
	description = ("Bronze Helmet \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","4 Defense")..
		""),
	inventory_image = "bronze_helmet_inv.png",
	acc_defense = 4,

	acc_slot = "helmet_acc",
	acc_size_head = ({x=2.5,y=2.5}),
	acc_model_head = ("helmet_1.b3d"),
	acc_texture_head = ("bronze_helmet.png"),
	acc_pos_head = {x=0,y=2.0,z=0},
	acc_anim_head = {x=0,y=0},

	groups = {head_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:bronze_helmet 1",
	recipe = {
		{"default:bronze_ingot", "default:bronze_ingot", "default:bronze_ingot"},
		{"default:bronze_ingot", "gear_up:padded_helmet", "default:bronze_ingot"},
	}
})

-- bronze scalemail
minetest.register_tool("gear_up:bronze_scalemail", {
	description = ("Bronze Scalemail \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","4 Defense")..
		""),
	inventory_image = "bronze_scalemail_inv.png",
	acc_defense = 4,

	acc_slot = "armor_acc",

	acc_size_body = ({x=2.5,y=2.5}),
	acc_model_body = ("double_body.b3d"),
	acc_texture_body = ("bronze_scalemail.png"),
	acc_pos_body = {x=0,y=3.0,z=0},
	acc_anim_body = {x=0,y=0},

	acc_size_l_arm = ({x=2.4,y=2.4}),
	acc_model_l_arm = ("double_hand.b3d"),
	acc_texture_l_arm = ("bronze_l_arm.png"),
	acc_pos_l_arm = {x=0,y=1.75,z=0},
	acc_anim_l_arm = {x=0,y=0},

	acc_size_r_arm = ({x=2.4,y=2.4}),
	acc_model_r_arm = ("double_hand.b3d"),
	acc_texture_r_arm = ("bronze_r_arm.png"),
	acc_pos_r_arm = {x=0,y=1.75,z=0},
	acc_anim_r_arm = {x=0,y=0},

	groups = {body_accessory = 1,l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:bronze_scalemail 1",
	recipe = {
		{"default:bronze_ingot", "", "default:bronze_ingot"},
		{"default:bronze_ingot", "gear_up:padded_armor", "default:bronze_ingot"},
		{"default:bronze_ingot", "default:bronze_ingot", "default:bronze_ingot"},
	}
})

-- bronze leggings
minetest.register_tool("gear_up:bronze_leggings", {
	description = ("Bronze Leggings \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","3 Defense").. ""),
	inventory_image = "bronze_leggings_inv.png",
	acc_defense = 3,

	acc_slot = "pants_acc",

	acc_size_l_leg = ({x=2.4,y=2.4}),
	acc_model_l_leg = ("double_hand.b3d"),
	acc_texture_l_leg = ("bronze_leg.png"),
	acc_pos_l_leg = {x=0,y=2.75,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=2.4,y=2.4}),
	acc_model_r_leg = ("double_hand.b3d"),
	acc_texture_r_leg = ("bronze_leg.png"),
	acc_pos_r_leg = {x=0,y=2.75,z=0},
	acc_anim_r_leg = {x=0,y=0},

	groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:bronze_leggings 1",
	recipe = {
		{"default:bronze_ingot", "default:bronze_ingot", "default:bronze_ingot"},
		{"default:bronze_ingot", "gear_up:padded_leggings", "default:bronze_ingot"},
		{"default:bronze_ingot", "", "default:bronze_ingot"},
	}
})
