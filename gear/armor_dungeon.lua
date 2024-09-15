-- dungeon helmet
minetest.register_tool("gear_up:dungeon_helmet", {
	description = ("Dungeon Warrior Helmet \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","+7% Attack damage \n")..
		""..
		core.colorize("#aaaaaa","7 Defense")..
		""),
	inventory_image = "dungeon_helmet_inv.png",
	acc_defense = 7,
	acc_offense = 7,

	acc_slot = "helmet_acc",
	acc_size_head = ({x=2.5,y=2.5}),
	acc_model_head = ("accessory_horned_helmet_1.b3d"),
	acc_texture_head = ("dungeon_helmet.png"),
	acc_pos_head = {x=0,y=2.0,z=0},
	acc_anim_head = {x=0,y=0},

	groups = {head_accessory = 1},
})

-- only available as loot

-- dungeon platemail
minetest.register_tool("gear_up:dungeon_platemail", {
	description = ("Dungeon Warrior Platemail \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","+8% Attack damage \n")..
		""..
		core.colorize("#aaaaaa","8 Defense")..
		""),
	inventory_image = "dungeon_platemail_inv.png",
	acc_defense = 8,
	acc_offense = 8,

	acc_slot = "armor_acc",

	acc_size_body = ({x=2.5,y=2.5}),
	acc_model_body = ("double_body.b3d"),
	acc_texture_body = ("dungeon_platemail.png"),
	acc_pos_body = {x=0,y=3.0,z=0},
	acc_anim_body = {x=0,y=0},

	acc_size_l_arm = ({x=2.4,y=2.4}),
	acc_model_l_arm = ("double_hand.b3d"),
	acc_texture_l_arm = ("dungeon_l_arm.png"),
	acc_pos_l_arm = {x=0,y=1.75,z=0},
	acc_anim_l_arm = {x=0,y=0},

	acc_size_r_arm = ({x=2.4,y=2.4}),
	acc_model_r_arm = ("double_hand.b3d"),
	acc_texture_r_arm = ("dungeon_r_arm.png"),
	acc_pos_r_arm = {x=0,y=1.75,z=0},
	acc_anim_r_arm = {x=0,y=0},

	groups = {body_accessory = 1,l_arm_accessory = 1,r_arm_accessory = 1},
})

-- only available as loot

-- dungeon leggings
minetest.register_tool("gear_up:dungeon_leggings", {
	description = ("Dungeon Warrior Leggings \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","+6% Attack damage\n")..
		""..
		core.colorize("#aaaaaa","8 Defense")..
		""),
	inventory_image = "dungeon_leggings_inv.png",
	acc_defense = 7,
	acc_offense = 6,

	acc_slot = "pants_acc",

	acc_size_l_leg = ({x=2.4,y=2.4}),
	acc_model_l_leg = ("double_hand.b3d"),
	acc_texture_l_leg = ("dungeon_leg.png"),
	acc_pos_l_leg = {x=0,y=2.75,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=2.4,y=2.4}),
	acc_model_r_leg = ("double_hand.b3d"),
	acc_texture_r_leg = ("dungeon_leg.png"),
	acc_pos_r_leg = {x=0,y=2.75,z=0},
	acc_anim_r_leg = {x=0,y=0},

	groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})
