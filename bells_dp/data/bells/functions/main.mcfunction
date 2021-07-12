# new bell
execute as @e[type=armor_stand,tag=new_bell] at @s run function bells:bell/new
scoreboard players set @a new_bell 0

# ring
execute as @e[type=armor_stand,tag=bell] at @s if block ~ ~0.625 ~ warped_fence_gate[open=true] run function bells:bell/ring
execute as @e[type=armor_stand,tag=bell,scores={time=1..}] run function bells:bell/animate

# break
execute as @e[type=armor_stand,tag=bell] at @s unless block ~ ~0.625 ~ warped_fence_gate run kill @s

# inventory
execute as @a[tag=bells] run function bells:inventory/main
scoreboard players set @a click 0
