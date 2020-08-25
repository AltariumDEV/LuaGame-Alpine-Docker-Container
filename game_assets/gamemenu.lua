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
║    Gunslinger               ║
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
newGameWarningHardcore = [[
╔══════════════╦══════════════╗
║   New Game   ║  Hardcore    ║
╠══════════════╩══════════════╣
║          WARNING!!!         ║
║    In Hardcore Mode your    ║
║    death is permanent and   ║
║    There is no savefiles    ║
║   Do you want to continue?  ║
╠═════════════════════════════╣
║      Y (Yes) - N (No)       ║
╚═════════════════════════════╝
If you say no, your difficulty will be set to "Hard" instead.
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
-- Continue Game -- Gets called when you continue game
contGame1 = [[
╔══════════════╦══════════════╗
║    Continue  ║   Name       ║
╠══════════════╩══════════════╣
║    Enter your name below    ║
╚═════════════════════════════╝
]],
contGame2 = [[
╔══════════════╦══════════════╗
║    Continue  ║              ║
╠══════════════╩══════════════╣
║    Please Wait, file is     ║
║    Being loaded...          ║
╚═════════════════════════════╝
]],
contGame3 = [[
╔══════════════╦══════════════╗
║    Continue  ║  Successful  ║
╠══════════════╩══════════════╣
║      File was loaded!       ║
╚═════════════════════════════╝
]],
-- RPG Main Menu -- Gets called once you are IN the game
rpgMenu = [[ 
╔═════════════════════════════╗
║        Game Screen          ║
╠════╦════════════════════════╣
║ 1. ║ Dungeons               ║
║ 2. ║ Shops                  ║
║ 3. ║ Profile                ║
║ 4. ║ Inventory              ║
║ 5. ║ Save Game              ║
║ 6. ║ Exit Game              ║
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
rpgMenuSaveWarning = [[
╔══════════════╦══════════════╗
║   Save Game  ║   Warning    ║
╠══════════════╩══════════════╣
║   Savefile already exists   ║
║   Do you want to overwrite  ║
║            it?              ║
║       [Y(Yes)/N(No)]        ║
╚═════════════════════════════╝
]],
rpgMenuSaveCancel = [[
╔══════════════╦══════════════╗
║   Save Game  ║  Cancelled   ║
╠══════════════╩══════════════╣
║     Game was not saved.     ║
╚═════════════════════════════╝  
]],
rpgMenuSaved = [[
╔══════════════╦══════════════╗
║   Save Game  ║  Successful  ║
╠══════════════╩══════════════╣
║         Game saved!         ║
╚═════════════════════════════╝
]],
-- Working on a better profile screen
profileHeader = [[
╔════════════════════════════════════════════╗
║                  Profile                   ║
╚════════════════════════════════════════════╝
]],
profileFooter = [[
╔════════════════════════════════════════════╗
║ Enter - Exit to Game Menu                  ║
╚════════════════════════════════════════════╝
]],
invHeader = [[
╔════════════════════════════════════════════╗
║                Inventory                   ║
╚════════════════════════════════════════════╝
]],
invFooter = [[
╔════════════════════════════════════════════╗
║ Enter - Exit to Game Menu                  ║
╚════════════════════════════════════════════╝
]],
}

return gamemenu