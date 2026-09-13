function dc:get_call {tick:300, command:"function entities:mobs/spider/mystic/run_after_15sec", requirePos:false, requireEntity:true}
#Если нет игрока, то ничего не делаем
execute unless entity @p[distance=..25] run return 0


execute store result score #chance variables run random value 0..99

execute if score #chance variables matches 0..24 run return run function entities:mobs/abilities/summon_fangs/start
execute if score #chance variables matches 25..39 run return run function entities:mobs/abilities/wither_storm/start