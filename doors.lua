

doors.register("door_wood_bar", {
	tiles = {{ name = "minetest_errata_door_wood_bar.png", backface_culling = true }},
	description = "Wooden Bar Door",
	_doc_items_longdec = door_simple,
	_doc_items_usagehelp = door_simple_use,
	inventory_image = "minetest_errata_door_wood_bar_item.png",
	sounds = default.node_sound_wood_defaults(),
	sound_open = "doors_fencegate_open",
	sound_close = "doors_fencegate_close",
	groups = { snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2 },
	recipe = {
		{"xpanes:wood_flat",},
		{"xpanes:wood_flat",},
	}
})

doors.register("door_iron_bar", {
	tiles = {{ name = "minetest_errata_door_iron_bar.png", backface_culling = true }},
	description = "Iron Bar Door",
	_doc_items_longdec = door_simple,
	_doc_items_usagehelp = door_simple_use,
	inventory_image = "minetest_errata_door_iron_bar_item.png",
	sound_open = "minetest_errata_door_iron_bar_open",
	sound_close = "minetest_errata_door_iron_bar_close",
	sounds = metal_sounds,
	groups = { snappy = 2, bendy = 1, cracky = 1, melty = 2, },
	recipe = {
		{"xpanes:bar_flat",},
		{"xpanes:bar_flat",},
	}
})