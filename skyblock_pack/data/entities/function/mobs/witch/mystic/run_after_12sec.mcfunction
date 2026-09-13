function dc:get_call {tick:240, command:"function entities:mobs/witch/mystic/run_after_12sec", requirePos:false, requireEntity:true}
#Если нет игрока, то ничего не делаем
execute unless entity @p[distance=..25] run return 0


execute store result score #chance variables run random value 0..99

execute if score #chance variables matches 0..14 run return run function entities:mobs/abilities/wither_storm/start
execute if score #chance variables matches 15..24 run return run function entities:mobs/abilities/charged_ray/start