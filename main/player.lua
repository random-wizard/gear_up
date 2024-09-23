player_acc_visuals = {}
player_accessory_slots = {
	"helmet_acc",
	"eye_acc",
	"l_hand_acc",
	"wing_acc",
	"l_ring_acc",
	"headtop_acc",
	"ear_acc",
	"wip1_acc",
	"armor_acc",
	"gloves_acc",
	"shield_acc",
	"amulet_acc",
	"topshirt_acc",
	"mask_acc",
	"forehead_acc",
	"wip2_acc",
	"pants_acc",
	"boots_acc",
	"r_hand_acc",
	"neck_acc",
	"r_ring_acc",
	"mouth_acc",
	"wip3_acc",
	"wip4_acc",
}
AccessoryCustomStats = {}
CountOfAccInvSlots = 24

hud_fireres_bg_ids = {}
hud_fireres_fg_ids = {}

--start register on_joinplayer--
minetest.register_on_joinplayer(function(player)
	local player_name = player:get_player_name()

	hud_fireres_bg_ids[player_name] =
		player:hud_add({
			hud_elem_type = "statbar",
			name = "acc_fireres_bg",
			text = "gear_up_statbar_fireres_bg.png",
			number = 0,
			scale = {x = 0, y = 0},
			position = {x = 0.4, y = 0.6},
			offset = {x = 0, y = 0},
			alignment = {x = 0, y = -1}
		})

	hud_fireres_fg_ids[player_name] =
		player:hud_add({
			hud_elem_type = "statbar",
			name = "acc_fireres_fg",
			text = "gear_up_statbar_fireres.png",
			number = 0,
			scale = {x = 0, y = 0},
			position = {x = 0.4, y = 0.6},
			offset = {x = 0, y = 0},
			alignment = {x = 0, y = -1}
		})

	local name = player:get_player_name()
	local playerMeta = player:get_meta()

	if playerMeta:get_string("accessory_gear_inv") == "" then
		local temp_empty_accs_table = {}
		for i=1,CountOfAccInvSlots do
			temp_empty_accs_table[i] = ""
		end
		playerMeta:set_string("accessory_gear_inv",(minetest.serialize(temp_empty_accs_table)))
	end

	if playerMeta:get_string("accessory_color_inv") == "" then
		local temp_empty_dyeaccs_table = {}
		for i=1,CountOfAccInvSlots do
			temp_empty_dyeaccs_table[i] = ""
		end
		playerMeta:set_string("accessory_color_inv",(minetest.serialize(temp_empty_dyeaccs_table)))
	end

	local accessory_gear_content = minetest.deserialize(playerMeta:get_string("accessory_gear_inv"))
	local accessory_color_content = minetest.deserialize(playerMeta:get_string("accessory_color_inv"))

	--gear_up_gear
	--"accs_gear_"..name..""
	--"gear_ss"
	--start create_detached_inventory accs_gear_--
	minetest.create_detached_inventory("accs_gear_"..name.."",{
		allow_move = function(inv_gear,from_list,from_index,to_list,to_index,count,player)
			return 0
		end,
		allow_put = function(inv_gear,listname,index,stack,player)
			if stack:get_definition().acc_slot ~= nil then
				if stack:get_definition().acc_slot == player_accessory_slots[index] and (inv_gear:get_stack("gear_ss",index):get_name() ~= stack:get_name()) then
					return 1
				else
					if stack:get_definition().acc_slot == "both_hand_acc" and (player_accessory_slots[index] == "l_hand_acc" or player_accessory_slots[index] == "r_hand_acc") then
						return 1
					else
						if stack:get_definition().acc_slot == "both_ring_acc" and (player_accessory_slots[index] == "l_ring_acc" or player_accessory_slots[index] == "r_ring_acc") then
							return 1
						else
							return 0
						end
					end
				end
			else
				return 0
			end
		end,
		on_put = function(inv_gear,listname,index,stack,player)
			local current_slot = player_accessory_slots[index]
			update_player_acc_visuals(player,stack,1,current_slot,index)
			local ser_acc_table = {}
			for serAcc,accStack in ipairs(inv_gear:get_list("gear_ss")) do
				table.insert(ser_acc_table, accStack:to_string())
			end
			playerMeta:set_string("accessory_gear_inv",(minetest.serialize(ser_acc_table)))
			update_accessory_stats(player)
			if minetest.get_modpath("sfinv") then
				--by setting the form page the form page gets redrawn
				sfinv.set_page(player, "sfinv:gear_up_gear")
			end
			--display_gear_up_gear_screen(player)
		end,
		on_take = function(inv_gear,listname,index,stack,player)
			local current_slot = player_accessory_slots[index]
			update_player_acc_visuals(player,stack,0,current_slot,index)
			local ser_acc_table = {}
			for serAcc,accStack in ipairs(inv_gear:get_list("gear_ss")) do
				table.insert(ser_acc_table, accStack:to_string())
			end
			playerMeta:set_string("accessory_gear_inv",(minetest.serialize(ser_acc_table)))
			update_accessory_stats(player)
			if minetest.get_modpath("sfinv") then
				--by setting the form page the form page gets redrawn
				sfinv.set_page(player, "sfinv:gear_up_gear")
			end
			--display_gear_up_gear_screen(player)
		end,
	})
	--stop create_detached_inventory accs--

	--gear_up_color
	--"accs_color_"..name..""
	--"color_ss"
	--start create_detached_inventory accs_color_--
	minetest.create_detached_inventory("accs_color_"..name.."",{
		allow_move = function(inv,from_list,from_index,to_list,to_index,count,player)
			return 1
		end,
		on_move = function(inv_color, from_list, from_index, to_list, to_index, count, player)
			--search for the gear slot that matches the color slot and change gear color
			local from_slot = player_accessory_slots[from_index]
			local from_inv = minetest.get_inventory({type="detached", name="accs_gear_"..name..""})
			local from_stack = from_inv:get_stack("gear_ss", from_index)
			if from_stack:get_definition().acc_slot ~= nil then
				update_player_acc_visuals(player, from_stack, 1, from_slot, from_index)
			end
			local to_slot = player_accessory_slots[to_index]
			local to_inv = minetest.get_inventory({type="detached", name="accs_gear_"..name..""})
			local to_stack = to_inv:get_stack("gear_ss", to_index)
			if to_stack:get_definition().acc_slot ~= nil then
				update_player_acc_visuals(player, to_stack, 1, to_slot, to_index)
			end
		end,
		allow_put = function(inv_color,listname,index,stack,player)
			if stack:get_definition().accessory_dye ~= nil then
				return 1
			else
				return 0
			end
		end,
		on_put = function(inv_color,listname,index,stack,player)
			--search for the gear slot that matches the color slot and change gear color
			local current_slot = player_accessory_slots[index]
			update_player_acc_visuals(player,stack,1,current_slot,index)
			local a_inv = minetest.get_inventory({type="detached",name="accs_gear_"..name..""})
			local current_acc_stack = a_inv:get_stack("gear_ss",index)
			if current_acc_stack:get_definition().acc_slot ~= nil then
				update_player_acc_visuals(player,current_acc_stack,1,current_slot,index)
			end
			local ser_acc_table = {}
			for serAcc,accStack in ipairs(inv_color:get_list("color_ss")) do
				table.insert(ser_acc_table, accStack:to_string())
			end
			playerMeta:set_string("accessory_color_inv",(minetest.serialize(ser_acc_table)))
		end,
		on_take = function(inv_color,listname,index,stack,player)
			--search for the gear slot that matches the color slot and change gear color
			local current_slot = player_accessory_slots[index]
			local a_inv = minetest.get_inventory({type="detached",name="accs_gear_"..name..""})
			local current_acc_stack = a_inv:get_stack("gear_ss",index)
			if current_acc_stack:get_definition().acc_slot ~= nil then
				update_player_acc_visuals(player,current_acc_stack,1,current_slot,index)
			end
			local ser_acc_table = {}
			for serAcc,accStack in ipairs(inv_color:get_list("color_ss")) do
				table.insert(ser_acc_table, accStack:to_string())
			end
			playerMeta:set_string("accessory_color_inv",(minetest.serialize(ser_acc_table)))
		end,
	})
	--stop create_detached_inventory color_ss--

	if accessory_gear_content ~= nil then
		local accList = minetest.deserialize(playerMeta:get_string("accessory_gear_inv"))
		local accItemList = {}
		for serAcc,accStack in ipairs(accList) do
			table.insert(accItemList, ItemStack(accStack))
		end
		local inv_gear = minetest.get_inventory({type="detached",name="accs_gear_"..name..""})
		inv_gear:set_list("gear_ss",accItemList)
	end

	if accessory_color_content ~= nil then
		local accList = minetest.deserialize(playerMeta:get_string("accessory_color_inv"))
		local accItemList = {}
		for serAcc,accStack in ipairs(accList) do
			table.insert(accItemList, ItemStack(accStack))
		end
		local inv_color = minetest.get_inventory({type="detached",name="accs_color_"..name..""})
		inv_color:set_list("color_ss",accItemList)
	end

	minetest.after(0.5, function(player)
	player_acc_visuals[name] = {head={},body={},l_arm={},r_arm={},l_leg={},r_leg={}}
	local inv_gear = minetest.get_inventory({type="detached",name="accs_gear_"..name..""})
	for i = 1,CountOfAccInvSlots do
		local current_acc_stack = inv_gear:get_stack("gear_ss",i)
		if current_acc_stack:get_definition().acc_slot ~= nil then
			local accessorySlot = player_accessory_slots[i]
			update_player_acc_visuals(player,current_acc_stack,1,accessorySlot,i)
		end
	end

	update_accessory_stats(player)
	end, player)

end)
--stop register on_joinplayer--

minetest.register_on_leaveplayer(function(player)
	local name = player:get_player_name()
	player_acc_visuals[name] = nil
end)

minetest.register_on_player_receive_fields(function(player, formname, fields)
	if fields["gear_up_gear"] then
		local name = player:get_player_name()
		local inv_gear = minetest.get_inventory({type="detached",name="accs_gear_"..name..""})
		inv_gear:set_size("gear_ss",CountOfAccInvSlots)
		inv_gear:set_width("gear_ss",8)
		display_gear_up_gear_screen(player)
	end
	if fields["gear_up_color"] then
		local name = player:get_player_name()
		local inv_color = minetest.get_inventory({type="detached",name="accs_color_"..name..""})
		inv_color:set_size("gear_ss",CountOfAccInvSlots)
		inv_color:set_width("gear_ss",8)
		display_gear_up_color_screen(player)
	end
 end)

local acc_display_ent = {
	physical = false,
	timer = 0,
	hp_max = 69420,
	visual = "mesh",
	mesh = "character.b3d",
	visual_size = {x=0.5, y=0.5},
	textures = {"default_dirt.png"},
	lastpos = {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}

minetest.register_entity("gear_up:acc_display_ent",acc_display_ent)

acc_display_ent.on_activate = function(self, staticdata)
end

acc_display_ent.on_step = function(self, dtime)
	if self.object:get_attach() == nil then
		self.object:remove()
	end
end

--used by various hooks to update visuals
--minetest.register_on_joinplayer
--minetest.create_detached_inventory
--minetest.register_globalstep
function update_player_acc_visuals(player,accessory,addtype,accessorySlot,index)
	local name = player:get_player_name()
	local pos = player:getpos()

	--start addtype 1--
	if addtype == 1 then
		local itemname = accessory:get_name()
		if minetest.get_item_group(itemname, "head_accessory") > 0 then
			local headModel = accessory:get_definition().acc_model_head or ("simple_helmet_cuboid.b3d")
			local headTexture = accessory:get_definition().acc_texture_head or ("simple_test_helmet.png")
			local headPos = accessory:get_definition().acc_pos_head or {x=0,y=2.0,z=0}
			local headAnim = accessory:get_definition().acc_anim_head or {x=0,y=0}
			local headSize = accessory:get_definition().acc_size_head or {x=2.5,y=2.5}
			local headGlow = accessory:get_definition().acc_glow_head or 0
			if player_acc_visuals[name].head[accessorySlot] ~= nil then
				player_acc_visuals[name].head[accessorySlot]:remove()
			end
			player_acc_visuals[name].head[accessorySlot] = minetest.add_entity(pos, "gear_up:acc_display_ent")
			player_acc_visuals[name].head[accessorySlot]:set_attach(player,"Head",headPos,{x=0,y=180,z=0} )
			player_acc_visuals[name].head[accessorySlot]:set_animation(headAnim,24,0)
			local dyeStuff = ""
			local inv_color = minetest.get_inventory({type="detached",name="accs_color_"..name..""})
			local current_dye_stack = inv_color:get_stack("color_ss",index)
			if current_dye_stack:get_definition().accessory_dye ~= nil then
				dyeStuff = current_dye_stack:get_definition().accessory_dye
			end
			player_acc_visuals[name].head[accessorySlot]:set_properties({textures={""..headTexture..""..dyeStuff}})
			player_acc_visuals[name].head[accessorySlot]:set_properties({mesh=""..headModel..""})
			player_acc_visuals[name].head[accessorySlot]:set_properties({visual_size=headSize})
			player_acc_visuals[name].head[accessorySlot]:set_properties({glow=headGlow})
		end

		if minetest.get_item_group(itemname, "body_accessory") > 0 then
			local bodyModel = accessory:get_definition().acc_model_body or ("simple_body.b3d")
			local bodyTexture = accessory:get_definition().acc_texture_body or ("simple_test_body.png")
			local bodyPos = accessory:get_definition().acc_pos_body or {x=0,y=3.25,z=0}
			local bodyAnim = accessory:get_definition().acc_anim_body or {x=0,y=0}
			local bodySize = accessory:get_definition().acc_size_body or {x=2.5,y=2.5}
			local bodyGlow = accessory:get_definition().acc_glow_body or 0
			if player_acc_visuals[name].body[accessorySlot] ~= nil then
				player_acc_visuals[name].body[accessorySlot]:remove()
			end
			player_acc_visuals[name].body[accessorySlot] = minetest.add_entity(pos, "gear_up:acc_display_ent")
			player_acc_visuals[name].body[accessorySlot]:set_attach(player,"Body",bodyPos,{x=0,y=180,z=0} )
			player_acc_visuals[name].body[accessorySlot]:set_animation(bodyAnim,24,0)
			local dyeStuff = ""
			local inv_color = minetest.get_inventory({type="detached",name="accs_color_"..name..""})
			local current_dye_stack = inv_color:get_stack("color_ss",index)
			if current_dye_stack:get_definition().accessory_dye ~= nil then
				dyeStuff = current_dye_stack:get_definition().accessory_dye
			end
			player_acc_visuals[name].body[accessorySlot]:set_properties({textures={""..bodyTexture..""..dyeStuff}})
			player_acc_visuals[name].body[accessorySlot]:set_properties({mesh=""..bodyModel..""})
			player_acc_visuals[name].body[accessorySlot]:set_properties({visual_size=bodySize})
			player_acc_visuals[name].body[accessorySlot]:set_properties({glow=bodyGlow})
		end

		if minetest.get_item_group(itemname, "l_arm_accessory") > 0 and accessorySlot ~= "r_hand_acc" and accessorySlot ~= "r_ring_acc" then
			local l_armModel = accessory:get_definition().acc_model_l_arm or
			("simple_hand.b3d")
			local l_armTexture = accessory:get_definition().acc_texture_l_arm or ("simple_test_hand.png")
			local l_armPos = accessory:get_definition().acc_pos_l_arm or {x=0,y=2.0,z=0}
			local l_armAnim = accessory:get_definition().acc_anim_l_arm or {x=0,y=0}
			local l_armSize = accessory:get_definition().acc_size_l_arm or {x=2.4,y=2.4}
			local l_armGlow = accessory:get_definition().acc_glow_l_arm or 0
			if player_acc_visuals[name].l_arm[accessorySlot] ~= nil then
				player_acc_visuals[name].l_arm[accessorySlot]:remove()
			end
			player_acc_visuals[name].l_arm[accessorySlot] = minetest.add_entity(pos, "gear_up:acc_display_ent")
			player_acc_visuals[name].l_arm[accessorySlot]:set_attach(player,"Arm_Left",l_armPos,{x=0,y=180,z=180} )
			player_acc_visuals[name].l_arm[accessorySlot]:set_animation(l_armAnim,24,0)
			local dyeStuff = ""
			local inv_color = minetest.get_inventory({type="detached",name="accs_color_"..name..""})
			local current_dye_stack = inv_color:get_stack("color_ss",index)
			if current_dye_stack:get_definition().accessory_dye ~= nil then
				dyeStuff = current_dye_stack:get_definition().accessory_dye
			end
			player_acc_visuals[name].l_arm[accessorySlot]:set_properties({textures={""..l_armTexture..""..dyeStuff}})
			player_acc_visuals[name].l_arm[accessorySlot]:set_properties({mesh=""..l_armModel..""})
			player_acc_visuals[name].l_arm[accessorySlot]:set_properties({visual_size=l_armSize})
			player_acc_visuals[name].l_arm[accessorySlot]:set_properties({glow=l_armGlow})
		end

		if minetest.get_item_group(itemname, "r_arm_accessory") > 0 and accessorySlot ~= "l_hand_acc" and accessorySlot ~= "l_ring_acc" then
			local r_armModel = accessory:get_definition().acc_model_r_arm or
			("simple_hand.b3d")
			local r_armTexture = accessory:get_definition().acc_texture_r_arm or ("simple_test_hand.png")
			local r_armPos = accessory:get_definition().acc_pos_r_arm or {x=0,y=2.0,z=0}
			local r_armAnim = accessory:get_definition().acc_anim_r_arm or {x=0,y=0}
			local r_armSize = accessory:get_definition().acc_size_r_arm or {x=2.4,y=2.4}
			local r_armGlow = accessory:get_definition().acc_glow_r_arm or 0
			if player_acc_visuals[name].r_arm[accessorySlot] ~= nil then
				player_acc_visuals[name].r_arm[accessorySlot]:remove()
			end
			player_acc_visuals[name].r_arm[accessorySlot] = minetest.add_entity(pos, "gear_up:acc_display_ent")
			player_acc_visuals[name].r_arm[accessorySlot]:set_attach(player,"Arm_Right",r_armPos,{x=0,y=180,z=180} )
			player_acc_visuals[name].r_arm[accessorySlot]:set_animation(r_armAnim,24,0)
			local dyeStuff = ""
			local inv_color = minetest.get_inventory({type="detached",name="accs_color_"..name..""})
			local current_dye_stack = inv_color:get_stack("color_ss",index)
			if current_dye_stack:get_definition().accessory_dye ~= nil then
				dyeStuff = current_dye_stack:get_definition().accessory_dye
			end
			player_acc_visuals[name].r_arm[accessorySlot]:set_properties({textures={""..r_armTexture..""..dyeStuff}})
			player_acc_visuals[name].r_arm[accessorySlot]:set_properties({mesh=""..r_armModel..""})
			player_acc_visuals[name].r_arm[accessorySlot]:set_properties({visual_size=r_armSize})
			player_acc_visuals[name].r_arm[accessorySlot]:set_properties({glow=r_armGlow})
		end

		if minetest.get_item_group(itemname, "l_leg_accessory") > 0 then
			local l_legModel = accessory:get_definition().acc_model_l_leg or
			("simple_hand.b3d")
			local l_legTexture = accessory:get_definition().acc_texture_l_leg or ("simple_test_hand.png")
			local l_legPos = accessory:get_definition().acc_pos_l_leg or {x=0,y=2.75,z=0}
			local l_legAnim = accessory:get_definition().acc_anim_l_leg or {x=0,y=0}
			local l_legSize = accessory:get_definition().acc_size_l_leg or {x=2.4,y=2.4}
			local l_legGlow = accessory:get_definition().acc_glow_l_leg or 0
			if player_acc_visuals[name].l_leg[accessorySlot] ~= nil then
				player_acc_visuals[name].l_leg[accessorySlot]:remove()
			end
			player_acc_visuals[name].l_leg[accessorySlot] = minetest.add_entity(pos, "gear_up:acc_display_ent")
			player_acc_visuals[name].l_leg[accessorySlot]:set_attach(player,"Leg_Left",l_legPos,{x=0,y=0,z=180} )
			player_acc_visuals[name].l_leg[accessorySlot]:set_animation(l_legAnim,24,0)
			local dyeStuff = ""
			local inv_color = minetest.get_inventory({type="detached",name="accs_color_"..name..""})
			local current_dye_stack = inv_color:get_stack("color_ss",index)
			if current_dye_stack:get_definition().accessory_dye ~= nil then
				dyeStuff = current_dye_stack:get_definition().accessory_dye
			end
			player_acc_visuals[name].l_leg[accessorySlot]:set_properties({textures={""..l_legTexture..""..dyeStuff}})
			player_acc_visuals[name].l_leg[accessorySlot]:set_properties({mesh=""..l_legModel..""})
			player_acc_visuals[name].l_leg[accessorySlot]:set_properties({visual_size=l_legSize})
			player_acc_visuals[name].l_leg[accessorySlot]:set_properties({glow=l_legGlow})
		end

		if minetest.get_item_group(itemname, "r_leg_accessory") > 0 then
			local r_legModel = accessory:get_definition().acc_model_r_leg or
			("simple_hand.b3d")
			local r_legTexture = accessory:get_definition().acc_texture_r_leg or ("simple_test_hand.png")
			local r_legPos = accessory:get_definition().acc_pos_r_leg or {x=0,y=2.75,z=0}
			local r_legAnim = accessory:get_definition().acc_anim_r_leg or {x=0,y=0}
			local r_legSize = accessory:get_definition().acc_size_r_leg or {x=2.4,y=2.4}
			local r_legGlow = accessory:get_definition().acc_glow_r_leg or 0
			if player_acc_visuals[name].r_leg[accessorySlot] ~= nil then
				player_acc_visuals[name].r_leg[accessorySlot]:remove()
			end
			player_acc_visuals[name].r_leg[accessorySlot] = minetest.add_entity(pos, "gear_up:acc_display_ent")
			player_acc_visuals[name].r_leg[accessorySlot]:set_attach(player,"Leg_Right",r_legPos,{x=0,y=0,z=180} )
			player_acc_visuals[name].r_leg[accessorySlot]:set_animation(r_legAnim,24,0)
			local dyeStuff = ""
			local inv_color = minetest.get_inventory({type="detached",name="accs_color_"..name..""})
			local current_dye_stack = inv_color:get_stack("color_ss",index)
			if current_dye_stack:get_definition().accessory_dye ~= nil then
				dyeStuff = current_dye_stack:get_definition().accessory_dye
			end
			player_acc_visuals[name].r_leg[accessorySlot]:set_properties({textures={""..r_legTexture..""..dyeStuff}})
			player_acc_visuals[name].r_leg[accessorySlot]:set_properties({mesh=""..r_legModel..""})
			player_acc_visuals[name].r_leg[accessorySlot]:set_properties({visual_size=r_legSize})
			player_acc_visuals[name].r_leg[accessorySlot]:set_properties({glow=r_legGlow})
		end

	end
	--stop addtype 1--

	--start addtype 0--
	if addtype == 0 then
		if player_acc_visuals[name].head[accessorySlot] ~= nil then
			player_acc_visuals[name].head[accessorySlot]:remove()
		end
		if player_acc_visuals[name].body[accessorySlot] ~= nil then
			player_acc_visuals[name].body[accessorySlot]:remove()
		end
		if player_acc_visuals[name].l_arm[accessorySlot] ~= nil then
			player_acc_visuals[name].l_arm[accessorySlot]:remove()
		end
		if player_acc_visuals[name].r_arm[accessorySlot] ~= nil then
			player_acc_visuals[name].r_arm[accessorySlot]:remove()
		end
		if player_acc_visuals[name].l_leg[accessorySlot] ~= nil then
			player_acc_visuals[name].l_leg[accessorySlot]:remove()
		end
		if player_acc_visuals[name].r_leg[accessorySlot] ~= nil then
			player_acc_visuals[name].r_leg[accessorySlot]:remove()
		end
	end
	--stop addtype 0--
end

function apply_accessory_setBonus(player)
	local name = player:get_player_name()
	local inv_gear = minetest.get_inventory({type="detached",name="accs_gear_"..name..""})
	local playerMeta = player:get_meta()
	playerMeta:set_string("accessory_SetBonus","")
	playerMeta:set_string("accessory_SetName","")

	--start for setAcc--
	for setAcc,setAccs in ipairs(gear_up_gear_sets) do
		local missingAccSetPart = 0
		for setAccPart,setAccParts in ipairs(setAccs[2]) do
			if missingAccSetPart == 0 and inv_gear:contains_item("gear_ss",setAccParts) then
				missingAccSetPart = 0
			else
				missingAccSetPart = 1
			end
		end

		--start missingAccSetPart 0--
		if missingAccSetPart == 0 then
			playerMeta:set_string("accessory_SetBonus","Set Bonus: "..setAccs[4].."")
			playerMeta:set_string("accessory_SetName",setAccs[1])

			--start for setInfo--
			for setInfo,setInfos in ipairs(setAccs[3]) do

				if setInfos[1] == "IntStat" then
					playerMeta:set_int(setInfos[2],playerMeta:get_int(setInfos[2])+setInfos[3])
				end
				if setInfos[1] == "FloatStat" then
					playerMeta:set_float(setInfos[2],playerMeta:get_float(setInfos[2])+setInfos[3])
				end
				if setInfos[1] == "CustomIntStat" then
					if AccessoryCustomStats[setInfos[2]] == nil then
						AccessoryCustomStats[setInfos[2]] = {setInfos[2],"IntStat"}
						playerMeta:set_int(setInfos[2],0)
					end
					playerMeta:set_int(setInfos[2],playerMeta:get_int(setInfos[2])+setInfos[3])
				end
				if setInfos[1] == "CustomFloatStat" then
					if AccessoryCustomStats[setInfos[2]] == nil then
						AccessoryCustomStats[setInfos[2]] = {setInfos[2],"FloatStat"}
						playerMeta:set_float(setInfos[2],0)
					end
					playerMeta:set_float(setInfos[2],playerMeta:get_float(setInfos[2])+setInfos[3])
				end

			end
			--stop for SetInfo--
		end
		--stop missingAccSetPart 0--
	end
	--stop for setAcc--
end


function update_accessory_stats(player)
	local acc_defense = 0
	local acc_offense = 0
	local acc_hpRegen = 0
	local acc_hpBonus = 0
	local acc_flight_time = 0
	local acc_flight_force = 0
	local acc_walkSpeed = 0
	local acc_jumpHeight = 0
	local acc_gravPull = 0
	local acc_digSpeed = 0
	local acc_thorns = 0
	local acc_dodgeChance = 0
	local acc_fireRes = 0
	local TempAccCustStats = {}
	local name = player:get_player_name()
	local inv_gear = minetest.get_inventory({type="detached",name="accs_gear_"..name..""})
	--start for CountOfAccInvSlots--
	for i = 1,CountOfAccInvSlots do
		local current_acc_check = inv_gear:get_stack("gear_ss",i)
		local acc_Meta = current_acc_check:get_meta()
		--start CustomStat--
		if current_acc_check:get_definition().acc_CustomStats ~= nil then
			for TmpCStat,TmpCStats in ipairs(current_acc_check:get_definition().acc_CustomStats) do
				if TmpCStats[1] == "IntStat" then
					if AccessoryCustomStats[TmpCStats[2]] == nil then
						AccessoryCustomStats[TmpCStats[2]] = {TmpCStats[2],"IntStat"}
					end
					if TempAccCustStats[TmpCStats[2]] == nil then
						TempAccCustStats[TmpCStats[2]] = {TmpCStats[2],0,"IntStat"}
					end
					TempAccCustStats[TmpCStats[2]][2] = TempAccCustStats[TmpCStats[2]][2] + TmpCStats[3]
				end
				if TmpCStats[1] == "FloatStat" then
					if AccessoryCustomStats[TmpCStats[2]] == nil then
						AccessoryCustomStats[TmpCStats[2]] = {TmpCStats[2],"FloatStat"}
					end
					if TempAccCustStats[TmpCStats[2]] == nil then
						TempAccCustStats[TmpCStats[2]] = {TmpCStats[2],0,"FloatStat"}
					end
					TempAccCustStats[TmpCStats[2]][2] = TempAccCustStats[TmpCStats[2]][2] + TmpCStats[3]
				end
			end
		end
		--stop CustomStat--

		if current_acc_check:get_definition().acc_defense ~= nil then
			acc_defense = acc_defense + current_acc_check:get_definition().acc_defense
		end

		if current_acc_check:get_definition().acc_offense ~= nil then
			acc_offense = acc_offense + current_acc_check:get_definition().acc_offense
		end

		if current_acc_check:get_definition().acc_hpRegen ~= nil then
			acc_hpRegen = acc_hpRegen + current_acc_check:get_definition().acc_hpRegen
		end

		if current_acc_check:get_definition().acc_hpBonus ~= nil then
			acc_hpBonus = acc_hpBonus + current_acc_check:get_definition().acc_hpBonus
		end

		if current_acc_check:get_definition().acc_flight_time ~= nil then
			acc_flight_time = acc_flight_time + current_acc_check:get_definition().acc_flight_time
		end

		if current_acc_check:get_definition().acc_flight_force ~= nil then
			acc_flight_force = acc_flight_force + current_acc_check:get_definition().acc_flight_force
		end

		if current_acc_check:get_definition().acc_walkSpeed ~= nil then
			acc_walkSpeed = acc_walkSpeed + current_acc_check:get_definition().acc_walkSpeed
		end

		if current_acc_check:get_definition().acc_jumpHeight ~= nil then
			acc_jumpHeight = acc_jumpHeight + current_acc_check:get_definition().acc_jumpHeight
		end

		if current_acc_check:get_definition().acc_gravPull ~= nil then
			acc_gravPull = acc_gravPull + current_acc_check:get_definition().acc_gravPull
		end

		if current_acc_check:get_definition().acc_digSpeed ~= nil then
			acc_digSpeed = acc_digSpeed + current_acc_check:get_definition().acc_digSpeed
		end

		if current_acc_check:get_definition().acc_thorns ~= nil then
			acc_thorns = acc_thorns + current_acc_check:get_definition().acc_thorns
		end

		if current_acc_check:get_definition().acc_dodgeChance ~= nil then
			acc_dodgeChance = acc_dodgeChance + current_acc_check:get_definition().acc_dodgeChance
		end

		if current_acc_check:get_definition().acc_fireRes ~= nil then
			acc_fireRes = acc_fireRes + current_acc_check:get_definition().acc_fireRes
		end

		acc_defense = acc_defense + acc_Meta:get_int("acc_meta_defense")
		acc_offense = acc_offense + acc_Meta:get_int("acc_meta_offense")
		acc_hpRegen = acc_hpRegen + acc_Meta:get_float("acc_meta_hpRegen")
		acc_hpBonus = acc_hpBonus + acc_Meta:get_int("acc_meta_hpBonus")
		acc_flight_time = acc_flight_time + acc_Meta:get_float("acc_meta_flight_time")
		acc_flight_force = acc_flight_force + acc_Meta:get_float("acc_meta_flight_force")
		acc_walkSpeed = acc_walkSpeed + acc_Meta:get_float("acc_meta_walkSpeed")
		acc_jumpHeight = acc_jumpHeight + acc_Meta:get_float("acc_meta_jumpHeight")
		acc_gravPull = acc_gravPull + acc_Meta:get_float("acc_meta_gravPull")
		acc_digSpeed = acc_digSpeed + acc_Meta:get_int("acc_meta_digSpeed")
		acc_thorns = acc_thorns + acc_Meta:get_int("acc_meta_thorns")
		acc_dodgeChance = acc_dodgeChance + acc_Meta:get_int("acc_meta_dodgeChance")
		acc_fireRes = acc_fireRes + acc_Meta:get_int("acc_meta_fireRes")

	end
	--stop for CountOfAccInvSlots--

	local playerMeta = player:get_meta()
	for resetAccStat,resetAccStats in pairs(AccessoryCustomStats) do
		if resetAccStats[2] == "IntStat" then
			playerMeta:set_int(resetAccStats[1],0)
		end
		if resetAccStats[2] == "FloatStat" then
			playerMeta:set_float(resetAccStats[1],0)
		end
	end

	for setPlrAccStat,setPlrAccStats in pairs(TempAccCustStats) do
		if setPlrAccStats[3] == "IntStat" then
			playerMeta:set_int(setPlrAccStats[1],setPlrAccStats[2])
		end
		if setPlrAccStats[3] == "FloatStat" then
			playerMeta:set_float(setPlrAccStats[1],setPlrAccStats[2])
		end
	end

	playerMeta:set_int("gear_up_gear_defense",acc_defense)
	playerMeta:set_int("gear_up_gear_offense",acc_offense)
	playerMeta:set_float("gear_up_gear_hp_regen",acc_hpRegen)
	playerMeta:set_int("gear_up_gear_hp_bonus",acc_hpBonus)
	playerMeta:set_float("accessory_flightTime",acc_flight_time)
	playerMeta:set_float("accessory_flightForce",acc_flight_force)
	playerMeta:set_float("gear_up_gear_walk_speed",acc_walkSpeed)
	playerMeta:set_float("accessory_jumpHeight",acc_jumpHeight)
	playerMeta:set_float("accessory_gravPull",acc_gravPull)
	playerMeta:set_int("gear_up_gear_dig_speed",acc_digSpeed)
	playerMeta:set_int("accessory_thorns",acc_thorns)
	playerMeta:set_int("accessory_dodgeChance",acc_dodgeChance)
	playerMeta:set_int("accessory_fireRes",acc_fireRes)

	apply_accessory_setBonus(player)
	player:set_properties({hp_max=20+playerMeta:get_int("gear_up_gear_hp_bonus")})
	player:set_physics_override({speed=1+playerMeta:get_float("gear_up_gear_walk_speed"),jump=1+playerMeta:get_float("accessory_jumpHeight"),gravity=1+playerMeta:get_float("accessory_gravPull")})
	--minetest.chat_send_all(playerMeta:get_int("gear_up_gear_defense"))

end


function PlayerHasAccEquipped(name,accessory)
	local inv_gear = minetest.get_inventory({type="detached",name="accs_gear_"..name..""})
	if inv_gear:contains_item("gear_ss",accessory) then
		return true
	else
		return false
	end
end

function PlayerHasAccGroupEquipped(name,accessoryGroup)
	local inv_gear = minetest.get_inventory({type="detached",name="accs_gear_"..name..""})
	local TheAccGroupIsEquipped = 0
	for i = 1,CountOfAccInvSlots do
		local current_acc_stack = inv_gear:get_stack("gear_ss",i)
		if minetest.get_item_group(current_acc_stack:get_name(), accessoryGroup) > 0 then
			TheAccGroupIsEquipped = 1
		end
	end
	if TheAccGroupIsEquipped == 1 then
		return true
	else
		return false
	end
end

--start register on_player_hpchange--
minetest.register_on_player_hpchange(function(player, hp_change, reason)
	if hp_change < 0 then
		local defense_to_save_one_hp = 5
		local playerMeta = player:get_meta()
		local player_name = player:get_player_name()
		local AccDefense = playerMeta:get_int("gear_up_gear_defense")
		local acc_hp_protected = math.floor(AccDefense/defense_to_save_one_hp)
		local acc_extra_hp_protect_chance = (AccDefense - (acc_hp_protected*defense_to_save_one_hp))
		if math.random(1,defense_to_save_one_hp) <= acc_extra_hp_protect_chance then
			acc_hp_protected = acc_hp_protected + 1
		end
		--minetest.chat_send_all(minetest.serialize(reason))
		if reason.type == "punch" then
			if playerMeta:get_int("accessory_thorns") > 0 and reason.object ~= player then
				reason.object:punch(player, 1.0, {full_punch_interval = 1.0,
				damage_groups = {fleshy = -hp_change*(playerMeta:get_int("accessory_thorns")/100)},}, nil)
			end
			local AttackerDmgBonus = 1
			if reason.object:is_player() then
				AttackerDmgBonus = (reason.object:get_meta():get_int("gear_up_gear_offense")/100)+1
				--minetest.chat_send_all("kek")
			end
			hp_change = (hp_change*AttackerDmgBonus) + acc_hp_protected
		end
		if hp_change >= 0 then
			hp_change = -1
		end
		if reason.type == "node_damage" then
			playerMeta:set_int("acc_last_fire_contact",0)
			if playerMeta:get_int("acc_remaining_fire_prot") > 0 then
				playerMeta:set_int("acc_remaining_fire_prot",playerMeta:get_int("acc_remaining_fire_prot")-1)
				player:hud_change(hud_fireres_fg_ids[player_name], "number", playerMeta:get_int("acc_remaining_fire_prot"))
				player:hud_change(hud_fireres_bg_ids[player_name], "number", playerMeta:get_int("accessory_fireRes"))
				hp_change = 0
			end
		end
		if reason.type == "punch" then
			if math.random(1,100) <= playerMeta:get_int("accessory_dodgeChance") then
				hp_change = 0
				local pos = player:getpos()
				for i = 1,math.random(10,25) do
					minetest.add_particle({
						pos = {x=pos.x+math.random(-1,1),y=pos.y+math.random(1,1),z=pos.z+math.random(-1,1)},
						velocity = {x=math.random(-5,5), y=math.random(-5,5), z=math.random(-5,5)},
						acceleration = {x=math.random(-5,5), y=math.random(-5,5), z=math.random(-5,5)},
						expirationtime = 0.9,
						size = 16,
						collisiondetection = true,
						collision_removal = false,
						vertical = false,
						texture = "gear_up_animation_dodgepuff.png",
						animation = {type="vertical_frames", aspect_w=8, aspect_h=8, length = 1.0,},
						glow = 1,
					})
				end
			end
		end
	end
	return hp_change
end, true)
--stop register on_player_hpchange--
