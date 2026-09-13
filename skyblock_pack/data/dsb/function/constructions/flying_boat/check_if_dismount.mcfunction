#Если у игрока закончилось топливо, что все, кто сидят в этой лодке вылезают из неё. И удаляем все теги с лодки
$execute unless function dsb:constructions/flying_boat/exist_fuel as @a if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"vehicle": {"type": "#minecraft:boat","nbt": "{Tags:[\"flying_boat\",\"$(out)\"]}"}}} run function dsb:constructions/flying_boat/no_fuel
$execute unless function dsb:constructions/flying_boat/exist_fuel as @e[type=#minecraft:boat, tag=flying_boat, tag=$(out)] run return run function dsb:constructions/flying_boat/on_boat/remove_driver

# say check if dismount

#Если водитель больше не сидит в этой лодке, то всех высаживаем
$execute unless predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"vehicle": {"type": "#minecraft:boat","nbt": "{Tags:[\"flying_boat\",\"$(out)\"]}"}}} as @a if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"vehicle": {"type": "#minecraft:boat","nbt": "{Tags:[\"flying_boat\",\"$(out)\"]}"}}} run function dsb:constructions/flying_boat/no_fuel
$execute unless predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"vehicle": {"type": "#minecraft:boat","nbt": "{Tags:[\"flying_boat\"]}"}}} as @e[type=#minecraft:boat, tag=flying_boat, tag=$(out)] run return run function dsb:constructions/flying_boat/on_boat/remove_driver

$function dc:get_call {tick:10, command:"function dsb:constructions/flying_boat/check_if_dismount {out:$(out)}", requirePos:false, requireEntity:true}