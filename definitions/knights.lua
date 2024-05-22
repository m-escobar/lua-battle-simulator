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
        'maxHealth',
        'speed'
    }
return knights
