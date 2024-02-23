execute if score Playing var matches 1 run scoreboard players add Timer var 1
execute if score Playing var matches 1 run scoreboard players remove TimeLeft var 1

#Time stamps

execute if score Timer var matches 6000 if score Playing var matches 1 run bossbar set minecraft:time color yellow

execute if score Timer var matches 9000 if score Playing var matches 1 run worldborder set 11 30
execute if score Timer var matches 9000 if score Playing var matches 1 run tellraw @a {"text":"Deathmatch started!","color":"red"}
execute if score Timer var matches 9000 if score Playing var matches 1 run bossbar set minecraft:time color red

execute if score Timer var matches 12000 if score Playing var matches 1 if score TimeoutIsDraw gamerule matches ..0 run tellraw @a {"text":"Time has run out. Natural regeneration is now disabled!","color":"red"}
execute if score Timer var matches 12000 if score Playing var matches 1 if score TimeoutIsDraw gamerule matches ..0 run gamerule naturalRegeneration false

execute if score Timer var matches 12000 if score Playing var matches 1 if score TimeoutIsDraw gamerule matches 1.. run tellraw @a {"text":"Timeout! The game is a draw.","color":"blue"}
execute if score Timer var matches 12000 if score Playing var matches 1 if score TimeoutIsDraw gamerule matches 1.. run scoreboard players set Playing var 0

execute if score Timer var matches 13500 if score Playing var matches 1 run tellraw @a {"text":"Countdown to death has started.","color":"red"}
execute if score Timer var matches 13500 if score Playing var matches 1 run effect give @a wither 3 0 true

execute if score Timer var matches 13560 if score Playing var matches 1 run effect give @a wither 2 0 true
execute if score Timer var matches 13560 if score Playing var matches 1 run scoreboard players set Timer var 13520

#Check for winner
execute store result score Alive var run execute if entity @a[scores={deaths=0}]
execute if score Alive var matches ..1 if score Playing var matches 1 run tellraw @a ["",{"selector":"@a[scores={deaths=0},limit=1]","color":"green"},{"text":" is the winner!","color":"green"}]
execute if score Alive var matches ..1 if score Playing var matches 1 run scoreboard players add @a[scores={deaths=0},limit=1] wins 1

execute if score Alive var matches ..1 if score Playing var matches 1 run kill @e[type=vindicator]
execute if score Alive var matches ..1 if score Playing var matches 1 run kill @e[type=phantom]

execute if score Alive var matches ..1 if score Playing var matches 1 run scoreboard players set Playing var 0


#Bossbar
bossbar set minecraft:time players @a
execute store result bossbar minecraft:time value run scoreboard players get TimeLeft var

scoreboard players operation Seconds var = TimeLeft var
scoreboard players set Temp var 20
scoreboard players operation Seconds var /= Temp var

scoreboard players operation Minutes var = Seconds var
scoreboard players set Temp var 60
scoreboard players operation Minutes var /= Temp var

scoreboard players operation Seconds var %= Temp var

#define storage timer Stores zeros for the timer
execute if score Seconds var matches 0..9 run data merge storage timer {Seconds:"0"}
execute unless score Seconds var matches 0..9 run data merge storage timer {Seconds:""}
execute if score Minutes var matches 0..9 run data merge storage timer {Minutes:"0"}
execute unless score Minutes var matches 0..9 run data merge storage timer {Minutes:""}
bossbar set minecraft:time name ["",{"nbt":"Minutes", "storage": "timer"},{"score":{"name":"Minutes","objective":"var"}},{"text":":"},{"nbt":"Seconds", "storage": "timer"},{"score":{"name":"Seconds","objective":"var"}}]