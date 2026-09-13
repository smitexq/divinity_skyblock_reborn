###Горшки с мобами, зельями
execute as @e[type=item,nbt={Item:{id:"minecraft:structure_void",components:{"minecraft:custom_data":{"PotSpawnPotion": true}}}}] at @s run function gen:pots/spawn_potion

execute as @e[type=item,nbt={Item:{id:"minecraft:structure_void",components:{"minecraft:custom_data":{"PotSpawnEntity": true}}}}] at @s run function gen:pots/entities/spawn_entity
###

#Вывод процента генерации карты всем игрокам
execute unless score #genComplete gen matches 1 run function gen:show_process

#Хаб, пока игра не началась
execute unless score *start gameplay matches 1 as @a at @s run function gen:on_load/tp

#Проверка биома над игроком (нужно для квестовых островов)
execute as @a at @s run function gen:per_players_tick 

#Частицы около хранилищ с лутом боссов
execute as @e[type=marker, tag=Vault] at @s run particle minecraft:raid_omen ~ ~1 ~ 1.5 1.5 1.5 1 2 force