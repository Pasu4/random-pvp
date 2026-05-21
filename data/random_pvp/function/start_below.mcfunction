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
gamerule immediate_respawn true
kill @a
gamerule immediate_respawn false

gamerule natural_health_regeneration true

# execute at @r run setblock ~ ~ ~ command_block[facing=up]{Command:"execute at @r run spreadplayers ~ ~ 50 100 under 63 true @a", auto:1}
# execute at @r run setblock ~ ~1 ~ chain_command_block[facing=up]{Command:"fill ~ ~-1 ~ ~ ~ ~ air", auto:1}
schedule function random_pvp:start_below_tick1 2t

worldborder set 51 300s

#Scoreboard
scoreboard players set Timer var 0
scoreboard players set TimeLeft var 12000
scoreboard players set Playing var 1
scoreboard players set @a deaths 0

bossbar set minecraft:time color green

#Mobs

execute at @r run summon minecraft:vindicator ~ ~1 ~ {Invulnerable:1b,CustomName:'"Johnny"',CustomNameVisible:1b,PersistenceRequired:1b,Johnny:1b,equipment:{mainhand:{id:"minecraft:netherite_axe",components:{enchantments:{sharpness:5}}}},active_effects:[{id:"speed",amplifier:4}]}
execute at @r run summon minecraft:vindicator ~ ~1 ~ {Invulnerable:1b,CustomName:'"Johnny"',CustomNameVisible:1b,PersistenceRequired:1b,Johnny:1b,equipment:{mainhand:{id:"minecraft:netherite_axe",components:{enchantments:{sharpness:5}}}},active_effects:[{id:"speed",amplifier:4}]}
execute at @r run summon minecraft:vindicator ~ ~1 ~ {Invulnerable:1b,CustomName:'"Johnny"',CustomNameVisible:1b,PersistenceRequired:1b,Johnny:1b,equipment:{mainhand:{id:"minecraft:netherite_axe",components:{enchantments:{sharpness:5}}}},active_effects:[{id:"speed",amplifier:4}]}
execute at @r run summon minecraft:vindicator ~ ~1 ~ {Invulnerable:1b,CustomName:'"Johnny"',CustomNameVisible:1b,PersistenceRequired:1b,Johnny:1b,equipment:{mainhand:{id:"minecraft:netherite_axe",components:{enchantments:{sharpness:5}}}},active_effects:[{id:"speed",amplifier:4}]}
execute at @r run summon minecraft:vindicator ~ ~1 ~ {Invulnerable:1b,CustomName:'"Johnny"',CustomNameVisible:1b,PersistenceRequired:1b,Johnny:1b,equipment:{mainhand:{id:"minecraft:netherite_axe",components:{enchantments:{sharpness:5}}}},active_effects:[{id:"speed",amplifier:4}]}
execute at @r run summon minecraft:vindicator ~ ~1 ~ {Invulnerable:1b,CustomName:'"Johnny"',CustomNameVisible:1b,PersistenceRequired:1b,Johnny:1b,equipment:{mainhand:{id:"minecraft:netherite_axe",components:{enchantments:{sharpness:5}}}},active_effects:[{id:"speed",amplifier:4}]}
execute at @r run summon minecraft:vindicator ~ ~1 ~ {Invulnerable:1b,CustomName:'"Johnny"',CustomNameVisible:1b,PersistenceRequired:1b,Johnny:1b,equipment:{mainhand:{id:"minecraft:netherite_axe",components:{enchantments:{sharpness:5}}}},active_effects:[{id:"speed",amplifier:4}]}
execute at @r run summon minecraft:vindicator ~ ~1 ~ {Invulnerable:1b,CustomName:'"Johnny"',CustomNameVisible:1b,PersistenceRequired:1b,Johnny:1b,equipment:{mainhand:{id:"minecraft:netherite_axe",components:{enchantments:{sharpness:5}}}},active_effects:[{id:"speed",amplifier:4}]}
execute at @r run summon minecraft:vindicator ~ ~1 ~ {Invulnerable:1b,CustomName:'"Johnny"',CustomNameVisible:1b,PersistenceRequired:1b,Johnny:1b,equipment:{mainhand:{id:"minecraft:netherite_axe",components:{enchantments:{sharpness:5}}}},active_effects:[{id:"speed",amplifier:4}]}
execute at @r run summon minecraft:vindicator ~ ~1 ~ {Invulnerable:1b,CustomName:'"Johnny"',CustomNameVisible:1b,PersistenceRequired:1b,Johnny:1b,equipment:{mainhand:{id:"minecraft:netherite_axe",components:{enchantments:{sharpness:5}}}},active_effects:[{id:"speed",amplifier:4}]}

execute at @r run summon minecraft:evoker ~ ~1 ~ {Invulnerable:1b,CustomName:'"Jimmy"',CustomNameVisible:1b,PersistenceRequired:1b}
execute at @r run summon minecraft:evoker ~ ~1 ~ {Invulnerable:1b,CustomName:'"Jimmy"',CustomNameVisible:1b,PersistenceRequired:1b}
execute at @r run summon minecraft:evoker ~ ~1 ~ {Invulnerable:1b,CustomName:'"Jimmy"',CustomNameVisible:1b,PersistenceRequired:1b}
execute at @r run summon minecraft:evoker ~ ~1 ~ {Invulnerable:1b,CustomName:'"Jimmy"',CustomNameVisible:1b,PersistenceRequired:1b}
execute at @r run summon minecraft:evoker ~ ~1 ~ {Invulnerable:1b,CustomName:'"Jimmy"',CustomNameVisible:1b,PersistenceRequired:1b}
execute at @r run summon minecraft:evoker ~ ~1 ~ {Invulnerable:1b,CustomName:'"Jimmy"',CustomNameVisible:1b,PersistenceRequired:1b}
execute at @r run summon minecraft:evoker ~ ~1 ~ {Invulnerable:1b,CustomName:'"Jimmy"',CustomNameVisible:1b,PersistenceRequired:1b}
execute at @r run summon minecraft:evoker ~ ~1 ~ {Invulnerable:1b,CustomName:'"Jimmy"',CustomNameVisible:1b,PersistenceRequired:1b}
execute at @r run summon minecraft:evoker ~ ~1 ~ {Invulnerable:1b,CustomName:'"Jimmy"',CustomNameVisible:1b,PersistenceRequired:1b}
execute at @r run summon minecraft:evoker ~ ~1 ~ {Invulnerable:1b,CustomName:'"Jimmy"',CustomNameVisible:1b,PersistenceRequired:1b}

effect give @e[type=vindicator] speed 1000000 2 true
effect give @e[type=vindicator] resistance 1000000 3 true

execute at @r run summon minecraft:phantom ~ ~20 ~ {Invulnerable:1b,PersistenceRequired:1b,size:9,equipment:{mainhand:{id:"netherite_sword",components:{enchantments:{knockback:5}}}}}
execute at @r run summon minecraft:phantom ~ ~20 ~ {Invulnerable:1b,PersistenceRequired:1b,size:9,equipment:{mainhand:{id:"netherite_sword",components:{enchantments:{knockback:5}}}}}
execute at @r run summon minecraft:phantom ~ ~20 ~ {Invulnerable:1b,PersistenceRequired:1b,size:9,equipment:{mainhand:{id:"netherite_sword",components:{enchantments:{knockback:5}}}}}
execute at @r run summon minecraft:phantom ~ ~20 ~ {Invulnerable:1b,PersistenceRequired:1b,size:9,equipment:{mainhand:{id:"netherite_sword",components:{enchantments:{knockback:5}}}}}
execute at @r run summon minecraft:phantom ~ ~20 ~ {Invulnerable:1b,PersistenceRequired:1b,size:9,equipment:{mainhand:{id:"netherite_sword",components:{enchantments:{knockback:5}}}}}

effect give @e[type=phantom] fire_resistance 1000000 0 true
effect give @e[type=phantom] resistance 1000000 3 true

give @a netherite_pickaxe[unbreakable={}]