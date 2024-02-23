kill @e[type=vindicator]
kill @e[type=phantom]
#execute unless @a[gamemode=survival] run tellraw @a "No survival players found."
#tag @r[gamemode=survival] add spread
tag @r add spread
spreadplayers 0 0 0 10000000 false @a[tag=spread]
tp @a @a[tag=spread,limit=1]
execute at @a[tag=spread] run worldborder center ~ ~
execute at @a[tag=spread] run worldborder set 201
execute at @a[tag=spread] run spawnpoint @a ~ ~ ~
tag @a remove spread
clear @a[gamemode=survival]
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

execute at @r run setblock ~ ~ ~ command_block[facing=up]{Command:"execute at @r run spreadplayers ~ ~ 50 100 under 63 true @a", auto:1}
execute at @r run setblock ~ ~1 ~ chain_command_block[facing=up]{Command:"fill ~ ~-1 ~ ~ ~ ~ air", auto:1}

worldborder set 51 300

#Scoreboard
scoreboard players set Global timer 0
scoreboard players set Global timeLeft 12000
scoreboard players set Global playing 1
scoreboard players set @a deaths 0

bossbar set minecraft:time color green

#Mobs

execute at @r run summon minecraft:vindicator ~ ~1 ~ {Invulnerable:1,CustomName:'"Johnny"',CustomNameVisible:1,PersistenceRequired:1b,Johnny:1b,HandItems:[{id:"minecraft:netherite_axe",Count:1,tag:{Enchantments:[{id:"sharpness",lvl:5}]}},{}],HandDropChances:[0F,0F],active_effects:[{id:"speed",amplifier:4}]}
execute at @r run summon minecraft:vindicator ~ ~1 ~ {Invulnerable:1,CustomName:'"Johnny"',CustomNameVisible:1,PersistenceRequired:1b,Johnny:1b,HandItems:[{id:"minecraft:netherite_axe",Count:1,tag:{Enchantments:[{id:"sharpness",lvl:5}]}},{}],HandDropChances:[0F,0F],active_effects:[{id:"speed",amplifier:4}]}
execute at @r run summon minecraft:vindicator ~ ~1 ~ {Invulnerable:1,CustomName:'"Johnny"',CustomNameVisible:1,PersistenceRequired:1b,Johnny:1b,HandItems:[{id:"minecraft:netherite_axe",Count:1,tag:{Enchantments:[{id:"sharpness",lvl:5}]}},{}],HandDropChances:[0F,0F],active_effects:[{id:"speed",amplifier:4}]}
execute at @r run summon minecraft:vindicator ~ ~1 ~ {Invulnerable:1,CustomName:'"Johnny"',CustomNameVisible:1,PersistenceRequired:1b,Johnny:1b,HandItems:[{id:"minecraft:netherite_axe",Count:1,tag:{Enchantments:[{id:"sharpness",lvl:5}]}},{}],HandDropChances:[0F,0F],active_effects:[{id:"speed",amplifier:4}]}
execute at @r run summon minecraft:vindicator ~ ~1 ~ {Invulnerable:1,CustomName:'"Johnny"',CustomNameVisible:1,PersistenceRequired:1b,Johnny:1b,HandItems:[{id:"minecraft:netherite_axe",Count:1,tag:{Enchantments:[{id:"sharpness",lvl:5}]}},{}],HandDropChances:[0F,0F],active_effects:[{id:"speed",amplifier:4}]}
execute at @r run summon minecraft:vindicator ~ ~1 ~ {Invulnerable:1,CustomName:'"Johnny"',CustomNameVisible:1,PersistenceRequired:1b,Johnny:1b,HandItems:[{id:"minecraft:netherite_axe",Count:1,tag:{Enchantments:[{id:"sharpness",lvl:5}]}},{}],HandDropChances:[0F,0F],active_effects:[{id:"speed",amplifier:4}]}
execute at @r run summon minecraft:vindicator ~ ~1 ~ {Invulnerable:1,CustomName:'"Johnny"',CustomNameVisible:1,PersistenceRequired:1b,Johnny:1b,HandItems:[{id:"minecraft:netherite_axe",Count:1,tag:{Enchantments:[{id:"sharpness",lvl:5}]}},{}],HandDropChances:[0F,0F],active_effects:[{id:"speed",amplifier:4}]}
execute at @r run summon minecraft:vindicator ~ ~1 ~ {Invulnerable:1,CustomName:'"Johnny"',CustomNameVisible:1,PersistenceRequired:1b,Johnny:1b,HandItems:[{id:"minecraft:netherite_axe",Count:1,tag:{Enchantments:[{id:"sharpness",lvl:5}]}},{}],HandDropChances:[0F,0F],active_effects:[{id:"speed",amplifier:4}]}
execute at @r run summon minecraft:vindicator ~ ~1 ~ {Invulnerable:1,CustomName:'"Johnny"',CustomNameVisible:1,PersistenceRequired:1b,Johnny:1b,HandItems:[{id:"minecraft:netherite_axe",Count:1,tag:{Enchantments:[{id:"sharpness",lvl:5}]}},{}],HandDropChances:[0F,0F],active_effects:[{id:"speed",amplifier:4}]}
execute at @r run summon minecraft:vindicator ~ ~1 ~ {Invulnerable:1,CustomName:'"Johnny"',CustomNameVisible:1,PersistenceRequired:1b,Johnny:1b,HandItems:[{id:"minecraft:netherite_axe",Count:1,tag:{Enchantments:[{id:"sharpness",lvl:5}]}},{}],HandDropChances:[0F,0F],active_effects:[{id:"speed",amplifier:4}]}

effect give @e[type=vindicator] speed 1000000 2 true
effect give @e[type=vindicator] resistance 1000000 3 true

execute at @r run summon minecraft:phantom ~ ~20 ~ {Invulnerable:1,PersistenceRequired:1b,Size:9,HandDropChances:[0F,0F],HandItems:[{id:"minecraft:netherite_sword",tag:{display:{Name:'{"text":"The Knockbacker"}'},Enchantments:[{id:"knockback",lvl:5}]},Count:1},{}]}
execute at @r run summon minecraft:phantom ~ ~20 ~ {Invulnerable:1,PersistenceRequired:1b,Size:9,HandDropChances:[0F,0F],HandItems:[{id:"minecraft:netherite_sword",tag:{display:{Name:'{"text":"The Knockbacker"}'},Enchantments:[{id:"knockback",lvl:5}]},Count:1},{}]}
execute at @r run summon minecraft:phantom ~ ~20 ~ {Invulnerable:1,PersistenceRequired:1b,Size:9,HandDropChances:[0F,0F],HandItems:[{id:"minecraft:netherite_sword",tag:{display:{Name:'{"text":"The Knockbacker"}'},Enchantments:[{id:"knockback",lvl:5}]},Count:1},{}]}
execute at @r run summon minecraft:phantom ~ ~20 ~ {Invulnerable:1,PersistenceRequired:1b,Size:9,HandDropChances:[0F,0F],HandItems:[{id:"minecraft:netherite_sword",tag:{display:{Name:'{"text":"The Knockbacker"}'},Enchantments:[{id:"knockback",lvl:5}]},Count:1},{}]}
execute at @r run summon minecraft:phantom ~ ~20 ~ {Invulnerable:1,PersistenceRequired:1b,Size:9,HandDropChances:[0F,0F],HandItems:[{id:"minecraft:netherite_sword",tag:{display:{Name:'{"text":"The Knockbacker"}'},Enchantments:[{id:"knockback",lvl:5}]},Count:1},{}]}

effect give @e[type=phantom] fire_resistance 1000000 0 true
effect give @e[type=phantom] resistance 1000000 3 true

give @a netherite_pickaxe{Unbreakable:true}