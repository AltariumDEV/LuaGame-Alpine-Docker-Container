local gamemenu = {
newGame1 = [[
╔══════════════╦══════════════╗
║    New Game  ║   Name       ║
╠══════════════╩══════════════╣
║    Enter your name below    ║
╚═════════════════════════════╝
]],
newGame2 = [[
╔══════════════╦══════════════╗
║    New Game  ║  Class       ║
╠══════════════╩══════════════╣
║    Enter a class below      ║
║    Warrior, Tank, Archer,   ║
║    Caster, Healer,          ║
║    Engineer                 ║
╚═════════════════════════════╝
]],
newGame3 = [[
╔══════════════╦══════════════╗
║   New Game   ║  Difficulty  ║
╠══════════════╩══════════════╣
║   Select your Difficulty    ║
║   1 - Easy Mode             ║
║   2 - Medium Mode           ║
║   3 - Hard Mode             ║
║   4 - Hardcore              ║
╚═════════════════════════════╝
]],
newGame4 = [[
╔══════════════╦══════════════╗
║   New Game   ║   Confirm    ║
╠══════════════╩══════════════╣
║   Please confirm inputs.    ║
║   Y - Finish Setup          ║
║   N - Start from Scratch    ║
╚═════════════════════════════╝
]],
-- RPG Main Menu -- Gets called once you are IN the game
rpgMenu = [[ 
╔═════════════════════════════╗
║        Game Screen          ║
╠════╦════════════════════════╣
║ 1. ║ Dungeons             < ║
║ 2. ║ Shops                < ║
║ 3. ║ Boss Arena           < ║
║ 4. ║ Profile              < ║
║ 5. ║ Save Game            < ║
║ 6. ║ Exit Game            < ║
╚════╩════════════════════════╝
]],
rpgMenuExit = [[
╔═════════════════════════════╗
║    Game Screen - Exit       ║
╠═════════════════════════════╣
║    Do you really want to    ║
║    Exit to the main menu?   ║
║                             ║
║       [Y(Yes)/N(No)]        ║
╚═════════════════════════════╝
]],
-- Working on a better profile screen
profile = [[
╔═════════════════════════════╗
║           Profile           ║
╚═════════════════════════════╝
]],
}

return gamemenu