-- TODO: Add Functions for the game here (This will be used for every interchangeable thing. (All functions/Variables go here.))

local functions = {}

--[[
    Player Profile, This is here because it's technically a variable thing.
]]  

local playerprofile = {

}

function damageCalc(itemID, level) 
    math.randomseed(os.time())
    crit = math.random(10)
    
    dmgSwitch = {
        [crit <= 1] = function()
            damageValue = 0 
        end,
        [crit <= 9] = function()
            damageValue = (itemID+level*3)/1.25
        end,
    }

    if crit then
        damageValue = dmgSwitch(crit)
    else
        damageValue = ((itemID+level*3)/1.25)*3
    end
    
    return damageValue
end

function levelCalc(level, xp, mobID)
    math.randomseed(os.time())
    math.random(10)

    
end

function itemDrop(mobID)

end

functions.damageCalc = damageCalc
functions.levelCalc = levelCalc

return functions