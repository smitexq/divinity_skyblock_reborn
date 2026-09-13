tag @s remove WearingRingWithLion
#attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-2-A
playsound minecraft:entity.breeze.wind_burst ambient @s ~ ~ ~ 0.8 1.5

###Удаляем задачу на проверку hp
# #Узнаем uuid сущности
# function dc:gu/generate
# #записываем команду на возврат имени и uuid во временное хранилище
# data modify storage dsb:dc_remove temp.UUID set from storage gu:main out
# data modify storage dsb:dc_remove temp.command set value "function rings:activate_ring/ring_of_disaster/check_health"
# #Удаляем прошлые вызовы функции
# function dc:clear_schedule with storage dsb:dc_remove temp