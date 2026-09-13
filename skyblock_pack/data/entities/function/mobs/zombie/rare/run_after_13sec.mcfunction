function dc:get_call {tick:400, command:"function entities:mobs/zombie/rare/run_after_13sec", requirePos:false, requireEntity:true}
#Если нет игрока, то ничего не делаем
execute unless entity @p[distance=..20] run return 0
#Шанс 40% на бурю
execute store result score #chance variables run random value 0..9
execute if score #chance variables matches 0..3 positioned ~ ~0.5 ~ run return run function entities:mobs/abilities/wither_storm/start

#50% на ошеломление
execute if score #chance variables matches 4..8 as @a[distance=..20] at @s run function entities:mobs/abilities/daze/start