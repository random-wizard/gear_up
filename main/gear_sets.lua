gear_up_gear_sets = {
	{"copper_set",
		{"gear_up:copper_helmet",
			"gear_up:copper_chainmail",
			"gear_up:copper_leggings"},
		{{"IntStat","gear_up_gear_defense",2}},
		"2 Defense"},
	{"tin_set",
		{"gear_up:tin_helmet",
			"gear_up:tin_platemail",
			"gear_up:tin_leggings"},
		{{"IntStat","gear_up_gear_defense",2}},
		"2 Defense"},
	{"bronze_set",
		{"gear_up:bronze_helmet",
			"gear_up:bronze_scalemail",
			"gear_up:bronze_leggings"},
		{{"IntStat","gear_up_gear_defense",3}},
		"3 Defense"},
	{"steel_set",
		{"gear_up:steel_helmet",
			"gear_up:steel_scalemail",
			"gear_up:steel_leggings"},
		{{"IntStat","gear_up_gear_defense",3}},
		"3 Defense"},
	{"silver_set",
		{"gear_up:silver_helmet",
			"gear_up:silver_platemail",
			"gear_up:silver_leggings"},
		{{"IntStat","gear_up_gear_defense",4}},
		"4 Defense"},
	{"golden_set",
		{"gear_up:golden_helmet",
			"gear_up:golden_platemail",
			"gear_up:golden_leggings"},
		{{"IntStat","gear_up_gear_defense",5}},
		"5 Defense"},
	{"mithril_set",
		{"gear_up:mithril_helmet",
			"gear_up:mithril_platemail",
			"gear_up:mithril_leggings"},
		{{"IntStat","gear_up_gear_defense",6},
		{"IntStat","gear_up_gear_offense",14}},
		"6 Defense & +14% Attack damage"},
	{"jojo_set",
		{"gear_up:menacing_student_hat",
			"gear_up:menacing_student_jacket",
			"gear_up:menacing_student_pants"},
		{{"IntStat","gear_up_gear_offense",17},
		{"FloatStat","gear_up_gear_walk_speed",0.30},
		{"FloatStat","accessory_jumpHeight",0.40}},
		"+17% Attack damage, 30% Walking speed \n and 40% Jump force"},
	{"miner_set",
		{"gear_up:mining_helmet",
			"gear_up:overalls",
			"gear_up:mining_gloves"},
		{{"IntStat","gear_up_gear_dig_speed",30}},
		"+30% Digging Speed"},
	{"cactus_set",
		{"gear_up:cactus_helmet",
			"gear_up:cactus_armor",
			"gear_up:cactus_leggings"},
		{{"IntStat","gear_up_gear_offense",3},
		{"IntStat","accessory_thorns",30}},
		"+3% Attack Damage \n attacker takes back 30% of their attack's original damage"},
	{"molten_set",
		{"gear_up:molten_helmet",
			"gear_up:molten_armor",
			"gear_up:molten_leggings"},
		{{"FloatStat","gear_up_gear_walk_speed",0.40},
		{"IntStat","accessory_fireRes",8}},
		"+40% Walking Speed \n 8 second immunity to fire blocks, such as lava"},
	{"wooden_set",
		{"gear_up:wooden_helmet",
			"gear_up:wooden_armor",
			"gear_up:wooden_leggings"},
		{{"IntStat","gear_up_gear_defense",1}},
		"1 Defense"},
	{"dungeon_set",
		{"gear_up:dungeon_helmet",
			"gear_up:dungeon_platemail",
			"gear_up:dungeon_leggings"},
		{{"IntStat","gear_up_gear_hp_bonus",2},
		{"IntStat","gear_up_gear_offense",20}},
		"+2 Max HP & 20% Attack damage"},
}

function add_accessory_set(set_name,set_parts,set_bonuses,set_bonus_text)
	table.insert(gear_up_gear_sets, {set_name,set_parts,set_bonuses,set_bonus_text})
end
