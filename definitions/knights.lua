local arthur = require 'definitions.arthur'
local lancelote = require 'definitions.lancelote'

local knights = {}

    knights.arthur = arthur
    knights.lancelote = lancelote

    knights.list = {
        'arthur',
        'lancelote'
    }

    knights.atributes = {
        'attack',
        'defense',
        'health',
        'speed'
    }

    knights.actions = {
            'Sword attack',
            'Shield defense',
            'Run away',
            'Hide behind the big rock'
    }

return knights
