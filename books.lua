-- allow erasing the books

minetest.register_craft({
	type = "shapeless",
	output = "default:book",
	recipe = {"default:book_written", "default:paper"}
})
