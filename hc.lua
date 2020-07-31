-- Module preparation
local hc = {}

-- Tables (Hardcoded Items that are always there. DO NOT PUT CHANGING THINGS HERE.)
-- TODO: Add More Items to this thing.
-- TODO: Add plugin capability.
-- NOTE: Don't cry, it's just Lua. ;w;

-- Default Player Variables for game resets
local default = {
    defaultHP = 100, -- Health
    defaultMana = 50, -- Mana
    defaultXP = 0, -- EXP
    defaultLevel = 1, -- Level
    defaultItems = "None", -- All Item slots
    defaultAllStats = 1, -- All stats (Strength, Defense, Magic, ETC...)
}
-- Items that are Hardcoded
-- Weapons, = Damage Values
local weapons = {
    "Example Weapon",
}
-- armor
local armor = {
    "Example Armor",
}
-- accessories
local accessories = {
    "Example Accessory",
}

-- Local Enemies
local enemy = {
    "ExampleEnemy",
}

-- Put the completed tables into the module for loading in main.lua
-- TODO: Use a better implementation.

hc.default = default
hc.weapons = weapons
hc.armor = armor
hc.accessories = accessories

return hc