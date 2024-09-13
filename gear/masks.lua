-- emoji smile
minetest.register_tool("gear_up:mask_emoji_smile", {
	description = ("Mask Emoji Smile\n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","+2% Walking Speed \n")..
		""..
		core.colorize("#aaaaaa","1 Defense \n")..
		""),
	inventory_image = "mask_emoji_smile_inv.png",
	acc_defense = 1,
	acc_walkSpeed = 0.02,

	acc_slot = "mask_acc",
	acc_size_head = ({x=2.125,y=2.125}),
	acc_model_head = ("simple_helmet_cuboid.b3d"),
	acc_texture_head = ("mask_emoji_smile.png"),
	acc_pos_head = {x=0,y=2.1,z=0},
	acc_anim_head = {x=0,y=0},

	groups = {head_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:mask_emoji_smile 1",
	recipe = {
		{"farming:string", "", "farming:string"},
		{"dye:black", "wool:yellow", "dye:black"},
		{"", "dye:black", ""},
	}
})

-- emoji frown
minetest.register_tool("gear_up:mask_emoji_frown", {
	description = ("Mask Emoji Frown\n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","2% Walking Speed \n")..
		""..
		core.colorize("#aaaaaa","1 Defense \n")..
		""),
	inventory_image = "mask_emoji_frown_inv.png",
	acc_defense = 1,
	acc_walkSpeed = 0.02,

	acc_slot = "mask_acc",
	acc_size_head = ({x=2.125,y=2.125}),
	acc_model_head = ("simple_helmet_cuboid.b3d"),
	acc_texture_head = ("mask_emoji_frown.png"),
	acc_pos_head = {x=0,y=2.1,z=0},
	acc_anim_head = {x=0,y=0},

	groups = {head_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:mask_emoji_frown 1",
	recipe = {
		{"farming:string", "wool:yellow", "farming:string"},
		{"", "dye:black", ""},
		{"dye:black", "", "dye:black"},
	}
})

-- rainbow smile
--[[
minetest.register_tool("gear_up:mask_rainbow_smile", {
	description = ("Mask Rainbow Smile\n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","+2% Walking Speed \n")..
		""..
		core.colorize("#aaaaaa","1 Defense \n")..
		""),
	inventory_image = "mask_rainbow_smile_inv.png",
	acc_defense = 1,
	acc_walkSpeed = 0.02,

	acc_slot = "mask_acc",
	acc_size_head = ({x=2.125,y=2.125}),
	acc_model_head = ("simple_helmet_cuboid.b3d"),
	acc_texture_head = ("mask_rainbow_smile.png"),
	acc_pos_head = {x=0,y=2.1,z=0},
	acc_anim_head = {x=0,y=0},

	groups = {head_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:mask_rainbow_smile 1",
	recipe = {
		{"farming:string", "gear_up:dyejar_rainbow", "farming:string"},
		{"dye:black", "wool:white", "dye:black"},
		{"", "dye:black", ""},
	}
})
]]--

-- lmao emoji mask
minetest.register_tool("gear_up:lmao_emoji_mask", {
	description = ("LMAO emoji mask \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","+8% Walking Speed \n")..
		""..
		core.colorize("#aaaaaa","1 Defense \n")..
		""..
		core.colorize("#aaaaaa","+3% Attack damage\n")..
		""..
		core.colorize("#aaaaaa","+420% cancer")..
		""),
	inventory_image = "lmao_emoji_mask_inv.png",
	acc_defense = 1,
	acc_offense = 3,
	acc_walkSpeed = 0.08,

	acc_slot = "mask_acc",
	acc_size_head = ({x=2.125,y=2.125}),
	acc_model_head = ("simple_helmet_cuboid.b3d"),
	acc_texture_head = ("lmao_emoji_mask.png"),
	acc_pos_head = {x=0,y=2.1,z=0},
	acc_anim_head = {x=0,y=0},

	groups = {head_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:lmao_emoji_mask 1",
	recipe = {
		{"dye:yellow", "farming:string", "dye:yellow"},
		{"farming:string", "wool:white", "farming:string"},
		{"dye:blue", "dye:white", "dye:blue"},
	}
})
