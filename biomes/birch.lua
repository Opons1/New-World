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
--rocks
core.register_decoration({
    name = "new_world:birch:rock",
    deco_type = "schematic",
    place_on = {"new_world:birch_grass"},
    sidelen = 16,

    fill_ratio = 0.0002,
    place_offset_y = -3,
    biomes = {"new_world:birch"},
    y_max = 50,
    y_min = 1,
    schematic = schempath .. "/birch/rock.mts",
    rotation = "random",
})
--trees part 1
core.register_decoration({
    name = "new_world:birch:tree_base",
    deco_type = "simple",
    place_on = "new_world:birch_grass",
    sidelen = 4,
    fill_ratio = 0.01,
    biomes = {"new_world:birch"},
    decoration = "new_world:birch",
    height = 6,
    height_max = 13,
    spawn_by = {"air", "new_world:birch_leaves"},
    check_offset = 0,
    num_spawn_by = 8,
    place_offset_y = -1,
    flags = "force_placement",
})

new_world.register_mult_schematic(schempath .. "/birch/tree_base", 5, {
    name = "new_world:birch:tree_base",
    deco_type = "schematic",
    place_on = "new_world:birch_grass",
    sidelen = 4,
    fill_ratio = 0.05,
    biomes = {"new_world:birch"},
    spawn_by = "air",
    check_offset = 0,
    num_spawn_by = 8,
    place_offset_y = 0,
    flags = "force_placement, place_center_x, place_center_z,",
    rotation = "random"
})
--fallen logs
core.register_decoration({
    name = "new_world:birch:fallen_log",
    deco_type = "schematic",
    place_on = {"new_world:birch_grass"},
    sidelen = 8,

    fill_ratio = 0.001,
    place_offset_y = -2,
    biomes = {"new_world:birch"},
    y_max = 31000,
    y_min = 1,
    schematic = schempath .. "/birch/hollow.mts",
    rotation = "random",
})
--grass
core.register_decoration({
    deco_type = "simple",
    place_on = "new_world:birch_grass",
    fill_ratio = 0.4,
    decoration = {"default:grass_1" , "default:grass_2", "default:grass_3", "default:grass_4", "default:grass_5", },
})
--flowers
core.register_decoration({
    name = "new_world:birch:flowersblue",
    deco_type = "simple",
    place_on = "new_world:birch_grass",
    sidelen = 4,
    fill_ratio = 0.02,
    biomes = {"new_world:birch"},
    decoration = "new_world:blue_flower",
    param2 = 0,
    param2_max = 3,
})

core.register_decoration({
    name = "new_world:birch:flowersyellow",
    deco_type = "simple",
    place_on = "new_world:birch_grass",
    sidelen = 4,
    fill_ratio = 0.02,
    biomes = {"new_world:birch"},
    decoration = "new_world:yellow_flower",
    param2 = 0,
    param2_max = 3,
})

--pebbles
core.register_decoration({
    name = "new_world:birch:small_rocks",
    deco_type = "simple",
    place_on = "new_world:birch_grass",
    sidelen = 4,
    fill_ratio = 0.0025,
    biomes = {"new_world:birch"},
    decoration = "new_world:small_rocks",
    param2 = 0,
    param2_max = 3,
})

--tree tops
core.register_decoration({
    name = "new_world:birch:tree_top1",
    deco_type = "schematic",
    place_on = "new_world:birch",
    fill_ratio = 10,
    flags = "place_center_x, place_center_z, all_floors",
    schematic = schempath .. "/birch/tree_top.mts",
    check_offset = 0,
    num_spawn_by = 8,
    spawn_by = "air"
})
