execute if entity @s[tag=!GrowProces] run return 0

particle minecraft:dripping_water ~ ~2.6 ~ 0.2 0 0.2 0 5

# execute store result score *var1 variables run random value 0..2
execute if score @s Composter matches 1.. run particle minecraft:dripping_water ~0.2 ~1.6 ~0.2 0 0 0 0 1
execute if score @s Composter matches 1.. run particle minecraft:dripping_water ~-0.2 ~1.6 ~0.2 0 0 0 0 1
execute if score @s Composter matches 1.. run particle minecraft:dripping_water ~0.2 ~1.6 ~-0.2 0 0 0 0 1
execute if score @s Composter matches 1.. run particle minecraft:dripping_water ~-0.2 ~1.6 ~-0.2 0 0 0 0 1


function dc:get_call {tick:50, command:"function dsb:constructions/composter/work/grow/particle", requirePos:false, requireEntity:true}