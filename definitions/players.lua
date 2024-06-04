local players = {}

    players.arthur = require 'definitions.arthur'
    players.lancelote = require 'definitions.lancelote'
    players.godzilla =  require 'definitions.godzilla'
    players.kingkong = require 'definitions.kingkong'

    players.list = {
        'arthur',
        'godzilla',
        'kingkong',
        'lancelote'
    }

    players.atributes = {
        'health',
        'attack',
        'defense',
        'speed',
        'power'
    }

return players
