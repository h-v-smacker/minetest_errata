

doors.register("door_wood_bar", {
	tiles = {{ name = "minetest_errata_door_wood_bar.png", backface_culling = true }},
	description = "Wooden Bar Door",
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

-- Protected glass doors

doors.register("door_glass_protected", {
                tiles = {"doors_door_glass.png"},
                description = "Protected Glass Door",
                protected = true,
                inventory_image = "doors_item_glass.png^default_key.png^[transformR180FX",
                groups = {cracky=3, oddly_breakable_by_hand=3},
                sounds = default.node_sound_glass_defaults(),
                sound_open = "doors_glass_door_open",
                sound_close = "doors_glass_door_close",
                recipe = {
                        {"default:glass", "default:glass", ""},
                        {"default:glass", "default:glass", "default:steel_ingot"},
                        {"default:glass", "default:glass", ""},
                }
})


doors.register("door_obsidian_glass_protected", {
                tiles = {"doors_door_obsidian_glass.png"},
                description = "Protected Obsidian Glass Door",
                protected = true,
                inventory_image = "doors_item_obsidian_glass.png^default_key.png^[transformR180FX",
                groups = {cracky=3},
                sounds = default.node_sound_glass_defaults(),
                sound_open = "doors_glass_door_open",
                sound_close = "doors_glass_door_close",
                recipe = {
                        {"default:obsidian_glass", "default:obsidian_glass", ""},
                        {"default:obsidian_glass", "default:obsidian_glass", "default:steel_ingot"},
                        {"default:obsidian_glass", "default:obsidian_glass", ""},
                },
})



if minetest.get_modpath("moreblocks") then
	
	doors.register("door_clean_glass", {
		tiles = {{ name = "minetest_errata_door_clean_glass.png", backface_culling = false }},
		description = "Clean Glass Door",
		inventory_image = "minetest_errata_door_clean_glass_item.png",
		sound_open = "minetest_errata_door_clean_glass_open",
		sound_close = "minetest_errata_door_clean_glass_close",
		sounds = metal_sounds,
		groups = { snappy = 2, bendy = 1, cracky = 1, melty = 2, },
		recipe = {
			{"moreblocks:clean_glass","moreblocks:clean_glass",""},
			{"moreblocks:clean_glass","moreblocks:clean_glass",""},
			{"moreblocks:clean_glass","moreblocks:clean_glass",""},
		}
	})
	
	doors.register("door_coal_glass", {
		tiles = {{ name = "minetest_errata_door_coal_glass.png", backface_culling = false }},
		description = "Coal Glass Door",
		inventory_image = "minetest_errata_door_coal_glass_item.png",
		sound_open = "minetest_errata_door_coal_glass_open",
		sound_close = "minetest_errata_door_coal_glass_close",
		sounds = metal_sounds,
		groups = { snappy = 2, bendy = 1, cracky = 1, melty = 2, },
		recipe = {
			{"moreblocks:coal_glass","moreblocks:coal_glass",""},
			{"moreblocks:coal_glass","moreblocks:coal_glass",""},
			{"moreblocks:coal_glass","moreblocks:coal_glass",""},
		}
	})
	
	doors.register("door_iron_glass", {
		tiles = {{ name = "minetest_errata_door_iron_glass.png", backface_culling = false }},
		description = "Iron Glass Door",
		inventory_image = "minetest_errata_door_iron_glass_item.png",
		sound_open = "minetest_errata_door_iron_glass_open",
		sound_close = "minetest_errata_door_iron_glass_close",
		sounds = metal_sounds,
		groups = { snappy = 2, bendy = 1, cracky = 1, melty = 2, },
		recipe = {
			{"moreblocks:iron_glass","moreblocks:iron_glass",""},
			{"moreblocks:iron_glass","moreblocks:iron_glass",""},
			{"moreblocks:iron_glass","moreblocks:iron_glass",""},
		}
	})
	
	-- protected iron door
	
	doors.register("door_iron_glass_protected", {
		tiles = {{ name = "minetest_errata_door_iron_glass.png", backface_culling = false }},
		description = "Protected Iron Glass Door",
		protected = true,
		inventory_image = "minetest_errata_door_iron_glass_item.png^default_key.png^[transformR180FX",
		sound_open = "minetest_errata_door_iron_glass_open",
		sound_close = "minetest_errata_door_iron_glass_close",
		sounds = metal_sounds,
		groups = { snappy = 2, bendy = 1, cracky = 1, melty = 2, },
		recipe = {
			{"moreblocks:iron_glass","moreblocks:iron_glass",""},
			{"moreblocks:iron_glass","moreblocks:iron_glass","default:steel_ingot"},
			{"moreblocks:iron_glass","moreblocks:iron_glass",""},
		}
	})
	
end