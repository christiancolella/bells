execute as @s[scores={time=1}] run data modify entity @s ArmorItems[3].tag.frames set from storage bells:animation frames

data modify entity @s Pose.Head[0] set from entity @s ArmorItems[3].tag.frames[-1]
data remove entity @s ArmorItems[3].tag.frames[-1]

scoreboard players add @s time 1
execute if score @s time matches 61.. run scoreboard players set @s time 0
