function new_world.register_mult_schematic(schematic, variations, data)

    data.fill_ratio = data.fill_ratio / variations

    for i = 1, variations do
        local dt = table.copy(data)
        dt.schematic = schematic .. "_" .. i .. ".mts"
        dt.name = dt.name .. "_" .. i
        core.register_decoration(dt)
    end
end

function new_world.counter_to_table(string, count, extension)
    local result = {}
    for i = 1, count do
        result[i] = string .. "_" .. i .. extension
    end
    return result
end

function new_world.place_random_schematic(schematic, variations, pos)
    local schem = schematic .. "_" .. math.random(1, variations) .. ".mts"
    core.place_schematic(pos, schem, "random", {}, "place_center_x, place_center_z")
end

function new_world.place_random_schematict(schematics, pos)
    local schem = schematics[math.random(#schematics)]
    core.place_schematic(pos, schem, "random", {}, false, "place_center_x, place_center_z")
end

