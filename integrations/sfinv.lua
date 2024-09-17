	sfinv.register_page("sfinv:gear_up_gear", {
		title = "Gear",
		get = function(self, player, context)
			local name = player:get_player_name()
			local inv = minetest.get_inventory({type="detached",name="accs_gear_"..name..""})
			inv:set_size("gear_ss",CountOfAccInvSlots)
			inv:set_width("gear_ss",8)
			local playerMeta = player:get_meta()
			local gear_up_gear_formspec =(
				"size[8,11]"..
				"image[0,0.0;9.75,3.3;gear_up_gear_inv_bg.png]"..
				"image[0.0,3.2;1.0,1.0;gear_up_gear_defense_icon.png]"..
				"label[0.1,3.4;"..playerMeta:get_int("gear_up_gear_defense").."]"..
				"image[1.0,3.2;1.0,1.0;gear_up_gear_offense_icon.png]"..
				"label[1.1,3.4;"..playerMeta:get_int("gear_up_gear_offense").."%".."]"..
				"image[2.0,3.2;1.0,1.0;gear_up_gear_hp_regen_icon.png]"..
				"label[2.1,3.4;"..(math.ceil(playerMeta:get_float("gear_up_gear_hp_regen")*100)/100).."]"..
				"image[3.0,3.2;1.0,1.0;gear_up_gear_hp_bonus_icon.png]"..
				"label[3.1,3.4;"..playerMeta:get_int("gear_up_gear_hp_bonus").."]"..
				"image[4.0,3.2;1.0,1.0;gear_up_gear_walk_speed_icon.png]"..
				"label[4.1,3.4;"..(math.ceil(playerMeta:get_float("gear_up_gear_walk_speed")*100)/100).."]"..
				"image[5.0,3.2;1.0,1.0;gear_up_gear_dig_speed_icon.png]"..
				"label[5.1,3.4;"..playerMeta:get_int("gear_up_gear_dig_speed").."%".."]"..
				"label[0.0,4.2;"..playerMeta:get_string("accessory_SetBonus").."]"..
				"list[detached:accs_gear_"..name..";gear_ss;0,0.0;8,3;]")
			return sfinv.make_formspec(player, context, gear_up_gear_formspec, true)
		end,
	})

	sfinv.register_page("sfinv:gear_up_color", {
		title = "Color",
		get = function(self, player, context)
			local name = player:get_player_name()
			local gear_up_color_formspec =(
				"size[8,11]"..
				"image[0,0.0;9.75,3.3;gear_up_color_inv_bg.png]"..
				"label[0.0,4.2;".."Equip Magic Dye Jars to change color of equipped Gear".."]"..
				"list[detached:accs_color_"..name..";color_ss;0,0.0;8,3;]")
			return sfinv.make_formspec(player, context, gear_up_color_formspec, true)
		end,
	})
