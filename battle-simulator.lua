local lib = require 'lib.game_lib'
local actions = require 'lib.game_actions'

local knights = require 'definitions.knights'
local monsters = require 'definitions.monsters'

local knights_counter = #knights.list


lib.setUTF8()

lib.print_header()

local knight = actions.select_kight(knights.list)

print ()
print ()