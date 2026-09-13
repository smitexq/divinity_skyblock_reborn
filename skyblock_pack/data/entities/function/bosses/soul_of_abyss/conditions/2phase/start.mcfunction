tag @s add 2phase
tag @s add load2phase

execute as @a[distance=..35] at @s run playsound minecraft:entity.warden.heartbeat ambient @a ~ ~ ~ 2 1
execute as @a[distance=..40] at @s run playsound minecraft:block.sculk_shrieker.shriek ambient @s ~ ~ ~ 2 0.5

#
data modify entity @s NoAI set value 1b
data modify entity @s Invulnerable set value 1b

#Усиление
data modify entity @s attributes[{id:"minecraft:attack_damage"}].base set value 14
data modify entity @s attributes[{id:"minecraft:movement_speed"}].base set value 0.335
data modify entity @s attributes[{id:"minecraft:armor"}].base set value 4

#телепорт в центр
tp @s ~ ~7 ~

#Частицы под боссом
function dc:get_call {tick:10, command:"function entities:bosses/soul_of_abyss/conditions/2phase/particle", requirePos:false, requireEntity:true}

#Размещаем спавнеры
execute positioned ~-12 ~ ~3 run function entities:bosses/soul_of_abyss/conditions/2phase/spawner
execute positioned ~12 ~ ~-3 run function entities:bosses/soul_of_abyss/conditions/2phase/spawner
#Работа спавнера
execute as @e[type=ghast, tag=SoulOfAbyss_SPAWNER_push] run function dc:get_call {tick:40, command:"function entities:bosses/soul_of_abyss/abilities/2phase/spawner/work", requirePos:false, requireEntity:true}

#Кристаллы лечения
execute positioned ~-3 ~ ~-12 run function entities:bosses/soul_of_abyss/conditions/2phase/healer
execute positioned ~3 ~ ~12 run function entities:bosses/soul_of_abyss/conditions/2phase/healer
#Работа кристалла
function dc:get_call {tick:40, command:"function entities:bosses/soul_of_abyss/abilities/2phase/healer/work", requirePos:false, requireEntity:true}


#Работа
function dc:get_call {tick:360, command:"function entities:bosses/soul_of_abyss/abilities/2_phase_9_sec", requirePos:false, requireEntity:true}