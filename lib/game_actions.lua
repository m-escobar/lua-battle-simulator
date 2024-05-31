local lib = require 'lib.game_lib'
local ui = require 'lib.game_ui'
local actions = require 'lib.player_actions'

local game_actions = {}

function game_actions.select_kight(knight_list)
    local user_input = 0
    local knights_counter = #knight_list

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


function game_actions.select_action(knight)
    local user_input = 0
    local valid_actions = game_actions.get_valid_actions(knight)

    repeat
        print(
[[

Your turn! Choose what you will do:
]]
    )

        for k, v in ipairs(valid_actions) do
            print(string.format('%s - %s', k, actions[v].description))
        end

        print()

        user_input = lib.read_option()

    until (user_input > 0 and user_input <= #valid_actions)

    return valid_actions[user_input]
end

--- Return a lista of valid player actions
--- @param knight table Knight definition
function game_actions.get_valid_actions(knight)
    local valid_actions = {}
    local player_actions = knight.actions

    for _, v in ipairs(player_actions) do
        local requirement = actions[v].requirement
        local is_valid = requirement == nil or requirement  -- O que fazer aqui para validar??

        if is_valid == true then
            valid_actions[#valid_actions + 1] = actions[v].id
        end
    end

    return valid_actions
end

return game_actions
