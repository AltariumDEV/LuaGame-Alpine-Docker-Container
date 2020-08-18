local menu2 = require("game_assets/gamemenu")
local modernterm = require("customlib/modernterm")
local gamefunc = require("customlib/gamefunc")

modernterm.clearTerm()
print(menu2.rpgMenu)
input2 = gamefunc.selection("number")

local switchCase2 = {
    [1] = function()
        print("Dungeon Menu Here.")
        modernterm.sleep(1)
        gamefunc.resetState("game")
    end,
    [2] = function()
        print("Shop Menu Here")
        modernterm.sleep(1)
        gamefunc.resetState("game")
    end,
    [3] = function()
        print("Boss Arena Menu Here")
        modernterm.sleep(1)
        gamefunc.resetState("game")
    end,
    [4] = function()
        print("Profile Goes here.")
        modernterm.sleep(1)
        gamefunc.resetState("game")
    end,
    [5] = function()
        print("Save Game Goes Here")
        modernterm.sleep(1)
        gamefunc.resetState("game")
    end,
    [6] = function()
        modernterm.clearTerm()
        print(menu2.rpgMenuExit)
        modernterm.pauseExec()
        input3 = gamefunc.selection()
        if string.lower(input3) == "y" then
            modernterm.sleep(1)
            gamefunc.resetState("main")
        else
            modernterm.sleep(1)
            gamefunc.resetState("game")
        end
    end
}

if tonumber(input2) then
    local case = switchCase2[input2]
    if (case) then
        case()
    else
        print("Selected Option was out of bounds.")
        modernterm.sleep(1)
        modernterm.clearTerm()
        dofile("game/basic/game.lua")
    end
else
    print("Input was invalid")
    modernterm.sleep(1)
    modernterm.clearTerm()
    dofile("game/basic/game.lua")
end