tag @s remove startRecycling

#Если хотят остановить создание земли
execute if entity @s[tag=growOn] run return run function dsb:constructions/composter/work/grow/stop
execute if entity @s[tag=growOff] run function dsb:constructions/composter/work/grow/enable

#Узнаем содержимое
data modify storage dsb:cts Temp set from entity @s Items

#Если в n-ом слоте есть предмет для переработки то считаем его
$execute if items entity @s container.2 #dsb:compost/to_composter run function dsb:constructions/composter/work/in_slot {slot: 2, uuid:$(out)}
$execute if items entity @s container.10 #dsb:compost/to_composter run function dsb:constructions/composter/work/in_slot {slot: 10, uuid:$(out)}
$execute if items entity @s container.11 #dsb:compost/to_composter run function dsb:constructions/composter/work/in_slot {slot: 11, uuid:$(out)}
$execute if items entity @s container.12 #dsb:compost/to_composter run function dsb:constructions/composter/work/in_slot {slot: 12, uuid:$(out)}
$execute if items entity @s container.20 #dsb:compost/to_composter run function dsb:constructions/composter/work/in_slot {slot: 20, uuid:$(out)}


#Устанавливаем новое значение для отображения кол-ва растительности
$function dsb:constructions/composter/work/menu/set_string_count with storage dsb:cts Composter.$(out)
#Если еще не создается земля, то запустить процесс
execute if entity @s[tag=!GrowProces] run function dsb:constructions/composter/work/grow/start with storage gu:main