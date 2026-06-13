# minecraft-tweaked.cc
Minecraft's "[Tweaked.cc](https://tweaked.cc/)" Mod uses LUA to program. This is based off an older mod called "computercraft". 

These are my very novice scripts. I wouldn't reccommed using them.

# Accessing $THIS Git Repository to Download these Lua Files In-Game
## Windows Computer - Single Player - CurseForge - 2026 (1.20+)
Ensure your local minecraft instance is shut down.
1. In CurseForge, right click the modpack profile and select "Open Folder".
    - For me, this opened `C:\Users\MY_USER\curseforge\minecraft\Instances\Craftoria`
2. Navigate to `saves\MY_INSTANCE\serverconfig`.
3. Inside this `serverconfig` folder:
    - Make a newfolder called `computercraft`.
    - Make a new folder in "computercraft" called `config-server.toml`.
4. Reference the TOML file in this repository called `config-server.toml` for the modified version of the default configuration specific to this repository. It includes the following changes only:
5. The full path, after file creation is: `C:\Users\MY_USER\curseforge\minecraft\Instances\Craftoria\saves\MY_INSTANCE\serverconfig\computercraft\config-server.toml`

```TOML
[http]
	enabled = true
	
    # ... other lines from the configuration go here

	[[http.rules]]
		host = "https://raw.githubusercontent.com/p-curtis/minecraft-tweaked/refs/heads/main/lua"
		action = "allow"
```
5. The http.rules block scopes the "allow" action to files from this repository. Specifically, only for the lua modules in this repository.

# Notes & Observations about TweakedCC
## Intro
The main Tweaked components you'll interact with are called "Peripherals". Their purpose is as follows:
|Peripheral|Entity|Description|
|:-:|:-:|-|
|Computer|`computercraft:computer_normal`|Used to create/run programs... and more! The brains of TweakedCC. Also has `computer_advanced` option.|
|Drive|`computercraft:disk_drive`|Used to manipulate `disks` ("floppy drives") contents and play media.|
|Modem|`computercraft:wired_modem`|Allows messages to be sent over distance. Also has `wireless_modem` and `wireless_modem_advanced` option. The modpock mentions that `rednet` (included) may be simpler to use.|
|Monitor|`computercraft:monitor_normal`|Used to display content. Also has `monitor_advanced` option.|
|Printer|`computercraft:printer`|Used to print text onto pages. Pages can be turned into printed pages or books.|
|Redstone_Relay|`computercraft:redstone_relay`|Allows reading and outputting of redstone signals.|
|Speaker|`computercraft:speaker`|Used to play notes, sounds, and audio.|

### Computers

#### Helpful Commands (in case an absolute beginner stumbles upon this, this is for you!):
- `help` will output a help menu, including a `help programming` command that will provide you with a tutorial on the mod and lua programming language (Helpful hint, you can press the `<tab>` key to auto-complete commands). `help index` will list ALL help articles.
- `ls` and `cd` will allow you to "list" and "change directories" across a directory structure.
- `peripherals` will tell you what is connected to the computer.
- `programs` will output the utilities that you can use on the computer (such as `ls`, `peripherals`, etc.).
- `edit` will let you create files. You can run them in the `shell`.
- Naming a program `startup` will run it automatically when the computer starts. Must be placed in the root directory or on a mounted disk drive.
- `bg` will run a program in the background. Example: `bg worm`.
- `fg` will run a program in the foreground. Example: `fg worm`.

#### Helpful Key Binds
Retrieved from the `help programming` guide:
- `CTRL + T` will terminate a program stuck in a loop. Must be held for 1 second.
- `CTRL + S` will quickly shutdown a computer. Must be held for 1 second.
- `CTRL + R` will quickly reboot a computer. Must be helpd for 1 second.

#### Interactions with Other Components
##### Computers Interacting with: Computers
Shared Directories: If two or more computers are attached to each other, they appear to share their directories. You can validate this by placing two computers side by side and running `mkdir temp`. You should be able to `ls` on either computer and both will have the same directories shared.

##### Computers Interacting with: Monitors
Computers must be directly connected to a monitor to output to it. Even a computer inbetween another monitor does not work. In the example below, the computer we are interacting with is surrounded by asterisks (*).

|Valid?||||
|-|:-:|:-:|:-:|:-:|
|Valid|\*C\*|M|M|
|Invalid|\*C\*|C|M|

##### Computers Interacting with: Modems
Notes: rednet

### Monitors
`monitors` can be as large as 8 (w) x 6 (h) for a maximum size of 48 blocks.

### Modems

### Turtles
To copy it straight from the TweakedCC site:
> Turtles are a robotic device, which can break and place blocks, attack mobs, and move about the world. They have an internal inventory of 16 slots, allowing them to store blocks they have broken or would like to place.

