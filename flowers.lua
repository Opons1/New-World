local box = {
	{-0.5000, -0.5000, -0.5000, 0.5000, -0.3750, 0.5000}
}
core.register_node("new_world:flower", {
    tiles = {"test_flower.png"},
    description = "test flower",
    groups = {flora = 1, oddly_breakable_by_hand = 2, flammable = 3, attached_node = 1},
    paramtype = "light",
    paramtype2 = "facedir",
    drawtype = "mesh",
    mesh = "flowers.obj",
    sunlight_propagates = true,
	sounds = default.node_sound_leaves_defaults(),
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = box
    }
})