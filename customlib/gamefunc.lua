local gamefunc = {}

local wa = require("customlib/workaround")
local modernterm = require("customlib/modernterm")
local player = require("game/basic/player")
local saveassets = require("game_assets/gamemenu")
local defaults = require("game_assets/defaults")

-- Selection: Just a selection protocol for the game IO

function selection(m)
  io.write("//:> ")
  if m == "number" then
    temp = io.read("*number")
  else
    temp = io.read()
  end
  return temp
end

--[[
  resetState(n)

  -- resetState is used to reset the state back to a previous State if an error occurs.
     This feature is usually used for user input that is invalid or out of bounds.

     5 current states: main (Main Menu), game (Game Menu), newgame (loads the New Game sequence), settings (opens the settings menu) and debug (opens the debug menu)

]]
function resetGame()
  for k, v in pairs(player) do
    player[k] = defaults[k]
  end
end

function resetState(n)
  local switchCase = {
    ["main"] = function()
      modernterm.clearTerm()
      dofile("main.lua")
    end,
    ["game"] = function() 
      modernterm.clearTerm()
      dofile("game/basic/game.lua")
    end,
    ["newGame"] = function()
      modernterm.clearTerm()
      dofile("game/mainMenu/newGame.lua")
    end,
    ["loadGame"] = function()
      modernterm.clearTerm()
      dofile("game/mainMenu/continueGame.lua")
    end,
    ["settings"] = function()
      modernterm.clearTerm()
      dofile("game/mainMenu/settings.lua")
    end,
    ["debug"] = function()
      modernterm.clearTerm()
      dofile("game/basic/debug.lua")
    end
  }
  local case = switchCase[n]
  if (case) then
    case()
  else
    print("Invalid Usage - State not Programmed.")
  end
end

-- saveGame(player.name)

function savefile_exists(name)
  local f=io.open("savefiles/"..name..".lrpg","r")
  if f~=nil then io.close(f) return true else return false end
end

function saveGame(n)
      file = io.open("savefiles/"..n..".lrpg", "w")
      if (file) then
        for k, v in pairs(player) do file:write(k.." "..v.."\n") end
      else
        print("Error while opening file")
      end
      file:close()
end

function loadGame(n)
  file = io.open("savefiles/"..n..".lrpg", "r")
  fileEnd = false
  tempArray = {}
  if (file) then
    while fileEnd == false do
      local tempString = file:read("l")
      if tempString ~= "" and tempString ~= nil then
        for k,v in next, string.split(tempString, ' ') do 
          if k == 1 then
            tempLoc = v
          else
            tempVal = v
          end
          player[tempLoc] = tempVal
        end
      else
        fileEnd = true
      end
    end
  else
    print("Error while opening file")
  end
end

gamefunc.savefile_exists = savefile_exists
gamefunc.saveGame = saveGame
gamefunc.loadGame = loadGame
gamefunc.selection = selection
gamefunc.resetGame = resetGame
gamefunc.resetState = resetState

return gamefunc