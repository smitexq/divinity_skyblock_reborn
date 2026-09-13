function dc:get_call {tick:400, command:"function entities:mobs/creeper/mystic/run_after_20sec", requirePos:false, requireEntity:true}
#Если нет игрока, то ничего не делаем
execute unless entity @p[distance=..16] run return 0

#Если не выпал шанс, то ничего не делаем
execute store result score #chance variables run random value 0..99
execute if score #chance variables matches 0..34 as @a[distance=..16] at @s run return run function entities:mobs/abilities/daze/start
execute as @a[distance=..16] at @s run function entities:mobs/abilities/losing_control/start