-- mithril helmet
minetest.register_tool("gear_up:mithril_helmet", {
	description = ("Mithril Helmet \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","+4 Max HP \n")..
		""..
		core.colorize("#aaaaaa","8 Defense")..
		""),
	inventory_image = "mithril_helmet_inv.png",
	acc_defense = 8,
	acc_hpBonus = 4,

	acc_slot = "helmet_acc",
	acc_size_head = ({x=2.5,y=2.5}),
	acc_model_head = ("accessory_horned_helmet_1.b3d"),
	acc_texture_head = ("mithril_helmet.png"),
	acc_pos_head = {x=0,y=2.0,z=0},
	acc_anim_head = {x=0,y=0},

	groups = {head_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:mithril_helmet 1",
	recipe = {
		{"moreores:mithril_ingot", "moreores:mithril_ingot", "moreores:mithril_ingot"},
		{"moreores:mithril_ingot", "gear_up:padded_helmet", "moreores:mithril_ingot"},
	}
})

-- mithril platemail
minetest.register_tool("gear_up:mithril_platemail", {
	description = ("Mithril Platemail \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","+7% Attack damage \n")..
		""..
		core.colorize("#aaaaaa","9 Defense")..
		""),
	inventory_image = "mithril_platemail_inv.png",
	acc_defense = 9,
	acc_offense = 7,

	acc_slot = "armor_acc",

	acc_size_body = ({x=2.5,y=2.5}),
	acc_model_body = ("double_body.b3d"),
	acc_texture_body = ("mithril_platemail.png"),
	acc_pos_body = {x=0,y=3.0,z=0},
	acc_anim_body = {x=0,y=0},

	acc_size_l_arm = ({x=2.4,y=2.4}),
	acc_model_l_arm = ("double_hand.b3d"),
	acc_texture_l_arm = ("mithril_l_arm.png"),
	acc_pos_l_arm = {x=0,y=1.75,z=0},
	acc_anim_l_arm = {x=0,y=0},

	acc_size_r_arm = ({x=2.4,y=2.4}),
	acc_model_r_arm = ("double_hand.b3d"),
	acc_texture_r_arm = ("mithril_r_arm.png"),
	acc_pos_r_arm = {x=0,y=1.75,z=0},
	acc_anim_r_arm = {x=0,y=0},

	groups = {body_accessory = 1,l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:mithril_platemail 1",
	recipe = {
		{"moreores:mithril_ingot", "", "moreores:mithril_ingot"},
		{"moreores:mithril_ingot", "gear_up:padded_armor", "moreores:mithril_ingot"},
		{"moreores:mithril_ingot", "moreores:mithril_ingot", "moreores:mithril_ingot"},
	}
})

-- mithril leggings
minetest.register_tool("gear_up:mithril_leggings", {
	description = ("mithril Leggings \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","Walking Speed + 15% \n")..
		""..
		core.colorize("#aaaaaa","8 Defense")..
		""),
	inventory_image = "mithril_leggings_inv.png",
	acc_defense = 8,
	acc_walkSpeed = 0.15,

	acc_slot = "pants_acc",

	acc_size_l_leg = ({x=2.4,y=2.4}),
	acc_model_l_leg = ("double_hand.b3d"),
	acc_texture_l_leg = ("mithril_leg.png"),
	acc_pos_l_leg = {x=0,y=2.75,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=2.4,y=2.4}),
	acc_model_r_leg = ("double_hand.b3d"),
	acc_texture_r_leg = ("mithril_leg.png"),
	acc_pos_r_leg = {x=0,y=2.75,z=0},
	acc_anim_r_leg = {x=0,y=0},

	groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:mithril_leggings 1",
	recipe = {
		{"moreores:mithril_ingot", "moreores:mithril_ingot", "moreores:mithril_ingot"},
		{"moreores:mithril_ingot", "gear_up:padded_leggings", "moreores:mithril_ingot"},
		{"moreores:mithril_ingot", "", "moreores:mithril_ingot"},
	}
})
