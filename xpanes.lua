xpanes.register_pane("obsidian_pane", {
	description = "Obsidian Pane",
	textures = {"default_obsidian_glass.png","errata_xpanes_pane_half_obsidian.png","errata_xpanes_black.png"},
	inventory_image = "default_obsidian_glass.png",
	wield_image = "default_obsidian_glass.png",
	sounds = default.node_sound_glass_defaults(),
	groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
	recipe = {
		{"default:obsidian_glass", "default:obsidian_glass", "default:obsidian_glass"},
		{"default:obsidian_glass", "default:obsidian_glass", "default:obsidian_glass"}
	}
})
