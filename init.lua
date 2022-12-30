minetest.register_node("interior_decor:crate", {
    description = "interior decor crate",
    drawtype = "mesh",
    paramtype = "light",
    mesh = "interior_decor_crate.obj",
    tiles = {"interior_decor_crate.png"},
    visual_scale = 0.0625, -- 1/16
    wield_scale = vector.new(0.0625,0.0625,0.0625),
    groups = {oddly_breakable_by_hand = 3},
    on_construct = function(pos)
        minetest.get_meta(pos):get_inventory():set_size("main", 9*3)
    end,
    on_place = function(itemstack, placer, pointed_thing)
        local ipv = minetest.item_place(itemstack, placer, pointed_thing)

        if itemstack:get_meta():get("contents") then
            local contents = minetest.deserialize(itemstack:get_meta():get("contents"))
            for k,v in pairs(contents) do
                contents[k] = ItemStack(v)
            end

            minetest.get_meta(pointed_thing.above):get_inventory():set_list("main", contents)
        end
        if itemstack:get_meta():get("description") then
            minetest.get_meta(pointed_thing.above):set_string(
                "description", itemstack:get_meta():get("description")
            )
        end
        return ipv
    end,
    on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
        local fnpos = table.concat({pos.x, pos.y, pos.z}, ",")
        local fs = {
            "size[8,8]",
            "style_type[list;spacing=0.1]",
            "list[nodemeta:" .. fnpos .. ";main;0,0.3;9,3;]",
            "style_type[list;spacing=0.25]", --reset to default
            "list[current_player;main;0,3.75;8,4;]",
            "listring[nodemeta:" .. fnpos .. ";main]",
            "listring[current_player;main]",
        }
        --TODO: support i3, show description if present in the formspec - else default to playername crate

        minetest.show_formspec(clicker:get_player_name(), "interior_decor:crate_fs", table.concat(fs, ""))
    end,
    preserve_metadata = function(pos, oldnode, oldmeta, drops)
        local meta = minetest.get_meta(pos)

        local stringlist = {}
        for k,v in pairs(meta:get_inventory():get_list("main")) do
            stringlist[#stringlist+1] = v:to_string()
        end
        --minetest meta limits will be an issue way be minetest.serialize failing will be
        drops[1]:get_meta():set_string("contents", minetest.serialize(stringlist))

        if meta:get("description") then
            drops[1]:get_meta():set_string("description", minetest.get_meta(pos):get_string("description"))
        end
    end,

})

minetest.register_node("interior_decor:drawer", {
    description = "interior decor drawer",
    drawtype = "mesh",
    paramtype = "light",
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
    paramtype = "light",
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
    paramtype = "light",
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
    paramtype = "light",
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
    paramtype = "light",
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
    paramtype = "light",
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
    paramtype = "light",
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
    paramtype = "light",
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