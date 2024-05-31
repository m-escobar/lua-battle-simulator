local lib = require 'lib.game_lib'
local actions = require 'lib.game_actions'
local ui = require 'lib.game_ui'

local knights = require 'definitions.knights'
local monsters = require 'definitions.monsters'

local player_action = 0
local oponent_action = 0

lib.setUTF8()


local knight_id = actions.select_kight(knights.list)
local knight = knights[knights.list[knight_id]]

local monster_id = math.random(#monsters.list)
local monster = monsters[monsters.list[monster_id]]


while true do
    lib.clear()
    ui.print_header()
    ui.print_players_grid(knight, monster)

    player_action = actions.select_action(knight)
    player_action.execute()

	if knight.health <= 0 then
		break
	end

    oponent_action = math.random(#monster.actions)

    if monster.health <= 0 then
        break
    end
    break
end
