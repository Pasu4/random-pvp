#execute unless @a[gamemode=survival] run tellraw @a "No survival players found."
#tag @r[gamemode=survival] add spread
tag @r add spread
spreadplayers 0 0 0 10000000 false @a[tag=spread]
#execute as @a[tag=spread] at @s align xz run tp ~.5 ~ ~.5
tp @a @a[tag=spread,limit=1]
execute at @a[tag=spread] align xz positioned ~.5 ~ ~.5 run worldborder center ~ ~
execute at @a[tag=spread] run worldborder set 201
execute at @a[tag=spread] run spawnpoint @a ~ ~ ~
tag @a remove spread
clear @a[gamemode=survival]
time set 1000

effect clear @a

execute as @a at @s run spawnpoint @s ~ ~ ~
gamerule doImmediateRespawn true
kill @a
gamerule doImmediateRespawn false

gamerule naturalRegeneration true

execute at @r run setblock ~ ~ ~ command_block[facing=up]{Command:"execute at @r run spreadplayers ~ ~ 50 90 false @a", auto:1}
execute at @r run setblock ~ ~1 ~ chain_command_block[facing=up]{Command:"execute as @a run function random_pvp:handicap", auto:1}
execute at @r run setblock ~ ~2 ~ chain_command_block[facing=up]{Command:"fill ~ ~-2 ~ ~ ~ ~ air", auto:1}

worldborder set 51 300

#Scoreboard
scoreboard players set Timer var 0
scoreboard players set TimeLeft var 12000
scoreboard players set Playing var 1
scoreboard players set @a deaths 0

bossbar set minecraft:time color green