visual_reapply_interval = 90
local reapply_int_passed = 0
local quarter_second_timer = 0
local one_second_timer = 0

--used to make the miner helm glow in a check during globalstep
minetest.register_node("gear_up:helm_glow", {
	description = ""..
	core.colorize("#00eaff","helmet glow\n")..
	core.colorize("#FFFFFF", "1V1 ME H4X0R! IMMA REKT U!"),
	drawtype = "airlike",
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	pointable = false,
	sunlight_propagates = true,
	light_source = 13,
	on_construct = function(pos)
		minetest.get_node_timer(pos):start(1.0)
	end,
	on_timer = function(pos, elapsed)
		minetest.swap_node(pos, {name = "air"})
	end,
	drop = "",
	groups = {not_in_creative_inventory=1},
})

--start register globalstep--
minetest.register_globalstep(function(dtime)
	quarter_second_timer = quarter_second_timer + dtime
	one_second_timer = one_second_timer + dtime

	--every so often update the player accessories visuals
	if visual_reapply_interval > 0 then
		reapply_int_passed = reapply_int_passed + dtime
		if reapply_int_passed >= visual_reapply_interval then
			reapply_int_passed = 0
			for _, player in pairs(minetest.get_connected_players()) do
				local name = player:get_player_name()
				local inv_gear = minetest.get_inventory({type="detached",name="accs_gear_"..name..""})
				for i = 1,CountOfAccInvSlots do
					local current_acc_stack = inv_gear:get_stack("gear_ss",i)
					if current_acc_stack:get_definition().acc_slot ~= nil then
						local current_slot = player_accessory_slots[i]
						update_player_acc_visuals(player,current_acc_stack,1,current_slot,i)
					end
				end
			end
		end
	end

	--every one second check fire resistance
	if one_second_timer >= 1.0 then
		one_second_timer = 0
		for _, player in pairs(minetest.get_connected_players()) do
			local playerMeta = player:get_meta()
			local player_name = player:get_player_name()
			player:hud_change(hud_fireres_bg_ids[player_name], "number", playerMeta:get_int("accessory_fireRes"))
			player:hud_change(hud_fireres_fg_ids[player_name], "number", playerMeta:get_int("acc_remaining_fire_prot"))
			if playerMeta:get_int("acc_last_fire_contact") <= 3 then
				playerMeta:set_int("acc_last_fire_contact",playerMeta:get_int("acc_last_fire_contact")+1)
			end
			if playerMeta:get_int("acc_remaining_fire_prot") >= playerMeta:get_int("accessory_fireRes") then
				player:hud_change(hud_fireres_bg_ids[player_name], "number", 0)
				player:hud_change(hud_fireres_fg_ids[player_name], "number", 0)
			end
		end
	end

	--every quarter second check a lot of things
	if quarter_second_timer >= 0.25 then
		quarter_second_timer = 0
		for _, player in pairs(minetest.get_connected_players()) do
			local playerMeta = player:get_meta()
			local player_name = player:get_player_name()
			local pos = player:getpos()
			if playerMeta:get_int("acc_last_fire_contact") >= 3 and playerMeta:get_int("acc_remaining_fire_prot") < playerMeta:get_int("accessory_fireRes") then
				playerMeta:set_int("acc_remaining_fire_prot",playerMeta:get_int("acc_remaining_fire_prot")+1)
				player:hud_change(hud_fireres_fg_ids[player_name], "number", playerMeta:get_int("acc_remaining_fire_prot"))
			end
			if playerMeta:get_int("acc_remaining_fire_prot") >playerMeta:get_int("accessory_fireRes") then
				playerMeta:set_int("acc_remaining_fire_prot",playerMeta:get_int("accessory_fireRes"))
			end

			--check if wielded item has stats and capabilities
			local wielded_item = player:get_wielded_item()
			local item_meta = wielded_item:get_meta()
			if wielded_item:get_tool_capabilities() ~= nil and wielded_item:get_definition().tool_capabilities and wielded_item:get_name() ~= "" then
				if item_meta:get_int("LastAccDigEffc") ~= playerMeta:get_int("gear_up_gear_dig_speed") then
					item_meta:set_int("LastAccDigEffc",playerMeta:get_int("gear_up_gear_dig_speed"))
					if item_meta:get_string("ToolOldStats") == "" then
						item_meta:set_string("ToolOldStats",minetest.serialize(wielded_item:get_tool_capabilities().groupcaps))
					end
					local ToolNewStats = minetest.deserialize(item_meta:get_string("ToolOldStats"))
					for toolStatValue, toolStatValues in pairs(ToolNewStats) do
						for toolStatTime, toolStatTimes in pairs(ToolNewStats[toolStatValue].times) do
							ToolNewStats[toolStatValue].times[toolStatTime] = ToolNewStats[toolStatValue].times[toolStatTime] / (1+(playerMeta:get_int("gear_up_gear_dig_speed")/100))
						end
					end
					item_meta:set_tool_capabilities({
						full_punch_interval = wielded_item:get_definition().tool_capabilities.full_punch_interval,
						max_drop_level = wielded_item:get_definition().tool_capabilities.max_drop_level,
						groupcaps = ToolNewStats,
						damage_groups = wielded_item:get_definition().tool_capabilities.damage_groups,
					})
					player:set_wielded_item(wielded_item)
				end
			end

			--check if mining helmet and use glow
			if PlayerHasAccEquipped(player_name,"gear_up:mining_helmet") == true then
				local gpos = player:getpos()
				gpos.y = gpos.y+1
				local node = minetest.get_node(gpos)
				if node.name == "air" or node.name == "gear_up:helm_glow" then
					minetest.set_node(gpos, {name = "gear_up:helm_glow"})
					minetest.get_node_timer(gpos):start(1.0)
				end
			end

			--check if wearing jojo set and create particle trail
			if playerMeta:get_string("accessory_SetName") == "jojo_set" then
				minetest.add_particle({
					pos = {x=pos.x+math.random(-2,2),y=pos.y+math.random(1,3),z=pos.z+math.random(-2,2)},
					velocity = {x=0, y=0, z=0},
					acceleration = {x=0, y=0, z=0},
					expirationtime = 2,
					size = 6,
					collisiondetection = false,
					collision_removal = false,
					vertical = false,
					texture = "jojo_menacing_trail.png",
					animation = {type="vertical_frames", aspect_w=8, aspect_h=8, length = 0.25,},
					glow = 10,
				})
			end
			pos.y = pos.y - 0.2
			local stoodNode = minetest.get_node(pos)
			if minetest.registered_nodes[stoodNode.name] ~= nil then
				if minetest.registered_nodes[stoodNode.name].walkable then
					playerMeta:set_float("fly_time_left",playerMeta:get_float("accessory_flightTime"))
				end
			end
		end
	end

	--start for get_connected_players--
	for _, player in pairs(minetest.get_connected_players()) do
		--if player has wings then let them sort of jump high and again a few times
		if flag_wings_can_fly == true then
			local controls = player:get_player_control()
			if controls.jump then
				local playerMeta = player:get_meta()
				local name = player:get_player_name()
				if PlayerHasAccGroupEquipped(name,"acc_wings") == true then
					if player:get_velocity().y < -1 then
						player:add_velocity({x=0,y=((player:get_velocity().y)*-0.3) -0.5, z=0})
					end
					if playerMeta:get_float("fly_time_left") > 0 then
						playerMeta:set_float("fly_time_left",playerMeta:get_float("fly_time_left")-dtime)
						player:add_velocity({x=0,y= playerMeta:get_float("accessory_flightForce"), z=0})
					end
				end
			end
		end
		--calculate hp regen
		local player_properties = player:get_properties()
		local player_hp = player:get_hp()
		if player_hp < player_properties.hp_max then
			local playerMeta = player:get_meta()
			local hpRegenAmount = playerMeta:get_float("gear_up_gear_hp_regen")
			local finalHpRegen = (dtime * hpRegenAmount)
			playerMeta:set_float("gear_up_gear_hp_regen_progress",playerMeta:get_float("gear_up_gear_hp_regen_progress")+finalHpRegen)
			if playerMeta:get_float("gear_up_gear_hp_regen_progress") >= 1.0 then
				local AccHpToRegen = math.floor(playerMeta:get_float("gear_up_gear_hp_regen_progress"))
				playerMeta:set_float("gear_up_gear_hp_regen_progress",playerMeta:get_float("gear_up_gear_hp_regen_progress")-AccHpToRegen)
				player:set_hp(player:get_hp() + AccHpToRegen)
			end
		end
	end
	--stop for get_connected_players--
end)
--stop register globalstep--
