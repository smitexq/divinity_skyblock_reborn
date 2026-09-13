function dc:get_call {tick:200, command:"function entities:mobs/enderman/mystic/run_after_10sec", requirePos:false, requireEntity:true}
#Если нет игрока, то ничего не делаем
execute unless entity @p[distance=..40] run return 0


execute store result score #chance variables run random value 0..99

execute if score #chance variables matches 0..12 run function entities:mobs/abilities/wither_storm/start