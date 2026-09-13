particle minecraft:bubble_pop ~ ~ ~ 0.13 0.1 0.13 0 2

execute if score @s CookingTea matches ..9 run function dc:get_call {tick:15, command:"function food:cauldron/cook/bubble_particle", requirePos:true, requireEntity:true}
