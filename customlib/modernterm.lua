local modernterm = {}

-- Operating System Replacement functions (since os.execute() is too complicated.)

local clock = os.clock
function sleep(n)  -- seconds
  local t0 = clock()
  while clock() - t0 <= n do end
end

function pauseExec()
    io.read()
end

-- Terminal Functions

function clearTerm()
    io.write("\027[H\027[2J")
end

-- Color Functions

function resetColor()
    print("\027[0m")
end

function setColor(fg, bg) -- 8 bit variation allows for 256 colors from 0-255
    -- Check if colorcodes have been given, else set the colors to default variables.
    if tonumber(fg) and tonumber(bg) then
        bit8ANSI = "\027[38;5;"..fg.."m\027[48;5;"..bg.."m"
        print(bit8ANSI)
    end
end

function setRGBColor(fgR, fgG, fgB, bgR, bgG, bgB) -- 24 bit variation, allows every color of the RGBset
    -- Check values of RGB and use them in this variation.
    if tonumber(fgR) and tonumber(fgG) and tonumber(fgB) then
        if bgR or bgG or bgB ~= nil then
            bit24ANSI = "\027[38;2;"..fgR..";"..fgG..";"..fgB.."m\027[48;2;"..bgR..";"..bgG..";"..bgB.."m"
            print(bit24ANSI)
        else    
            bit24ANSI = "\027[38;2;"..fgR..";"..fgG..";"..fgB.."m"
            print(bit24ANSI)
        end
    end
end

modernterm.sleep = sleep
modernterm.pauseExec = pauseExec
modernterm.clearTerm = clearTerm
modernterm.resetColor = resetColor
modernterm.setColor = setColor 
modernterm.setRGBColor = setRGBColor

return modernterm