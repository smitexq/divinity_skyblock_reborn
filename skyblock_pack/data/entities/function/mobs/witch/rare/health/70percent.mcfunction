tag @s add less_70percent_hp

#эффекты
particle minecraft:damage_indicator ~ ~1.2 ~ 0.15 0.05 0.15 0.3 7 normal
playsound minecraft:enchant.thorns.hit ambient @a ~ ~1 ~ 1


#x3 призыв
execute store result score #chance variables run random value 0..2
execute if score #chance variables matches 0 run function entities:mobs/abilities/jump/start {mob:"zombie"}
execute if score #chance variables matches 1 run function entities:mobs/abilities/jump/start {mob:"skeleton"}
execute if score #chance variables matches 2 run function entities:mobs/abilities/jump/start {mob:"spider"}

execute store result score #chance variables run random value 0..2
execute if score #chance variables matches 0 run function dc:get_call {tick:30, command:"function entities:mobs/abilities/jump/start {mob:'zombie'}", requirePos:false, requireEntity:true}
execute if score #chance variables matches 1 run function dc:get_call {tick:30, command:"function entities:mobs/abilities/jump/start {mob:'skeleton'}", requirePos:false, requireEntity:true}
execute if score #chance variables matches 2 run function dc:get_call {tick:30, command:"function entities:mobs/abilities/jump/start {mob:'spider'}", requirePos:false, requireEntity:true}

execute store result score #chance variables run random value 0..2
execute if score #chance variables matches 0 run function dc:get_call {tick:60, command:"function entities:mobs/abilities/jump/start {mob:'zombie'}", requirePos:false, requireEntity:true}
execute if score #chance variables matches 1 run return run function dc:get_call {tick:60, command:"function entities:mobs/abilities/jump/start {mob:'skeleton'}", requirePos:false, requireEntity:true}
execute if score #chance variables matches 2 run return run function dc:get_call {tick:60, command:"function entities:mobs/abilities/jump/start {mob:'spider'}", requirePos:false, requireEntity:true}