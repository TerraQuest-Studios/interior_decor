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

minetest.register_node("interior_decor:gramophone", {
    description = "interior decor gramophone",
    drawtype = "mesh",
    paramtype2 = "facedir",
    mesh = "interior_decor_gramophone.obj",
    tiles = {
        "interior_decor_gramophone_base.png",
        "interior_decor_gramophone_horn.png",
        "interior_decor_gramophone_record.png",
    },
    visual_scale = 0.0625, -- 1/16
    wield_scale = vector.new(0.0625,0.0625,0.0625),
    groups = {oddly_breakable_by_hand = 3},
    --TODO: make work with music disks or something
})

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

minetest.register_node("interior_decor:mug", {
    description = "interior decor mug",
    drawtype = "mesh",
    paramtype2 = "facedir",
    mesh = "interior_decor_mug.obj",
    tiles = {"interior_decor_mug.png"},
    visual_scale = 0.0625, -- 1/16
    wield_scale = vector.new(0.0625,0.0625,0.0625),
    groups = {oddly_breakable_by_hand = 3},
})

minetest.register_node("interior_decor:flower_pot", {
    description = "interior decor flower pot",
    drawtype = "mesh",
    paramtype2 = "facedir",
    mesh = "interior_decor_flower_pot.obj",
    tiles = {
        "interior_decor_flower_pot_pot.png",
        "interior_decor_flower_pot_rose_1.png",
        "interior_decor_flower_pot_rose_2.png",
    },
    visual_scale = 0.0625, -- 1/16
    wield_scale = vector.new(0.0625,0.0625,0.0625),
    groups = {oddly_breakable_by_hand = 3},
})

minetest.register_node("interior_decor:grandfather_clock", {
    description = "interior decor grandfather clock",
    drawtype = "mesh",
    paramtype2 = "facedir",
    mesh = "interior_decor_grandfather_clock.obj",
    tiles = {
        "interior_decor_grandfather_clock_base.png",
        "interior_decor_grandfather_clock_b.png",
        "interior_decor_grandfather_clock_m0.png",
        "interior_decor_grandfather_clock_m0.png", --m1
        "interior_decor_grandfather_clock_c.png",
        "interior_decor_grandfather_clock_a.png",
    },
    visual_scale = 0.0625, -- 1/16
    wield_scale = vector.new(0.0625,0.0625,0.0625),
    groups = {oddly_breakable_by_hand = 3},
})

minetest.register_node("interior_decor:piano", {
    description = "interior decor piano",
    drawtype = "mesh",
    paramtype2 = "facedir",
    mesh = "interior_decor_piano.obj",
    tiles = {
        "interior_decor_piano_base.png",
        "interior_decor_piano_parts.png",
    },
    visual_scale = 0.0625, -- 1/16
    wield_scale = vector.new(0.0625,0.0625,0.0625),
    groups = {oddly_breakable_by_hand = 3},
})