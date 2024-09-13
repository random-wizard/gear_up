
minetest.register_node("gear_up:crate_type9", {
	description = ("Crate - Doom \n"..
		core.colorize("#aaaaaa","Break it to get 1 random item \n")..
		""..
		core.colorize("#aaaaaa","can sometimes be found deep underground")..
		""),
	tiles = {
		"crate_type9_top.png",
		"crate_type9_top.png",
		"crate_type9_side.png",
		"crate_type9_side.png",
		"crate_type9_side.png",
		"crate_type9_front.png"
	},
	is_ground_content = false,
	--like hard block
	groups = {cracky = 1},
	drop = "",
	on_dig = function(pos, node, digger)
		local item_stack = {
			"default:mese_crystal_fragment",
			"default:mese_crystal_fragment",
			"default:mese_crystal_fragment",
			"gear_up:boots_of_haste",
			"gear_up:heart_amulet",
			"gear_up:enchanted_stone_shield",
			"gear_up:enchanted_stone_gauntlets",
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

--appears in stone deep underground
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "gear_up:crate_type9",
	wherein        = "default:stone",
	clust_scarcity = 24 * 24 * 24,
	clust_num_ores = 1,
	clust_size     = 1,
	y_max          = -800,
	y_min          = -10000,
})
