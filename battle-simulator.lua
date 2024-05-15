local gamelib = require 'gamelib'

-- Set UTF-8 for Windows Terminal
if package.config:sub(1,1) == '\\' then
    os.execute('chcp 65001')
    os.execute('cls')
else
    os.execute('clear')
end


gamelib.print_header()

