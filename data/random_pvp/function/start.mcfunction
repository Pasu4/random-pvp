#execute unless @a[gamemode=survival] run tellraw @a "No survival players found."
#tag @r[gamemode=survival] add spread

# Teleport a random player to a random location in the world
tag @r add spread
spreadplayers 0 0 0 10000000 false @a[tag=spread]

# Teleport every player to that position and set up arena
tp @a @a[tag=spread,limit=1]
execute at @a[tag=spread] align xz positioned ~.5 ~ ~.5 run worldborder center ~ ~
execute at @a[tag=spread] run worldborder set 201
execute at @a[tag=spread] run spawnpoint @a ~ ~ ~
execute at @a[tag=spread] run setworldspawn ~ ~ ~
tag @a remove spread

# Reset round
clear @a[gamemode=survival]
time set 1000
effect clear @a
gamerule natural_health_regeneration true

# Kill and immediately respawn players
execute as @a at @s run spawnpoint @s ~ ~ ~
gamerule immediate_respawn true
gamerule show_death_messages false
kill @a
gamerule immediate_respawn false
gamerule show_death_messages true

schedule function random_pvp:start_tick1 5t

# Shrink worldborder in the first half of the game
worldborder set 51 300s

# Scoreboard
scoreboard players set Timer var 0
scoreboard players set TimeLeft var 12000
scoreboard players set Playing var 1
scoreboard players set @a deaths 0
scoreboard players set @a[gamemode=!survival] deaths 1

bossbar set minecraft:time color green

# Set random weather
weather clear 1000000d
execute if predicate random_pvp:rain run weather rain 1000000d
execute if predicate random_pvp:thunder run weather thunder 1000000d

# Set weather based on inventory items
execute if entity @a[nbt={Inventory:[{components:{"minecraft:enchantments":{"minecraft:channeling":1}}}]}] run weather thunder 1000000d
