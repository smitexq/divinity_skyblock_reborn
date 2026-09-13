#если уже лежит предмет
$execute as $(out) if entity @s[tag=item] run return fail

#Копирование предмета в хранилище
$data modify storage dsb:cts Libraries[{Upgrades:[{UUID:$(out)}]}].Upgrades[{UUID:$(out)}].item set from entity @s SelectedItem

$tag $(out) add item

###Визуал
$execute if items entity @s weapon.mainhand minecraft:structure_block[minecraft:custom_data~{id:"tome_of_wisdom"}] as $(out) at @s as @e[type=minecraft:item_display, sort=nearest, limit=1] run data modify entity @s item.components."minecraft:item_model" set value "dsb:tools/tome_of_wisdom"
$execute if items entity @s weapon.mainhand minecraft:structure_block[minecraft:custom_data~{id:"tome_of_rune"}] as $(out) at @s as @e[type=minecraft:item_display, sort=nearest, limit=1] run data modify entity @s item.components."minecraft:item_model" set value "dsb:tools/tome_of_rune"
###

#частицы
$execute as $(out) at @s as @e[type=minecraft:item_display, sort=nearest, limit=1] run particle minecraft:enchant ~ ~0.13 ~ 0.1 0.1 0.1 0 5 force
$execute as $(out) at @s as @e[type=minecraft:item_display, sort=nearest, limit=1] run particle minecraft:enchanted_hit ~ ~0.13 ~ 0.1 0.1 0.1 0 3 force
#

### Убираем из руки, при этом блокируем обновление колец, дабы не вызвать конфликт gu:main
tag @s add BlockInvChanged

playsound minecraft:entity.armadillo.scute_drop ambient @s
item modify entity @s weapon.mainhand food:remove_item

tag @s remove BlockInvChanged
###



###Добавление очков в скорборд
function dsb:constructions/small_library/api/upgrades/target/api_count with storage gu:main
###