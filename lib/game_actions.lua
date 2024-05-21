local lib = require 'lib.game_lib'
local ui = require 'lib.game_ui'

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

return game_actions