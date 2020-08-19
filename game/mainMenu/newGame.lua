local menu2 = require("game_assets/gamemenu")
local player = require("game/basic/player")
local classes = require("game/rpg_elements/classes")
local modernterm = require("customlib/modernterm")
local gf = require("customlib/gamefunc")

-- Name Selection
print(menu2.newGame1)
player.general.name = gf.selection()
print(player.general.name)
modernterm.sleep(1)

-- Class Selection
modernterm.clearTerm()
print(menu2.newGame2)
inputng2 = gf.selection()
for i = 1,#classes.classlist,1 do
    if string.lower(inputng2) == string.lower(classes.classlist[i]) then
        player.general.class = classes.classlist[i]
    end
end
if player.general.class == nil or player.general.class == "" then
    player.general.class = "Warrior"
    print("Input was invalid. Class set to: Warrior")
end
print(player.general.class)
modernterm.sleep(1)

-- Difficulty Selection
modernterm.clearTerm()
print(menu2.newGame3)
inputng3 = gf.selection("number")
if tonumber(inputng3) then
    local switchCase3 = {
        [1] = function() 
            player.general.difficulty = "Easy" 
        end,
        [2] = function() 
            player.general.difficulty = "Medium" 
        end,
        [3] = function() 
            player.general.difficulty = "Hard" 
        end,
        [4] = function() 
            player.general.difficulty = "Hardcore" 
        end
    }
    
    local case = switchCase3[inputng3]
    if (case) then
        case()
    else
        print("Input out of bounds, difficulty set to Medium")
        player.general.difficulty="Medium"
    end
else
    print("Input Invalid, difficulty set to Medium")
    player.general.difficulty="Medium"
end
print(player.general.difficulty)
modernterm.sleep(1)

-- Confirmation
modernterm.clearTerm()
print(menu2.newGame4)
print("Player Name: "..player.general.name.."\nClass: "..player.general.class.."\nDifficulty: "..player.general.difficulty.."\n")
modernterm.pauseExec()
inputng4 = gf.selection()
if string.lower(inputng4) == "y" then
    modernterm.sleep(1)
    gf.resetState("game")
else
    modernterm.sleep(1)
    gf.resetState("newgame")
end
