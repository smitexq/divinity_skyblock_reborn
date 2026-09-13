tag @s remove WearingSouthernRitualRing
attribute @s minecraft:armor modifier remove armor_southern
playsound minecraft:entity.breeze.wind_burst ambient @s ~ ~ ~ 0.8 1.5

###Удаляем задачу на проверку hp
#Узнаем uuid сущности
function dc:gu/generate
#записываем команду и uuid во временное хранилище
data modify storage dsb:dc_remove temp.UUID set from storage gu:main out
data modify storage dsb:dc_remove temp.command set value "function rings:activate_ring/southern_ritual_ring/check_health"
#Удаляем прошлые вызовы функции
function dc:clear_schedule with storage dsb:dc_remove temp