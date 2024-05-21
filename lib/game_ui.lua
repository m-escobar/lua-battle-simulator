local lib = require 'lib.game_lib'

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
end

return game_ui