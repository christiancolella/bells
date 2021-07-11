playsound minecraft:block.anvil.place block @a ~ ~ ~ 1.0 0.8

execute as @p[scores={new_bell=1..}] at @s run function bells:ray/main

execute if score #max temp matches 1 run data modify entity @s HandItems[0].tag.CustomModelData set value 2
execute if score #max temp matches 4 run data modify entity @s HandItems[0].tag.CustomModelData set value 1

execute if score #max temp matches 0 run tp @s ~ ~ ~ 0 0
execute if score #max temp matches 2 run tp @s ~ ~ ~ 90 0
execute if score #max temp matches 3 run tp @s ~ ~ ~ 180 0
execute if score #max temp matches 5 run tp @s ~ ~ ~ -90 0

execute if score #max temp matches 1 if entity @p[scores={new_bell=1..},y_rotation=-180..-135] run tp @s ~ ~ ~ 0 0
execute if score #max temp matches 1 if entity @p[scores={new_bell=1..},y_rotation=135..180] run tp @s ~ ~ ~ 0 0
execute if score #max temp matches 1 if entity @p[scores={new_bell=1..},y_rotation=-135..-45] run tp @s ~ ~ ~ 90 0
execute if score #max temp matches 1 if entity @p[scores={new_bell=1..},y_rotation=-45..45] run tp @s ~ ~ ~ 180 0
execute if score #max temp matches 1 if entity @p[scores={new_bell=1..},y_rotation=45..135] run tp @s ~ ~ ~ -90 0

execute if score #max temp matches 4 if entity @p[scores={new_bell=1..},y_rotation=-180..-135] run tp @s ~ ~ ~ 0 0
execute if score #max temp matches 4 if entity @p[scores={new_bell=1..},y_rotation=135..180] run tp @s ~ ~ ~ 0 0
execute if score #max temp matches 4 if entity @p[scores={new_bell=1..},y_rotation=-135..-45] run tp @s ~ ~ ~ 90 0
execute if score #max temp matches 4 if entity @p[scores={new_bell=1..},y_rotation=-45..45] run tp @s ~ ~ ~ 180 0
execute if score #max temp matches 4 if entity @p[scores={new_bell=1..},y_rotation=45..135] run tp @s ~ ~ ~ -90 0

execute as @s[y_rotation=0] run setblock ~ ~ ~ warped_fence_gate[facing=south] replace
execute as @s[y_rotation=90] run setblock ~ ~ ~ warped_fence_gate[facing=west] replace
execute as @s[y_rotation=180] run setblock ~ ~ ~ warped_fence_gate[facing=north] replace
execute as @s[y_rotation=-90] run setblock ~ ~ ~ warped_fence_gate[facing=east] replace

scoreboard players set @s time 0
tp @s ~ ~-0.625 ~

tag @s add bell
tag @s remove new_bell
