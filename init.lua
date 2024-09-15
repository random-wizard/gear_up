flag_wings_can_fly = true


local modpath = minetest.get_modpath(minetest.get_current_modname())

dofile(modpath.."/gear/parts.lua")
dofile(modpath.."/gear/colorizers.lua")
dofile(modpath.."/gear/outfits.lua")
dofile(modpath.."/gear/outfits_good.lua")
dofile(modpath.."/gear/outfits_bad.lua")
dofile(modpath.."/gear/outfits_jojo.lua")
dofile(modpath.."/gear/outfits_miner.lua")
dofile(modpath.."/gear/armor_bronze.lua")
dofile(modpath.."/gear/armor_cactus.lua")
dofile(modpath.."/gear/armor_dungeon.lua")
dofile(modpath.."/gear/armor_golden.lua")
dofile(modpath.."/gear/armor_mithril.lua")
dofile(modpath.."/gear/armor_molten.lua")
dofile(modpath.."/gear/armor_padded.lua")
dofile(modpath.."/gear/armor_silver.lua")
dofile(modpath.."/gear/armor_steel.lua")
dofile(modpath.."/gear/armor_tin.lua")
dofile(modpath.."/gear/armor_wooden.lua")
dofile(modpath.."/gear/shields.lua")
dofile(modpath.."/gear/rings.lua")
dofile(modpath.."/gear/masks.lua")
dofile(modpath.."/gear/mouth.lua")

dofile(modpath.."/main/gear_sets.lua")

--old man murray would be proud
dofile(modpath.."/crates/crate_type1.lua")
dofile(modpath.."/crates/crate_type2.lua")
dofile(modpath.."/crates/crate_type4.lua")
dofile(modpath.."/crates/crate_type7.lua")
dofile(modpath.."/crates/crate_type9.lua")
--dofile(modpath.."/crates/pinata_chest_common.lua")
--dofile(modpath.."/crates/pinata_chest_uncommon.lua")
--dofile(modpath.."/crates/pinata_chest_rare.lua")
dofile(modpath.."/main/ui.lua")
dofile(modpath.."/main/player.lua")
dofile(modpath.."/main/globalstep.lua")



function apply_accessory_dmg_bonus()
	for _,ent in pairs(minetest.registered_entities) do
		if ent.on_punch ~= nil then
			local dmg_bonus_punch = ent.on_punch
			ent.on_punch = function(self, hitter,time_from_last_punch, tool_capabilities, direction, pos)
				if self.health ~= nil and hitter:is_player() then
					local playerMeta = hitter:get_meta()
					local atk_bonus = playerMeta:get_int("gear_up_gear_offense")
					tool_capabilities.damage_groups.fleshy = tool_capabilities.damage_groups.fleshy * (1 + (atk_bonus/100))
				end
				return dmg_bonus_punch(self, hitter, time_from_last_punch, tool_capabilities, direction)
			end
		end
	end
end

minetest.register_on_mods_loaded(apply_accessory_dmg_bonus)

if minetest.get_modpath("sfinv") then
	dofile(modpath.."/integrations/sfinv.lua")
end

if minetest.get_modpath("unified_inventory") then
	dofile(modpath.."/integrations/unified_inventory.lua")
end

if minetest.global_exists("lootchests") then
	dofile(modpath.."/integrations/lootchests.lua")
end

if minetest.global_exists("dungeon_loot") then
	dofile(modpath.."/integrations/dungeon_loot.lua")
end

minetest.register_chatcommand("gear", {
	description = ("Opens your accessory inventory"),
	func = function(name)
		local player = minetest.get_player_by_name(name)
		if player then
			display_gear_up_select_screen(player)
		end
	end
})
