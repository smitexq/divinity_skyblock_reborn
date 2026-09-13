function dc:get_call {tick:300, command:"function entities:mobs/skeleton/uncommon/run_after_15sec", requirePos:false, requireEntity:true}
#Если нет игрока, то ничего не делаем
execute unless entity @p[distance=..40] run return 0

#Шанс 70% на стрелы
execute store result score #chance variables run random value 0..9
execute if score #chance variables matches 0..5 run function entities:mobs/abilities/hexagon_of_arrows/start