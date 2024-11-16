require("__skys-lib__.error-util")

script.on_event(defines.events.on_player_created,
	function(event)
    if error_util.get_delayed_error_message() ~= nil then
        local player = game.get_player(event.player_index)
        if player == nil then return end
        if not storage.skip_intro then
            if game.is_multiplayer() then
              player.print(error_util.get_delayed_error_message())
            else
              game.show_message_dialog{text = error_util.get_delayed_error_message()}
            end
        end

    end
end)