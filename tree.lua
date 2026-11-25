function new_world.register_hollow_trunk(name, description, texture)
    local box = {
            {-0.5000, -0.5000, -0.5000, -0.3750, 0.5000, 0.3750},
            {-0.3750, -0.5000, -0.5000, 0.5000, 0.5000, -0.3750},
            {0.3750, -0.5000, -0.3750, 0.5000, 0.5000, 0.5000},
            {-0.5000, -0.5000, 0.3750, 0.3750, 0.5000, 0.5000}
        }
    core.register_node(":" .. name, {
        tiles = {texture},
        description = description,
	    groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 3},
        paramtype = "light",
        drawtype = "mesh",
        shaded  = false,
        light_source = 1,
        mesh = "hollowtrunk.obj",
        paramtype2 = "facedir",
        is_ground_content = false,
    	sunlight_propagates = true,
	    sounds = default.node_sound_wood_defaults(),
    	on_place = core.rotate_node,
        collision_box = {
            type = "fixed",
            fixed = box
        },

        selection_box = {
            type = "fixed",
            fixed = box
        }
    })
end

function new_world.register_trunk(name, description, tiles)
    core.register_node(":" .. name, {
        tiles = tiles,
        description = description,
	    groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 3},
        paramtype2 = "facedir",
        is_ground_content = false,
	    sounds = default.node_sound_wood_defaults(),
    	on_place = core.rotate_node,
        light_source = 1,
    })
end

function new_world.register_trunks(name, description, tiles, uvtiles)
    new_world.register_trunk(name, description, tiles)
    new_world.register_hollow_trunk(name .. "_hollow", "Hollow " .. description, uvtiles)
end

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
                {items = {name}}
            }
        },
        sounds = default.node_sound_leaves_defaults(),

        after_place_node = default.after_place_leaves,
        light_source = 1,
    })

end

function new_world.register_sapling(data)
    core.register_node(data.name, {
        description = data.description,
        drawtype = "plantlike",
        tiles = data.tiles,
        inventory_image = data.inventory_image,
        wield_image = data.wield_image,
        paramtype = "light",
        sunlight_propagates = true,
        walkable = false,
        on_timer = default.grow_sapling,
        groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
        sounds = default.node_sound_leaves_defaults(),

        on_construct = function(pos)
            core.get_node_timer(pos):start(math.random(data.mintime or 300, data.maxtime or 1500))
        end,

        on_place = function(itemstack, placer, pointed_thing)
            return default.sapling_on_place(itemstack, placer, pointed_thing, data.name, data.checkpos1, data.checkpos2, 5)
        end,
    })

    default.register_sapling_growth(data.name, {
        can_grow = data.can_grow, 
        on_grow_failed = data.on_grow_failed, 
        grow = data.grow
    })
end

function new_world.register_tree(data)
    local leaves = data.name .. "_leaves"
    local ldesc = data.description .. " Leaves"
    local tree = data.name .. "_tree"
    local tdesc = data.description .. " Tree"
    local sapling = data.name .. "_sapling"
    local sdesc = data.description .. " Sapling"

    new_world.register_trunks(tree, tdesc, data.ttiles, data.htiles)

    local grow_sapling
    if type(data.grow) == "table" then
        grow_sapling = function(pos)
            core.swap_node(pos, {name = "air"})
            new_world.place_random_schematict(data.grow, pos)
        end
    else
        grow_sapling = data.grow
    end
    new_world.register_sapling({
        name = sapling,
        description = sdesc,
        tiles = data.stiles,
        inventory_image = data.sinventory_image,
        wield_image = data.sinventory_image,
        mintime = data.mintime,
        maxtime = data.maxtime,
        checkpos1 = data.checkpos1,
        checkpos2 = data.checkpos2,
        can_grow = data.can_grow,--optional
        on_grow_failed = data.on_grow_failed,--optional
        grow = grow_sapling,
    })

    new_world.register_leaves(leaves, ldesc, data.ltiles, sapling, data.chance)

    default.register_leafdecay({
		trunks = {"tree"},
		leaves = {leaves},
		radius = data.radius or 3,
	})
end
--birch
new_world.register_tree({
    name = "new_world:birch",
    description = "Birch",
    --tiles for the tree
    ttiles = {
        "new_world_birch_top.png",
        "new_world_birch_top.png",
        "new_world_birch_side.png"
    },
    --tiles for the hollow tree
    htiles = "new_world_birch_hollow.png",
    --tiles for the leaves
    ltiles = {"new_world_birch_leaves.png"},
    --tiles for the sapling
    stiles = {"new_world_birch_sapling.png"},
    sinventory_image = "new_world_birch_sapling.png",
    --radius sapling checks spawns
    checkpos1 = {x = -2, y = 0, z = -2},
    checkpos2 = {x = 2, y = 12, z = 2},
    --growth timer
    mintime = 3,
    maxtime = 5,
    --nearness of leaves
    radius = 3,
    --chance to get sapling
    chance = 20,
    --schematics valid for tree
    grow = new_world.counter_to_table(core.get_modpath("new_world") .. "/schematics/birch/tree", 6, ".mts"), 
})
new_world.register_trunks("new_world:birch", "Birch", {"new_world_birch_top.png", "new_world_birch_top.png", "new_world_birch_side.png"}, "new_world_birch_hollow.png")
core.register_alias("new_world:birch", "new_world:birch_tree")
core.register_alias("new_world:birch_hollow", "new_world:birch_tree_hollow")

--testing
new_world.register_hollow_trunk("test_trunk", "Test Trunk", "test_wood.png")