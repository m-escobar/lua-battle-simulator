local lib = require 'lib.game_lib'
local ui = require 'lib.game_ui'
local actions = require 'lib.player_actions'
local players = require 'definitions.players'

local game_actions = {}

function game_actions.select_player(player_list)
    local user_input = 0
    local player_counter = #player_list

    ui.print_header()

    repeat
        print(
[[

Choose your Player and go to the BATTLE field!

]]
    )

        for k, v in ipairs(player_list) do
            print(string.format('%s - %s', k, players[v].name))
        end

        print()

        user_input = lib.read_option()

    until (user_input > 0 and user_input <= player_counter)

    return user_input
end


function game_actions.select_action(player)
    local user_input = 0
    local valid_actions = game_actions.get_valid_actions(player)

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
--- @param player table Player definition
function game_actions.get_valid_actions(player)
    local valid_actions = {}

    for _, v in ipairs(player.actions) do
        local requirement = actions[v].requirement
        local is_valid = requirement == nil or player.items[requirement.name] >= 1

        if is_valid == true then
            valid_actions[#valid_actions + 1] = actions[v].id
        end
    end

    return valid_actions
end

return game_actions
