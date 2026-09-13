function dc:get_call {tick:240, command:"function entities:mobs/zombie/uncommon/run_after_12sec", requirePos:false, requireEntity:true}
#Если нет игрока, то ничего не делаем
execute unless entity @p[distance=..20] run return 0

#Шанс 40%, что зомби подпрыгнет или луч
execute store result score #chance variables run random value 0..9
execute unless score #chance variables matches 0..3 run return 0

#50/50 прыжок или луч
execute store result score #chance variables run random value 0..1
execute if score #chance variables matches 0 if entity @s[type=zombie] run return run function entities:mobs/abilities/jump/start {mob:"zombie"}
execute if score #chance variables matches 0 if entity @s[type=husk] run return run function entities:mobs/abilities/jump/start {mob:"husk"}
function entities:mobs/abilities/charged_ray/start
execute if score #chance variables matches 0 if entity @s[type=drowned] run return run function entities:mobs/abilities/jump/start {mob:"drowned"}
function entities:mobs/abilities/charged_ray/start