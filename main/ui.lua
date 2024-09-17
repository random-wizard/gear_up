--old way of making ui screens
--sfinv is an easier interface

--used by
--minetest.register_on_player_receive_fields
function display_gear_up_gear_screen(player)
	local name = player:get_player_name()
	local playerMeta = player:get_meta()
	local gear_up_gear_form =(
	"size[8,11]"..
	"list[current_player;main;0,6.5;8,4;]"..
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
	"list[detached:accs_"..name..";accs;0,0.0;8,3;]"..
	"button_exit[4,10.5;2,1;exit;Done]")
	minetest.show_formspec(name,"gear_up:gear_up_gear_form", gear_up_gear_form)
end

--used by
--minetest.register_on_player_receive_fields
function display_gear_up_color_screen(player)
	local name = player:get_player_name()
	local playerMeta = player:get_meta()
	local gear_up_color_form =(
	"size[8,11]"..
	"list[current_player;main;0,6.5;8,4;]"..
	"image[0,0.0;9.75,3.3;gear_up_color_inv_bg.png]"..
	"label[0.0,4.2;".."Equip Magic Dye Jars to change color of equipped Gear".."]"..
	"list[detached:accs_color_"..name..";color_ss;0,0.0;8,3;]"..
	"button_exit[4,10.5;2,1;exit;Done]")
	minetest.show_formspec(name,"gear_up:gear_up_color_form", gear_up_color_form)
end

--used by
--minetest.register_chatcommand
function display_gear_up_select_screen(player)
	local name = player:get_player_name()
	local playerMeta = player:get_meta()
	local AccSelectUI =(
		"size[6,9]"..
		"label[2.0,1.0;Bling Bling]"..
		"button[1,3.0;4,1;gear_up_gear;Gear]"..
		"button[1,5.0;4,1;gear_up_color;Color]"..
		"button_exit[1,7.5;4,1;exit;Done]")
	minetest.show_formspec(name,"gear_up:AccSelectUI", AccSelectUI)
end
