local menu2 = require("game_assets/gamemenu")
local modernterm = require("customlib/modernterm")
local gamefunc = require("customlib/gamefunc")

print(menu2.contGame1)
nameInput = gamefunc.selection()
if nameInput ~= "" and gamefunc.savefile_exists(nameInput) == true then
    modernterm.clearTerm()
    print(menu2.contGame2)
    gamefunc.loadGame(nameInput)
    modernterm.sleep(1)
    modernterm.clearTerm()
    print(menu2.contGame3)
    modernterm.sleep(1)
    gamefunc.resetState("game")
else
    print("Name cannot be empty or savefile could not be located.")
    modernterm.sleep(1)
    gamefunc.resetState("loadGame")
end