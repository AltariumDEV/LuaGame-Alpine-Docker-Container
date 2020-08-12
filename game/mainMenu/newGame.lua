local menu2 = require("game_assets/gamemenu")
local player = require("game/basic/player")
local classes = require("game/rpg_elements/classes")
local modernterm = require("customlib/modernterm")
local gf = require("customlib/gamefunc")

modernterm.clearTerm()
print(menu2.newGame1)
io.write("//:> ")
inputng1 = io.read()
player.name = inputng1
print(player.name)

modernterm.clearTerm()
print(menu2.newGame2)
io.write("//:> ")
inputng2 = io.read()
for i,v in ipairs(classes.classlist) do
        if inputng2 = classes.classlist[i] then
            player.class = inputng2
        else
            player.class = "Warrior" -- Warrior Bias if you don't select a damn class
        end
    end
print(player.class)
