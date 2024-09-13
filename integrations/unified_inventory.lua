	unified_inventory.register_button("gear_up_select", {
	type = "image",
	image = "gear_up_gear_defense_icon.png",
	tooltip = ("Defense"),
	action = function(player)
		display_gear_up_select_screen(player)
	end
	})
