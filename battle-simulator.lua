local lib = require 'lib.game_lib'
local actions = require 'lib.game_actions'
local ui = require 'lib.game_ui'

local knights = require 'definitions.knights'
local monsters = require 'definitions.monsters'

local knights_counter = #knights.list
local player_action = 0

lib.setUTF8()

local knight_id = actions.select_kight(knights.list, knights_counter)
local knight = knights[knights.list[knight_id]]

local monster_id = math.random(#monsters.list)
local monster = monsters[monsters.list[monster_id]]


while true do
    ui.print_players_grid(knight, monster)

    player_action = actions.select_action(knights.actions)

	if knight.health <= 0 then
		break
	end

    --monster_turn()

    if monster.health <= 0 then
        break
    end
end