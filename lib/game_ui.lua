local lib = require 'lib.game_lib'
local knights = require 'definitions.knights'

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


function game_ui.print_players_grid(knight, monster)
    lib.clear()
    game_ui.print_header()

    lib.print_line(knight.name, monster.name)
    lib.print_line(knight.description, monster.description)
    lib.print_line(' ', ' ')

    for _, v in pairs(knights.atributes) do
        local nSpaces = lib.addSpaces(utf8.len(v), 10)

        lib.print_line(v .. nSpaces .. lib.getProgressBar(knight[v]), v .. nSpaces .. lib.getProgressBar(monster[v]), 1)
    end

    print('=======================================================================')
    print()
end

return game_ui