local lib = require 'lib.game_lib'
local players = require 'definitions.players'

local game_ui = {}

--- Print game header
function game_ui.print_header()
    print(
    [[
=======================================================================

                    ⚔️   Battle Simulator   ⚔️


                        |
            ////////////|---------------------------------,
            `^^^^^^^^^^^|--------------------------------"


=======================================================================
    ]])
end


function game_ui.print_players_grid(player, opponent)
    lib.clear()
    game_ui.print_header()

    lib.print_line(player.name, opponent.name)
    lib.print_line(player.description, opponent.description)
    lib.print_line(' ', ' ')

    for _, v in pairs(players.atributes) do
        local nSpaces = lib.addSpaces(utf8.len(v), 10)

        lib.print_line(v .. nSpaces .. lib.getProgressBar(player[v]), v .. nSpaces .. lib.getProgressBar(opponent[v]), 1)
    end

    print('=======================================================================')
    print()
end

return game_ui