function dc:get_call {tick:260, command:"function entities:mobs/witch/uncommon/run_after_13sec", requirePos:false, requireEntity:true}
#Если нет игрока, то ничего не делаем
execute unless entity @p[distance=..12] run return 0

#
execute store result score *var1 variables run random value 0..1
execute if score *var1 variables matches 0 run return run function entities:mobs/abilities/jump/start {mob:"zombie"}
execute if score *var1 variables matches 1 run return run function entities:mobs/abilities/jump/start {mob:"skeleton"}