core.register_node("new_world:birch_grass", {
	description = "Birch Grass",
	tiles = {"birch_grass_top.png", "default_dirt.png",
        {name = "default_dirt.png^birch_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.3},
	}),
})