local lib = require 'lib.game_lib'

local game_actions = {}


function game_actions.select_kight(knight_list)
    print(
[[

Choose your knight and go to the BATTLE!

]]
    )

    for k, v in ipairs(knight_list) do
        print(string.format('%s - %s', k, lib.capitalize(v)))
    end

end

return game_actions