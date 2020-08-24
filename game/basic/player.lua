--[[
    Stats Documentation

    HP, MP, TP:
    -- hpNow: The Current HP of the stats, changes during battles and can be healed by either spells or items.
    -- hpMax: The Max HP the stats has
    -- mpNow: Same as the hpNow, but with Mana
    -- mpMax: Your Max Mana (Mana only matters for classes that need to intensively work with mana (Caster, Aether Gunslinger, Healer))
    -- tpNow: Same as hpNow, but with Tech Points
    -- tpMax: Your max Tech points. These only matter for classes that do physical damage to enemies (Archer, Warrior, Tank etc.)
    
    Important Stats:
    -- strength: The strength stat that gets used for most battles.
    -- defense: The defense stat that gets used for most battles (Changes with the armor you are wearing)
    -- agility: This allows you to evade hits easier. The Evasion can never be 100% and is always capped at 80. Some attack damage is scaled on agility
    -- intelligence: This makes spells stronger and allows you to use better versions of spells
]]

local player = {
    -- General Things.
    ["name"] = "None",
    ["class"] = "None",
    ["difficulty"] = "None",
    -- Money
    ["money"] = 0,
    -- Level
    ["level"] = 1,
    ["expNow"] = 0,
    ["expNeeded"] = 10,
    -- Equipment
    ["helmet"] = "None",
    ["armor"] = "None",
    ["accessory"] = "None",
    ["weapon"] = "None",
    -- Stats
    ["hpNow"] = 100,
    ["hpMax"] = 100,
    ["mpNow"] = 100,
    ["mpMax"] = 100,
    ["tpNow"] = 10,
    ["tpMax"] = 10,
    ["str"] = 1,
    ["def"] = 1,
    ["agi"] = 1,
    ["int"] = 1,
    -- Inventory
    ["s_potionHP"] = 0,
    ["m_potionHP"] = 0,
    ["l_potionHP"] = 0,
    ["xl_potionHP"] = 0,
    ["s_potionMP"] = 0,
    ["m_potionMP"] = 0,
    ["l_potionMP"] = 0,
    ["xl_potionMP"] = 0,
    ["bread_TP"] = 0,
}

return player