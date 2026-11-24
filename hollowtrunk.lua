function new_world.register_hollow_trunk(name, description, texture)
    core.register_node(":" .. name, {
        tiles = {texture},
        description = description,
	    groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 3},
        paramtype = "light",
        drawtype = "mesh",
        mesh = "hollowtrunk.obj",
        paramtype2 = "facedir",
        is_ground_content = false,
    	sunlight_propagates = true,
	    sounds = default.node_sound_wood_defaults(),
    	on_place = minetest.rotate_node,
    })
end

new_world.register_hollow_trunk("test_trunk", "Test Trunk", "test_wood.png")