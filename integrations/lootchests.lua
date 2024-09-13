local common_items = {
	{"gear_up:padded_armor"},
	{"gear_up:copper_boots"},
	{"gear_up:wooden_helmet"},
	{"gear_up:cactus_leggings"},
	{"gear_up:dyejar_brown"},
}

local uncommon_items = {
	{"gear_up:wooden_shield"},
	{"gear_up:tin_leggings"},
	{"gear_up:bronze_scalemail"},
	{"gear_up:tin_helmet"},
	{"gear_up:dyejar_lightblue"},
}

local rare_items = {
	{"gear_up:golden_boots"},
	{"gear_up:skull_shield"},
	{"gear_up:dungeon_helmet"},
	{"gear_up:dungeon_platemail"},
	{"gear_up:dungeon_leggings"},
	{"gear_up:dyejar_rgb"},
}

lootchests.add_to_loot_table("lootchests_default:basket", common_items)
lootchests.add_to_loot_table("lootchests_default:urn", common_items)
lootchests.add_to_loot_table("lootchests_default:ocean_chest", uncommon_items)
lootchests.add_to_loot_table("lootchests_default:stone_chest", rare_items)
