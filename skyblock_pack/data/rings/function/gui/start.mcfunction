#Стартует от достижения inventory changed
#Сразу нельзя забирать достижение, так как некоторые команды и функции ниже изменяют инвентарь, а значит достижение сработает еще раз и будет рекурсия

#Если игра еще не началась, то ничего не делаем
execute unless score *start gameplay matches 1 run return run advancement revoke @s only rings:inventory_changed

#Если есть тег блокировки этой функции, то не проверяем ничего
execute if entity @s[tag=BlockInvChanged] run return run advancement revoke @s only rings:inventory_changed
#Если он в креативе
execute if entity @s[gamemode=creative] run return run advancement revoke @s only rings:inventory_changed

#Если игрок с открытыми слотами колец и хочет закрыть
execute if entity @s[tag=OpennedGUIRings, nbt=!{Inventory:[{id:"minecraft:black_stained_glass_pane",Slot:9b,components:{"minecraft:custom_data":{open_rings_slots:1b,open:1b}}}]}] run return run function rings:gui/close_slots/main
#С закрытыми слотами и хочет открыть
execute if entity @s[tag=!OpennedGUIRings, nbt=!{Inventory:[{id:"minecraft:black_stained_glass_pane",Slot:9b,components:{"minecraft:custom_data":{open_rings_slots:1b,open:0b}}}]}] run return run function rings:gui/open_slots/main


###Если игрок с закрытым меню аксессуаров, то функции ниже не проверяют слоты и можно забирать достижение
execute if entity @s[tag=!OpennedGUIRings] run return run advancement revoke @s only rings:inventory_changed




#Количество фонового стекла. Если меньше нужного количества, значит лежит что-то кроме стекла и нужно проверять
function rings:gui/count_glass_font
execute if entity @s[tag=WearingRingOfAdvancedGUI] if score *var1 variables matches 4 run return run advancement revoke @s only rings:inventory_changed
execute if entity @s[tag=!WearingRingOfAdvancedGUI] if score *var1 variables matches 2 run return run advancement revoke @s only rings:inventory_changed



#Копируем инветарь игрока в storage (более оптимизировано). Но перед этим ощичаем блокирующие слоты стекла
clear @s gray_stained_glass_pane[minecraft:custom_data~{accessories_font:1b}]
kill @e[type=item,nbt={Item:{id:"minecraft:gray_stained_glass_pane",components:{"minecraft:custom_data":{accessories_font:1b}}}}]

data modify storage dsb:temp Inventory set from entity @s Inventory
#Проверка правильности положения артефактов
function rings:check_the_rings/check_if_correct

#Проверка конкретных колец и наложение соответствующих тегов на игрока
function rings:check_the_rings/main {source: "entity @s Inventory"}

advancement revoke @s only rings:inventory_changed
data remove storage dsb:temp Inventory