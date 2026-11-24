local box = {
    {-0.7500, -0.3125, 0.3750, 0.1875, 0.3750, 1.1250}
}
core.register_node(":test_mushroom", {
    tiles = {"shroomtexture.png"},
    description = "test mushroom",
    groups = {mushroom = 1, oddly_breakable_by_hand = 2, flammable = 3},
    paramtype = "light",
    paramtype2 = "facedir",
    drawtype = "mesh",
    mesh = "attached_mushrooms.obj",
    sunlight_propagates = true,
	sounds = default.node_sound_leaves_defaults(),
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = box
    }
})