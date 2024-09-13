-- facemask
minetest.register_tool("gear_up:facemask", {
	description = ("Face mask \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","1 Defense")..
		""),
	inventory_image = "facemask_inv.png",
	acc_defense = 1,

	acc_slot = "mouth_acc",
	acc_size_head = ({x=2.25,y=2.25}),
	acc_model_head = ("simple_helmet_cuboid.b3d"),
	acc_texture_head = ("facemask.png"),
	acc_pos_head = {x=0,y=2.0,z=0},
	acc_anim_head = {x=0,y=0},

	groups = {head_accessory = 1},
})

minetest.register_craft({
	output = "gear_up:facemask 1",
	recipe = {
		{"farming:string", "", "farming:string"},
		{"", "default:paper", ""},
	}
})
