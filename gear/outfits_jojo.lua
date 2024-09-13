-- menacing student hat
minetest.register_tool("gear_up:menacing_student_hat", {
	description = ("Menacing student hat \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","+11% Attack Damage \n")..
		""..
		core.colorize("#aaaaaa","2 Defense")..
		""),
	inventory_image = "jojo_hat_inv.png",
	acc_defense = 2,
	acc_offense = 11,

	acc_slot = "helmet_acc",
	acc_size_head = ({x=2.5,y=2.5}),
	acc_model_head = ("accessory_cap.b3d"),
	acc_texture_head = ("jojo_hat.png"),
	acc_pos_head = {x=0,y=3.5,z=0},
	acc_anim_head = {x=0,y=0},

	groups = {head_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:menacing_student_hat 1",
	recipe = {
		{"default:gold_ingot", "wool:black", "wool:black"},
		{"wool:black", "wool:black", "wool:black"},
		{"", "default:gold_ingot", ""},
	}
})

-- menacing student jacket
minetest.register_tool("gear_up:menacing_student_jacket", {
	description = ("Menacing student jacket \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","+4% Attack Damage \n").. "" ..core.colorize("#aaaaaa","2 Defense").. ""),
	inventory_image = "jojo_shirt_inv.png",
	acc_defense = 2,
	acc_offense = 4,

	acc_slot = "topshirt_acc",

	acc_size_body = ({x=3.1,y=2.9}),
	acc_model_body = ("double_body.b3d"),
	acc_texture_body = ("jojo_shirt.png"),
	acc_pos_body = {x=0,y=2.4,z=0},
	acc_anim_body = {x=0,y=0},

	acc_size_l_arm = ({x=3.0,y=3.0}),
	acc_model_l_arm = ("double_hand.b3d"),
	acc_texture_l_arm = ("jojo_arm.png"),
	acc_pos_l_arm = {x=0,y=2.65,z=0},
	acc_anim_l_arm = {x=0,y=0},

	acc_size_r_arm = ({x=3.0,y=3.0}),
	acc_model_r_arm = ("double_hand.b3d"),
	acc_texture_r_arm = ("jojo_arm.png"),
	acc_pos_r_arm = {x=0,y=2.65,z=0},
	acc_anim_r_arm = {x=0,y=0},

	groups = {body_accessory = 1,l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:menacing_student_jacket 1",
	recipe = {
		{"wool:black", "default:gold_ingot", "wool:black"},
		{"wool:black", "wool:black", "default:gold_ingot"},
		{"wool:black", "wool:black", "wool:black"},
	}
})

-- menacing student pants
minetest.register_tool("gear_up:menacing_student_pants", {
	description = ("Menacing Student Pants \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","+3% Attack Damage \n").. "" ..core.colorize("#aaaaaa","1 Defense").. ""),
	inventory_image = "jojo_pants_inv.png",
	acc_defense = 1,
	acc_offense = 3,

	acc_slot = "pants_acc",

	acc_size_l_leg = ({x=2.5,y=2.5}),
	acc_model_l_leg = ("double_hand.b3d"),
	acc_texture_l_leg = ("jojo_leg.png"),
	acc_pos_l_leg = {x=0,y=2.5,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=2.5,y=2.5}),
	acc_model_r_leg = ("double_hand.b3d"),
	acc_texture_r_leg = ("jojo_leg.png"),
	acc_pos_r_leg = {x=0,y=2.5,z=0},
	acc_anim_r_leg = {x=0,y=0},

	groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:menacing_student_pants 1",
	recipe = {
		{"wool:blue", "wool:yellow", "wool:red"},
		{"wool:black", "", "wool:black"},
		{"wool:black", "", "wool:black"},
	}
})
