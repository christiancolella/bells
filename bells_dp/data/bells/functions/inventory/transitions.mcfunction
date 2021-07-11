execute store result score #temp temp run data get entity @s SelectedItem.tag.CustomModelData

execute if score #temp temp matches 201 run tag @s remove bells
execute if score #temp temp matches 201 run clear @s
execute if score #temp temp matches 201 run scoreboard players set @s inventory 0

execute if score #temp temp matches 202 if score @s inventory matches 2 run scoreboard players set @s inventory 3
execute if score #temp temp matches 202 if score @s inventory matches 1 run scoreboard players set @s inventory 2
execute if score #temp temp matches 202 if score @s inventory matches 0 run scoreboard players set @s inventory 1

execute if score #temp temp matches 203 if score @s inventory matches 1 run scoreboard players set @s inventory 0
execute if score #temp temp matches 203 if score @s inventory matches 2 run scoreboard players set @s inventory 1
execute if score #temp temp matches 203 if score @s inventory matches 3 run scoreboard players set @s inventory 2
