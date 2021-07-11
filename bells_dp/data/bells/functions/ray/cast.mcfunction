execute at @s rotated as @p[scores={temp=1}] run tp @s ^ ^ ^0.0625

execute at @s unless block ~ ~ ~ air run function bells:ray/detect_face
execute at @s unless block ~ ~ ~ air run function bells:ray/execute
execute at @s unless block ~ ~ ~ air run scoreboard players set #i temp 80

scoreboard players add #i temp 1
execute unless score #i temp matches 80.. run function bells:ray/cast
