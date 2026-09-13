scoreboard players reset @s death

#до начала игры не спавнятся могилки
execute unless score *start gameplay matches 1 run return fail
#На лунной арене нет могилок
execute if dimension gen:winter_queen run return fail

scoreboard players add @s death_count 1

#Вешаем на игрока тег, который блокирует выполнение проверок изменения инвентаря (inventory changed)
tag @s add BlockInvChanged

#Узнаем UUID игрока
function dc:gu/generate
data modify storage dsb:grave new.Player_UUID set from storage gu:main out
###Функция поломки кольца
execute if entity @s[tag=SaveInventory] run return run function entities:player/grave/to_break_sacrificial_ring/start with storage dsb:grave new



#тег для обнаружения игрока (ник над могилкой)
tag @s add get_nick

###Призыв могилки
#Если игрок в пропасти, то нужно найти место для спавна. Узнаем шанс, если не прокнул, значит не спавним могилку
scoreboard players set *var4 variables 1
execute if predicate entities:in_void store result score *var4 variables run function entities:player/void/get_chance
execute if score *var4 variables matches 0 run return run function entities:player/void/fail

#Если игрок не в пропасти. Призываем стойку для брони (могилу), и задаем ей угол поворота как у игрока и копируем в неё инвентарь игрока
data modify storage dsb:grave new.Rotation set from entity @s Rotation
data modify storage dsb:grave new.Rotation[1] set value 0.0f
execute unless predicate entities:in_void summon interaction run function entities:player/void/interaction
###
tag @s remove get_nick


###Сохранение инвентаря и колец
function entities:player/store_rings/main with storage dsb:grave new
###

#Записываем данные в могилку (Инвентарь игрока, кольца, поворот и т.д.)
function entities:player/store_rings/on_entity with storage dsb:grave new
data remove storage dsb:temp Grave

#очищаем инвентарь игрока и его уровень опыта
experience set @s 0 levels
experience set @s 0 points
clear @s
#Выдача свитка с координатами могилы
execute if score @s settings_death_info matches 1 run function entities:player/give_scroll

#Возврат менюшки для открытия слотов колец
function rings:api/return_open_gui_button
tag @s remove BlockInvChanged


###УДАЛИТЬ ТЕГИ С КОЛЬЦАМИ
tag @s remove OpennedGUIRings
tag @s remove WearingRingOfAdvancedGUI

tag @s remove WearingAmuletOfLife
tag @s remove WearingAmuletOfArmor
execute if entity @s[tag=WearingAmuletOfLuck] run function rings:activate_ring/amulet_of_luck/remove
execute if entity @s[tag=WearingAmuletOfIntelligence] run function rings:activate_ring/amulet_of_intelligence/remove
tag @s remove WearingRingOfVampire
tag @s remove WearingNorthernRitualRing
tag @s remove WearingSouthernRitualRing
execute if entity @s[tag=WearingRingOfDisaster] run function rings:activate_ring/ring_of_disaster/remove
tag @s remove WearingAncientRingOfTheSun
tag @s remove WearingHawkRing
tag @s remove WearingRedSunRing
execute if entity @s[tag=WearingSacrificialRing] run function rings:activate_ring/sacrificial/remove

execute if entity @s[tag=WearingScholarRing] run function rings:activate_ring/scholar/remove
execute if entity @s[tag=WearingTravelerRing] run function rings:activate_ring/traveler/remove
execute if entity @s[tag=WearingWandererRing] run function rings:activate_ring/wanderer/remove