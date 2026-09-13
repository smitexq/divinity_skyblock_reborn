#Возможность развести костер через 3 секунды
function dc:get_call {tick:60, command:"tag @s remove initFire", requirePos:false, requireEntity:true}

scoreboard players reset @s CreateFire

#Интеракт
$kill @e[type=interaction, tag=$(out)]

#Все задачи вызванные очистить
function dc:gu/generate

data modify storage dsb:dc_remove temp.UUID set from storage gu:main out
data modify storage dsb:dc_remove temp.command set value "function dsb:events/fire/actions/start"
function dc:clear_schedule with storage dsb:dc_remove temp

data modify storage dsb:dc_remove temp.command set value "function dsb:events/fire/actions/get_action"
function dc:clear_schedule with storage dsb:dc_remove temp

data modify storage dsb:dc_remove temp.command set value "function dsb:events/fire/init"
function dc:clear_schedule with storage dsb:dc_remove temp

#Текста
title @s clear
title @s actionbar ""