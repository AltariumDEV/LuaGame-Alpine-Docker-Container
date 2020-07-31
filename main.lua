-- Remember to keep everything in as few files as possible --
local asts = require 'assets' -- All game "textures" go here in multiline strings
local func = require 'functions' -- All functions go here (EXP, LevelUp, Damage etc.)
local hc = require 'hc' -- All hardcoded values are in here.

-- Asset Test
print(asts.gameMenu)

-- Hardcode Variable Check
print(hc.weapons[1])
print(hc.armor[1])
print(hc.accessories[1])
print(hc.default.defaultHP)

io.read()
io.read()