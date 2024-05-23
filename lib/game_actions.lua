local lib = require 'lib.game_lib'
local ui = require 'lib.game_ui'
local actions = require 'lib.player_actions'

local game_actions = {}

function game_actions.select_kight(knight_list, knights_counter)
    local user_input = 0

    ui.print_header()

    repeat
        print(
[[

Choose your knight and go to the BATTLE field!

]]
    )

        for k, v in ipairs(knight_list) do
            print(string.format('%s - %s', k, lib.capitalize(v)))
        end

        print()

        user_input = lib.read_option()

    until (user_input > 0 and user_input <= knights_counter)

    return user_input
end


function game_actions.select_action(player_actions)
    local user_input = 0

    repeat
        print(
[[

Your turn! Choose what you will do:
]]
    )

        for k, v in ipairs(player_actions) do
            print(string.format('%s - %s', k, actions[v].description))
        end

        print()

        user_input = lib.read_option()

    until (user_input > 0 and user_input <= #player_actions)

    return user_input
end

return game_actions