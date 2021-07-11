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

# give @p ghast_spawn_egg{display:{Name:"{\"text\":\"New Block\",\"color\":\"blue\",\"italic\":false}"},CustomModelData:1,EntityTag:{id:"armor_stand",Marker:1b,Invisible:1b,ShowArms:1b,Pose:{Head:[0.0f,0.0f,0.001f],RightArm:[0.0f,0.0f,0.001f]},ArmorItems:[{},{},{},{id:"minecraft:bell",Count:1b,tag:{CustomModelData:4}}],HandItems:[{id:"minecraft:bell",Count:1b,tag:{CustomModelData:3}},{}],Tags:["new_bell"]}}
