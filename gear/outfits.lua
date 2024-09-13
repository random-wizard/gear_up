-- leather boots
minetest.register_tool("gear_up:leather_boots", {
	description = ("Leather Boots \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","+25% Walking speed \n")..
		""..
		core.colorize("#aaaaaa","1 Defense")..
		""),
	inventory_image = "leather_boots_inv.png",
	acc_defense = 1,
	acc_walkSpeed = 0.25,

	acc_slot = "boots_acc",

	acc_size_l_leg = ({x=2.6,y=2.6}),
	acc_model_l_leg = ("boot.b3d"),
	acc_texture_l_leg = ("leather_boots.png"),
	acc_pos_l_leg = {x=0,y=4.75,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=2.6,y=2.6}),
	acc_model_r_leg = ("boot.b3d"),
	acc_texture_r_leg = ("leather_boots.png"),
	acc_pos_r_leg = {x=0,y=4.75,z=0},
	acc_anim_r_leg = {x=0,y=0},

	groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:leather_boots 1",
	recipe = {
		{"mobs:leather", "", "mobs:leather"},
		{"mobs:leather", "", "mobs:leather"},
	}
})

-- boots of haste
minetest.register_tool("gear_up:boots_of_haste", {
	description = ("Boots Of Haste\n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","+80% Walking speed ")..
		""),
	inventory_image = "boots_of_haste_inv.png",
	acc_defense = 1,
	acc_walkSpeed = 0.80,

	acc_slot = "boots_acc",

	acc_size_l_leg = ({x=2.55,y=2.55}),
	acc_model_l_leg = ("winged_boot.b3d"),
	acc_texture_l_leg = ("boots_of_haste.png"),
	acc_pos_l_leg = {x=0,y=4.75,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=2.55,y=2.55}),
	acc_model_r_leg = ("winged_boot.b3d"),
	acc_texture_r_leg = ("boots_of_haste.png"),
	acc_pos_r_leg = {x=0,y=4.75,z=0},
	acc_anim_r_leg = {x=0,y=0},

	groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})

-- sunglasses
minetest.register_tool("gear_up:sunglasses", {
	description = ("Sunglasses \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","+4% Attack Damage \n")..
		""..
		core.colorize("#aaaaaa","1 Defense")..
		""),
	inventory_image = "sunglasses_inv.png",
	acc_defense = 1,
	acc_offense = 4,

	acc_slot = "eye_acc",
	acc_size_head = ({x=2.25,y=2.25}),
	acc_model_head = ("simple_helmet_cuboid.b3d"),
	acc_texture_head = ("sunglasses.png"),
	acc_pos_head = {x=0,y=2.0,z=-0.2},
	acc_anim_head = {x=0,y=0},

	groups = {head_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:sunglasses 1",
	recipe = {
		{"group:stick", "", "group:stick"},
		{"xpanes:pane_flat", "group:stick", "xpanes:pane_flat"},
		{"dye:black", "", "dye:black"},
	}
})

-- goggles
minetest.register_tool("gear_up:goggles", {
	description = ("Goggles \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","1 Defense")..
		""),
	inventory_image = "goggles_inv.png",
	acc_defense = 1,

	acc_slot = "eye_acc",
	acc_size_head = ({x=2.25,y=2.25}),
	acc_model_head = ("simple_helmet_cuboid.b3d"),
	acc_texture_head = ("goggles.png"),
	acc_pos_head = {x=0,y=2.0,z=-0.2},
	acc_anim_head = {x=0,y=0},

	groups = {head_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:goggles 1",
	recipe = {
		{"group:stick", "", "group:stick"},
		{"xpanes:pane_flat", "group:stick", "xpanes:pane_flat"},
	}
})

-- white scarf
minetest.register_tool("gear_up:white_scarf", {
	description = ("White Scarf \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","+2 Max HP \n")..
		""..
		core.colorize("#aaaaaa","1 Defense")..
		""),
	inventory_image = "white_scarf_inv.png",
	acc_defense = 1,
	acc_hpBonus = 2,

	acc_slot = "neck_acc",
	acc_size_body = ({x=2.4,y=2.4}),
	acc_model_body = ("accessory_scarf.b3d"),
	acc_texture_body = ("white_scarf.png"),
	acc_pos_body = {x=0,y=6.0,z=0},
	acc_anim_body = {x=0,y=0},

	groups = {body_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:white_scarf 1",
	recipe = {
		{"wool:white", "wool:white", "wool:white"},
		{"wool:white", "farming:string", "wool:white"},
		{"farming:string", "wool:white", "farming:string"},
	}
})



-- black cat ears
minetest.register_tool("gear_up:black_cat_ears", {
	description = ("Black Cat Ears \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","+5% walking speed \n")..
		""..
		core.colorize("#aaaaaa","+1 Max HP")..
		""),
	inventory_image = "black_cat_ears_inv.png",
	acc_walkSpeed = 0.05,
	acc_hpBonus = 1,

	acc_slot = "headtop_acc",
	acc_size_head = ({x=2.25,y=2.25}),
	acc_model_head = ("accessory_cat_ears.b3d"),
	acc_texture_head = ("black_cat_ears.png"),
	acc_pos_head = {x=0,y=2.0,z=0},
	acc_anim_head = {x=0,y=0},

	groups = {head_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:black_cat_ears 1",
	recipe = {
		{"wool:black", "", "wool:black"},
		{"wool:black", "group:stick", "wool:black"},
		{"farming:string", "", "farming:string"},
	}
})

-- golden bracelet
minetest.register_tool("gear_up:golden_bracelet", {
	description = ("Golden bracelet \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","2 Defense").. ""),
	inventory_image = "golden_bracelet_inv.png",
	acc_defense = 2,

	acc_slot = "both_hand_acc",
	acc_size_l_arm = ({x=1.525,y=1.45}),
	acc_model_l_arm = ("simple_helmet_cuboid.b3d"),
	acc_texture_l_arm = ("golden_bracelet.png"),
	acc_pos_l_arm = {x=0,y=2.8,z=0},
	acc_anim_l_arm = {x=0,y=0},

	acc_size_r_arm = ({x=1.525,y=1.45}),
	acc_model_r_arm = ("simple_helmet_cuboid.b3d"),
	acc_texture_r_arm = ("golden_bracelet.png"),
	acc_pos_r_arm = {x=0,y=2.8,z=0},
	acc_anim_r_arm = {x=0,y=0},

	groups = {l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:golden_bracelet 1",
	recipe = {
		{"default:gold_ingot", "farming:string"},
		{"farming:string", "default:gold_ingot"},
		{"default:gold_ingot", "farming:string"},
	}
})

-- white headband
minetest.register_tool("gear_up:white_headband", {
	description = ("White Headband \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","+5% Digging Speed \n").. "" ..core.colorize("#aaaaaa","+1% Dodge Chance \n").. "" ..core.colorize("#aaaaaa","+5% Attack Damage").. ""),
	inventory_image = "white_headband_inv.png",
	acc_offense = 5,
	acc_digSpeed = 5,
	acc_dodgeChance = 1,

	acc_slot = "forehead_acc",
	acc_size_head = ({x=2.8,y=2.8}),
	acc_model_head = ("accessory_headband.b3d"),
	acc_texture_head = ("white_headband.png"),
	acc_pos_head = {x=0,y=1.0,z=0},
	acc_anim_head = {x=0,y=0},

groups = {head_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:white_headband 1",
	recipe = {
		{"farming:string", "wool:white", "farming:string"},
		{"wool:white", "wool:white", "wool:white"},
	}
})

-- gaming headphones
minetest.register_tool("gear_up:gaming_headphones", {
	description = ("Gaming Headphones \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","+12% Walking speed \n").. "" ..core.colorize("#aaaaaa","+4% Digging Speed \n").. "" ..core.colorize("#aaaaaa","+4% Attack Damage").. ""),
	inventory_image = "gaming_headphones_inv.png",
	acc_offense = 4,
	acc_digSpeed = 4,
	acc_walkSpeed = 0.12,

	acc_slot = "ear_acc",
	acc_size_head = ({x=2.25,y=2.25}),
	acc_model_head = ("accessory_headphones.b3d"),
	acc_texture_head = ("gaming_headphones.png"),
	acc_pos_head = {x=0,y=2,z=0},
	acc_anim_head = {x=0,y=0},

	groups = {head_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:gaming_headphones 1",
	recipe = {
		{"default:mese_crystal", "default:steel_ingot", "default:mese_crystal"},
		{"default:steel_ingot", "dye:black", "default:steel_ingot"},
		{"dye:red", "default:mese_crystal_fragment", "dye:red"},
	}
})

-- santa hat
minetest.register_tool("gear_up:santa_hat", {
	description = ("Santa Hat \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","+3 Max HP").. ""),
	inventory_image = "santa_hat_inv.png",
	acc_hpBonus = 3,

	acc_slot = "helmet_acc",
	acc_size_head = ({x=2.4,y=2.4}),
	acc_model_head = ("accessory_santa_hat.b3d"),
	acc_texture_head = ("santa_hat.png"),
	acc_pos_head = {x=0,y=3.5,z=0},
	acc_anim_head = {x=0,y=0},

groups = {head_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:santa_hat 1",
	recipe = {
		{"", "","wool:white"},
		{"wool:red", "wool:red",""},
		{"wool:white", "wool:white",""},
	}
})

-- white baseball cap
minetest.register_tool("gear_up:white_baseball_cap", {
	description = ("White Baseball Cap \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","+4% Attack Damage \n").. "" ..core.colorize("#aaaaaa","+5% walking speed \n").. "" ..core.colorize("#aaaaaa","1 Defense").. ""),
	inventory_image = "white_baseball_cap_inv.png",
	acc_defense = 1,
	acc_offense = 4,
	acc_walkSpeed = 0.05,

	acc_slot = "helmet_acc",
	acc_size_head = ({x=2.5,y=2.5}),
	acc_model_head = ("accessory_cap.b3d"),
	acc_texture_head = ("white_baseball_cap.png"),
	acc_pos_head = {x=0,y=3.5,z=0},
	acc_anim_head = {x=0,y=0},

	groups = {head_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:white_baseball_cap 1",
	recipe = {
		{"", "wool:white", "wool:white"},
		{"wool:white", "wool:white", "wool:white"},
		{"", "", ""},
	}
})

minetest.register_tool("gear_up:heart_amulet", {
	description = ("Heart Amulet \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","+0.1 HP regeneration \n")..
		""..
		core.colorize("#aaaaaa","+4 Max HP")..
		""),
	inventory_image = "heart_amulet_inv.png",
	acc_hpBonus = 4,
	acc_hpRegen = 0.1,
	acc_slot = "amulet_acc",

	acc_size_body = ({x=2.9,y=2.9}),
	acc_model_body = ("simple_body.b3d"),
	acc_texture_body = ("heart_amulet.png"),
	acc_pos_body = {x=0,y=3.0,z=0},
	acc_anim_body = {x=0,y=0},

	groups = {body_accessory = 1},
})

-- enchanted stone gauntlets
minetest.register_tool("gear_up:enchanted_stone_gauntlets", {
	description = ("Enchanted Stone Gauntlets\n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","+10% Attack Damage \n")..
		""..
		core.colorize("#aaaaaa","3 Defense")..
		""),
	inventory_image = "enchanted_stone_gauntlets_inv.png",
	acc_defense = 3,
	acc_offense = 10,
	acc_slot = "gloves_acc",

	acc_size_l_arm = ({x=1.25,y=1.5}),
	acc_model_l_arm = ("simple_helmet_cuboid.b3d"),
	acc_texture_l_arm = ("enchanted_stone_gauntlets.png"),
	acc_pos_l_arm = {x=0,y=4.0,z=0},
	acc_anim_l_arm = {x=0,y=0},
	acc_glow_l_arm = 10,

	acc_size_r_arm = ({x=1.25,y=1.5}),
	acc_model_r_arm = ("simple_helmet_cuboid.b3d"),
	acc_texture_r_arm = ("enchanted_stone_gauntlets.png"),
	acc_pos_r_arm = {x=0,y=4.0,z=0},
	acc_anim_r_arm = {x=0,y=0},
	acc_glow_r_arm = 10,

	groups = {l_arm_accessory = 1,r_arm_accessory = 1},
})
