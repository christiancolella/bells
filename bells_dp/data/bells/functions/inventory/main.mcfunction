execute as @s[scores={click=1..}] run function bells:inventory/transitions

execute unless score @s[tag=bells] inventory matches 1.. run function bells:inventory/0
execute if score @s[tag=bells] inventory matches 1 run function bells:inventory/1
execute if score @s[tag=bells] inventory matches 2 run function bells:inventory/2
execute if score @s[tag=bells] inventory matches 3 run function bells:inventory/3
