#Если нет связи - ошибка
$execute if data storage dsb:cts Waystones.$(out){link:false} run playsound minecraft:entity.villager.no ambient @s
$execute if data storage dsb:cts Waystones.$(out){link:false} run return run title @s actionbar {"translate":"dsb.events.waystone.no_link","color":"red"}

#Иначе телепорт
effect give @s minecraft:darkness 5 0 true
effect give @s minecraft:slowness 4 255 true

#uuid связанного вейстоуна
data modify storage dsb:temp waystoneTp set value {}
$data modify storage dsb:temp waystoneTp.link_uuid set from storage dsb:cts Waystones.$(out).link_uuid
function dsb:constructions/waystone/target/prepend_teleport with storage dsb:temp waystoneTp