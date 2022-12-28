minetest.register_node("interior_decor:crate", {
    description = "interior decor crate",
    drawtype = "mesh",
    mesh = "interior_decor_crate.obj",
    tiles = {"interior_decor_crate.png"},
    visual_scale = 0.0625, -- 1/16
    wield_scale = vector.new(0.0625,0.0625,0.0625),
    groups = {oddly_breakable_by_hand = 3},
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
})