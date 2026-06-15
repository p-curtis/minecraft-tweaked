-- Work In Progress

local pretty = require "cc.pretty"
local numCheck = require "o_numCheck"
local initialize = require "o_initialize"
local confirmed = require "o_confirmed"

local function treeChop()
  local turtle
  local 

  confirmed(print("This program will only chop 'minecraft:oak_logs'. Ensure the turtle is facing the desired object, and that it has a chest behind it. OK to proceed? "))

  confirmed(print("This program requires a copy of the log you want to chop. Place one log in slot 1 (upper-left). Have you done this? ")
end

local function chopPreCheck()
  local i = 1
  local itemDetail = {}
  for i <= 16 do
    if turtle.compare() == true
    itemDetail = turtle.getItemDetail()
    print("Slot: "..i.." - "..itemDetail)
      break
    else 
      turtle.compareTo(i+1)
    if 

local function moveAndChop()
end


treeChop()
