#Если водитель больше не сидит в этой лодке, то заканчиваем
$execute unless predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"vehicle": {"type": "#minecraft:boat","nbt": "{Tags:[\"flying_boat\",\"$(out)\"]}"}}} run return 0

scoreboard players add @s RemoveFuel 1
#Удаление топлива
execute if score @s RemoveFuel matches 10.. run function dsb:constructions/flying_boat/remove_fuel/main

#Цикл
$function dc:get_call {tick:20, command:"function dsb:constructions/flying_boat/on_player {out:$(out)}", requirePos:false, requireEntity:true}

#Управление лодкой (вверх-вниз)
execute store result score *var1 variables run data get entity @s Rotation[1]
$execute if score *var1 variables matches -15..15 as @e[type=#minecraft:boat, tag=flying_boat, tag=$(out)] run return run function dsb:constructions/flying_boat/on_boat/direction {y:0}
$execute if score *var1 variables matches ..-15 as @e[type=#minecraft:boat, tag=flying_boat, tag=$(out)] run return run function dsb:constructions/flying_boat/on_boat/direction {y:0.3}
$execute if score *var1 variables matches 15.. as @e[type=#minecraft:boat, tag=flying_boat, tag=$(out)] run return run function dsb:constructions/flying_boat/on_boat/direction {y:-0.3}
