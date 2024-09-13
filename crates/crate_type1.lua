
minetest.register_node("gear_up:crate_type1", {
	description = ("Crate - Wood \n"..
		core.colorize("#aaaaaa","Break it to get 1 random item \n")..
		""..
		core.colorize("#aaaaaa","can sometimes be found in the sand")..
		""),
	tiles = {
		"crate_type1_top.png",
		"crate_type1_top.png",
		"crate_type1_side.png",
		"crate_type1_side.png",
		"crate_type1_side.png",
		"crate_type1_front.png"
	},
	is_ground_content = true,
	groups = {oddly_breakable_by_hand = 3},
	drop = "",
	on_dig = function(pos, node, digger)
		local item_stack = {
			"dye:black",
			"dye:blue",
			"dye:yellow",
			"default:mese_post_light_junglewood",
			"default:junglewood",
			"default:junglewood",
			"default:junglewood",
			"default:applewood",
			"default:applewood",
			"default:applewood",
			"default:stick",
			"default:stick",
			"default:stick",
			"default:coal_lump",
			"default:coal_lump",
			"default:coal_lump",
			"default:copper_lump",
			"default:copper_lump",
			"default:copper_lump",
			"default:tin_lump",
			"default:tin_lump",
			"default:tin_lump",
			"default:pick_wood",
			"gear_up:padded_armor",
			"gear_up:wooden_helmet",
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

-- appears underwater and underground in sand but not too deep
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "gear_up:crate_type1",
	wherein        = "default:sand",
	clust_scarcity = 7 * 7 * 7,
	clust_num_ores = 1,
	clust_size     = 1,
	y_max          = 1,
	y_min          = -10,
})
