item_stack_uncommon = {
	{"gear_up:wooden_shield"},
	{"gear_up:tin_leggings"},
	{"gear_up:bronze_scalemail"},
	{"gear_up:tin_helmet"},
	{"gear_up:dyejar_lightblue"},
}

minetest.register_node("gear_up:pinata_chest_uncommon", {
	description = ("Accessory Chest - Common \n"..
		core.colorize("#aaaaaa","Break it to get 1 random common item \n")..
		""..
		core.colorize("#aaaaaa","can sometimes be found above 400 nodes below ground")..
		""),
	tiles = {
		"chest_uncommon_top.png",
		"chest_uncommon_top.png",
		"chest_uncommon_side.png",
		"chest_uncommon_side.png",
		"chest_uncommon_side.png",
		"chest_uncommon_front.png"
	},
	is_ground_content = false,
	groups = {oddly_breakable_by_hand = 3},
	drop = "",
	on_dig = function(pos, node, digger)
		local gotten_acc = ItemStack({name = item_stack_uncommon[math.random(#item_stack_uncommon)]})

		if minetest.get_modpath("tool_modifiers") then
			if math.random(1,2) == 2 then
				ApplyAccessoryMod(gotten_acc,accessory_modifiers,math.random(#accessory_modifiers),nil)
			end
		end

		minetest.add_item(pos,gotten_acc)
		minetest.node_dig(pos,node,digger)
	end,
})

minetest.register_ore({
	ore_type			 = "scatter",
	ore						= "gear_up:pinata_chest_uncommon",
	wherein				= "default:stone",
	clust_scarcity = 25 * 25 * 25,
	clust_num_ores = 1,
	clust_size		 = 1,
	y_max					= -400,
	y_min					= -2000,
})
