scoreboard players set #ApplyHandicap gamerule 0
function random_pvp:start
#execute as @a[gamemode=!creative,gamemode=!spectator] run loot give @s loot gear_pvp:gear

execute if score WinsIsHandicap gamerule matches 1 as @a run scoreboard players operation @s handicap = @s wins
scoreboard players operation @a handicap > Zero const
scoreboard players operation @a handicap < MaxHandicap const
execute as @a run scoreboard players operation @s invHandicap = @s handicap
scoreboard players operation @a invHandicap *= MinusOne const
scoreboard players operation @a invHandicap += MaxHandicap const

loot give @a loot gear_pvp:basic
execute as @a run loot give @s loot gear_pvp:gear
#loot give @a loot gear_pvp:gear