
-- Double pane: top is decorative and can noclip through some slopes and such

minetest.register_node("minetest_errata:pane_flat_double", {
	description = "Double Glass Pane",
	drawtype = "nodebox",
	tiles = {"xpanes_white.png", "xpanes_white.png", "default_glass.png"},
	inventory_image = "minetest_errata_double_glass_item.png",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
                                                            
	node_box = {
			type = "fixed",
			fixed = {{-1/2, -1/2, -1/32, 1/2, 3/2, 1/32}},
		},
	selection_box = {
			type = "fixed",
			fixed = {{-1/2, -1/2, -1/32, 1/2, 1/2, 1/32}},
		},

	groups = {cracky=3},
	use_texture_alpha = true,
})

minetest.register_craft({output = "minetest_errata:pane_flat_double",
	recipe ={
		{"xpanes:pane_flat",},
		{"xpanes:pane_flat",},
	},
})


-- Triple pane: top and right part are decorative

minetest.register_node("minetest_errata:pane_flat_triple", {
	description = "Triple Glass Pane",
	drawtype = "nodebox",
	tiles = {"xpanes_white.png", "xpanes_white.png", "default_glass.png"},
	inventory_image = "minetest_errata_triple_glass_item.png",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
                                                            
	node_box = {
			type = "fixed",
			fixed = {{-1/2, -1/2, -1/32, 1/2, 3/2, 1/32}, 
				   {-1/2, -1/2, -1/32, 3/2, 1/2, 1/32}},
		},
	selection_box = {
			type = "fixed",
			fixed = {{-1/2, -1/2, -1/32, 1/2, 1/2, 1/32}},
		},

	groups = {cracky=3},
	use_texture_alpha = true,
})

minetest.register_craft({output = "minetest_errata:pane_flat_triple",
	recipe ={
		{"xpanes:pane_flat",""},
		{"xpanes:pane_flat","xpanes:pane_flat",},
	},
})


-- Quadruple pane: all parts save for bottom left are decorative

minetest.register_node("minetest_errata:pane_flat_quadruple", {
	description = "Quadruple Glass Pane",
	drawtype = "nodebox",
	tiles = {"xpanes_white.png", "xpanes_white.png", "default_glass.png"},
	inventory_image = "minetest_errata_quadruple_glass_item.png",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
                                                            
	node_box = {
			type = "fixed",
			fixed = {{-1/2, -1/2, -1/32, 3/2, 3/2, 1/32}},
		},
	selection_box = {
			type = "fixed",
			fixed = {{-1/2, -1/2, -1/32, 1/2, 1/2, 1/32}},
		},

	groups = {cracky=3},
	use_texture_alpha = true,
})

minetest.register_craft({output = "minetest_errata:pane_flat_quadruple",
	recipe ={
		{"xpanes:pane_flat","xpanes:pane_flat",},
		{"xpanes:pane_flat","xpanes:pane_flat",},
	},
})

