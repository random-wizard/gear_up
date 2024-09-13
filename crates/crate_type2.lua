
minetest.register_node("gear_up:crate_type2", {
	description = ("Crate - Wood with Metal Joints \n"..
		core.colorize("#aaaaaa","Break it to get 1 random item \n")..
		""..
		core.colorize("#aaaaaa","can sometimes be found just benearth the surface")..
		""),
	tiles = {
		"crate_type2_top.png",
		"crate_type2_top.png",
		"crate_type2_side.png",
		"crate_type2_side.png",
		"crate_type2_side.png",
		"crate_type2_front.png"
	},
	is_ground_content = false,
	groups = {oddly_breakable_by_hand = 3},
	drop = "",
	on_dig = function(pos, node, digger)
		local item_stack = {
			"default:coal_lump",
			"default:coal_lump",
			"default:coal_lump",
			"default:junglewood",
			"default:sword_wood",
			"default:torch",
			"default:torch",
			"default:torch",
			"default:torch",
			"default:torch",
			"default:torch",
			"gear_up:padded_armor",
			"gear_up:wooden_helmet",
			"gear_up:wooden_leggings",
			"gear_up:dyejar_brown",
		}
		local gotten_acc = ItemStack({name = item_stack[math.random(#item_stack)]})

		if minetest.get_modpath("tool_modifiers") then
			if math.random(1,2) == 2 then
				ApplyAccessoryMod(gotten_acc,accessory_modifiers,math.random(#accessory_modifiers),nil)
			end
		end

		minetest.add_item(pos,gotten_acc)
		minetest.node_dig(pos,node,digger)
	end,
})

-- crate buried in the dirt
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "gear_up:crate_type2",
	wherein        = "default:dirt",
	clust_scarcity = 4 * 4 * 4,
	clust_num_ores = 1,
	clust_size     = 1,
	y_max          = 60,
	y_min          = -10,
})
