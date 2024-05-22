local godzilla = require 'definitions.godzilla'
local kingkong = require 'definitions.kingkong'

local monsters = {}

    monsters.godzilla = godzilla
    monsters.kingkong = kingkong

    monsters.list = {
        'godzilla',
        'kingkong'
    }

    monsters.actions = {
        'Tried to bite you',
        'Dropped a rock on you',
        'Direct attack'
    }

return monsters
