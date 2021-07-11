execute store result score #x temp run data get entity @s Pos[0] 1000
execute store result score #y temp run data get entity @s Pos[1] 1000
execute store result score #z temp run data get entity @s Pos[2] 1000

scoreboard players operation #x temp %= #1000 constants
scoreboard players operation #y temp %= #1000 constants
scoreboard players operation #z temp %= #1000 constants

scoreboard players remove #x temp 500
scoreboard players remove #y temp 500
scoreboard players remove #z temp 500

scoreboard players set #neg_x temp 0
execute if score #x temp matches ..-1 run scoreboard players set #neg_x temp 1
scoreboard players set #neg_y temp 0
execute if score #y temp matches ..-1 run scoreboard players set #neg_y temp 1
scoreboard players set #neg_z temp 0
execute if score #z temp matches ..-1 run scoreboard players set #neg_z temp 1

execute if score #x temp matches ..-1 run scoreboard players operation #x temp *= #-1 constants
execute if score #y temp matches ..-1 run scoreboard players operation #y temp *= #-1 constants
execute if score #z temp matches ..-1 run scoreboard players operation #z temp *= #-1 constants

scoreboard players set #max temp 0
execute if score #y temp > #x temp run scoreboard players set #max temp 1
execute if score #max temp matches 0 if score #z temp > #x temp run scoreboard players set #max temp 2
execute if score #max temp matches 1 if score #z temp > #y temp run scoreboard players set #max temp 2

execute if score #max temp matches 0 if score #neg_x temp matches 1 run scoreboard players set #max temp 3
execute if score #max temp matches 1 if score #neg_y temp matches 1 run scoreboard players set #max temp 4
execute if score #max temp matches 2 if score #neg_z temp matches 1 run scoreboard players set #max temp 5
