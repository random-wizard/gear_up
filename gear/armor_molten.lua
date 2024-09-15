-- molten helmet
minetest.register_tool("gear_up:molten_helmet", {
	description = ("Molten Helmet \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","+7% Attack damage \n").. "" ..core.colorize("#aaaaaa","9 Defense").. ""),
	inventory_image = "molten_helmet_inv.png",
	acc_defense = 9,
	acc_offense = 7,
	acc_slot = "helmet_acc",
	acc_size_head = ({x=2.5,y=2.5}),
	acc_model_head = ("accessory_horned_helmet_1.b3d"),
	acc_texture_head = ("molten_helmet.png"),
	acc_pos_head = {x=0,y=2.0,z=0},
	acc_anim_head = {x=0,y=0},
	acc_glow_head = 20,

	groups = {head_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:molten_helmet 1",
	recipe = {
		{"bucket:bucket_lava", "default:mese", "bucket:bucket_lava"},
		{"default:obsidian", "", "default:obsidian"},
	}
})

-- molten armor
minetest.register_tool("gear_up:molten_armor", {
	description = ("Molten armor \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","+7% Attack damage \n").. "" ..core.colorize("#aaaaaa","10 Defense").. ""),
	inventory_image = "molten_armor_inv.png",
	acc_defense = 10,
	acc_offense = 7,
	acc_slot = "armor_acc",

	acc_size_body = ({x=2.5,y=2.5}),
	acc_model_body = ("double_body.b3d"),
	acc_texture_body = ("molten_armor.png"),
	acc_pos_body = {x=0,y=3.0,z=0},
	acc_anim_body = {x=0,y=0},
	acc_glow_body = 20,

	acc_size_l_arm = ({x=2.4,y=2.4}),
	acc_model_l_arm = ("double_hand.b3d"),
	acc_texture_l_arm = ("molten_arm.png"),
	acc_pos_l_arm = {x=0,y=1.75,z=0},
	acc_anim_l_arm = {x=0,y=0},
	acc_glow_l_arm = 20,

	acc_size_r_arm = ({x=2.4,y=2.4}),
	acc_model_r_arm = ("double_hand.b3d"),
	acc_texture_r_arm = ("molten_arm.png"),
	acc_pos_r_arm = {x=0,y=1.75,z=0},
	acc_anim_r_arm = {x=0,y=0},
	acc_glow_r_arm = 20,

	groups = {body_accessory = 1,l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:molten_armor 1",
	recipe = {
		{"default:obsidian", "", "default:obsidian"},
		{"bucket:bucket_lava", "default:mese", "bucket:bucket_lava"},
		{"default:obsidian", "default:obsidian", "default:obsidian"},
	}
})

-- molten leggings
minetest.register_tool("gear_up:molten_leggings", {
	description = ("Molten Leggings \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","+6% Attack damage \n").. "" ..core.colorize("#aaaaaa","8 Defense").. ""),
	inventory_image = "molten_leggings_inv.png",
	acc_defense = 8,
	acc_offense = 6,
	acc_slot = "pants_acc",

	acc_size_l_leg = ({x=2.4,y=2.4}),
	acc_model_l_leg = ("double_hand.b3d"),
	acc_texture_l_leg = ("molten_leg.png"),
	acc_pos_l_leg = {x=0,y=2.75,z=0},
	acc_anim_l_leg = {x=0,y=0},
	acc_glow_l_leg = 20,

	acc_size_r_leg = ({x=2.4,y=2.4}),
	acc_model_r_leg = ("double_hand.b3d"),
	acc_texture_r_leg = ("molten_leg.png"),
	acc_pos_r_leg = {x=0,y=2.75,z=0},
	acc_anim_r_leg = {x=0,y=0},
	acc_glow_r_leg = 20,

	groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:molten_leggings 1",
	recipe = {
		{"default:obsidian", "default:mese", "default:obsidian"},
		{"bucket:bucket_lava", "", "bucket:bucket_lava"},
		{"default:obsidian", "", "default:obsidian"},
	}
})
