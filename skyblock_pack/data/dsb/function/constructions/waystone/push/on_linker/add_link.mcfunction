###Устанавливаем связи между вейстоунами
$data modify storage dsb:cts Waystones.$(this_uuid).link set value true
$data modify storage dsb:cts Waystones.$(this_uuid).link_uuid set value $(uuid_link)

$data modify storage dsb:cts Waystones.$(uuid_link).link set value true
$data modify storage dsb:cts Waystones.$(uuid_link).link_uuid set value $(this_uuid)
###

#Отнимаем один предмет и проигрываем звук
$item modify entity $(PLuuid) weapon.mainhand food:remove_item
$execute as $(PLuuid) run playsound minecraft:block.beacon.activate ambient @s ~ ~ ~ 2

#Частицы на позициях вейстоунов
$execute at $(this_uuid) run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 1 0.8 1 0 40 force @a
$execute at $(uuid_link) run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 1 0.8 1 0 40 force @a