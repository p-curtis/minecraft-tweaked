local pretty = require "cc.pretty"
local numCheck = require "o_numCheck"
local initialize = require "o_initialize"
local confirmed = require "o_confirmed"

local function preRun()
    local turtle
    local depth

  repeat
    while true do
        term.write("What 'Y' coordinate is turtle?: ")
        local input = read()
        if numCheck(input) then
            turtle = tonumber(input)
            break
        end
    end

    while true do
        term.write("What 'Y' coordinate to dig to?: ")
        local input = read()
        if numCheck(input) then
          depth = tonumber(input)
          break
        end
    end

    initialize()
    pretty.write("Confirming - Turtle is at: " .. pretty.text(tostring(turtle), colors.yellow))
    print("") -- For new line.
    pretty.write("We will dig " .. pretty.text("DOWN ", colors.red) .. "to " .. pretty.text(tostring(depth), colors.yellow) .. " blocks.")
    print("") -- For new line.

  until confirmed("Is this correct?")

end

return preRun