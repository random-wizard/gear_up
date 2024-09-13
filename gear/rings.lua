-- diamond ring
minetest.register_tool("gear_up:diamond_ring", {
	description = ("Diamond Ring \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","3 Defense")..
		""),
	inventory_image = "diamond_ring.png",
	acc_defense = 3,
	acc_slot = "both_ring_acc",
})

minetest.register_craft({
	output = "gear_up:diamond_ring 1",
	recipe = {
		{"", "default:gold_ingot", "default:diamond"},
		{"default:gold_ingot", "", "default:gold_ingot"},
		{"", "default:gold_ingot", ""},
	}
})

-- drill ring
minetest.register_tool("gear_up:drill_ring", {
	description = ("Diamond Drill Ring \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","+25% Digging Speed")..
		""),
	inventory_image = "drill_ring.png",
	acc_digSpeed = 25,
	acc_slot = "both_ring_acc",
})

minetest.register_craft({
	output = "gear_up:drill_ring 1",
	recipe = {
		{"", "default:steelblock", "default:diamondblock"},
		{"default:gold_ingot", "", "default:steelblock"},
		{"", "default:gold_ingot", ""},
	}
})

-- silver ring
minetest.register_tool("gear_up:silver_ring", {
	description = ("Silver Ring \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","+0.05 HP regeneration")..
		""),
	inventory_image = "silver_ring.png",
	acc_hpRegen = 0.05,
	acc_slot = "both_ring_acc",
})

minetest.register_craft({
	output = "gear_up:silver_ring 1",
	recipe = {
		{"", "moreores:silver_ingot", ""},
		{"moreores:silver_ingot", "", "moreores:silver_ingot"},
		{"", "moreores:silver_ingot", ""},
	}
})

-- ring of power
minetest.register_tool("gear_up:ring_of_power", {
	description = ("Ring Of Power \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","+17% Digging Speed \n")..
		""..
		core.colorize("#aaaaaa","2 Defense \n")..
		""..
		core.colorize("#aaaaaa","+6% Attack Damage \n")..
		""..
		core.colorize("#aaaaaa","+15% Walking speed \n")..
		""..
		core.colorize("#aaaaaa","+3 Max HP")..
		""),
	inventory_image = "ring_of_power.png",
	acc_digSpeed = 17,
	acc_defense = 2,
	acc_offense = 6,
	acc_hpBonus = 3,
	acc_walkSpeed = 0.15,
	acc_slot = "both_ring_acc",
})

minetest.register_craft({
	output = "gear_up:ring_of_power 1",
	recipe = {
		{"", "default:diamondblock", "default:mese"},
		{"default:copper_ingot", "default:steelblock", "default:diamondblock"},
		{"default:copper_ingot", "default:copper_ingot", ""},
	}
})

-- spikey ring
minetest.register_tool("gear_up:spikey_ring", {
	description = ("Spikey Ring \n"..
		core.colorize("#aaaaaa","Equipable \n")..
		""..
		core.colorize("#aaaaaa","+7% Attack Damage \n")..
		""..
		core.colorize("#aaaaaa","+10% damage return")..
		""),
	inventory_image = "spikey_ring.png",
	acc_offense = 7,
	acc_thorns = 10,
	acc_slot = "both_ring_acc",
})

minetest.register_craft({
	output = "gear_up:spikey_ring 1",
	recipe = {
		{"default:mese_crystal_fragment", "default:steel_ingot", "default:mese_crystal_fragment"},
		{"default:steel_ingot", "", "default:steel_ingot"},
		{"default:mese_crystal_fragment", "default:steel_ingot", "default:mese_crystal_fragment"},
	}
})
