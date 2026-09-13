function dc:get_call {tick:240, command:"function entities:mobs/skeleton/rare/run_after_12sec", requirePos:false, requireEntity:true}
#Если нет игрока, то ничего не делаем
execute unless entity @p[distance=..30] run return 0

#Шанс 10% на круг стрел
execute store result score #chance variables run random value 0..9
execute unless score #chance variables matches 0 run return 0

execute as @p at @s align y positioned ~ ~7.5 ~ summon marker run function entities:mobs/abilities/circle_arrows/start