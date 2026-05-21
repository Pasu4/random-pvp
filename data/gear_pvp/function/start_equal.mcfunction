scoreboard players set #ApplyHandicap gamerule 1
function random_pvp:start
#execute as @a[gamemode=!creative,gamemode=!spectator] run loot give @s loot gear_pvp:gear
#execute as @a run loot give @s loot gear_pvp:gear

execute if score WinsIsHandicap gamerule matches 1 as @a run scoreboard players operation @s handicap = @s wins
scoreboard players operation @a handicap > Zero const
scoreboard players operation @a handicap < MaxHandicap const
execute as @a run scoreboard players operation @s invHandicap = @s handicap
scoreboard players operation @a invHandicap *= MinusOne const
scoreboard players operation @a invHandicap += MaxHandicap const

scoreboard players operation Temp var = @s handicap
scoreboard players operation @s handicap = MaxHandicap const

# loot give @a loot gear_pvp:standard_items
loot give @a loot gear_pvp:basic
loot give @a loot gear_pvp:gear

scoreboard players operation @s handicap = Temp var
execute as @a run function random_pvp:handicap