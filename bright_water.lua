--[[random_stuff.S = minetest.get_translator("random_stuff")
local S = random_stuff.S]]

local S  = minetest.get_translator("random_stuff")

minetest.register_node("random_stuff:bright_water_source", {
	description = S("Bright Water Source"),
	drawtype = "liquid",
	tiles = {
		{
			name = "default_river_water_source_animated.png^[brighten",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
		{
			name = "default_river_water_source_animated.png^[brighten",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
	},
	paramtype = "light",
	light_source = default.LIGHT_MAX,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	--drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "random_stuff:bright_water_flowing",
	liquid_alternative_source = "random_stuff:bright_water_source",
	liquid_viscosity = 0,
	liquid_renewable = false,
	--damage_per_second = 4 * 2,--8?
	--post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {liquid = 2,--[[ igniter = 1]]},
})

minetest.register_node("random_stuff:bright_water_flowing", {
	description = S("Bright Water"),
	drawtype = "flowingliquid",
	tiles = {"default_river_water.png"},
	special_tiles = {
		{
			name = "default_river_water_flowing_animated.png^[brighten",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
		{
			name = "default_river_water_flowing_animated.png^[brighten",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
	},
	paramtype = "light",
	light_source = default.LIGHT_MAX,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	--drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "random_stuff:bright_water_flowing",
	liquid_alternative_source = "random_stuff:bright_water_source",
	liquid_viscosity = 0,
	liquid_renewable = false,
	--damage_per_second = 4 * 2,--8?
	--post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {liquid = 2,--[[ igniter = 1]] not_in_creative_inventory = 1},
})

minetest.register_craftitem("random_stuff:bucket_water", {
    description  = S("Bucket")
})
----[[
bucket.register_liquid(
    "random_stuff:bright_water_source",
	"random_stuff:bright_water_flowing",
	"random_stuff:bright_water_bucket",
	"random_stuff_bright_water_bucket.png",
	S("Bright Water Bucket"),
    {tool = 1, water_bucket = 1}
)




--minetest.register_craft(recipe)
minetest.register_craftitem("random_stuff:mixer", {
    description = S("Mixer(for stiring stuff)")
})
minetest.register_craft({
    output = "random_stuff:bright_water_bucket",
    recipe = {{"default:meselamp","                   ","                "},
              {"                ","bucket:bucket_water","                "},
              {"                "," random_stuff:mixer","default:meselamp"}}
    
})
