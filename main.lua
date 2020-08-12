-- Main File, this is the initializer file of the code --

local menu1 = require("game_assets/mainmenu")
local modernterm = require("customlib/modernterm")
local gf = require("customlib/gamefunc")

-- Program Initializer --
local switchCase = {
    [1] = function()
        print("Stating the New Game Script")
        gf.sleep(1)
        modernterm.clearTerm()
        dofile("game/mainMenu/newGame.lua")
    end,
    [2] = function()
        print("Continuing Game.")
        gf.sleep(1)
        modernterm.clearTerm()
        dofile("game/mainMenu/continueGama.lua")
    end,
    [3] = function()
        modernterm.clearTerm()
        print(menu1.story)
        io.read()
        gf.resetState("main")
    end,
    [4] = function()
        print("Going to settings.")
        gf.sleep(1)
        modernterm.clearTerm()
        dofile("game/mainMenu/settings.lua")
    end,
    [5] = function()
        modernterm.clearTerm()
        print(menu1.change)
        print("Enter - Exit to menu")
        io.read()
        gf.resetState("main")
    end,
    [6] = function()
        modernterm.clearTerm()
        print(menu1.credits)
        print("Enter - Exit to menu")
        io.read()
        gf.resetState("main")
    end,
    [7] = function()
        print("Game exited with returncode 0 (EXECUTION_SUCCESSFUL)")
    end
}

modernterm.clearTerm()
print(menu1.mainMenu)
io.write("//:> ")
input1 = io.read("*number")
io.read()

if tonumber(input1) then
    local case = switchCase[input1]
    if (case) then
        case()
    else
        print("Selected Option was out of bounds.")
        gf.sleep(1)
        modernterm.clearTerm()
        dofile("main.lua")
    end
else
    print("Input was invalid")
    gf.sleep(1)
    modernterm.clearTerm()
    dofile("main.lua")
end
