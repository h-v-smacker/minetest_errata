minetest_errata.stats = {
	n = "pending recount...",
	c = "pending recount...",
	t = "pending recount...",
	e = "pending recount...",
	a = "pending recount...",
	g = "pending recount...",
	l = "pending recount...",
	abms = {},
	lbms = {},
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
              
		n.a = 0
		n.abms = {}
		for _,i in pairs(minetest.registered_abms) do
			n.a = n.a + 1
			local l = i.label or "no label"
			table.insert(n.abms, {l, i.interval, i.chance, i.nodenames})
		end
              
		n.g = 0
		for _,i in pairs(minetest.registered_globalsteps) do
			n.g = n.g + 1
		end
              
		n.l = 0
		n.lbms = {}
		for _,i in pairs(minetest.registered_lbms) do
			n.l = n.l + 1
			local l = i.name or "no name"
			table.insert(n.lbms, {l, i.run_at_every_load, i.nodenames})
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
						"Registered entities: " .. tostring(minetest_errata.stats.e) .. "\n" ..
						"Registered ABMs: " .. tostring(minetest_errata.stats.a) .. "\n" ..
						"Registered LBMs: " .. tostring(minetest_errata.stats.l) .. "\n" ..
						"Registered globalsteps: " .. tostring(minetest_errata.stats.g) .. "\n"
                                     )
		return true
	end,
})

minetest.register_chatcommand("showmewhatyougot_abms", {
	params = "",
	description = "Detailed stats on abms",
	privs = { shout = true },
	func = function( name )
		
		for _,l in ipairs(minetest_errata.stats.abms) do
			minetest.chat_send_player(name, l[1] .. " - " .. l[2] .. " (" .. l[3] .. ") - " .. table.concat(l[4], ", "))
		end
                                                       
		return true
	end,
})

minetest.register_chatcommand("showmewhatyougot_lbms", {
	params = "",
	description = "Detailed stats on lbms",
	privs = { shout = true },
	func = function( name )
		
		for _,l in ipairs(minetest_errata.stats.lbms) do
			local n = ""
			if type(l[3]) == "string" then
				n = l[3]
			else
				n = table.concat(l[3], ", ")
			end
			local f = l[2] or "x"
			minetest.chat_send_player(name, l[1] .. " - " .. tostring(f) .. " - " .. n)
		end
                                                       
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


