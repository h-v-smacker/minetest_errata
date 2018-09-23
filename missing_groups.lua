local nodes_with_missing_groups = {
	-- Sandstone varieties
	{name = "default:sandstone", groups = {sandstone = 1}},
	{name = "default:sandstonebrick", groups = {sandstone = 1}},
	{name = "default:sandstone_block", groups = {sandstone = 1}},
	{name = "default:desert_sandstone", groups = {sandstone = 1}},
	{name = "default:desert_sandstone_brick", groups = {sandstone = 1}},
	{name = "default:desert_sandstone_block", groups = {sandstone = 1}},
	{name = "default:silver_sandstone", groups = {sandstone = 1}},
	{name = "default:silver_sandstone_brick", groups = {sandstone = 1}},
	{name = "default:silver_sandstone_block", groups = {sandstone = 1}},
	-- Red bricks
	{name = "default:brick", groups = {bricks = 1}},
	-- Obsidian
	{name = "default:obsidian", groups = {stone = 1}},
	{name = "default:obsidianbrick", groups = {stone = 1}},
	{name = "default:obsidian_block", groups = {stone = 1}},
}

for _,node in ipairs(nodes_with_missing_groups) do
	
	local entity = {}
	for name,value in pairs(minetest.registered_nodes[node.name]) do
		entity[name] = value
	end
	for g,v in pairs(node.groups) do
		entity.groups[minetest_errata.prefix .. g] = v
	end
	minetest.register_node(":" .. node.name, entity)

end

