#Телепорт + звук призыва с частицами
spreadplayers ~ ~ 1 5 false @s
execute at @e[type=marker,tag=DrownedArenaMiddle] as @a[distance=..25] run playsound minecraft:entity.allay.ambient_without_item ambient @a ~ ~1 ~ 2
execute positioned as @s run particle minecraft:sonic_boom ~ ~0.6 ~
function dc:get_call {tick:1, command:"kill @s", requirePos:false, requireEntity:true}

#20% на утопленника с трезубцем
execute store result score *var1 variables run random value 0..9
execute if score *var1 variables matches 0 positioned as @s run summon minecraft:drowned ~ ~ ~ {HandItems:[{id:"trident", count:1}, {}], HandDropChances:[0f,0f], DeathLootTable:"", Tags:["entity","this","SeaKingMob"]}
execute if score *var1 variables matches 1..9 positioned as @s run summon minecraft:drowned ~ ~ ~ {HandItems:[{}, {}], DeathLootTable:"", Tags:["entity","this","SeaKingMob"]}

#Через 90 секунд утопленник погибает
execute as @e[type=drowned, tag=this] at @s run function dc:get_call {tick:1800, command:"kill @s", requirePos:false, requireEntity:true}
tag @e[type=drowned, tag=this] remove this