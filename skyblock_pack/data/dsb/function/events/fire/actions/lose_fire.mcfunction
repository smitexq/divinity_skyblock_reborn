playsound minecraft:block.beacon.deactivate ambient @s ~ ~ ~ 1 2

execute store result score *var1 variables run random value 0..9
scoreboard players set #loop CreateFire 0
execute if score *var1 variables matches 0..5 at @s anchored eyes positioned ^ ^ ^0.1 run function dsb:events/fire/actions/lose_particle_raycast

#Возможность развести костер через 3 секунды
function dc:get_call {tick:60, command:"advancement revoke @s only dsb:events/create_fire", requirePos:false, requireEntity:true}
function dc:get_call {tick:60, command:"tag @s remove initFire", requirePos:false, requireEntity:true}

scoreboard players reset @s CreateFire

#Интеракт
$kill @e[type=interaction, tag=$(out)]

#Очистка задач
function dc:gu/generate

data modify storage dsb:dc_remove temp.UUID set from storage gu:main out
data modify storage dsb:dc_remove temp.command set value "function dsb:events/fire/actions/start"
function dc:clear_schedule with storage dsb:dc_remove temp

data modify storage dsb:dc_remove temp.command set value "function dsb:events/fire/actions/get_action"
function dc:clear_schedule with storage dsb:dc_remove temp

data modify storage dsb:dc_remove temp.command set value "function dsb:events/fire/init"
function dc:clear_schedule with storage dsb:dc_remove temp

#Очистка экрана
title @s clear
title @s actionbar ""