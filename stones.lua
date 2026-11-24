local box = {
	{-0.5000, -0.5000, -0.5000, 0.5000, -0.3750, 0.5000}
}
core.register_node("new_world:small_rocks", {
    tiles = {"default_stone.png"},
    description = "Small Rocks",
    groups = {oddly_breakable_by_hand = 2, flammable = 3, attached_node = 1},
    paramtype = "light",
    paramtype2 = "facedir",
    drawtype = "mesh",
    mesh = "small_rocks.obj",
    sunlight_propagates = true,
	sounds = default.node_sound_stone_defaults(),
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = box
    }
})