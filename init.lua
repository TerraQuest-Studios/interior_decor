--most models just need to be moved +/-8 to get them centered in blender

minetest.register_node("interior_decor:crate", {
    description = "interior decor crate",
    drawtype = "mesh",
    mesh = "interior_decor_crate.obj",
    tiles = {"interior_decor_crate.png"},
    visual_scale = 0.0625, -- 1/16
    wield_scale = vector.new(0.0625,0.0625,0.0625),
    groups = {oddly_breakable_by_hand = 3},
    --TODO: add storage or something
})

minetest.register_node("interior_decor:drawer", {
    description = "interior decor drawer",
    drawtype = "mesh",
    paramtype2 = "facedir",
    mesh = "interior_decor_drawer.obj",
    tiles = {"interior_decor_drawer.png"},
    visual_scale = 0.0625, -- 1/16
    wield_scale = vector.new(0.0625,0.0625,0.0625),
    groups = {oddly_breakable_by_hand = 3},
    --TODO: add storage or something
})

minetest.register_node("interior_decor:books", {
    description = "interior decor books",
    drawtype = "mesh",
    paramtype2 = "facedir",
    mesh = "interior_decor_books.obj",
    tiles = {"interior_decor_books.png"},
    visual_scale = 0.0625, -- 1/16
    wield_scale = vector.new(0.0625,0.0625,0.0625),
    groups = {oddly_breakable_by_hand = 3},
})

--TODO: fix up this model more, texture mapping
--[[ minetest.register_node("interior_decor:gramophone", {
    description = "interior decor gramophone",
    drawtype = "mesh",
    paramtype2 = "facedir",
    mesh = "interior_decor_gramophone.obj",
    tiles = {"interior_decor_gramophone.png", "[combine:16x16"},
    visual_scale = 0.0625, -- 1/16
    wield_scale = vector.new(0.0625,0.0625,0.0625),
    groups = {oddly_breakable_by_hand = 3},
    --TODO: make work with music disks or something
}) ]]

minetest.register_node("interior_decor:globe", {
    description = "interior decor globe",
    drawtype = "mesh",
    paramtype2 = "facedir",
    mesh = "interior_decor_globe.obj",
    tiles = {"interior_decor_globe.png"},
    visual_scale = 0.0625, -- 1/16
    wield_scale = vector.new(0.0625,0.0625,0.0625),
    groups = {oddly_breakable_by_hand = 3},
})