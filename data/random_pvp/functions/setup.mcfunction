#scoreboard objectives add timer dummy "Time"
#scoreboard objectives add playing dummy "Playing"
#scoreboard objectives add bool dummy "Boolean"
#scoreboard objectives add alive dummy "Alive Players"
#scoreboard objectives add timeLeft dummy "Time left"
#scoreboard objectives add minutes dummy "Minutes left"
#scoreboard objectives add seconds dummy "Seconds left"
#scoreboard objectives add clipboard dummy "Clipboard"

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

#declare score_holder MaxHandicap
#declare score_holder MinusOne
#declare score_holder Zero
#declare score_holder WinsIsHandicap
#declare score_holder TimeoutIsDraw
#declare score_holder #ApplyHandicap Applies handicap in equal mode

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