$data modify storage dsb:grave acces.OutPut append from storage $(path)[{Slot:10b}]
$data modify storage dsb:grave acces.OutPut append from storage $(path)[{Slot:11b}]
$execute if entity @s[tag=WearingRingOfAdvancedGUI] run data modify storage dsb:grave acces.OutPut append from storage $(path)[{Slot:12b}]
$execute if entity @s[tag=WearingRingOfAdvancedGUI] run data modify storage dsb:grave acces.OutPut append from storage $(path)[{Slot:13b}]

#Удаляем фон
data remove storage dsb:grave acces.OutPut[{components:{"minecraft:custom_data":{accessories_font:1b}}}]

###Пытаемся вставить кольцо в слот
function entities:player/grave/inv/return_rings/insert {Slot: 10}
function entities:player/grave/inv/return_rings/insert {Slot: 11}

#Если обнаруживается кольцо расширения, то активируем его
#Узнаем UUID игрока
function dc:gu/generate
execute if data storage dsb:grave acces.OutPut[{components:{"minecraft:custom_data":{RingOfAdvancedGUI:1b}}}] run function rings:check_the_rings/advanced_gui_add with storage gu:main

execute if entity @s[tag=WearingRingOfAdvancedGUI] run function entities:player/grave/inv/return_rings/insert {Slot: 12}
execute if entity @s[tag=WearingRingOfAdvancedGUI] run function entities:player/grave/inv/return_rings/insert {Slot: 13}
###

