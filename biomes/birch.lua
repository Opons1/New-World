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

core.register_biome({
	name = "new_world:birch_dunes",
	node_top = "default:sand",
	depth_top = 1,
	node_filler = "default:sand",
	depth_filler = 2,
	node_riverbed = "default:sand",
	depth_riverbed = 2,
	node_dungeon = "default:cobble",
	node_dungeon_alt = "default:mossycobble",
	node_dungeon_stair = "stairs:stair_cobble",
	vertical_blend = 1,
	y_max = 5,
	y_min = 4,
	heat_point = 50,
	humidity_point = 45,
})

core.register_biome({
	name = "new_world:birch_ocean",
	node_top = "default:sand",
	depth_top = 1,
	node_filler = "default:sand",
	depth_filler = 3,
	node_riverbed = "default:sand",
	depth_riverbed = 2,
	node_cave_liquid = "default:water_source",
	node_dungeon = "default:cobble",
	node_dungeon_alt = "default:mossycobble",
	node_dungeon_stair = "stairs:stair_cobble",
	y_max = 3,
	y_min = -255,
	heat_point = 50,
	humidity_point = 45,
})

--decorations
local schempath = core.get_modpath("new_world") .. "/schematics"

--boulders
core.register_decoration({
    name = "new_world:birch:iron_boulder",
    deco_type = "schematic",
    place_on = {"new_world:birch_grass"},
    sidelen = 16,

    fill_ratio = 0.0001,
    place_offset_y = -3,
    biomes = {"new_world:birch"},
    y_max = 50,
    y_min = 1,
    schematic = schempath .. "/birch/iron_boulder.mts",
    rotation = "random",
})

core.register_decoration({
    name = "new_world:birch:coal_boulder",
    deco_type = "schematic",
    place_on = {"new_world:birch_grass"},
    sidelen = 16,

    fill_ratio = 0.0001,
    place_offset_y = -3,
    biomes = {"new_world:birch"},
    y_max = 50,
    y_min = 1,
    schematic = schempath .. "/birch/coal_boulder.mts",
    rotation = "random",
})

core.register_decoration({
    name = "new_world:birch:diamond_boulder",
    deco_type = "schematic",
    place_on = {"new_world:birch_grass"},
    sidelen = 16,

    fill_ratio = 0.000008,
    place_offset_y = -3,
    biomes = {"new_world:birch"},
    y_max = 50,
    y_min = 1,
    schematic = schempath .. "/birch/diamond_boulder.mts",
    rotation = "random",
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
--trees
new_world.register_mult_schematic(schempath .. "/birch/tree", 6, {
    name = "new_world:birch:tree",
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

new_world.register_mult_schematic(schempath .. "/birch/tree_large", 2, {
    name = "new_world:birch:tree_large",
    deco_type = "schematic",
    place_on = "new_world:birch_grass",
    sidelen = 4,
    fill_ratio = 0.002,
    biomes = {"new_world:birch"},
    spawn_by = "air",
    check_offset = 0,
    num_spawn_by = 8,
    place_offset_y = 0,
    flags = "force_placement, place_center_x, place_center_z,",
    rotation = "random"
})

new_world.register_mult_schematic(schempath .. "/birch/tree_lucky", 1, {
    name = "new_world:birch:tree",
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