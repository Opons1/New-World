function new_world.register_mult_schematic(schematic, variations, data)

    data.fill_ratio = data.fill_ratio / variations

    for i = 1, variations do
        local dt = table.copy(data)
        dt.schematic = schematic .. "_" .. i .. ".mts"
        dt.name = dt.name .. "_" .. i
        core.register_decoration(dt)
    end
end