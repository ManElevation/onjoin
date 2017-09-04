minetest.register_privilege("mmoderator", {description = "Moderator Priv.", give_to_singleplayer = true})
minetest.register_privilege("madmin", {description = "Admin Priv.", give_to_singleplayer = true})

-- Moderator on join
minetest.register_on_joinplayer(function(player)
      local player_name = player:get_player_name()
      local privs = minetest.get_player_privs(player_name)
       if minetest.check_player_privs(name, {mmoderator=true, madmin=false}) then
            minetest.chat_send_all("Give a warm welcome to "..player:get_player_name()..", Moderator!")
      end
end)
-- Moderator on join
minetest.register_on_joinplayer(function(player)
      local player_name = player:get_player_name()
      local privs = minetest.get_player_privs(player_name)
       if minetest.check_player_privs(name, {mmoderator=false, madmin=true}) then
            minetest.chat_send_all("Give a warm welcome to "..player:get_player_name()..", Admin!")
      end
end)