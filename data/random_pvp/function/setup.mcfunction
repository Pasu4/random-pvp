#declare score_holder Global
#declare score_holder MaxHandicap
#declare score_holder MinusOne
#declare score_holder Zero
#declare score_holder WinsIsHandicap
#declare score_holder TimeoutIsDraw
#declare score_holder #ApplyHandicap Applies handicap in equal mode

#declare objective var
#declare objective const
#declare objective deaths
#declare objective handicap
#declare objective invHandicap
#declare objective wins
#declare objective gamerule

scoreboard objectives add var dummy
scoreboard objectives add const dummy
scoreboard objectives add deaths deathCount "Deaths"
scoreboard objectives add handicap dummy "Handicap"
scoreboard objectives add invHandicap dummy "Inverse Handicap"
scoreboard objectives add wins dummy "Wins"
scoreboard objectives add gamerule dummy "Gamerules"

#Handicap goes from 0 to 5

scoreboard players set Timer var 0
scoreboard players set Playing var 0

scoreboard players set MaxHandicap const 5
scoreboard players set MinusOne const -1
scoreboard players set Zero const 0

scoreboard players set @a handicap 0
scoreboard players set WinsIsHandicap gamerule 0
scoreboard players set TimeoutIsDraw gamerule 0
scoreboard players set #ApplyHandicap gamerule 0

scoreboard objectives setdisplay list wins

bossbar add time "Time"
bossbar set minecraft:time style notched_10
bossbar set minecraft:time max 12000

worldborder damage buffer 0

gamerule allow_entering_nether_using_portals false
