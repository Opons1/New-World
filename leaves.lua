function new_world.register_leaves(name, description, tiles, drop, chance)
    core.register_node(":" .. name, {
        description = description,
        drawtype = "allfaces_optional",
        tiles = tiles,
        waving = 1,
        paramtype = "light",
        is_ground_content = false,
        groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
        drop = {
            max_items = 1,
            items = {
                {items = {drop}, rarity = chance or 20},
                {items = {"default:aspen_leaves"}}
            }
        },
        sounds = default.node_sound_leaves_defaults(),

        after_place_node = default.after_place_leaves,
    })

end

new_world.register_leaves("new_world:birch_leaves", "Birch Leaves", {"prototypeleaves1.png"}, "default:dirt")