
minetest.register_node("gear_up:crate_type7", {
	description = ("Crate - Steel \n"..
		core.colorize("#aaaaaa","Break it to get 1 random item \n")..
		""..
		core.colorize("#aaaaaa","can sometimes be found underground")..
		""),
	tiles = {
		"crate_type7_top.png",
		"crate_type7_top.png",
		"crate_type7_side.png",
		"crate_type7_side.png",
		"crate_type7_side.png",
		"crate_type7_front.png"
	},
	is_ground_content = false,
	--like diamond block
	groups = {cracky = 2},
	drop = "",
	on_dig = function(pos, node, digger)
		local item_stack = {
			"default:coal_lump",
			"default:coal_lump",
			"default:coal_lump",
			"default:applewood",
			"default:applewood",
			"default:applewood",
			"default:torch",
			"default:torch",
			"default:torch",
			"default:torch",
			"default:torch",
			"default:torch",
			"default:stick",
			"default:stick",
			"default:stick",
			"gear_up:tin_leggings",
			"gear_up:tin_helmet",
			"gear_up:dyejar_lightblue",
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

-- appears in stone below and above ground
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "gear_up:crate_type7",
	wherein        = "default:stone",
	clust_scarcity = 5 * 5 * 5,
	clust_num_ores = 1,
	clust_size     = 1,
	y_max          = 100,
	y_min          = -400,
})
