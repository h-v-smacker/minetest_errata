xpanes.register_pane("obsidian", {
	description = "Obsidian Pane",
	textures = {"default_obsidian_glass.png","minetest_errata_xpanes_pane_half_obsidian.png","minetest_errata_xpanes_black.png"},
	inventory_image = "default_obsidian_glass.png",
	wield_image = "default_obsidian_glass.png",
	sounds = default.node_sound_glass_defaults(),
	groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
	recipe = {
		{"default:obsidian_glass", "default:obsidian_glass", "default:obsidian_glass"},
		{"default:obsidian_glass", "default:obsidian_glass", "default:obsidian_glass"}
	}
})

xpanes.register_pane("paper", {
	description = "Paper Barrier",
	inventory_image = "minetest_errata_paperwall.png",
	wield_image = "minetest_errata_paperwall.png",
	textures = {"minetest_errata_paperwall.png", "minetest_errata_paperwall.png", "minetest_errata_paperwall.png"},
	groups = {snappy=3, flammable=4, pane=1},
	sounds = {
		footstep = {name="minetest_errata_paper_step", gain=0.1, max_hear_distance=7},
		place = {name="minetest_errata_paper_step", gain=0.3, max_hear_distance=13},
		dig = {name="minetest_errata_paper_dig", gain=0.1, max_hear_distance=11},
		dug = {name="minetest_errata_paper_dug", gain=0.2, max_hear_distance=13},
	},
	recipe = {
		{ "default:paper", "default:paper", "default:paper" },
		{ "default:paper", "default:paper", "default:paper" },
	}
})


xpanes.register_pane("wood", {
	description = "Wooden Bars",
	inventory_image = "minetest_errata_wooden_bar.png",
	wield_image = "minetest_errata_wooden_bar.png",
	textures = {"minetest_errata_wooden_bar.png", "minetest_errata_wooden_bar_side.png", "minetest_errata_wooden_bar_y.png"},
	groups = {choppy=3, oddly_breakable_by_hand=2, flammable=2, pane=1},
	sounds = default.node_sound_wood_defaults(),
	recipe = {
		{ "group:wood", "", "group:wood" },
		{ "group:wood", "", "group:wood" },
		{ "group:wood", "", "group:wood" },
	}
})


local extra_groups = {
	"group:bakedclay",
	"group:" .. minetest_errata.prefix .. "sandstone",
	"group:" .. minetest_errata.prefix .. "stone",
	"group:" .. minetest_errata.prefix .. "bricks",
}

local xpane_nodes = { "xpanes:bar", "xpanes:pane", "xpanes:wood", "xpanes:paper" }

for _,node in ipairs(xpane_nodes) do

	local entity = {}
	for name,value in pairs(minetest.registered_nodes[node]) do
		entity[name] = value
	end

	for _,g in ipairs(extra_groups) do
		table.insert(entity.connects_to, g)
	end

	minetest.register_node(":" .. node, entity)

end

if minetest.get_modpath("glass_stained") then
	local entity = {}
	for name,value in pairs(minetest.registered_nodes["xpanes:bar_top"]) do
		entity[name] = value
	end

	for _,g in ipairs(extra_groups) do
		table.insert(entity.connects_to, g)
	end

	minetest.register_node(":xpanes:bar_top", entity)
end


