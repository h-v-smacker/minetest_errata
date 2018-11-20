minetest_errata = {}
minetest_errata.prefix = "me_"
minetest_errata.modpath = minetest.get_modpath("minetest_errata")

dofile(minetest_errata.modpath.."/books.lua")

dofile(minetest_errata.modpath.."/doors.lua")

dofile(minetest_errata.modpath.."/sandstone_cobble.lua")

dofile(minetest_errata.modpath.."/flint_block.lua")

dofile(minetest_errata.modpath.."/missing_groups.lua")

dofile(minetest_errata.modpath.."/xpanes.lua")

dofile(minetest_errata.modpath.."/glass_panes.lua")

dofile(minetest_errata.modpath.."/mossy_blocks.lua")

dofile(minetest_errata.modpath.."/shelves.lua")