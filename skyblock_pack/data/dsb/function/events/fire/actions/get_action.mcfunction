function dc:gu/generate

data modify storage dsb:cts Temp set value {}
data modify storage dsb:cts Temp.uuid set from storage gu:main out
execute store result storage dsb:cts Temp.id int 1 run scoreboard players get @s CreateFire

#Получаем ожидаемое действие
function dsb:events/fire/actions/get_expected with storage dsb:cts Temp


# tellraw @a {"score":{"objective":"CreateFire","name":"#expected"}, "color":"aqua"}
# tellraw @a {"score":{"objective":"CreateFire","name":"#real"}, "color":"yellow"}

#Если ожидаемое действие не совпадает с реальным, то заканчиваем
execute unless score #real CreateFire = #expected CreateFire run return run function dsb:events/fire/actions/lose_fire with storage gu:main

#Иначе забираем достижение взаимодействия и убираем теги с интеракта
playsound minecraft:entity.experience_orb.pickup ambient @s
advancement revoke @s only dsb:events/create_fire
function dsb:events/fire/actions/clear_tags_on_interaction with storage gu:main
