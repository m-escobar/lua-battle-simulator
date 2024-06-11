local lib = require 'lib.game_lib'
local ui = require 'lib.game_ui'
local actions = require 'lib.game_actions'
local player_actions = require 'lib.player_actions'

local players = require 'definitions.players'

local player_action_name = 0
local opponent_action_name = 0

lib.setUTF8()


local player_id = actions.select_player(players.list)
local player = players[players.list[player_id]]

local opponent_id = actions.select_opponent(players.list, player_id)
local opponent = players[players.list[opponent_id]]


repeat
    lib.clear()
    ui.print_header()
    ui.print_players_grid(player, opponent)

    player_action_name = actions.select_action(player)
    print('PAN', player_action_name)
    player_actions[player_action_name].execute(player, opponent)

	if opponent.health <= 0 then
        ui.game_over(player, opponent, 1)
        break
    end

    opponent_action_name = opponent.actions[math.random(#opponent.actions)]
    print('OAN', opponent_action_name)
    player_actions[opponent_action_name].execute(opponent, player)

    if player.health <= 0 then
        ui.game_over(player, opponent, 2)
        break
    end

lib.read_option()
until false
