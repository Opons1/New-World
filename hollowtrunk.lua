function new_world.register_hollow_trunk(name, description, texture)
    core.register_node(":" .. name, {
        tiles = {texture},
        description = description,
        groups = {choppy = 3},
        mesh = hollowtrunk.obj,
    })
end

new_world.register_hollow_trunk("test_trunk", "Test Trunk", "test_wood.png")