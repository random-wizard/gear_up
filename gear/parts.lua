-- wing base
minetest.register_craftitem("gear_up:wing_base", {
	description = ("Wing base \n"..
		core.colorize("#aaaaaa","A sturdy diamond & mese encrusted metal skeleton for a wing, powered by mese. \n")..
		""..
		core.colorize("#aaaaaa","used for crafting wearable wings")..
		""),
	inventory_image = "wing_base.png",
})

minetest.register_craft({
	output = "gear_up:wing_base 1",
	recipe = {
		{"default:steel_ingot", "default:diamondblock", "default:steel_ingot"},
		{"default:mese", "default:steel_ingot", "default:mese"},
		{"default:steel_ingot", "default:diamondblock", "default:steel_ingot"},
	}
})

-- charcoal
minetest.register_craftitem("gear_up:charcoal_briquette", {
	description = ("Charcoal Briquette"),
	inventory_image = "charcoal_briquette_inv.png",
})

minetest.register_craft({
	type = "cooking",
	recipe = "group:leaves",
	output = "gear_up:charcoal_briquette",
})

minetest.register_craft({
	output = "default:coal_lump",
	recipe = {
		{"gear_up:charcoal_briquette", "gear_up:charcoal_briquette", "gear_up:charcoal_briquette"},
		{"gear_up:charcoal_briquette", "gear_up:charcoal_briquette", "gear_up:charcoal_briquette"},
		{"gear_up:charcoal_briquette", "gear_up:charcoal_briquette", "gear_up:charcoal_briquette"},
	}
})
