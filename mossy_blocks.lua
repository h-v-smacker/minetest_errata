local node = {
	name = "minetest_errata:mossystone",
	short_name = "mossystone",
	desc = "Mossy Stone",
	tile = "default_stone.png^minetest_errata_moss_overlay.png",
}



minetest.register_node(node.name, {
	description = node.desc,
	tiles = {node.tile},
	groups = {cracky = 3, stone = 1},
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),
	drop = "default:mossycobble",
})

minetest.register_craft({
        output = node.name,
        type = "shapeless",
        recipe = {"default:junglegrass", "default:stone"},
})


-- Derivative blocks

if stairs and stairs.mod and stairs.mod == "redo" then
	
	stairs.register_all(node.short_name, node.name,
		{cracky = 3, stone = 1},
		{node.tile},
		node.desc .. " Stair",
		node.desc .. " Slab",
		default.node_sound_wood_defaults())
	
elseif minetest.global_exists("stairsplus") then
	
	stairsplus:register_all("minetest_errata", node.short_name, node.name, {
		description = node.desc,
		tiles = {node.tile},
		groups = {cracky = 3, stone = 1},
		sounds = default.node_sound_wood_defaults(),
	})
	
else
	
	stairs.register_stair_and_slab(node.short_name, node.name,
		{cracky = 3, stone = 1},
		{node.tile},
		node.desc .. " Stair",
		node.desc .. " Slab",
		default.node_sound_wood_defaults())
	
end