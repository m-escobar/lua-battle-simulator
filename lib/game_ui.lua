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


=======================================================================]])
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

        if (v=='health') then
            lib.print_line(' ', ' ')
        end
    end

    lib.print_line(' ', ' ')
    print('=======================================================================')
    print()
end

function game_ui.game_over(player, opponent, type)
    lib.clear()
    game_ui.print_header()
    game_ui.print_players_grid(player, opponent)

    if type == 1 then
        print([[

        Congratulations You WIN!!!


]])
    else
        print([[

        Ohhhh you lose!!! Try again!


]])
    end
end

return game_ui