function new_world.register_hollow_trunk(name, description, texture)
    local box = {
            {-0.5000, -0.5000, -0.5000, -0.3750, 0.5000, 0.3750},
            {-0.3750, -0.5000, -0.5000, 0.5000, 0.5000, -0.3750},
            {0.3750, -0.5000, -0.3750, 0.5000, 0.5000, 0.5000},
            {-0.5000, -0.5000, 0.3750, 0.3750, 0.5000, 0.5000}
        }
    core.register_node(":" .. name, {
        tiles = {texture},
        description = description,
	    groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 3},
        paramtype = "light",
        drawtype = "mesh",
        shaded  = false,
        light_source = 1;
        mesh = "hollowtrunk.obj",
        paramtype2 = "facedir",
        is_ground_content = false,
    	sunlight_propagates = true,
	    sounds = default.node_sound_wood_defaults(),
    	on_place = core.rotate_node,
        collision_box = {
            type = "fixed",
            fixed = box
        },

        selection_box = {
            type = "fixed",
            fixed = box
        }
    })
end

function new_world.register_trunk(name, description, tiles)
    core.register_node(":" .. name, {
        tiles = tiles,
        description = description,
	    groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 3},
        paramtype2 = "facedir",
        is_ground_content = false,
	    sounds = default.node_sound_wood_defaults(),
    	on_place = core.rotate_node,
    })
end

function new_world.register_trunks(name, description, tiles, uvtiles)
    new_world.register_trunk(name, description, tiles)
    new_world.register_hollow_trunk(name .. "_hollow", "Hollow " .. description, uvtiles)
end
new_world.register_trunks("new_world:birch", "Birch", {"prototypebirchtop.png", "prototypebirchtop.png", "prototypeexternalbirch1.png"}, "testwoodhollow.png")
new_world.register_hollow_trunk("test_trunk", "Test Trunk", "test_wood.png")