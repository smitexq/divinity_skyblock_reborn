function dc:get_call {tick:400, command:"function entities:mobs/creeper/uncommon/run_after_20sec", requirePos:false, requireEntity:true}
#Если нет игрока, то ничего не делаем
execute unless entity @p[distance=..25] run return 0

#
execute store result score #chance variables run random value 0..9
execute if score #chance variables matches 0..2 run function entities:mobs/abilities/regeneration/start