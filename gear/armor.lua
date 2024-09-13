-- padded helmet
minetest.register_tool("gear_up:padded_helmet", {
  description = ("Padded Helmet \n"..
    core.colorize("#aaaaaa","Equipable \n")..
    ""..
    core.colorize("#aaaaaa","1 Defense").. ""),
  inventory_image = "padded_helmet_inv.png",
  acc_defense = 1,
  acc_slot = "helmet_acc",
  acc_size_head = ({x=2.5,y=2.5}),
  acc_model_head = ("simple_helmet_cuboid.b3d"),
  acc_texture_head = ("padded_helmet.png"),
  acc_pos_head = {x=0,y=2.0,z=0},
  acc_anim_head = {x=0,y=0},

  groups = {head_accessory = 1},
})

minetest.register_craft({
  output = "gear_up:padded_helmet 1",
  recipe = {
    {"", "wool:white", ""},
    {"wool:white", "", "wool:white"},
    {"", "farming:string", ""},
  }
})

-- padded armor
minetest.register_tool("gear_up:padded_armor", {
  description = ("Padded Armor \n"..
    core.colorize("#aaaaaa","Equipable \n")..
    ""..
    core.colorize("#aaaaaa","2 Defense").. ""),
  inventory_image = "padded_armor_inv.png",
  acc_defense = 2,
  acc_slot = "armor_acc",

  acc_size_body = ({x=2.5,y=2.5}),
  acc_model_body = ("double_body.b3d"),
  acc_texture_body = ("padded_armor.png"),
  acc_pos_body = {x=0,y=3.0,z=0},
  acc_anim_body = {x=0,y=0},

  acc_size_l_arm = ({x=2.4,y=2.4}),
  acc_model_l_arm = ("double_hand.b3d"),
  acc_texture_l_arm = ("padded_arm.png"),
  acc_pos_l_arm = {x=0,y=1.75,z=0},
  acc_anim_l_arm = {x=0,y=0},

  acc_size_r_arm = ({x=2.4,y=2.4}),
  acc_model_r_arm = ("double_hand.b3d"),
  acc_texture_r_arm = ("padded_arm.png"),
  acc_pos_r_arm = {x=0,y=1.75,z=0},
  acc_anim_r_arm = {x=0,y=0},

  groups = {body_accessory = 1,l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_craft({
  output = "gear_up:padded_armor 1",
  recipe = {
    {"wool:white", "", "wool:white"},
    {"wool:white", "farming:string", "wool:white"},
    {"wool:white", "farming:string", "wool:white"},
  }
})

-- padded leggings
minetest.register_tool("gear_up:padded_leggings", {
  description = ("Padded Leggings \n"..
    core.colorize("#aaaaaa","Equipable \n")..
    ""..
    core.colorize("#aaaaaa","1 Defense")..
    ""),
  inventory_image = "padded_leggings_inv.png",
  acc_defense = 1,
  acc_slot = "pants_acc",

  acc_size_l_leg = ({x=2.4,y=2.4}),
  acc_model_l_leg = ("simple_hand.b3d"),
  acc_texture_l_leg = ("padded_leg.png"),
  acc_pos_l_leg = {x=0,y=2.75,z=0},
  acc_anim_l_leg = {x=0,y=0},

  acc_size_r_leg = ({x=2.4,y=2.4}),
  acc_model_r_leg = ("simple_hand.b3d"),
  acc_texture_r_leg = ("padded_leg.png"),
  acc_pos_r_leg = {x=0,y=2.75,z=0},
  acc_anim_r_leg = {x=0,y=0},

  groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})

minetest.register_craft({
  output = "gear_up:padded_leggings 1",
  recipe = {
    {"wool:white", "wool:white", "wool:white"},
    {"wool:white", "", "wool:white"},
    {"wool:white", "", "wool:white"},
  }
})

-- padded boots
minetest.register_tool("gear_up:padded_boots", {
  description = ("Padded Boots \n" ..
    core.colorize("#aaaaaa","Equipable \n")..
    ""..core.colorize("#aaaaaa","1 Defense")..
    ""),
  inventory_image = "padded_boots_inv.png",
  acc_defense = 1,

  acc_slot = "boots_acc",

  acc_size_l_leg = ({x=2.6,y=2.6}),
  acc_model_l_leg = ("boot.b3d"),
  acc_texture_l_leg = ("padded_boots.png"),
  acc_pos_l_leg = {x=0,y=4.75,z=0},
  acc_anim_l_leg = {x=0,y=0},

  acc_size_r_leg = ({x=2.6,y=2.6}),
  acc_model_r_leg = ("boot.b3d"),
  acc_texture_r_leg = ("padded_boots.png"),
  acc_pos_r_leg = {x=0,y=4.75,z=0},
  acc_anim_r_leg = {x=0,y=0},

  groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})

minetest.register_craft({
  output = "gear_up:padded_boots 1",
  recipe = {
    {"wool:white", "", "wool:white"},
    {"wool:white", "", "wool:white"},
  }
})

-- copper helmet
minetest.register_tool("gear_up:copper_helmet", {
  description = ("Copper Helmet \n"..
    core.colorize("#aaaaaa","Equipable \n")..
    ""..
    core.colorize("#aaaaaa","2 Defense")..
    ""),
  inventory_image = "copper_helmet_inv.png",
  acc_defense = 2,

  acc_slot = "helmet_acc",
  acc_size_head = ({x=2.5,y=2.5}),
  acc_model_head = ("helmet_1.b3d"),
  acc_texture_head = ("copper_helmet.png"),
  acc_pos_head = {x=0,y=2.0,z=0},
  acc_anim_head = {x=0,y=0},

groups = {head_accessory = 1},
})

minetest.register_craft({
  output = "gear_up:copper_helmet 1",
  recipe = {
    {"default:copper_ingot", "default:copper_ingot", "default:copper_ingot"},
    {"default:copper_ingot", "gear_up:padded_helmet", "default:copper_ingot"},
  }
})

-- copper chainmail
minetest.register_tool("gear_up:copper_chainmail", {
  description = ("Copper Chainmail \n"..
    core.colorize("#aaaaaa","Equipable \n")..
    ""..
    core.colorize("#aaaaaa","3 Defense")..
    ""),
  inventory_image = "copper_chainmail_inv.png",
  acc_defense = 3,

  acc_slot = "armor_acc",

  acc_size_body = ({x=2.5,y=2.5}),
  acc_model_body = ("double_body.b3d"),
  acc_texture_body = ("copper_chainmail.png"),
  acc_pos_body = {x=0,y=3.0,z=0},
  acc_anim_body = {x=0,y=0},

  acc_size_l_arm = ({x=2.4,y=2.4}),
  acc_model_l_arm = ("double_hand.b3d"),
  acc_texture_l_arm = ("copper_l_arm.png"),
  acc_pos_l_arm = {x=0,y=1.75,z=0},
  acc_anim_l_arm = {x=0,y=0},

  acc_size_r_arm = ({x=2.4,y=2.4}),
  acc_model_r_arm = ("double_hand.b3d"),
  acc_texture_r_arm = ("copper_r_arm.png"),
  acc_pos_r_arm = {x=0,y=1.75,z=0},
  acc_anim_r_arm = {x=0,y=0},

  groups = {body_accessory = 1,l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_craft({
  output = "gear_up:copper_chainmail 1",
  recipe = {
    {"default:copper_ingot", "", "default:copper_ingot"},
    {"default:copper_ingot", "gear_up:padded_armor", "default:copper_ingot"},
    {"default:copper_ingot", "default:copper_ingot", "default:copper_ingot"},
  }
})

-- copper leggings
minetest.register_tool("gear_up:copper_leggings", {
  description = ("Copper Leggings \n"..
    core.colorize("#aaaaaa","Equipable \n")..
    ""..
    core.colorize("#aaaaaa","2 Defense")..
    ""),
  inventory_image = "copper_leggings_inv.png",
  acc_defense = 2,

  acc_slot = "pants_acc",

  acc_size_l_leg = ({x=2.4,y=2.4}),
  acc_model_l_leg = ("double_hand.b3d"),
  acc_texture_l_leg = ("copper_leg.png"),
  acc_pos_l_leg = {x=0,y=2.75,z=0},
  acc_anim_l_leg = {x=0,y=0},

  acc_size_r_leg = ({x=2.4,y=2.4}),
  acc_model_r_leg = ("double_hand.b3d"),
  acc_texture_r_leg = ("copper_leg.png"),
  acc_pos_r_leg = {x=0,y=2.75,z=0},
  acc_anim_r_leg = {x=0,y=0},

  groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})

minetest.register_craft({
  output = "gear_up:copper_leggings 1",
  recipe = {
    {"default:copper_ingot", "default:copper_ingot", "default:copper_ingot"},
    {"default:copper_ingot", "gear_up:padded_leggings", "default:copper_ingot"},
    {"default:copper_ingot", "", "default:copper_ingot"},
  }
})

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

-- steel helmet
minetest.register_tool("gear_up:steel_helmet", {
  description = ("Steel Helmet \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","4 Defense").. ""),
  inventory_image = "steel_helmet_inv.png",
  acc_defense = 4,

  acc_slot = "helmet_acc",
  acc_size_head = ({x=2.5,y=2.5}),
  acc_model_head = ("simple_helmet_cuboid.b3d"),
  acc_texture_head = ("steel_helmet.png"),
  acc_pos_head = {x=0,y=2.0,z=0},
  acc_anim_head = {x=0,y=0},

  groups = {head_accessory = 1},
})

minetest.register_craft({
  output = "gear_up:steel_helmet 1",
  recipe = {
    {"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
    {"default:steel_ingot", "gear_up:padded_helmet", "default:steel_ingot"},
  }
})

-- steel scalemail
minetest.register_tool("gear_up:steel_scalemail", {
  description = ("Steel Scalemail \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","5 Defense").. ""),
  inventory_image = "steel_scalemail_inv.png",
  acc_defense = 5,

  acc_slot = "armor_acc",

  acc_size_body = ({x=2.5,y=2.5}),
  acc_model_body = ("double_body.b3d"),
  acc_texture_body = ("steel_scalemail.png"),
  acc_pos_body = {x=0,y=3.0,z=0},
  acc_anim_body = {x=0,y=0},

  acc_size_l_arm = ({x=2.4,y=2.4}),
  acc_model_l_arm = ("double_hand.b3d"),
  acc_texture_l_arm = ("steel_l_arm.png"),
  acc_pos_l_arm = {x=0,y=1.75,z=0},
  acc_anim_l_arm = {x=0,y=0},

  acc_size_r_arm = ({x=2.4,y=2.4}),
  acc_model_r_arm = ("double_hand.b3d"),
  acc_texture_r_arm = ("steel_r_arm.png"),
  acc_pos_r_arm = {x=0,y=1.75,z=0},
  acc_anim_r_arm = {x=0,y=0},

  groups = {body_accessory = 1,l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_craft({
  output = "gear_up:steel_scalemail 1",
  recipe = {
    {"default:steel_ingot", "", "default:steel_ingot"},
    {"default:steel_ingot", "gear_up:padded_armor", "default:steel_ingot"},
    {"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
  }
})

-- steel leggings
minetest.register_tool("gear_up:steel_leggings", {
  description = ("Steel Leggings \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","4 Defense").. ""),
  inventory_image = "steel_leggings_inv.png",
  acc_defense = 4,

  acc_slot = "pants_acc",

  acc_size_l_leg = ({x=2.4,y=2.4}),
  acc_model_l_leg = ("double_hand.b3d"),
  acc_texture_l_leg = ("steel_leg.png"),
  acc_pos_l_leg = {x=0,y=2.75,z=0},
  acc_anim_l_leg = {x=0,y=0},

  acc_size_r_leg = ({x=2.4,y=2.4}),
  acc_model_r_leg = ("double_hand.b3d"),
  acc_texture_r_leg = ("steel_leg.png"),
  acc_pos_r_leg = {x=0,y=2.75,z=0},
  acc_anim_r_leg = {x=0,y=0},

  groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})

minetest.register_craft({
  output = "gear_up:steel_leggings 1",
  recipe = {
    {"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
    {"default:steel_ingot", "gear_up:padded_leggings", "default:steel_ingot"},
    {"default:steel_ingot", "", "default:steel_ingot"},
  }
})

-- steel gauntlets
minetest.register_tool("gear_up:steel_gauntlets", {
	description = ("Steel Gauntlets\n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","+4% Attack Damage \n").. "" ..core.colorize("#aaaaaa","2 Defense").. ""),
	inventory_image = "steel_gauntlets_inv.png",
	acc_defense = 2,
	acc_offense = 4,
	acc_slot = "gloves_acc",

	acc_size_l_arm = ({x=1.25,y=1.5}),
	acc_model_l_arm = ("simple_helmet_cuboid.b3d"),
	acc_texture_l_arm = ("steel_gauntlets.png"),
	acc_pos_l_arm = {x=0,y=4.0,z=0},
	acc_anim_l_arm = {x=0,y=0},

	acc_size_r_arm = ({x=1.25,y=1.5}),
	acc_model_r_arm = ("simple_helmet_cuboid.b3d"),
	acc_texture_r_arm = ("steel_gauntlets.png"),
	acc_pos_r_arm = {x=0,y=4.0,z=0},
	acc_anim_r_arm = {x=0,y=0},

	groups = {l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:steel_gauntlets 1",
	recipe = {
		{"default:steel_ingot", "", "default:steel_ingot"},
		{"default:steel_ingot", "", "default:steel_ingot"},
		{"wool:white", "", "wool:white"},
	}
})

-- golden helmet
minetest.register_tool("gear_up:golden_helmet", {
  description = ("Golden Helmet \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","6 Defense").. ""),
  inventory_image = "golden_helmet_inv.png",
  acc_defense = 6,

  acc_slot = "helmet_acc",
  acc_size_head = ({x=2.5,y=2.5}),
  acc_model_head = ("simple_winged_helmet.b3d"),
  acc_texture_head = ("golden_helmet.png"),
  acc_pos_head = {x=0,y=2.0,z=0},
  acc_anim_head = {x=0,y=0},

  groups = {head_accessory = 1},
})

minetest.register_craft({
  output = "gear_up:golden_helmet 1",
  recipe = {
    {"default:gold_ingot", "default:gold_ingot", "default:gold_ingot"},
    {"default:gold_ingot", "gear_up:padded_helmet", "default:gold_ingot"},
  }
})

-- golden platemail
minetest.register_tool("gear_up:golden_platemail", {
  description = ("Golden Platemail \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","7 Defense").. ""),
  inventory_image = "golden_platemail_inv.png",
  acc_defense = 7,

  acc_slot = "armor_acc",

  acc_size_body = ({x=2.5,y=2.5}),
  acc_model_body = ("double_body.b3d"),
  acc_texture_body = ("golden_platemail.png"),
  acc_pos_body = {x=0,y=3.0,z=0},
  acc_anim_body = {x=0,y=0},

  acc_size_l_arm = ({x=2.4,y=2.4}),
  acc_model_l_arm = ("double_hand.b3d"),
  acc_texture_l_arm = ("golden_l_arm.png"),
  acc_pos_l_arm = {x=0,y=1.75,z=0},
  acc_anim_l_arm = {x=0,y=0},

  acc_size_r_arm = ({x=2.4,y=2.4}),
  acc_model_r_arm = ("double_hand.b3d"),
  acc_texture_r_arm = ("golden_r_arm.png"),
  acc_pos_r_arm = {x=0,y=1.75,z=0},
  acc_anim_r_arm = {x=0,y=0},

  groups = {body_accessory = 1,l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_craft({
  output = "gear_up:golden_platemail 1",
  recipe = {
    {"default:gold_ingot", "", "default:gold_ingot"},
    {"default:gold_ingot", "gear_up:padded_armor", "default:gold_ingot"},
    {"default:gold_ingot", "default:gold_ingot", "default:gold_ingot"},
  }
})

-- golden leggings
minetest.register_tool("gear_up:golden_leggings", {
  description = ("Golden Leggings \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","6 Defense").. ""),
  inventory_image = "golden_leggings_inv.png",
  acc_defense = 6,

  acc_slot = "pants_acc",

  acc_size_l_leg = ({x=2.4,y=2.4}),
  acc_model_l_leg = ("double_hand.b3d"),
  acc_texture_l_leg = ("golden_leg.png"),
  acc_pos_l_leg = {x=0,y=2.75,z=0},
  acc_anim_l_leg = {x=0,y=0},

  acc_size_r_leg = ({x=2.4,y=2.4}),
  acc_model_r_leg = ("double_hand.b3d"),
  acc_texture_r_leg = ("golden_leg.png"),
  acc_pos_r_leg = {x=0,y=2.75,z=0},
  acc_anim_r_leg = {x=0,y=0},

  groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})

minetest.register_craft({
  output = "gear_up:golden_leggings 1",
  recipe = {
    {"default:gold_ingot", "default:gold_ingot", "default:gold_ingot"},
    {"default:gold_ingot", "gear_up:padded_leggings", "default:gold_ingot"},
    {"default:gold_ingot", "", "default:gold_ingot"},
  }
})

-- golden boots
minetest.register_tool("gear_up:golden_boots", {
  description = ("Golden Boots \n" ..
    core.colorize("#aaaaaa","Equipable \n")..
    ""..core.colorize("#aaaaaa","6 Defense")..
    ""),
  inventory_image = "golden_boots_inv.png",
  acc_defense = 6,

  acc_slot = "boots_acc",

  acc_size_l_leg = ({x=2.6,y=2.6}),
  acc_model_l_leg = ("boot.b3d"),
  acc_texture_l_leg = ("golden_boots.png"),
  acc_pos_l_leg = {x=0,y=4.75,z=0},
  acc_anim_l_leg = {x=0,y=0},

  acc_size_r_leg = ({x=2.6,y=2.6}),
  acc_model_r_leg = ("boot.b3d"),
  acc_texture_r_leg = ("golden_boots.png"),
  acc_pos_r_leg = {x=0,y=4.75,z=0},
  acc_anim_r_leg = {x=0,y=0},

  groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})

minetest.register_craft({
  output = "gear_up:golden_boots 1",
  recipe = {
    {"default:gold_ingot", "", "default:gold_ingot"},
    {"default:gold_ingot", "gear_up:padded_boots", "default:gold_ingot"},
  }
})

-- mithril helmet
minetest.register_tool("gear_up:mithril_helmet", {
  description = ("Mithril Helmet \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","+4 Max HP \n").. "" ..core.colorize("#aaaaaa","8 Defense").. ""),
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
  description = ("Mithril Platemail \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","+7% Attack damage \n").. "" ..core.colorize("#aaaaaa","9 Defense").. ""),
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
  description = ("mithril Leggings \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","Walking Speed + 15% \n").. "" ..core.colorize("#aaaaaa","8 Defense").. ""),
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

-- silver helmet
minetest.register_tool("gear_up:silver_helmet", {
  description = ("Silver Helmet \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","5 Defense").. ""),
  inventory_image = "silver_helmet_inv.png",
  acc_defense = 5,

  acc_slot = "helmet_acc",
  acc_size_head = ({x=2.5,y=2.5}),
  acc_model_head = ("helmet_1.b3d"),
  acc_texture_head = ("silver_helmet.png"),
  acc_pos_head = {x=0,y=2.0,z=0},
  acc_anim_head = {x=0,y=0},

groups = {head_accessory = 1},
})

minetest.register_craft({
  output = "gear_up:silver_helmet 1",
  recipe = {
    {"moreores:silver_ingot", "moreores:silver_ingot", "moreores:silver_ingot"},
    {"moreores:silver_ingot", "gear_up:padded_helmet", "moreores:silver_ingot"},
  }
})

-- silver platemail
minetest.register_tool("gear_up:silver_platemail", {
  description = ("Silver Platemail \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","6 Defense").. ""),
  inventory_image = "silver_platemail_inv.png",
  acc_defense = 6,
  acc_slot = "armor_acc",

  acc_size_body = ({x=2.5,y=2.5}),
  acc_model_body = ("double_body.b3d"),
  acc_texture_body = ("silver_platemail.png"),
  acc_pos_body = {x=0,y=3.0,z=0},
  acc_anim_body = {x=0,y=0},

  acc_size_l_arm = ({x=2.4,y=2.4}),
  acc_model_l_arm = ("double_hand.b3d"),
  acc_texture_l_arm = ("silver_l_arm.png"),
  acc_pos_l_arm = {x=0,y=1.75,z=0},
  acc_anim_l_arm = {x=0,y=0},

  acc_size_r_arm = ({x=2.4,y=2.4}),
  acc_model_r_arm = ("double_hand.b3d"),
  acc_texture_r_arm = ("silver_r_arm.png"),
  acc_pos_r_arm = {x=0,y=1.75,z=0},
  acc_anim_r_arm = {x=0,y=0},

  groups = {body_accessory = 1,l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_craft({
  output = "gear_up:silver_platemail 1",
  recipe = {
    {"moreores:silver_ingot", "", "moreores:silver_ingot"},
    {"moreores:silver_ingot", "gear_up:padded_armor", "moreores:silver_ingot"},
    {"moreores:silver_ingot", "moreores:silver_ingot", "moreores:silver_ingot"},
  }
})

-- silver leggings
minetest.register_tool("gear_up:silver_leggings", {
  description = ("Silver Leggings \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","5 Defense").. ""),
  inventory_image = "silver_leggings_inv.png",
  acc_defense = 5,

  acc_slot = "pants_acc",

  acc_size_l_leg = ({x=2.4,y=2.4}),
  acc_model_l_leg = ("double_hand.b3d"),
  acc_texture_l_leg = ("silver_leg.png"),
  acc_pos_l_leg = {x=0,y=2.75,z=0},
  acc_anim_l_leg = {x=0,y=0},

  acc_size_r_leg = ({x=2.4,y=2.4}),
  acc_model_r_leg = ("double_hand.b3d"),
  acc_texture_r_leg = ("silver_leg.png"),
  acc_pos_r_leg = {x=0,y=2.75,z=0},
  acc_anim_r_leg = {x=0,y=0},

  groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})

minetest.register_craft({
  output = "gear_up:silver_leggings 1",
  recipe = {
    {"moreores:silver_ingot", "moreores:silver_ingot", "moreores:silver_ingot"},
    {"moreores:silver_ingot", "gear_up:padded_leggings", "moreores:silver_ingot"},
    {"moreores:silver_ingot", "", "moreores:silver_ingot"},
  }
})

-- cactus helmet
minetest.register_tool("gear_up:cactus_helmet", {
  description = ("Cactus Helmet \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","+2% Attack damage \n").. "" ..core.colorize("#aaaaaa","1 Defense").. ""),
  inventory_image = "cactus_helmet_inv.png",
  acc_defense = 1,
  acc_offense = 2,
  acc_slot = "helmet_acc",
  acc_size_head = ({x=2.5,y=2.5}),
  acc_model_head = ("simple_helmet_cuboid.b3d"),
  acc_texture_head = ("cactus_helmet.png"),
  acc_pos_head = {x=0,y=2.0,z=0},
  acc_anim_head = {x=0,y=0},

  groups = {head_accessory = 1},
})

minetest.register_craft({
  output = "gear_up:cactus_helmet 1",
  recipe = {
    {"default:cactus", "default:cactus", "default:cactus"},
    {"default:cactus", "", "default:cactus"},
  }
})

-- cactus armor
minetest.register_tool("gear_up:cactus_armor", {
  description = ("Cactus armor \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","+3% Attack damage \n").. "" ..core.colorize("#aaaaaa","2 Defense").. ""),
  inventory_image = "cactus_armor_inv.png",
  acc_defense = 2,
  acc_offense = 3,
  acc_slot = "armor_acc",

  acc_size_body = ({x=2.5,y=2.5}),
  acc_model_body = ("double_body.b3d"),
  acc_texture_body = ("cactus_armor.png"),
  acc_pos_body = {x=0,y=3.0,z=0},
  acc_anim_body = {x=0,y=0},

  acc_size_l_arm = ({x=2.4,y=2.4}),
  acc_model_l_arm = ("double_hand.b3d"),
  acc_texture_l_arm = ("cactus_arm.png"),
  acc_pos_l_arm = {x=0,y=1.75,z=0},
  acc_anim_l_arm = {x=0,y=0},

  acc_size_r_arm = ({x=2.4,y=2.4}),
  acc_model_r_arm = ("double_hand.b3d"),
  acc_texture_r_arm = ("cactus_arm.png"),
  acc_pos_r_arm = {x=0,y=1.75,z=0},
  acc_anim_r_arm = {x=0,y=0},

  groups = {body_accessory = 1,l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_craft({
  output = "gear_up:cactus_armor 1",
  recipe = {
    {"default:cactus", "", "default:cactus"},
    {"default:cactus", "default:cactus", "default:cactus"},
    {"default:cactus", "default:cactus", "default:cactus"},
  }
})

-- cactus leggings
minetest.register_tool("gear_up:cactus_leggings", {
  description = ("Cactus Leggings \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","+2% Attack damage \n").. "" ..core.colorize("#aaaaaa","2 Defense").. ""),
  inventory_image = "cactus_leggings_inv.png",
  acc_defense = 1,
  acc_offense = 2,
  acc_slot = "pants_acc",

  acc_size_l_leg = ({x=2.4,y=2.4}),
  acc_model_l_leg = ("double_hand.b3d"),
  acc_texture_l_leg = ("cactus_leg.png"),
  acc_pos_l_leg = {x=0,y=2.75,z=0},
  acc_anim_l_leg = {x=0,y=0},

  acc_size_r_leg = ({x=2.4,y=2.4}),
  acc_model_r_leg = ("double_hand.b3d"),
  acc_texture_r_leg = ("cactus_leg.png"),
  acc_pos_r_leg = {x=0,y=2.75,z=0},
  acc_anim_r_leg = {x=0,y=0},

  groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})

minetest.register_craft({
  output = "gear_up:cactus_leggings 1",
  recipe = {
    {"default:cactus", "default:cactus", "default:cactus"},
    {"default:cactus", "", "default:cactus"},
    {"default:cactus", "", "default:cactus"},
  }
})

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

-- wooden helmet
minetest.register_tool("gear_up:wooden_helmet", {
  description = ("Wooden Helmet \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","1 Defense").. ""),
  inventory_image = "wooden_helmet_inv.png",
  acc_defense = 1,
  acc_slot = "helmet_acc",
  acc_size_head = ({x=2.5,y=2.5}),
  acc_model_head = ("simple_helmet_cuboid.b3d"),
  acc_texture_head = ("wooden_helmet.png"),
  acc_pos_head = {x=0,y=2.0,z=0},
  acc_anim_head = {x=0,y=0},

  groups = {head_accessory = 1},
})

minetest.register_craft({
  output = "gear_up:wooden_helmet 1",
  recipe = {
    {"group:wood", "group:wood", "group:wood"},
    {"group:wood", "", "group:wood"},
  }
})

-- wooden armor
minetest.register_tool("gear_up:wooden_armor", {
  description = ("Wooden armor \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","2 Defense").. ""),
  inventory_image = "wooden_armor_inv.png",
  acc_defense = 2,
  acc_slot = "armor_acc",

  acc_size_body = ({x=2.5,y=2.5}),
  acc_model_body = ("simple_body.b3d"),
  acc_texture_body = ("wooden_armor.png"),
  acc_pos_body = {x=0,y=3.0,z=0},
  acc_anim_body = {x=0,y=0},

  groups = {body_accessory = 1},
})

minetest.register_craft({
  output = "gear_up:wooden_armor 1",
  recipe = {
    {"group:wood", "", "group:wood"},
    {"group:wood", "group:wood", "group:wood"},
    {"group:wood", "group:wood", "group:wood"},
  }
})

-- wooden leggings
minetest.register_tool("gear_up:wooden_leggings", {
  description = ("Wooden Leggings \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","2 Defense").. ""),
  inventory_image = "wooden_leggings_inv.png",
  acc_defense = 1,
  acc_slot = "pants_acc",

  acc_size_l_leg = ({x=2.4,y=2.4}),
  acc_model_l_leg = ("simple_hand.b3d"),
  acc_texture_l_leg = ("wooden_leg.png"),
  acc_pos_l_leg = {x=0,y=2.75,z=0},
  acc_anim_l_leg = {x=0,y=0},

  acc_size_r_leg = ({x=2.4,y=2.4}),
  acc_model_r_leg = ("simple_hand.b3d"),
  acc_texture_r_leg = ("wooden_leg.png"),
  acc_pos_r_leg = {x=0,y=2.75,z=0},
  acc_anim_r_leg = {x=0,y=0},

  groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})

minetest.register_craft({
  output = "gear_up:wooden_leggings 1",
  recipe = {
    {"group:wood", "group:wood", "group:wood"},
    {"group:wood", "", "group:wood"},
    {"group:wood", "", "group:wood"},
  }
})

-- dungeon helmet
minetest.register_tool("gear_up:dungeon_helmet", {
  description = ("Dungeon Warrior Helmet \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","+7% Attack damage \n").. "" ..core.colorize("#aaaaaa","7 Defense").. ""),
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
  description = ("Dungeon Warrior Platemail \n" ..core.colorize("#aaaaaa","Equipable \n").. "" ..core.colorize("#aaaaaa","+8% Attack damage \n").. "" ..core.colorize("#aaaaaa","8 Defense").. ""),
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

-- only available as loot
