
local S  = minetest.get_translator("random_stuff")
--note character_crawl(3d_armor).b3d did not seem to work. If you can fix it please leave a review stating how or mention something in the github issues


minetest.register_chatcommand("crawl", {
    description = "Initiates headonly mode",
    func = function(name)
            local player = minetest.get_player_by_name(name)
            if player_api.player_attached[name] then
                player_api.set_model(player, "character.b3d")
            else
                    player_api.set_model(player, "character_crawl.b3d")
            end
    end
})--[[
armor:register_armor(":3d_armor:crawl_helmet",{
    description = S("Crawl Helmet")
})]]
minetest.register_chatcommand("stand", {
    description = "Uninitiates headonly mode",
    func = function(name)
            local player = minetest.get_player_by_name(name)
            if player_api.player_attached[name] then
                player_api.set_model(player, "character.b3d")
            else
                if minetest.get_modpath("3d_armor") then
                    player_api.set_model(player, "3d_armor_character.b3d")
                else
                    player_api.set_model(player, 'character.b3d')
                end
            end
    end
})


player_api.register_model("character_crawl.b3d", {
	animation_speed = 30,
	textures = {"character.png"},
	animations = {
		-- Standard animations.
		stand     = {x = 0,   y = 79},
		lay       = {x = 162, y = 166},
		walk      = {x = 168, y = 187},
		mine      = {x = 189, y = 198},
		walk_mine = {x = 200, y = 219},
		sit       = {x = 81,  y = 160},
	},
    collisionbox = {-0.3, 0.0, -0.3, 0.3, .5, 0.3},
	stepheight = 0.3,
	eye_height = .4,
})--[[
minetest.register_on_joinplayer(function(player)
	player_api.player_attached[player:get_player_name()] = false
	player_api.set_model(player, "character_crawl.b3d")
	--[[player:set_local_animation(
		{x = 0,   y = 79},
		{x = 168, y = 187},
		{x = 189, y = 198},
		{x = 200, y = 219},
		30
	
end)]]
minetest.register_craftitem("random_stuff:loader_checker", {description=S("load checker")})