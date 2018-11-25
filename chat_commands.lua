minetest_errata.stats = {
	n = "pending recount...",
	c = "pending recount...",
	t = "pending recount...",
	e = "pending recount..."
}

minetest.after(30, 
	function()
		local n = {}
		n.n = 0
		for _,i in pairs(minetest.registered_nodes) do
			n.n = n.n + 1
		end
		
		n.c = 0
		for _,i in pairs(minetest.registered_craftitems) do
			n.c = n.c + 1
		end
		
		n.t = 0
		for _,i in pairs(minetest.registered_tools) do
			n.t = n.t + 1
		end
                 
		n.e = 0
		for _,i in pairs(minetest.registered_entities) do
			n.e = n.e + 1
		end

		minetest_errata.stats = n
	end
)

-- show the stats on registered nodes and suchlike
minetest.register_chatcommand("showmewhatyougot", {
	params = "",
	description = "Number of registered nodes etc",
	privs = { shout = true },
	func = function( name )
		minetest.chat_send_player(name,
						"Registered nodes: " .. tostring(minetest_errata.stats.n) .. "\n" ..
						"Registered craftitems: " .. tostring(minetest_errata.stats.c) .. "\n" ..
						"Registered tools: " .. tostring(minetest_errata.stats.t) .. "\n" ..
						"Registered entities: " .. tostring(minetest_errata.stats.e) .. "\n")
		return true
	end,
})

-- provide coordinated in teleport-ready format
minetest.register_chatcommand("whereami", {
	params = "",
	description = "Get current position, adjusted for teleporting",
	privs = { shout = true },
	func = function( name )

		local player = minetest.get_player_by_name(name)
	
		local p = player:get_pos()

		minetest.chat_send_player(name,
						"Your position: " .. math.floor(p.x) .. "," .. math.ceil(p.y) .. "," .. math.floor(p.z))
		return true
	end,
})


