local gamefunc = {}
local modernterm = require("customlib/modernterm")
local clock = os.clock

function sleep(n)  -- seconds
  local t0 = clock()
  while clock() - t0 <= n do end
end

-- Function: resetState - Puts you back to the programmed menu --
function resetState(n)
  if n == "main" then
      modernterm.clearTerm()
      dofile("main.lua")
  elseif n == "game" then
      modernterm.clearTerm()
      dofile("basic/game.lua")
  else
      print("Invalid Usage - State not Programmed.")
  end
end

gamefunc.sleep = sleep
gamefunc.resetState = resetState

return gamefunc