local lib = require 'lib.game_lib'
local actions = require 'lib.game_actions'
local ui = require 'lib.game_ui'

local knights = require 'definitions.knights'
local monsters = require 'definitions.monsters'

local knights_counter = #knights.list
local monsters_counter = #monsters.list

lib.setUTF8()

local knight_id = actions.select_kight(knights.list, knights_counter)
local knight = knights[knights.list[knight_id]]

local monster_id = math.random(#monsters.list)
local monster = monsters[monsters.list[monster_id]]

--print(knight.name)
--print(monster.name)


ui.print_players_grid(knight, monster)