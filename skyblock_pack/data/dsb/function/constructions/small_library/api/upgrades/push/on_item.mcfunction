#если уже НЕ лежит предмет
$execute as $(out) if entity @s[tag=!item] run return fail


###Возврат предмета
setblock 17112022 1 0 minecraft:light_blue_shulker_box

$data modify block 17112022 1 0 Items append from storage dsb:cts Libraries[{Upgrades:[{UUID:$(out)}]}].Upgrades[{UUID:$(out)}].item
execute if items entity @s weapon.mainhand * run loot spawn ~ ~ ~ mine 17112022 1 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]
execute unless items entity @s weapon.mainhand * run item replace entity @s weapon.mainhand from block 17112022 1 0 container.0
playsound minecraft:entity.allay.ambient_without_item ambient @s ~ ~ ~ 1 2

setblock 17112022 1 0 minecraft:air
###

#Удаление предмета в хранилище
$data modify storage dsb:cts Libraries[{Upgrades:[{UUID:$(out)}]}].Upgrades[{UUID:$(out)}].item set value {}
$tag $(out) remove item

#Визуал
$execute as $(out) at @s as @e[type=minecraft:item_display, sort=nearest, limit=1] run data remove entity @s item.components


###Добавление очков в скорборд
function dsb:constructions/small_library/api/upgrades/target/api_count with storage gu:main
###