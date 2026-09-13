function dc:get_call {tick:400, command:"function entities:mobs/zombie/mystic/run_after_20sec", requirePos:false, requireEntity:true}
#Если нет игрока, то ничего не делаем
execute unless entity @p[distance=..40] run return 0

#Если не выпал шанс, то ничего не делаем
execute store result score #chance variables run random value 0..9
execute unless score #chance variables matches 0..6 run return 0

function entities:mobs/abilities/charged_ray_poison/start
execute store result score #chance variables run random value 0..9
execute if score #chance variables matches 0..7 run function dc:get_call {tick:15, command:"function entities:mobs/abilities/cobweb/start", requirePos:false, requireEntity:true}