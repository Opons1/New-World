new_world = {}
local biomes = table.copy(core.registered_biomes)
core.clear_registered_biomes()
local mp = core.get_modpath("new_world")

dofile(mp .. "/trunk.lua")
dofile(mp .. "/leaves.lua")
dofile(mp .. "/flowers.lua")
dofile(mp .. "/mushrooms.lua")