-- Main File, this is the initializer file of the code --

local menu1 = require("game_assets/mainmenu")
local modernterm = require("customlib/modernterm")
local simpleos = require("customlib/simpleos")

print(menu1.mainMenu)
io.write("//:> ")
input1 = io.read("*number")
io.read()

if tonumber(input1) then
    print("Input was valid")
    
else
    print("Input was invalid")
    simpleos.sleep(1)
    modernterm.clearTerm()
    dofile("main.lua")
end