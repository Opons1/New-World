new_world = {}
local biomes = table.copy(core.registered_biomes)
local decorations = table.copy(core.registered_decorations)
core.clear_registered_decorations()
core.clear_registered_biomes()
local path = core.get_modpath("new_world")

dofile(path .. "/trunk.lua")
dofile(path .. "/leaves.lua")
dofile(path .. "/flowers.lua")
dofile(path .. "/mushrooms.lua")
dofile(path .. "/grass.lua")
dofile(path .. "/biomes/init.lua")
