function dc:get_call {tick:200, command:"function entities:mobs/zombie/mystic/run_after_10sec", requirePos:false, requireEntity:true}
#Если нет игрока, то ничего не делаем
execute unless entity @p[distance=..40] run return 0


execute store result score #chance variables run random value 0..9

#Если игрока нет рядом, то кидает бурю (если не сработало, то ничего не делаем)
execute unless entity @p[distance=..12] if score #chance variables matches 0..5 run return run function entities:mobs/abilities/wither_storm/start
execute unless entity @p[distance=..12] run return 0

#Если игрок рядом (20% буря) и (60% призыв)
execute if entity @p[distance=..12] if score #chance variables matches 0..1 run return run function entities:mobs/abilities/wither_storm/start

execute if entity @p[distance=..12] if score #chance variables matches 2..7 if entity @s[type=zombie] run return run function entities:mobs/abilities/jump/start {mob:"zombie"}
execute if entity @p[distance=..12] if score #chance variables matches 2..7 if entity @s[type=husk] run return run function entities:mobs/abilities/jump/start {mob:"husk"}
execute if entity @p[distance=..12] if score #chance variables matches 2..7 if entity @s[type=drowned] run return run function entities:mobs/abilities/jump/start {mob:"drowned"}