-- Default shelves are not protected in the slightest.
-- This change introduces a protected shelf variety which respects the same 
-- rules as the area it is in (acts like storage drawers).
-- the upgrade/downgrade is free

local nodes = {
	{ name = "default:bookshelf", group = "book"}
}

if minetest.get_modpath("vessels") then
	table.insert(nodes, { name = "vessels:shelf", group = "vessel"} )
end



for _,node in ipairs(nodes) do
	
	local entity = {}
	for name,value in pairs(minetest.registered_nodes[node.name]) do
		entity[name] = value
	end

	
	entity.description = "Protected " .. entity.description
	
	entity.tiles[5] = entity.tiles[5] .. "^minetest_errata_shelf_door_mask.png^default_glass.png^minetest_errata_shelf_door_frame.png"
	entity.tiles[6] = entity.tiles[6] .. "^minetest_errata_shelf_door_mask.png^default_glass.png^minetest_errata_shelf_door_frame.png"
	                  
	
	                  
	entity.allow_metadata_inventory_put = function(pos, listname, index, stack, player)
		if minetest.is_protected(pos, player:get_player_name()) then
			return 0
		end
		if minetest.get_item_group(stack:get_name(), node.group) ~= 0 then
			return stack:get_count()
		end
		return 0
	end
	
	entity.allow_metadata_inventory_take = function(pos, listname, index, stack, player)
		if minetest.is_protected(pos, player:get_player_name()) then
			return 0
		end
		if minetest.get_item_group(stack:get_name(), node.group) ~= 0 then
			return stack:get_count()
		end
		return 0
	end
	
	entity.allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		if minetest.is_protected(pos, player:get_player_name()) then
			return 0
		end
		return count
	end
	                  
	minetest.register_node(":" .. node.name .. "_protected", entity)


	minetest.register_craft({
		output = node.name .. "_protected",
		type = "shapeless",
		recipe = {node.name},
	})
	
	minetest.register_craft({
		output = node.name,
		type = "shapeless",
		recipe = {node.name .. "_protected"},
	})
	
end