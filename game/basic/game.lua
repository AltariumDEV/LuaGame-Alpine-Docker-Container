local menu2 = require("game_assets/gamemenu")
local modernterm = require("customlib/modernterm")
local gf = require("customlib/gamefunc")

local switchCase2 = {
    [1] = function()
        print("Dungeon Menu Here.")
        gf.sleep(1)
        modernterm.clearTerm()
        dofile("game/basic/game.lua")
    end,
    [2] = function()
        print("Shop Menu Here")
        gf.sleep(1)
        modernterm.clearTerm()
        dofile("game/basic/game.lua")
    end,
    [3] = function()
        print("Boss Arena Menu Here")
        gf.sleep(1)
        modernterm.clearTerm()
        dofile("game/basic/game.lua")
    end,
    [4] = function()
        print("Profile Goes here.")
        gf.sleep(1)
        modernterm.clearTerm()
        dofile("game/basic/game.lua")
    end,
    [5] = function()
        print("Save Game Goes Here")
        gf.sleep(1)
        modernterm.clearTerm()
        dofile("game/basic/game.lua")
    end,
    [6] = function()
        print("Game exited with returncode 0 (EXECUTION_SUCCESSFUL)")
    end
}

modernterm.clearTerm()
print(menu2.rpgMenu)
io.write("//:> ")
input2 = io.read("*number")
io.read()

if tonumber(input2) then
    local case = switchCase2[input2]
    if (case) then
        case()
    else
        print("Selected Option was out of bounds.")
        gf.sleep(1)
        modernterm.clearTerm()
        dofile("game/basic/game.lua")
    end
else
    print("Input was invalid")
    gf.sleep(1)
    modernterm.clearTerm()
    dofile("game/basic/game.lua")
end