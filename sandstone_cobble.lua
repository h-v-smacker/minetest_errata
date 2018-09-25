local cobble_table = {
	{name = "sandstone", desc = "Sandstone"},
	{name = "desert_sandstone", desc = "Desert Sandstone"},
	{name = "silver_sandstone", desc = "Silver Sandstone"},
}

for _,node in ipairs(cobble_table) do
	
	minetest.register_node("minetest_errata:" .. node.name .. "_cobble", {
		description = node.desc,
		tiles = {"minetest_errata_" .. node.name .. "_cobble.png"},
		groups = {cracky = 3, [minetest_errata.prefix .. "sandstone"] = 1},
		is_ground_content = false,
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_craft({
		output = "minetest_errata:" .. node.name .. "_cobble 2",
		recipe = { { "default:" .. node.name, "default:" .. node.name } },
	})

	minetest.register_craft({
		type = "cooking",
		output = "default:" .. node.name,
		recipe = "minetest_errata:" .. node.name .. "_cobble",
	})

	-- Derivative blocks

	if stairs and stairs.mod and stairs.mod == "redo" then
		
		stairs.register_all(node.name .. "_cobble", "minetest_errata:" .. node.name .. "_cobble",
			{cracky = 3},
			{"minetest_errata_" .. node.name .. "_cobble.png"},
			node.desc .. " Stair",
			node.desc .. " Slab",
			default.node_sound_wood_defaults())
		
	elseif minetest.global_exists("stairsplus") then
		
		stairsplus:register_all("minetest_errata", node.name .. "_cobble", "minetest_errata:" .. node.name .. "_cobble", {
			description = node.desc,
			tiles = {"minetest_errata_" .. node.name .. "_cobble.png"},
			groups = {cracky = 3},
			sounds = default.node_sound_wood_defaults(),
		})
		
	else
		
		stairs.register_stair_and_slab(node.name .. "_cobble", "minetest_errata:" .. node.name .. "_cobble",
			{cracky = 3},
			{"minetest_errata_" .. node.name .. "_cobble.png"},
			node.desc .. " Stair",
			node.desc .. " Slab",
			default.node_sound_wood_defaults())
		
	end
	
	
	-- Walls
	walls.register("minetest_errata:wall_" .. node.name .. "_cobble", 
			node.desc .. " Cobble Wall", 
			"minetest_errata_" .. node.name .. "_cobble.png", 
			"minetest_errata:" .. node.name .. "_cobble",
			default.node_sound_stone_defaults()
		)
	
	-- procedurally-generated arcs
	if minetest.get_modpath("pkarcs") then
		pkarcs.register_node("minetest_errata:" .. node.name .. "_cobble")
	end
	
end
