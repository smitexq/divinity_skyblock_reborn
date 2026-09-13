function dc:get_call {tick:300, command:"function entities:mobs/creeper/mystic/run_after_15sec", requirePos:false, requireEntity:true}
#Если нет игрока, то ничего не делаем
execute unless entity @p[distance=..40] run return 0


execute store result score #chance variables run random value 0..9

execute if score #chance variables matches 0..1 run return run function entities:mobs/abilities/wither_storm/start
execute if score #chance variables matches 2 run return run function entities:mobs/abilities/throw_mini_tnt/start