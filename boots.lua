local S  = minetest.get_translator("random_stuff")

armor:register_armor(":3d_armor:spring_boots", {
    description = S("Spring Boots"),
    inventory_image = "3d_armor_inv_boots_steel.png^[brighten",
    groups = {armor_feet=100, armor_heal=6, armor_use=400,
        physics_speed=1.25, physics_gravity=-.8, fall_damage_add_percent = -400},
    armor_groups = {fleshy=10},
    damage_groups = {cracky=3, snappy=2, choppy=2, crumbly=1, level=2},
})
minetest.register_craftitem("random_stuff:springs", {
    description = S("Springs(for bouncing)"),
    inventory_image = "random_stuff_spring.png"
})

--crafts
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

