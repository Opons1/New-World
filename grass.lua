core.register_node("new_world:birch_grass", {
	description = "Birch Grass",
	tiles = {"prototypegrasstop1.png", "default_dirt.png",
        {name = "default_dirt.png^prototypegrassside1.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.3},
	}),
})