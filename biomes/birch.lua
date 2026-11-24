core.register_biome({
	name = "new_world:birch",
	node_top = "new_world:birch_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 1,
	node_riverbed = "default:sand",
	depth_riverbed = 2,
	node_dungeon = "default:cobble",
	node_dungeon_alt = "default:mossycobble",
	node_dungeon_stair = "stairs:stair_cobble",
	y_max = 31000,
	y_min = 6,
	heat_point = 50,
	humidity_point = 45,
})

--decorations
local schempath = core.get_modpath("new_world") .. "/schematics"
core.register_decoration({
    name = "new_world:birch:flowers",
    deco_type = "simple",
    place_on = "new_world:birch_grass",
    sidelen = 4,
    fill_ratio = 0.04,
    biomes = {"new_world:birch"},
    decoration = "new_world:flower",
    param2 = 0,
    param2_max = 3,
})

core.register_decoration({
	name = "new_world:birch:fallen_log_1",
	deco_type = "schematic",
	place_on = {"new_world:birch_grass"},
	sidelen = 16,

    fill_ratio = 0.02,
	biomes = {"new_world:birch"},
	y_max = 31000,
	y_min = 1,
	schematic = schempath .. "/birch/birch_fallen_1.mts",
	rotation = "random",
})

core.register_decoration({
	name = "new_world:birch:fallen_log_1",
	deco_type = "schematic",
	place_on = {"new_world:birch_grass"},

	sidelen = 16,
    fill_ratio = 0.02,
	biomes = {"new_world:birch"},
	y_max = 31000,
	y_min = 1,
	schematic = schempath .. "/birch/birch_fallen_2.mts",
	rotation = "random",
})

core.register_decoration({
	name = "new_world:birch:fallen_log_1",
	deco_type = "schematic",
	place_on = {"new_world:birch_grass"},
	sidelen = 16,
    fill_ratio = 0.02,
	biomes = {"new_world:birch"},
	y_max = 31000,
	y_min = 1,
	schematic = schempath .. "/birch/birch_fallen_3.mts",
	rotation = "random",
})
