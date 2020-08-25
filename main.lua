-- Main File, this is the initializer file of the code --

local menu1 = require("game_assets/mainmenu")
local modernterm = require("customlib/modernterm")
local gf = require("customlib/gamefunc")

-- Program Initializer --

modernterm.clearTerm() -- Clears the terminal
gf.resetGame() -- Resets the file every time the gameState is reset to mainMenu (This makes it impossible to recover Hardcore savegames. :) )

-- First Inputs
print(menu1.mainMenu)
io.write("//:> ")
input1 = io.read("*number")
modernterm.pauseExec()

local switchCase = {
    [1] = function()
        print("Stating the New Game Script")
        modernterm.sleep(1)
        modernterm.clearTerm()
        gf.resetState("newGame")
    end,
    [2] = function()
        modernterm.sleep(1)
        gf.resetState("loadGame")
    end,
    [3] = function()
        modernterm.clearTerm()
        print(menu1.story)
        modernterm.pauseExec()
        gf.resetState("main")
    end,
    [4] = function()
        print("Going to settings.")
        modernterm.sleep(1)
        modernterm.clearTerm()
        dofile("game/mainMenu/settings.lua")
    end,
    [5] = function()
        modernterm.clearTerm()
        print(menu1.change)
        modernterm.pauseExec()
        gf.resetState("main")
    end,
    [6] = function()
        modernterm.clearTerm()
        print(menu1.credits)
        modernterm.pauseExec()
        gf.resetState("main")
    end,
    [7] = function()
        print("Game exited with returncode 0 (EXECUTION_SUCCESSFUL)")
    end
}
if tonumber(input1) then
    local case = switchCase[input1]
    if (case) then
        case()
    else
        print("Selected Option was out of bounds.")
        modernterm.sleep(1)
        modernterm.clearTerm()
        dofile("main.lua")
    end
else
    print("Input was invalid")
    modernterm.sleep(1)
    modernterm.clearTerm()
    dofile("main.lua")
end
