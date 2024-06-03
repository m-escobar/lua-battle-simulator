local lib = require 'lib.game_lib'
local actions = require 'lib.game_actions'
local ui = require 'lib.game_ui'

local players = require 'definitions.players'

local player_action = 0
local opponent_action = 0

lib.setUTF8()


local player_id = actions.select_player(players.list)
local player = players[players.list[player_id]]

local opponent_id = math.random(#players.list)
local opponent = players[players.list[opponent_id]]


while true do
    lib.clear()
    ui.print_header()
    ui.print_players_grid(player, opponent)

    player_action = actions.select_action(player)
    player_action.execute()

	if player.health <= 0 then
		break
	end

    opponent_action = math.random(#opponent.actions)

    if opponent.health <= 0 then
        break
    end
    break
end
