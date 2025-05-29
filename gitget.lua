-- Base URL
local base_url = "https://raw.githubusercontent.com/p-curtis/minecraft-tweaked/refs/heads/main/"

-- Prompt for filename
write("Enter the filename (e.g. f.lua): ")
local filename = read()

-- Construct full URL
local full_url = base_url .. filename

-- Call wget to download the file
print("Running: wget " .. full_url .. " " .. filename)
shell.run("wget", full_url, filename)
