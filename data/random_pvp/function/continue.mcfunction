#execute unless @a[gamemode=survival] run tellraw @a "No survival players found."
#tag @r[gamemode=survival] add spread
tag @r add spread
spreadplayers 0 0 0 10000000 false @a[tag=spread]
tp @a @a[tag=spread,limit=1]
execute at @a[tag=spread] run worldborder center ~ ~
execute at @a[tag=spread] run worldborder set 201
execute at @a[tag=spread] run spawnpoint @a ~ ~ ~
tag @a remove spread
#clear @a[gamemode=survival]
time set 1000
#effect clear @a
#effect give @a minecraft:instant_health 10 0 true
#effect give @a minecraft:saturation 10 0 true
#effect give @a hunger 3 199 true
execute as @a at @s run spawnpoint @s ~ ~ ~
gamerule doImmediateRespawn true
kill @a
gamerule doImmediateRespawn false

gamerule naturalRegeneration true

# execute at @r run setblock ~ ~ ~ command_block[facing=up]{Command:"execute at @r run spreadplayers ~ ~ 50 100 false @a", auto:1}
# execute at @r run setblock ~ ~1 ~ chain_command_block[facing=up]{Command:"fill ~ ~-1 ~ ~ ~ ~ air", auto:1}
schedule function random_pvp:start_tick1 2t

worldborder set 51 300

#Scoreboard
scoreboard players set Timer var 0
scoreboard players set TimeLeft var 12000
scoreboard players set Playing var 1
scoreboard players set @a deaths 0

bossbar set minecraft:time color green