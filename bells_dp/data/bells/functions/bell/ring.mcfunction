execute store result score #pitch temp run data get entity @s ArmorItems[3].tag.CustomModelData
scoreboard players remove #pitch temp 4
function bells:bell/playsound

execute if block ~ ~0.625 ~ warped_fence_gate[facing=south] run setblock ~ ~0.625 ~ warped_fence_gate[facing=south,open=false] replace
execute if block ~ ~0.625 ~ warped_fence_gate[facing=east] run setblock ~ ~0.625 ~ warped_fence_gate[facing=east,open=false] replace
execute if block ~ ~0.625 ~ warped_fence_gate[facing=north] run setblock ~ ~0.625 ~ warped_fence_gate[facing=north,open=false] replace
execute if block ~ ~0.625 ~ warped_fence_gate[facing=west] run setblock ~ ~0.625 ~ warped_fence_gate[facing=west,open=false] replace

scoreboard players set @s time 1
