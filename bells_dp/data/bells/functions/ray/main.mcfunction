scoreboard players set @a temp 0
scoreboard players set @s temp 1

summon area_effect_cloud ~ ~1.625 ~ {Age:-2147483648,WaitTime:-2147483648,Duration:-1,Tags:["ray"]}

scoreboard players set #i temp 0
execute as @e[type=area_effect_cloud,tag=ray] run function bells:ray/cast

kill @e[type=area_effect_cloud,tag=ray]
