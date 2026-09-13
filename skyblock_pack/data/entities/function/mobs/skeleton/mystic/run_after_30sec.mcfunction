function dc:get_call {tick:600, command:"function entities:mobs/skeleton/mystic/run_after_30sec", requirePos:false, requireEntity:true}
#Если нет игрока, то ничего не делаем
execute unless entity @p[distance=..30] run return 0

#Если не выпал шанс, то ничего не делаем
execute store result score #chance variables run random value 0..9
execute unless score #chance variables matches 0..1 run return 0

execute as @p at @s align y positioned ~ ~7.5 ~ summon marker run function entities:mobs/abilities/circle_arrows/start