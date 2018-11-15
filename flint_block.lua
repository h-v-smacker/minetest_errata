-- Flint block
-- a good use for otherwise useless item
		
local node = {
	name = "flint_block",
	desc = "Flint Block",
	tile = {"minetest_errata_flint_block.png"}
}

minetest.register_node("minetest_errata:" .. node.name, {
	description = node.desc,
	tiles = node.tile,
	is_ground_content = false,
	groups = { cracky = 2 },
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = "minetest_errata:" .. node.name,
	recipe = {
		{ "default:flint", "default:flint", "default:flint" },
		{ "default:flint", "default:flint", "default:flint" },
		{ "default:flint", "default:flint", "default:flint" },
	}
})

minetest.register_craft({
	output = "default:flint 9 ",
	recipe = {
		{ "minetest_errata:" .. node.name },
	}
})

-- Derivative blocks


if stairs and stairs.mod and stairs.mod == "redo" then
	
	stairs.register_all(node.name, "minetest_errata:" .. node.name,
		{cracky = 3},
		node.tile,
		node.desc .. " Stair",
		node.desc .. " Slab",
		default.node_sound_stone_defaults())
	
elseif minetest.global_exists("stairsplus") then
	
	stairsplus:register_all("minetest_errata", node.name, "minetest_errata:" .. node.name, {
		description = node.desc,
		tiles = node.tile,
		groups = {cracky = 3},
		sounds = default.node_sound_stone_defaults(),
	})
	
else
	
-- 	stairs.register_stair_and_slab(node.name, "minetest_errata:" .. node.name,
-- 		{cracky = 3},
-- 		node.tile,
-- 		node.desc .. " Stair",
-- 		node.desc .. " Slab",
-- 		default.node_sound_stone_defaults()
-- 	)
	
	stairs.register_slab(node.name, "minetest_errata:" .. node.name,
		{ cracky = 2 }, 
		{"minetest_errata_flint_block.png", 
	       "minetest_errata_flint_block.png", 
	       "minetest_errata_flint_block_slab.png", 
	       "minetest_errata_flint_block_slab.png", 
	       "minetest_errata_flint_block_slab.png", 
	       "minetest_errata_flint_block_slab.png"
	      }, 
		node.desc .. " Stair", 
		default.node_sound_stone_defaults()
	)
	stairs.register_stair(node.name, "minetest_errata:" .. node.name, 
		{ cracky = 2 }, 
		{"minetest_errata_flint_block_slab.png",
	       "minetest_errata_flint_block.png", 
	       "minetest_errata_flint_block_stair1.png", 
	       "minetest_errata_flint_block_stair2.png", 
	       "minetest_errata_flint_block.png", 
	       "minetest_errata_flint_block_slab.png"
	      }, 
		node.desc .. " Slab",
		default.node_sound_stone_defaults()
	)
	
end


-- procedurally-generated arcs
if minetest.get_modpath("pkarcs") then
	pkarcs.register_node("minetest_errata:" .. node.name)
end