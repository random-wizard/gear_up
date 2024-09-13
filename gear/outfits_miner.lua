-- mining helmet
minetest.register_tool("gear_up:mining_helmet", {
	description = ("Mining Helmet \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","Provides light \n").. "" ..core.colorize("#aaaaaa","+25% Digging Speed \n").. "" ..core.colorize("#aaaaaa","3 Defense").. ""),
	inventory_image = "mining_helmet_inv.png",
	acc_defense = 3,
	acc_digSpeed = 25,

	acc_slot = "helmet_acc",
	acc_size_head = ({x=2.5,y=2.5}),
	acc_model_head = ("accessory_mining_helmet.b3d"),
	acc_texture_head = ("mining_helmet.png"),
	acc_pos_head = {x=0,y=2.5,z=0},
	acc_anim_head = {x=0,y=0},

	groups = {head_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:mining_helmet 1",
	recipe = {
		{"default:gold_ingot", "default:meselamp", "default:gold_ingot"},
		{"default:gold_ingot", "default:mese", "default:gold_ingot"},
	}
})

minetest.register_tool("gear_up:overalls", {
	description = ("overalls \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","+15% Digging Speed \n").. "" ..core.colorize("#aaaaaa","1 Defense").. ""),
	inventory_image = "overalls_inv.png",
	acc_defense = 1,
	acc_digSpeed = 15,

	acc_slot = "pants_acc",

	acc_size_l_leg = ({x=3.0,y=2.5}),
	acc_model_l_leg = ("simple_hand.b3d"),
	acc_texture_l_leg = ("overalls_leg.png"),
	acc_pos_l_leg = {x=0,y=2.75,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=3.0,y=2.5}),
	acc_model_r_leg = ("simple_hand.b3d"),
	acc_texture_r_leg = ("overalls_leg.png"),
	acc_pos_r_leg = {x=0,y=2.75,z=0},
	acc_anim_r_leg = {x=0,y=0},

	acc_size_body = ({x=3.05,y=2.5}),
	acc_model_body = ("simple_body.b3d"),
	acc_texture_body = ("overalls_top.png"),
	acc_pos_body = {x=0,y=3.0,z=0},
	acc_anim_body = {x=0,y=0},

groups = {body_accessory = 1,l_leg_accessory = 1,r_leg_accessory = 1},

})

minetest.register_craft({
	output = "gear_up:overalls 1",
	recipe = {
		{"farming:string", "wool:blue", "farming:string"},
		{"wool:blue", "wool:blue", "wool:blue"},
		{"wool:blue", "", "wool:blue"},
	}
})

-- mining gloves
minetest.register_tool("gear_up:mining_gloves", {
	description = ("Mining Gloves \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","+20% Digging Speed \n").. "" ..core.colorize("#aaaaaa","1 Defense").. ""),
	inventory_image = "mining_gloves_inv.png",
	acc_defense = 1,
	acc_digSpeed = 20,
	acc_slot = "gloves_acc",

	acc_size_l_arm = ({x=1.25,y=1.5}),
	acc_model_l_arm = ("simple_helmet_cuboid.b3d"),
	acc_texture_l_arm = ("mining_gloves.png"),
	acc_pos_l_arm = {x=0,y=4.0,z=0},
	acc_anim_l_arm = {x=0,y=0},

	acc_size_r_arm = ({x=1.25,y=1.5}),
	acc_model_r_arm = ("simple_helmet_cuboid.b3d"),
	acc_texture_r_arm = ("mining_gloves.png"),
	acc_pos_r_arm = {x=0,y=4.0,z=0},
	acc_anim_r_arm = {x=0,y=0},

	groups = {l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:mining_gloves 1",
	recipe = {
		{"wool:black", "", "wool:black"},
		{"default:steel_ingot", "", "default:steel_ingot"},
		{"wool:orange", "", "wool:orange"},
	}
})
