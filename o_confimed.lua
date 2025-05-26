local initialize = require "o_initialize"

local function confirmed(prompt)
    while true do
      term.write(prompt .. " (Y/n): ")
      local response = string.lower(read())
  
      if response == "y" then
        return true
      else
        initialize()
        --print("Please enter 'y' or 'n'.")
        return false
      end
    end
  end
  
  return confirmed