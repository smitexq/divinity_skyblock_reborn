tag @s remove ExchangerAcceptAction

#Очищаем задачи
function dc:gu/generate

data modify storage dsb:dc_remove temp.UUID set from storage gu:main out
data modify storage dsb:dc_remove temp.command set value "tag @s remove ExchangerAcceptAction"
function dc:clear_schedule with storage dsb:dc_remove temp

data modify storage dsb:dc_remove temp.command set value "tag @s remove Exchange.SacrRing"
function dc:clear_schedule with storage dsb:dc_remove temp

data modify storage dsb:dc_remove temp.command set value "playsound minecraft:block.beacon.deactivate ambient @s"
function dc:clear_schedule with storage dsb:dc_remove temp

data modify storage dsb:dc_remove temp.command set value "function dsb:constructions/nether_converter/action/storage/remove_record"
function dc:clear_schedule with storage dsb:dc_remove temp
#

###Уровень
execute store result score #levels variables run xp query @s levels


###Починка кольца + сразу проверка предметов
execute if items entity @s[tag=Exchange.SacrRing] weapon.mainhand minecraft:structure_block[minecraft:custom_data~{SacrificialRing:1b, used:1b}] if function dsb:constructions/nether_converter/action/repair_ring/check run return run function dsb:constructions/nether_converter/action/repair_ring/confirm
execute if entity @s[tag=Exchange.SacrRing] run playsound minecraft:block.beacon.deactivate ambient @s
execute if entity @s[tag=Exchange.SacrRing] run title @s actionbar {"text":""}
execute if entity @s[tag=Exchange.SacrRing] run return run tag @s remove Exchange.SacrRing


###Книги зачарования
execute store success score *var1 variables run function dsb:constructions/nether_converter/action/check_page with storage dsb:cts Exchanger.Current
#удаляем запись игрока
function dsb:constructions/nether_converter/action/storage/remove_record

execute if score *var1 variables matches 1 run return 1

#Иначе неудачная попытка
playsound minecraft:block.beacon.deactivate ambient @s
title @s actionbar {"text":""}