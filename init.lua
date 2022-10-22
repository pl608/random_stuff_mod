local S  = minetest.get_translator("random_stuff")

minetest.register_craftitem("random_stuff:is_loaded", {
    description = S("Testing Thing"),
    groups = {not_in_creative_inventory=1}
})
dofile(minetest.get_modpath("random_stuff") .. "/bright_water.lua")
dofile(minetest.get_modpath("random_stuff") .. "/wings.lua")
dofile(minetest.get_modpath("random_stuff") .. "/boots.lua")
dofile(minetest.get_modpath("random_stuff") .. "/crawl.lua")