tag @r add target
execute at @a[tag=target] run tp @a ~ -59 ~
execute at @a[tag=target] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 bedrock hollow
execute at @a[tag=target] run setblock ~ ~ ~ light[level=15]
execute at @a[tag=target] run worldborder center ~ ~
execute at @a[tag=target] run spreadplayers ~ ~ 1 5 under -59 false @a
tag @a[tag=target] remove target
