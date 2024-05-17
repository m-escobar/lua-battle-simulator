local game_lib = {}

--- Set UTF-8 for Windows Terminal
function game_lib.setUTF8()
    if package.config:sub(1,1) == '\\' then
        os.execute('chcp 65001')
        os.execute('cls')
    else
        os.execute('clear')
    end
end


function game_lib.print_header()
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

function game_lib.capitalize(str)
    return str:lower():gsub("^%l", string.upper)
end

return game_lib