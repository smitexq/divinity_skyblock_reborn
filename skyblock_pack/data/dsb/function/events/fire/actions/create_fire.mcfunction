#Ищем блок на который смотрит игрок
scoreboard players set #loop CreateFire 0
execute anchored eyes positioned ^ ^ ^0.1 run function dsb:events/fire/on_player/raycast

scoreboard players reset @s CreateFire

#Возможность развести костер через 3 секунды
function dc:get_call {tick:60, command:"tag @s remove initFire", requirePos:false, requireEntity:true}
#Интеракт
$kill @e[type=interaction, tag=$(out)]

#Удаление задач
function dc:gu/generate

data modify storage dsb:dc_remove temp.UUID set from storage gu:main out
data modify storage dsb:dc_remove temp.command set value "function dsb:events/fire/actions/start"
function dc:clear_schedule with storage dsb:dc_remove temp

data modify storage dsb:dc_remove temp.command set value "function dsb:events/fire/actions/get_action"
function dc:clear_schedule with storage dsb:dc_remove temp

data modify storage dsb:dc_remove temp.command set value "function dsb:events/fire/init"
function dc:clear_schedule with storage dsb:dc_remove temp

#Очистка экрана, в экшион бар вывод красной полоски
title @s clear
$function dsb:events/fire/on_player/title with storage dsb:cts Fire.$(out).text