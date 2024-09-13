
minetest.register_node("gear_up:crate_type4", {
	description = ("Crate - Frozen \n"..
		core.colorize("#aaaaaa","Break it to get 1 random item \n")..
		""..
		core.colorize("#aaaaaa","can sometimes be found frozen in ice")..
		""),
	tiles = {
		"crate_type4_top.png",
		"crate_type4_top.png",
		"crate_type4_top.png",
		"crate_type4_top.png",
		"crate_type4_top.png",
		"crate_type4_top.png"
	},
	is_ground_content = false,
	--like stone
	groups = {cracky = 3},
	drop = "",
	on_dig = function(pos, node, digger)
		local item_stack = {
			"default:pick_steel",
			"default:sword_steel",
			"default:coal_lump",
			"default:coal_lump",
			"default:coal_lump",
			"default:copper_lump",
			"default:tin_lump",
			"default:iron_lump",
			"default:junglewood",
			"default:junglewood",
			"default:junglewood",
			"default:torch",
			"default:torch",
			"default:torch",
			"default:torch",
			"default:torch",
			"default:torch",
			"gear_up:padded_armor",
			"gear_up:padded_boots",
			"gear_up:padded_helmet",
			"gear_up:padded_leggings",
			"gear_up:dyejar_yellow",
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

-- frozen in ice
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "gear_up:crate_type4",
	wherein        = "default:ice",
	clust_scarcity = 5 * 5 * 5,
	clust_num_ores = 1,
	clust_size     = 1,
	y_max          = 2000,
	y_min          = -100,
})
