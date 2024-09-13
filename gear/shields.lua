-- wooden shield
minetest.register_tool("gear_up:wooden_shield", {
	description = ("Wooden Shield \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","+6% Dodge Chance \n")..
		""..
		core.colorize("#aaaaaa","1 Defense")..
		""),
	inventory_image = "wooden_shield_inv.png",
	acc_defense = 1,
	acc_dodgeChance = 6,
	acc_slot = "shield_acc",

	acc_size_l_arm = ({x=2.5,y=2.5}),
	acc_model_l_arm = ("simple_layered_shield.b3d"),
	acc_texture_l_arm = ("wooden_shield.png"),
	acc_pos_l_arm = {x=2,y=4.0,z=1},
	acc_anim_l_arm = {x=0,y=0},

	groups = {l_arm_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:wooden_shield 1",
	recipe = {
		{"group:wood", "group:wood", "group:wood"},
		{"group:wood", "group:wood", "group:wood"},
		{"", "group:wood", ""},
	}
})

-- bronze shield
minetest.register_tool("gear_up:bronze_shield", {
	description = ("bronze shield \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","+7% Dodge Chance \n")..
		""..
		core.colorize("#aaaaaa","2 Defense")..
		""),
	inventory_image = "bronze_shield_inv.png",
	acc_defense = 2,
	acc_dodgeChance = 7,
	acc_slot = "shield_acc",

	acc_size_l_arm = ({x=2.5,y=2.5}),
	acc_model_l_arm = ("simple_layered_shield.b3d"),
	acc_texture_l_arm = ("bronze_shield.png"),
	acc_pos_l_arm = {x=2,y=4.0,z=1},
	acc_anim_l_arm = {x=0,y=0},

	groups = {l_arm_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:bronze_shield 1",
	recipe = {
		{"default:bronze_ingot", "default:bronze_ingot", "default:bronze_ingot"},
		{"default:bronze_ingot", "gear_up:wooden_shield", "default:bronze_ingot"},
		{"", "default:bronze_ingot", ""},
	}
})

-- steel shield
minetest.register_tool("gear_up:steel_shield", {
	description = ("Steel shield \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","+10% Dodge Chance \n")..
		""..
		core.colorize("#aaaaaa","3 Defense")..
		""),
	inventory_image = "steel_shield_inv.png",
	acc_defense = 3,
	acc_dodgeChance = 10,
	acc_slot = "shield_acc",

	acc_size_l_arm = ({x=2.5,y=2.5}),
	acc_model_l_arm = ("simple_layered_shield.b3d"),
	acc_texture_l_arm = ("steel_shield.png"),
	acc_pos_l_arm = {x=2,y=4.0,z=1},
	acc_anim_l_arm = {x=0,y=0},

	groups = {l_arm_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:steel_shield 1",
	recipe = {
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
		{"default:steel_ingot", "gear_up:wooden_shield", "default:steel_ingot"},
		{"", "default:steel_ingot", ""},
	}
})

-- enchanted stone shield
minetest.register_tool("gear_up:enchanted_stone_shield", {
	description = ("Enchanted Stone Shield \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","+13% Dodge Chance \n")..
		""..
		core.colorize("#aaaaaa","+7% Attack Damage\n")..
		""..
		core.colorize("#aaaaaa","5 Defense")..
		""),
	inventory_image = "enchanted_stone_shield_inv.png",
	acc_defense = 5,
	acc_dodgeChance = 13,
	acc_offense = 7,
	acc_slot = "shield_acc",

	acc_size_l_arm = ({x=2.5,y=2.5}),
	acc_model_l_arm = ("simple_layered_shield.b3d"),
	acc_texture_l_arm = ("enchanted_stone_shield.png"),
	acc_pos_l_arm = {x=2,y=4.0,z=1},
	acc_anim_l_arm = {x=0,y=0},
	acc_glow_l_arm = 10,

	groups = {l_arm_accessory = 1},
})

-- skull shield
minetest.register_tool("gear_up:skull_shield", {
	description = ("Skull shield \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","+12% Dodge Chance \n")..
		""..
		core.colorize("#aaaaaa","4 Defense")..
		""),
	inventory_image = "skull_shield_inv.png",
	acc_defense = 4,
	acc_dodgeChance = 12,
	acc_slot = "shield_acc",

	acc_size_l_arm = ({x=2.5,y=2.5}),
	acc_model_l_arm = ("simple_layered_shield.b3d"),
	acc_texture_l_arm = ("skull_shield.png"),
	acc_pos_l_arm = {x=2,y=4.0,z=1},
	acc_anim_l_arm = {x=0,y=0},

	groups = {l_arm_accessory = 1},
})

-- obsidian shield
minetest.register_tool("gear_up:obsidian_shield", {
	description = ("Obsidian shield \n"
		..core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","+14% Dodge Chance \n")..
		""..
		core.colorize("#aaaaaa","Grants 4 Seconds of fire block imunity\n")..
		""..
		core.colorize("#aaaaaa","5 Defense")..
		""),
	inventory_image = "obsidian_shield_inv.png",
	acc_defense = 5,
	acc_dodgeChance = 14,
	acc_fireRes = 4,
	acc_slot = "shield_acc",

	acc_size_l_arm = ({x=2.5,y=2.5}),
	acc_model_l_arm = ("simple_layered_shield.b3d"),
	acc_texture_l_arm = ("obsidian_shield.png"),
	acc_pos_l_arm = {x=2,y=4.0,z=1},
	acc_anim_l_arm = {x=0,y=0},

	groups = {l_arm_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:obsidian_shield 1",
	recipe = {
		{"default:obsidian", "default:diamond", "default:obsidian"},
		{"default:mese", "gear_up:skull_shield", "default:mese"},
		{"", "default:obsidian", ""},
	}
})
