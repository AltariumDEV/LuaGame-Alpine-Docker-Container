local simpleos = {}
local clock = os.clock

function sleep(n)  -- seconds
  local t0 = clock()
  while clock() - t0 <= n do end
end

simpleos.sleep = sleep

return simpleos