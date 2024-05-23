local knights = {}

    knights.arthur = require 'definitions.arthur'
    knights.lancelote = require 'definitions.lancelote'

    knights.list = {
        'arthur',
        'lancelote'
    }

    knights.atributes = {
        'attack',
        'defense',
        'health',
        'speed',
        'power'
    }

return knights
