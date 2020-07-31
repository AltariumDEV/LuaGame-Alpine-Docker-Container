-- Assets --
local assets = {
 -- Game Main Menu -- Gets called at the start of the script
gameMenu = [[
==============================
|  LuaRPG -  R.O.A. Edition  |
==============================
| 1. | Start Game          < |
| 2. | Continue Game       < |
| 3. | Story               < |
==============================
| 4. | Changelog           < |
| 5. | Exit Game           < |
==============================
]],
-- Changelog -- Gets called when you navigate to "Changelog" on the Game Main Menu
change = [[ 
===============================
| Changelog | LuaRPG 1.0      |
===============================
|                             |
|  - Cleaner UI               |
|                             |
===============================
]],
 -- Story -- Gets called when you navigate to "Story" on the Game Main Menu
story = [[
===============================
| Story(W.I.P)                |
===============================

===============================
| Enter | Return to menu      |
=============================== 
]],
-- newGame 1-5 get called during the initiation of the newGame() function
newGame1 = [[
===============================
|    New Game  |   Name       |
===============================
|    Enter your name below    |
===============================
]],
newGame2 = [[
===============================
|    New Game  |  Paints      |
===============================
|    Enter a color below      |
|    Type ?p for paints!      |
===============================
]],
newGame3 = [[
===============================
|    New Game  |  Class       |
===============================
|    Enter a class below      |
|    Type ?c for classes      |
===============================
]],
newGame4 = [[
===============================
|   New Game   |  Difficulty  |
===============================
|   Select your Difficulty    |
|   1 - Baby Mode             |
|   2 - Easy Mode             |
|   3 - Medium Mode           |
|   4 - Hard Mode             |
|   5 - Hardcore              |
|   6 - Master                |
===============================
]],
newGame5 = [[
===============================
|    New Game  |  Finish      |
===============================
|    That was it.             |
|    Type "I am ready!"       |
===============================
]],
-- RPG Main Menu -- Gets called once you are IN the game
rpgMenu = [[ 
===============================
|  LuaRPG - [PLAYERNAME HERE] |
===============================
| 1. | Fight                < |
| 2. | Shops                < |
| 3. | Boss Arena           < |
===============================
| 4. | Profile              < |
| 5. | Save Game            < |
| 6. | Exit Game            < |
===============================
]],
-- Working on a better profile screen
profile = [[
===============================
|           Profile           |
===============================
]]
}

return assets