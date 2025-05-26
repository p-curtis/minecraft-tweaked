local function numCheck(num)
  local number = tonumber(num) --Convert Sting to number.

  if not number then
    print("That's not a number!")
    return false
  end

  if number > 256 then
    print("Number is too high. Cannot exceed '256'.")
    return false
  elseif number < -30 then
    print("Number is too low. Cannot exceed '-30'.")
    return false
  end

  return true
end

return numCheck