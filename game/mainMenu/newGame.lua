local menu2 = require("game_assets/gamemenu")
local player = require("game/basic/player")
local classes = require("game/rpg_elements/classes")
local modernterm = require("customlib/modernterm")
local gf = require("customlib/gamefunc")

-- Name Selection
print(menu2.newGame1)
player.name = gf.selection()
print(player.name)
modernterm.sleep(1)

-- Class Selection
modernterm.clearTerm()
print(menu2.newGame2)
inputng2 = gf.selection()
for i = 1,#classes.classlist,1 do
    if string.lower(inputng2) == string.lower(classes.classlist[i]) then
        player.class = classes.classlist[i]
    end
end
if player.class == nil or player.class == "" then
    player.class = "Warrior"
    print("Input was invalid. Class set to: Warrior")
end
print(player.class)
modernterm.sleep(1)

-- Difficulty Selection
modernterm.clearTerm()
print(menu2.newGame3)
inputng3 = gf.selection("number")
if tonumber(inputng3) then
    local switchCase3 = {
        [1] = function() 
            player.difficulty = "Easy" 
        end,
        [2] = function() 
            player.difficulty = "Medium" 
        end,
        [3] = function() 
            player.difficulty = "Hard" 
        end,
        [4] = function()
            modernterm.clearTerm()
            print(menu2.newGameWarningHardcore)
            modernterm.pauseExec()
            inputng4 = gf.selection()
            if string.lower(inputng4) == "y" then
                player.difficulty = "Hardcore" 
            else
                player.difficulty = "Hard"                
            end
        end
    }
    
    local case = switchCase3[inputng3]
    if (case) then
        case()
    else
        print("Input out of bounds, difficulty set to Medium")
        player.difficulty="Medium"
    end
else
    print("Input Invalid, difficulty set to Medium")
    player.difficulty="Medium"
end
print(player.difficulty)
modernterm.sleep(1)

-- Confirmation
modernterm.clearTerm()
print(menu2.newGame4)
print("Player Name: "..player.name.."\nClass: "..player.class.."\nDifficulty: "..player.difficulty.."\n")
modernterm.pauseExec()
inputng4 = gf.selection()
if string.lower(inputng4) == "y" then
    modernterm.sleep(1)
    gf.resetState("game")
else
    modernterm.sleep(1)
    gf.resetState("newGame")
end
