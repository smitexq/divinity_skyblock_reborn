advancement grant @a only dsb:skyblock/travel/winter_queen

execute as @a at @s run playsound minecraft:block.end_portal.spawn
effect give @a minecraft:darkness 6
execute as @a run function dc:get_call {tick:140, command:"damage @s 1 minecraft:freeze", requirePos:false, requireEntity:true}

title @a title {"translate":"dsb.events.pricture.activate", "color":"red"}

#текст про ветер
function dc:get_call {tick:90, command:"function gen:in_dungeons/frozen_castle/tellraw_wind", requirePos:false, requireEntity:false}

#звуки ветра
execute as @a at @s run playsound minecraft:item.elytra.flying ambient @s ~ ~ ~ 1

function dc:get_call {tick:100, command:"execute as @a at @s run playsound minecraft:item.elytra.flying ambient @s ~ ~ ~ 0.5", requirePos:false, requireEntity:false}
function dc:get_call {tick:100, command:"execute as @a run stopsound @s * minecraft:item.elytra.flying", requirePos:false, requireEntity:false}
function dc:get_call {tick:150, command:"execute as @a at @s run playsound minecraft:item.elytra.flying ambient @s ~ ~ ~ 0.25", requirePos:false, requireEntity:false}
function dc:get_call {tick:150, command:"execute as @a run stopsound @s * minecraft:item.elytra.flying", requirePos:false, requireEntity:false}
function dc:get_call {tick:210, command:"execute as @a run stopsound @s * minecraft:item.elytra.flying", requirePos:false, requireEntity:false}


###достижение с предупреждением о том, что в склепе нет правил путешествия и можно взять полезное кольцо

#Проверка кол-ва игроков вокруг картины
execute as @e[type=marker, tag=picture_entry_point] at @s run function dc:get_call {tick:500, command:"function gen:in_dungeons/frozen_castle/players/check_count_around", requirePos:false, requireEntity:true}