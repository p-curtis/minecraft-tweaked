local initialize = require("o_initialize")
local preRun = require("o_preRun")

local function main()
  initialize() --Clears screen & resets cursor positioning.
  preRun() --Gathers parameters prior to task lauch.
end

main()