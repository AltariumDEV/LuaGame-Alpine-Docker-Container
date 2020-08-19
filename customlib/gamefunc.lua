local gamefunc = {}
local modernterm = require("customlib/modernterm")
local player = require("game/basic/player")

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
    ["newgame"] = function()
      modernterm.clearTerm()
      dofile("game/mainMenu/newGame.lua")
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

function saveGame(n)
  file = io.open("savefiles/"..n..".lrpg", "w")
    if (file) then
      for k, v in pairs(player) do file:write(v.."\n") end
    else
      print("Error while opening file")
    end
    file:close()
end

gamefunc.saveGame = saveGame
gamefunc.selection = selection
gamefunc.resetState = resetState

return gamefunc