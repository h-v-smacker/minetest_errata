local modpath = minetest.get_modpath("minetest_errata")

minetest_errata = {}
minetest_errata.prefix = "me_"

dofile(modpath.."/books.lua")

dofile(modpath.."/doors.lua")

dofile(modpath.."/sandstone_cobble.lua")

dofile(modpath.."/flint_block.lua")

dofile(modpath.."/missing_groups.lua")

dofile(modpath.."/xpanes.lua")

dofile(modpath.."/glass_panes.lua")

dofile(modpath.."/mossy_blocks.lua")

dofile(modpath.."/shelves.lua")