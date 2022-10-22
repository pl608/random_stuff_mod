local S  = minetest.get_translator("random_stuff")

armor:register_armor(":3d_armor:wings",{
    description = S("Wings"),
    inventory_image = "random_stuff_wings_v2.png",
    groups = {armor_torso=1, armor_heal=999999,armor_water=1, armor_use=400, physics_gravity=-.9, imortal=1,immortal=1, not_in_creative_inventory=1},
    armor_groups = {fleshy=10},
	damage_groups = {cracky=3, snappy=2, choppy=2, crumbly=1, level=2}
})

minetest.register_craftitem("random_stuff:soul", {
    description = S("Wierd Soul Thing"),
    inventory_image = "random_stuff_soul.png",
    groups = {not_in_creative_inventory=1}
})
--crafts
minetest.register_craft({
    output = "3d_armor:wings",
    recipe = {{"group:wool","                 ","group:wool"},
              {"group:wool","random_stuff:soul","group:wool"},
              {"group:wool","                 ","group:wool"}}
})
--extra
minetest.register_ore({
    ore_type       = "scatter",
    ore            = "random_stuff:stone_with_soul",
    wherein        = "default:stone",
    clust_scarcity = 20 * 20 * 20,
    clust_num_ores = 1,
    clust_size     = 2,
    y_max          = -64,
    y_min          = -255,
})

--boots

minetest.register_node("random_stuff:stone_with_soul", {
	description = S("The Sole Stone"),
	tiles = {"default_stone.png^random_stuff_sole_ore.png"},
	groups = {cracky = 3, not_in_creative_inventory=1},
	drop = "random_stuff:soul",
    sounds = default.node_sound_stone_defaults(),
    light_source = 6,
})
-- basicly bronze boots with a lot less gravity and a little more speed
armor:register_armor(":3d_armor:spring_boots", {
    description = S("Spring Boots"),
    inventory_image = "3d_armor_inv_boots_steel.png^[brighten",
    groups = {armor_feet=1, armor_heal=6, armor_use=400,
        physics_speed=1.25, physics_gravity=-.8, fall_damage_add_percent = -400},
    armor_groups = {fleshy=10},
    damage_groups = {cracky=3, snappy=2, choppy=2, crumbly=1, level=2},
})
minetest.register_craftitem("random_stuff:springs", {
    description = S("Springs(for bouncing)"),
    inventory_image = "random_stuff_spring.png"
})
minetest.register_craft({
    output = "3d_armor:spring_boots",
    recipe = {{"","",""},
              {"","3d_armor:boots_steel",""},
              {"","random_stuff:springs",""}}
})
minetest.register_craft({
    output  = "random_stuff:springs";
    recipe = {{"default:steel_ingot","",""},
              {"default:steel_ingot","",""},
              {"default:steel_ingot","",""}}
})


