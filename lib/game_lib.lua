local game_lib = {}

--- Set system OS variable
function game_lib.os()
    if package.config:sub(1,1) == '\\' then
        _G.OS = 1 -- windows
    else
        _G.OS = 2 -- linux based
    end
end


--- Clear screen
function game_lib.clear()
    if _G.OS == 1 then
        os.execute('cls')
    else
        os.execute('clear')
    end
end


--- Set UTF-8 for Windows Terminal
function game_lib.setUTF8()
    game_lib.os()

    if _G.OS == 1 then
        os.execute('chcp 65001')
    end

    game_lib.clear()
end


function game_lib.capitalize(str)
    return str:lower():gsub("^%l", string.upper)
end


function game_lib.read_option()
    return io.read("*number")
end


function game_lib.addSpaces(strSize, blockLength)
	local result = ''

	for _pos = strSize, blockLength, 1 do
		result = result .. ' '
	end

	return result
end


-- Create a formated line that composes the grid
function game_lib.print_line(param1, param2, margin, fixSize)
    local spaces = ''
    local block1 = ''
    local block2 = ''

    param1 = param1 or ''
    param2 = param2 or ''

    if margin ~= nil then
    	for _x = 1, margin, 1 do
        	spaces = spaces .. '  '
        end
    end

    fixSize = fixSize or 0

    block1 = '| ' .. spaces .. param1
    block2 = '| ' .. spaces .. param2

    local resultBlock1 = game_lib.addSpaces(utf8.len(block1) - fixSize, 34)
    local resultBlock2 = game_lib.addSpaces(utf8.len(block2) - fixSize, 34)

    print(block1 .. resultBlock1 .. block2 .. resultBlock2 .. '|')
end


-- Create progress bar
function game_lib.getProgressBar(attribute)
    local fullChar = '▮'
    local emptyChar = '▯'
    local result = ''

    for i = 1, 10, 1 do
        result = result .. (i <= attribute and fullChar or emptyChar)
    end

    return result
end

return game_lib