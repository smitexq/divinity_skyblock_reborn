###Пока не будет кружки -> уведомление
execute unless items entity @s weapon.mainhand minecraft:structure_block[minecraft:custom_data={id:"cup"}] run return run title @s actionbar {"translate":"dsb.events.tea_cauldron.take_tea","color":"gold"}

### Иначе забираем кружку
### Убираем из руки, при этом блокируем обновление колец, дабы не вызвать конфликт gu:main
tag @s add BlockInvChanged

item modify entity @s weapon.mainhand food:remove_item
playsound minecraft:item.bottle.fill ambient @s

tag @s remove BlockInvChanged
###


#Опустошаем на один уровень котел
$execute at $(out) if data storage dsb:cauldrons_tea $(out){CountResult:1} run setblock ~ ~ ~ minecraft:cauldron
$execute at $(out) if data storage dsb:cauldrons_tea $(out){CountResult:2} run function food:cauldron/cook/output/cauldron_state/2 with storage gu:main
$execute at $(out) if data storage dsb:cauldrons_tea $(out){CountResult:3} run function food:cauldron/cook/output/cauldron_state/3 with storage gu:main
$execute at $(out) if data storage dsb:cauldrons_tea $(out){CountResult:4} run function food:cauldron/cook/output/cauldron_state/4 with storage gu:main


###В зависимости от чая выдаем нужный
$execute as $(out) if entity @s[tag=OxeyeDaisyTea] run loot spawn ~ ~ ~ loot food:tea/oxeye_daisy
$execute as $(out) if entity @s[tag=GreenTea] run loot spawn ~ ~ ~ loot food:tea/green
$execute as $(out) if entity @s[tag=BirchTea] run loot spawn ~ ~ ~ loot food:tea/birch
$execute as $(out) if entity @s[tag=BerriesTea] run loot spawn ~ ~ ~ loot food:tea/berries
$execute as $(out) if entity @s[tag=BlackTea] run loot spawn ~ ~ ~ loot food:tea/black
$execute as $(out) if entity @s[tag=SakuraTea] run loot spawn ~ ~ ~ loot food:tea/sakura
###

###Если больше нет чая, то снимаем все теги и обновляем тексты
$execute at $(out) unless block ~ ~ ~ minecraft:cauldron run return 0

$tag $(out) remove cooking
$tag $(out) remove confirm
$tag $(out) remove OxeyeDaisyTea
$tag $(out) remove GreenTea
$tag $(out) remove BirchTea
$tag $(out) remove BerriesTea
$tag $(out) remove BlackTea
$tag $(out) remove SakuraTea

###Возвращаем кол-во чая для следующей готовки к норме
$data modify storage dsb:cauldrons_tea $(out).CountResult set value 3
$data modify storage dsb:cauldrons_tea $(out).BuffTea set value false

###Удаляем цикл на вопспроизведение частиц
$data modify storage dsb:dc_remove temp.UUID set value $(out)
data modify storage dsb:dc_remove temp.command set value "function food:cauldron/cook/stable_particle"
#Удаляем вызовы функции на частицы
function dc:clear_schedule with storage dsb:dc_remove temp

#Визуал
$execute as $(out) at @s run function food:cauldron/vizual/main with storage gu:main