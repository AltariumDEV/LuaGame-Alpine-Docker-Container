local menu2 = require("game_assets/gamemenu")
local modernterm = require("customlib/modernterm")
local gamefunc = require("customlib/gamefunc")
local player = require("game/basic/player")

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
        modernterm.clearTerm()
        dofile("game/basic/profile.lua")
    end,
    [4] = function()
        modernterm.clearTerm()
        dofile("game/basic/inventory.lua")
    end,
    [5] = function()
        if player.difficulty ~= "Hardcore" then
            modernterm.clearTerm()
            if gamefunc.savefile_exists(player.name) == true then
                print(saveassets.rpgMenuSaveWarning)
                io.read()
                userSelection = selection()
                if string.lower(userSelection) == "y" then
                    modernterm.clearTerm()
                    gamefunc.saveGame(player.name)
                    print(menu2.rpgMenuSaved)
                    modernterm.sleep(1)
                    gamefunc.resetState("game")
                else 
                    modernterm.clearTerm()
                    print(saveassets.rpgMenuSaveCancel)
                    modernterm.sleep(1)
                    resetState("game")
                end
            else
                modernterm.clearTerm()
                gamefunc.saveGame(player.name)
                print(menu2.rpgMenuSaved)
                modernterm.sleep(1)
                gamefunc.resetState("game")
            end
        else
            print("Saving your game is disabled in Hardcore mode.\nYou should've read the warning when creating a new game.")
            modernterm.sleep(1)
            gamefunc.resetState("game")
        end
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